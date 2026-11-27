import GRWTSK.ComputerScience.AlgorithmsInComputerScience.RudichRousseauExactDivision
import FactoringAux.Simulate.Main

/-!
# A two-output binary-stack cofactor machine

A fixed compiled register program is simulated by one finite Mathlib TM2.
Each pass, memory access, input transfer, output transfer and halt is charged.
The wire contains unary blocks for *cells*: input integers occupy binary
arrays, so their numerical values do not appear as unary memory fields.
This representation is suitable for a caller that reads the quotient bank.
-/

namespace GRWTSK.IntegerFactorization.Division

open Factoring.Aux Factoring.Aux.Copied Factoring.Aux.Copied.Aux Factoring.Aux.Copied.PLib
open Factoring.Aux.Sim SProg Function

private def cells : ℕ → (ℕ → ℕ) → List ℕ
  | 0, _ => []
  | k+1, f => f 0 :: cells k (fun i => f (i+1))

private theorem cell_length (k : ℕ) (f : ℕ → ℕ) : (cells k f).length = k := by
  induction k generalizing f with
  | zero => rfl
  | succ k ih => simp [cells, ih]

private theorem cell_value (k : ℕ) (f : ℕ → ℕ) (i : ℕ) :
    getR (cells k f) i = if i < k then f i else 0 := by
  induction k generalizing f i with
  | zero => cases i <;> simp [cells, getR]
  | succ k ih =>
    cases i with
    | zero => simp [cells, getR]
    | succ i => simp [cells, getR, ih]

def inputCells (w n d : ℕ) := cells (19+5*w) (inputMemory w n d)
def inputWire (w n d : ℕ) := (Sim.enc (inputCells w n d)).reverse

/-- The unary length of every cell in the input heap is charged. -/
theorem inputWire_bound (w n d : ℕ) : (inputWire w n d).length ≤ (19+5*w)*(w+2) := by
  have good : Good (inputCells w n d) (inputMemory w n d) (19+5*w) := by
    refine ⟨fun i => ?_, (cell_length _ _).le⟩
    simp only [inputCells, cell_value]
    split_ifs with h
    · rfl
    · exact (input_finite_support w n d i (by omega)).symm
  simpa only [inputWire, List.length_reverse] using enc_length_le good (input_value_le w n d)

/-- Scan the heap memory once from its initial orientation, run the actual
    simulation, and move the resulting encoding back to the I/O stack. -/
def stackProgram : SProg := .seq (move 0 1) (.seq (sim program 16) (move 1 0))

def stackCount := Sim.nK program

private theorem stack_wf : stackProgram.WF = true := by
  have ha : (move 0 1).WF = true := by decide
  have hb : (move 1 0).WF = true := by decide
  change ((move 0 1).WF && ((sim program 16).WF && (move 1 0).WF)) = true
  rw [ha, hb, sim_wf program 16 le_rfl]
  rfl

private theorem stack_ids : stackProgram.StacksBelow stackCount = true := by
  apply stacksBelow_of_uses
  intro j hj
  change ((move 0 1).uses j || ((sim program 16).uses j || (move 1 0).uses j)) = true at hj
  simp only [Bool.or_eq_true] at hj
  have m1 : maxUse (move 0 1) ≤ 15 := by decide
  have m2 : maxUse (move 1 0) ≤ 15 := by decide
  change j < 16 + 2 * nl program
  rcases hj with h | h | h
  · have := (uses_le (move 0 1) h).trans m1; omega
  · rcases sim_inRange program 16 j h with h | h <;> omega
  · have := (uses_le (move 1 0) h).trans m2; omega

def stackMachine := tmOf stackProgram stackCount (show 0 < 16+2*nl program by omega)

def valueLimit (w : ℕ) := w+1+registerCost w
def cellLimit (w : ℕ) := lits program + valueLimit w + 1 + (19 + 5*w)

/-- A polynomial in width, explicitly charging the two moves as well as
    every bit-level access of the register-machine simulation. -/
def stackCost (w : ℕ) :=
  (2*((19+5*w)*(w+2))+1) + registerCost w * Sim.Acc (cellLimit w) (valueLimit w) +
  (2*(cellLimit w*(valueLimit w+1))+1) + 1

/-- The explicit transition bound satisfies the provider’s definition of a
    polynomial in the operand width. -/
theorem stackCost_poly : Poly stackCost := by
  have w1 := Poly.id.add (Poly.const 1)
  have w2 := Poly.id.add (Poly.const 2)
  have source : Poly sourceCost :=
    ((((Poly.const 500).mul w1).mul w1).add ((Poly.const 6).mul w1)).add (Poly.const 25)
  have reg : Poly registerCost := ((Poly.const 26).mul (w1.add source)).mul source
  have value : Poly valueLimit := w1.add reg
  have header := (Poly.const 19).add ((Poly.const 5).mul Poly.id)
  have cells : Poly cellLimit := (((Poly.const (lits program)).add value).add (Poly.const 1)).add header
  have wire := cells.mul (value.add (Poly.const 1))
  have access : Poly (fun w => Sim.Acc (cellLimit w) (valueLimit w)) :=
    ((Poly.const 200).mul (((wire.add cells).add value).add (Poly.const 1))).add (Poly.const 200)
  exact (((((Poly.const 2).mul (header.mul w2)).add (Poly.const 1)).add (reg.mul access)).add
    (((Poly.const 2).mul wire).add (Poly.const 1))).add (Poly.const 1)

private def heapStacks (bs : List ℕ) : Stacks := update (fun _ => []) 1 (Sim.enc bs)

private theorem load_heap (bs : List ℕ) :
    (move 0 1).exec (initStacks (Sim.enc bs).reverse) = heapStacks bs := by
  rw [exec_move (show (0 : ℕ) ≠ 1 by decide)]
  funext j
  by_cases h : j=0
  · subst j; simp [heapStacks, initStacks]
  · simp [heapStacks, initStacks, update_apply]

private theorem unload_heap (bs : List ℕ) :
    (move 1 0).exec (heapStacks bs) = initStacks (Sim.enc bs).reverse := by
  rw [exec_move (show (1 : ℕ) ≠ 0 by decide)]
  funext j
  by_cases h : j=1
  · subst j; simp [heapStacks, initStacks]
  · simp [heapStacks, initStacks, update_apply]

/-- Length-delimited memory words are uniquely readable. An unterminated
    nonempty unary block is invalid. Reversal restores the caller's wire order. -/
def readBlocks : List Bool → ℕ → Option (List ℕ)
  | [], carry => if carry = 0 then some [] else none
  | true :: t, carry => readBlocks t (carry+1)
  | false :: t, carry => (readBlocks t 0).map (carry :: ·)

private theorem read_block (v : ℕ) (tail : List Bool) (carry : ℕ) :
    readBlocks (Sim.rep v ++ false :: tail) carry = (readBlocks tail 0).map ((carry+v)::·) := by
  induction v generalizing carry with
  | zero => simp [Sim.rep, readBlocks]
  | succ v ih =>
    simpa [Sim.rep, List.replicate_succ, readBlocks, Nat.add_assoc, Nat.add_left_comm, Nat.add_comm]
      using ih (carry+1)

def decodeWire (word : List Bool) := readBlocks word.reverse 0

theorem decodeHeap (bs : List ℕ) : decodeWire (Sim.enc bs).reverse = some bs := by
  simp only [decodeWire, List.reverse_reverse]
  induction bs with
  | nil => rfl
  | cons x xs ih =>
    change readBlocks ((Sim.rep x ++ [false]) ++ Sim.enc xs) 0 = _
    rw [List.append_assoc, List.singleton_append, read_block, ih]
    simp

/-- Both binary output banks are exact for all positive divisors. The single
    fixed machine halts cleanly with one decodable result word. Its output
    carries the preserved source frame and the zeroed scratch array as well. -/
theorem division_on_stacks (w n d : ℕ) (hn : n < 2^w) (hd : d < 2^w) (hp : 0 < d) :
    ∃ wire bs, decodeWire wire = some bs ∧
      layout.Rel (state w n d (n/d) (n%d)) (getR bs) ∧
      Nonempty (Turing.TM2OutputsInTime stackMachine (inputWire w n d) (some wire) (stackCost w)) := by
  let σ := inputMemory w n d
  let s := heapStacks (inputCells w n d)
  have reg := compiled_division w n d hn hd hp σ (input_layout w n d)
  have bound := reg.2
  have good : Good (inputCells w n d) σ (cellLimit w) := by
    refine ⟨fun i => ?_, ?_⟩
    · simp only [inputCells, cell_value]
      split_ifs with h
      · rfl
      · exact (input_finite_support w n d i (by omega)).symm
    · simp only [inputCells, cell_length, cellLimit]; omega
  have hpre : Pre s σ (cellLimit w) (w+1) := by
    refine ⟨_, ?_, good, ?_, input_value_le w n d⟩
    · simp [s, heapStacks]
    · intro j hj _; simp [s, heapStacks, show j ≠ 1 by omega]
  obtain ⟨bs, he, hout, ht⟩ := sim_ok program 16 le_rfl s σ (cellLimit w) (valueLimit w) (w+1) hpre
    (by dsimp [valueLimit]; omega) (by dsimp [cellLimit]; omega)
    (fun j hj _ => by simp [s, heapStacks, show j ≠ 1 by omega])
  have he' : (sim program 16).exec s = heapStacks bs := by
    rw [he]
    simp [s, heapStacks, update_idem]
  let wire := (Sim.enc bs).reverse
  refine ⟨wire, bs, decodeHeap bs, ?_, ?_⟩
  · rw [show getR bs = (Program.run program σ).1 from funext hout.1]
    exact reg.1
  · have hl : (move 0 1).exec (initStacks (inputWire w n d)) = s := load_heap _
    have hresult : stackProgram.exec (initStacks (inputWire w n d)) = initStacks wire := by
      simp only [stackProgram, exec_seq, hl, he', unload_heap, wire]
    have hin := inputWire_bound w n d
    have hv : ∀ r, (Program.run program σ).1 r ≤ valueLimit w := fun r =>
      (Factoring.Aux.Copied.Aux.run_val_le program σ (w+1) (input_value_le w n d) r).trans
        (Nat.add_le_add_left bound _)
    have ho := enc_length_le hout hv
    have htime : stackProgram.cost (initStacks (inputWire w n d)) + 1 ≤ stackCost w := by
      simp only [stackProgram, SProg.cost_seq, hl, he', cost_move 0 1 (by decide), cost_move 1 0 (by decide)]
      simp only [initStacks, heapStacks, update_self]
      have hmid := ht.trans (Nat.mul_le_mul_right (Sim.Acc (cellLimit w) (valueLimit w)) bound)
      unfold stackCost
      omega
    exact ⟨outputsInTime_mono (outputsInTime stackProgram stackCount (by change 0 < 16+2*nl program; omega)
      stack_wf stack_ids (inputWire w n d) wire hresult) htime⟩

/-- Read the two binary banks in a returned wire. -/
def readQuotRem (w : ℕ) (wire : List Bool) : Option (ℕ × ℕ) := do
  let bs ← decodeWire wire
  return (segVal (fun i => getR bs (layout.cell 2 i)) 0 w,
          segVal (fun i => getR bs (layout.cell 3 i)) 0 (w+1))

theorem observable_division (w n d : ℕ) (hn : n < 2^w) (hd : d < 2^w) (hp : 0 < d) :
    ∃ wire, readQuotRem w wire = some (n/d, n%d) ∧
      Nonempty (Turing.TM2OutputsInTime stackMachine (inputWire w n d) (some wire) (stackCost w)) := by
  obtain ⟨wire, bs, hw, h, htime⟩ := division_on_stacks w n d hn hd hp
  have hq : Holds (fun i => getR bs (layout.cell 2 i)) w (n/d) :=
    ⟨lt_of_le_of_lt (Nat.div_le_self n d) hn, fun i hi => by
      exact (h.2 2 (by decide) i).trans (by simp [state, bits, hi])⟩
  have hr : Holds (fun i => getR bs (layout.cell 3 i)) (w+1) (n%d) :=
    ⟨by have := Nat.mod_lt n hp; rw [pow_succ]; omega, fun i hi => by
      exact (h.2 3 (by decide) i).trans (by simp [state, bits, hi])⟩
  exact ⟨wire, by simp [readQuotRem, hw, hq.segVal_eq, hr.segVal_eq], htime⟩

/-- A proper exact split yields a decodable, strictly smaller cofactor in the
    sole output word of the same time-bounded finite machine. -/
theorem cofactor_on_stacks (w n d : ℕ) (hn : n < 2^w) (hd : d < 2^w) (hd1 : 1 < d)
    (hdn : d < n) (hdiv : d ∣ n) :
    ∃ wire q, readQuotRem w wire = some (q,0) ∧ d*q = n ∧ 1 < q ∧ q < n ∧
      Nonempty (Turing.TM2OutputsInTime stackMachine (inputWire w n d) (some wire) (stackCost w)) := by
  obtain ⟨wire, h, htime⟩ := observable_division w n d hn hd (by omega)
  rw [Nat.mod_eq_zero_of_dvd hdiv] at h
  obtain ⟨_, he, hq, hlt, _⟩ := exact_cofactor w n d hn hd hd1 hdn hdiv _ (input_layout w n d)
  exact ⟨wire, n/d, h, he, hq, hlt, htime⟩

end GRWTSK.IntegerFactorization.Division
