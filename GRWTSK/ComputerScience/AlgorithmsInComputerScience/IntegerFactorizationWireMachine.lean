import GRWTSK.NumberTheory.IntegerFactorizationCertificate
import Mathlib.Computability.TuringMachine.Computable

/-!
# Finalizing a complete factorization on a finite binary stack machine

Local construction by grwtsk contributors. A producer may push bits, as it
produces them, onto separate count-word and row-data stacks. Each such buffer
then holds its bits in reverse order. The machine below prepends the body,
prepends the count, and drains a separate scratch stack. It certifies the
actual caller boundary at which only the designated output may contain data.
All control states, labels and stack alphabets are finite. The bounds below
charge moving individual bits. The producer must still compute the fields.
-/

namespace GRWTSK.IntegerFactorization.WireMachine

open Turing StateTransition
open WireCertificate

inductive Port where
  | count | rows | scratch | out
  deriving DecidableEq

inductive Phase where
  | rows | count | cleanup
  deriving DecidableEq

instance : Fintype Port where
  elems := {.count, .rows, .scratch, .out}
  complete p := by cases p <;> decide

instance : Fintype Phase where
  elems := {.rows, .count, .cleanup}
  complete p := by cases p <;> decide

abbrev Instruction := TM2.Stmt (fun _ : Port => Bool) Phase (Option Bool)

private def next (p : Phase) : Instruction := .goto (fun _ => p)

private def prepend (src : Port) (same after : Phase) : Instruction :=
  .pop src (fun _ symbol => symbol)
    (.branch Option.isSome
      (.push .out (fun s => s.getD false) (next same))
      (next after))

def program : Phase → Instruction
  | .rows => prepend .rows .rows .count
  | .count => prepend .count .count .cleanup
  | .cleanup => .pop .scratch (fun _ symbol => symbol)
      (.branch Option.isSome (next .cleanup) .halt)

def machine : FinTM2 where
  K := Port
  k₀ := .rows
  k₁ := .out
  Γ _ := Bool
  Λ := Phase
  main := .rows
  σ := Option Bool
  initialState := none
  m := program

/-- Work buffers and output are named explicitly to expose every stack. -/
def buffers (count rows scratch out : List Bool) : Port → List Bool
  | .count => count
  | .rows => rows
  | .scratch => scratch
  | .out => out

def atPhase (phase : Option Phase) (v : Option Bool) (count rows scratch out : List Bool) :
    machine.Cfg := ⟨phase, v, buffers count rows scratch out⟩

private theorem stacks_ext {phase : Option Phase} {v : Option Bool} {a b : Port → List Bool}
    (h : ∀ p, a p = b p) :
    (⟨phase, v, a⟩ : machine.Cfg) = ⟨phase, v, b⟩ := by rw [funext h]

theorem rows_cons (v x c r s o) :
    machine.step (atPhase (some .rows) v c (x::r) s o) =
      some (atPhase (some .rows) (some x) c r s (x::o)) := by
  apply congrArg some
  apply stacks_ext
  intro p; cases p <;> rfl

theorem rows_nil (v c s o) :
    machine.step (atPhase (some .rows) v c [] s o) =
      some (atPhase (some .count) none c [] s o) := by
  apply congrArg some
  apply stacks_ext
  intro p; cases p <;> rfl

theorem count_cons (v x c r s o) :
    machine.step (atPhase (some .count) v (x::c) r s o) =
      some (atPhase (some .count) (some x) c r s (x::o)) := by
  apply congrArg some
  apply stacks_ext
  intro p; cases p <;> rfl

theorem count_nil (v r s o) :
    machine.step (atPhase (some .count) v [] r s o) =
      some (atPhase (some .cleanup) none [] r s o) := by
  apply congrArg some
  apply stacks_ext
  intro p; cases p <;> rfl

theorem cleanup_cons (v x c r s o) :
    machine.step (atPhase (some .cleanup) v c r (x::s) o) =
      some (atPhase (some .cleanup) (some x) c r s o) := by
  apply congrArg some
  apply stacks_ext
  intro p; cases p <;> rfl

theorem cleanup_nil (v c r o) :
    machine.step (atPhase (some .cleanup) v c r [] o) =
      some (atPhase none none c r [] o) := by
  apply congrArg some
  apply stacks_ext
  intro p; cases p <;> rfl

/-- Exactly `n` applications of Mathlib's actual transition function. -/
def Exact (n : ℕ) (a b : machine.Cfg) : Prop :=
  (fun x : Option machine.Cfg => x.bind machine.step)^[n] (some a) = some b

private theorem single {a b : machine.Cfg} (h : machine.step a = some b) : Exact 1 a b := h

private theorem compose {i j : ℕ} {a b c : machine.Cfg} (h : Exact i a b) (g : Exact j b c) :
    Exact (i+j) a c := by
  unfold Exact at *
  rw [Nat.add_comm i j, Function.iterate_add_apply, h, g]

theorem cleanup_exact (s : List Bool) (v c r o) :
    Exact (s.length+1) (atPhase (some .cleanup) v c r s o) (atPhase none none c r [] o) := by
  induction s generalizing v with
  | nil => exact single (cleanup_nil _ _ _ _)
  | cons x s ih =>
    convert compose (single (cleanup_cons v x c r s o)) (ih (some x)) using 1
    simp
    omega

theorem count_exact (c : List Bool) (v r s o) :
    Exact (c.length+1) (atPhase (some .count) v c r s o)
      (atPhase (some .cleanup) none [] r s (c.reverse ++ o)) := by
  induction c generalizing v o with
  | nil => simpa using single (count_nil v r s o)
  | cons x c ih =>
    convert compose (single (count_cons v x c r s o)) (ih (some x) (x::o)) using 1 <;> simp [List.append_assoc]
    omega

theorem rows_exact (r : List Bool) (v c s o) :
    Exact (r.length+1) (atPhase (some .rows) v c r s o)
      (atPhase (some .count) none c [] s (r.reverse ++ o)) := by
  induction r generalizing v o with
  | nil => simpa using single (rows_nil v c s o)
  | cons x r ih =>
    convert compose (single (rows_cons v x c r s o)) (ih (some x) (x::o)) using 1 <;> simp [List.append_assoc]
    omega

private theorem halts (o : List Bool) :
    atPhase none none [] [] [] o = haltList machine o := by
  apply stacks_ext
  intro p; cases p <;> rfl

/-- Both reverse-built buffers are consumed. Every scratch bit is charged and
    the output equals their forward concatenation in Mathlib's full halt state. -/
theorem transfer_exact (head body trash : List Bool) :
    Exact (head.length + body.length + trash.length + 3)
      (atPhase (some .rows) none head.reverse body.reverse trash [])
      (haltList machine (head ++ body)) := by
  have rows := rows_exact body.reverse none head.reverse trash []
  have counts := count_exact head.reverse none [] trash body
  simp only [List.length_reverse, List.reverse_reverse, List.append_nil] at rows counts
  have run := compose (compose rows counts) (cleanup_exact trash none [] [] (head ++ body))
  rw [halts] at run
  convert run using 1
  omega


private theorem none_fixed (j : ℕ) :
    (fun x : Option machine.Cfg => x.bind machine.step)^[j] none = none := by
  induction j with
  | zero => rfl
  | succ j ih => exact ih

private theorem incompatible_later {i j : ℕ} {a : machine.Cfg} {out : List Bool}
    (hi : Exact i a (haltList machine out)) (hj : Exact j a (haltList machine out)) (hlt : i < j) :
    False := by
  obtain ⟨k, hk⟩ := Nat.exists_eq_add_of_le hlt
  have hj' : j = (k+1)+i := by omega
  unfold Exact at hi hj
  rw [hj', Function.iterate_add_apply, hi, Function.iterate_succ_apply] at hj
  change (fun x : Option machine.Cfg => x.bind machine.step)^[k] none = some _ at hj
  rw [none_fixed] at hj
  contradiction

/-- The displayed time is the unique time at which the machine has the
    specified full halt configuration. A subsequent transition returns none. -/
theorem transfer_halt_time_iff (head body trash : List Bool) (j : ℕ) :
    Exact j (atPhase (some .rows) none head.reverse body.reverse trash [])
      (haltList machine (head ++ body)) ↔ j = head.length + body.length + trash.length + 3 := by
  have ht := transfer_exact head body trash
  constructor
  · intro hj
    rcases lt_trichotomy j (head.length + body.length + trash.length + 3) with h | h | h
    · exact (incompatible_later hj ht h).elim
    · exact h
    · exact (incompatible_later ht hj h).elim
  · rintro rfl
    exact ht

/-- The certificate consumer instantiates the actual count word and row bits.
    This is a boundary for a producer that has emitted the two work buffers. -/
theorem canonical_exact {n : ℕ} {xs : List (ℕ × ℕ)} (h : CompleteFactorization n xs)
    (trash : List Bool) :
    let w := n.log2 + 1
    Exact ((encode n xs).length + trash.length + 3)
      (atPhase (some .rows) none (word w xs.length).reverse (encodeRows w xs).reverse trash [])
      (haltList machine (encode n xs)) := by
  dsimp only
  rw [encode, ite_eq_left (complete_fits h), List.length_append]
  exact transfer_exact _ _ _

/-- Matching the final configuration includes clearing the control, resetting
    every work stack, and leaving the exact canonical wire on the output stack. -/
def canonical_bounded {n : ℕ} {xs : List (ℕ × ℕ)} (h : CompleteFactorization n xs)
    (trash : List Bool) :
    let w := n.log2 + 1
    EvalsToInTime machine.step
      (atPhase (some .rows) none (word w xs.length).reverse (encodeRows w xs).reverse trash [])
      (some (haltList machine (encode n xs))) (w*(1+2*n.log2) + trash.length + 3) := by
  exact ⟨⟨_, canonical_exact h trash⟩,
    Nat.add_le_add_right (Nat.add_le_add_right (canonical_wire_length h) _) _⟩



/-- Number of syntax nodes actually dispatched within the macro-step.
    Each push/pop/peek affects one binary stack head. Branches charge only
    the executed arm, and a goto or halt is itself a node. -/
def dispatches : Instruction → Option Bool → (Port → List Bool) → ℕ
  | .push k f q, v, s => 1 + dispatches q v (Function.update s k (f v :: s k))
  | .peek k f q, v, s => 1 + dispatches q (f v (s k).head?) s
  | .pop k f q, v, s => 1 + dispatches q (f v (s k).head?) (Function.update s k (s k).tail)
  | .load f q, v, s => 1 + dispatches q (f v) s
  | .branch f q r, v, s => 1 + (if f v then dispatches q v s else dispatches r v s)
  | .goto _, _, _ | .halt, _, _ => 1

/-- Work still to be done, in dispatched syntax nodes, at the current phase. -/
def remaining (c : machine.Cfg) : ℕ :=
  let clean := 3 * (c.stk .scratch).length
  match c.l with
  | some .rows => 4 * ((c.stk .rows).length + (c.stk .count).length) + clean + 9
  | some .count => 4 * (c.stk .count).length + clean + 6
  | some .cleanup => clean + 3
  | none => 0

private theorem remaining_at (ph : Phase) (v : Option Bool) (ct rs sc ot : List Bool) {d : machine.Cfg}
    (hd : machine.step (atPhase (some ph) v ct rs sc ot) = some d) :
    remaining (atPhase (some ph) v ct rs sc ot) =
      dispatches (program ph) v (buffers ct rs sc ot) + remaining d := by
  cases ph with
  | rows =>
    cases rs with
    | nil =>
      obtain rfl := Option.some.inj (hd.symm.trans (rows_nil v ct sc ot))
      change 4*(0+ct.length)+3*sc.length+9 = 3+(4*ct.length+3*sc.length+6)
      omega
    | cons b rs =>
      obtain rfl := Option.some.inj (hd.symm.trans (rows_cons v b ct rs sc ot))
      change 4*(rs.length+1+ct.length)+3*sc.length+9 = 4+(4*(rs.length+ct.length)+3*sc.length+9)
      omega
  | count =>
    cases ct with
    | nil =>
      obtain rfl := Option.some.inj (hd.symm.trans (count_nil v rs sc ot))
      change 4*0+3*sc.length+6 = 3+(3*sc.length+3)
      omega
    | cons b ct =>
      obtain rfl := Option.some.inj (hd.symm.trans (count_cons v b ct rs sc ot))
      change 4*(ct.length+1)+3*sc.length+6 = 4+(4*ct.length+3*sc.length+6)
      omega
  | cleanup =>
    cases sc with
    | nil =>
      obtain rfl := Option.some.inj (hd.symm.trans (cleanup_nil v ct rs ot))
      rfl
    | cons b sc =>
      obtain rfl := Option.some.inj (hd.symm.trans (cleanup_cons v b ct rs sc ot))
      change 3*(sc.length+1)+3 = 3+(3*sc.length+3)
      omega

private theorem remaining_step (c : machine.Cfg) {d : machine.Cfg} (hd : machine.step c = some d) :
    remaining c = (c.l.elim 0 (fun phase => dispatches (program phase) c.var c.stk)) + remaining d := by
  obtain ⟨(_ | phase), v, stk⟩ := c
  · contradiction
  have hstk : stk = buffers (stk .count) (stk .rows) (stk .scratch) (stk .out) := by
    funext i; cases i <;> rfl
  rw [hstk] at hd ⊢
  exact remaining_at phase v _ _ _ _ hd

/-- Work follows actual machine transitions, including the final empty-stack
    checks and the jump or halt they dispatch. -/
def traceWork : ℕ → Option machine.Cfg → ℕ
  | 0, _ | _, none => 0
  | n+1, some c =>
    c.l.elim 0 (fun phase => dispatches (program phase) c.var c.stk) + traceWork n (machine.step c)

private theorem work_telescope {a b : machine.Cfg} {n : ℕ} (hx : Exact n a b) :
    remaining a = traceWork n (some a) + remaining b := by
  unfold Exact at hx
  induction n generalizing a with
  | zero =>
    have h : a = b := Option.some.inj hx
    simp [traceWork, h]
  | succ n ih =>
    rw [Function.iterate_succ_apply] at hx
    change _^[n] (machine.step a) = some b at hx
    cases hg : machine.step a with
    | none =>
      rw [hg] at hx
      rw [none_fixed] at hx
      contradiction
    | some mid =>
      rw [hg] at hx
      have hi := ih hx
      rw [remaining_step a hg, traceWork, hg, hi, Nat.add_assoc]

/-- For L output bits and G discarded scratch bits, the full trace executes
    exactly 4L + 3G + 9 fixed-width instruction nodes. -/
theorem transfer_dispatches (head body trash : List Bool) :
    traceWork (head.length+body.length+trash.length+3)
      (some (atPhase (some .rows) none head.reverse body.reverse trash [])) =
      4*(head.length+body.length) + 3*trash.length + 9 := by
  have h := work_telescope (transfer_exact head body trash)
  change 4*(body.reverse.length+head.reverse.length)+3*trash.length+9 = traceWork _ _+0 at h
  simpa only [List.length_reverse, Nat.add_zero, Nat.add_comm body.length head.length] using h.symm

/-! ## Linking the finalizer to a producer

The producer supplies its own finite stack indices, alphabet, labels, and
control states. The disjoint tags give the suffix its four binary stacks and
private control without requiring a change of the transition function during
execution. All extra producer stacks must be empty at handoff for the full
Mathlib halt configuration; scratch passed to the suffix may be arbitrary.
-/

section Linking

variable {K L V : Type} (Γ : K → Type)

def alphabet : K ⊕ Port → Type := Sum.elim Γ (fun _ => Bool)

abbrev LinkedStmt := TM2.Stmt (alphabet Γ) (L ⊕ Phase) (V ⊕ Option Bool)

private def readLocal : V ⊕ Option Bool → Option Bool := Sum.elim (fun _ => none) id

/-- Inject the local bytecode into the linked program's disjoint label space. -/
def liftStmt : Instruction → LinkedStmt (L := L) (V := V) Γ
  | .push k f q => .push (.inr k) (fun v => f (readLocal v)) (liftStmt q)
  | .peek k f q => .peek (.inr k) (fun v x => .inr (f (readLocal v) x)) (liftStmt q)
  | .pop k f q => .pop (.inr k) (fun v x => .inr (f (readLocal v) x)) (liftStmt q)
  | .load f q => .load (fun v => .inr (f (readLocal v))) (liftStmt q)
  | .branch f q r => .branch (fun v => f (readLocal v)) (liftStmt q) (liftStmt r)
  | .goto f => .goto (fun v => .inr (f (readLocal v)))
  | .halt => .halt

variable [DecidableEq K] [Fintype K] [Fintype L] [Fintype V]
variable (callerCode : L → LinkedStmt (V := V) Γ) (entry : L)

/-- A single fixed finite-control machine executes both the producer and the suffix.
    The factorization input is on the binary rows stack when the producer begins. -/
def linked : FinTM2 where
  K := K ⊕ Port
  k₀ := .inr .rows
  k₁ := .inr .out
  Γ := alphabet Γ
  Γk₀Fin := inferInstanceAs (Fintype Bool)
  Λ := L ⊕ Phase
  main := .inl entry
  σ := V ⊕ Option Bool
  initialState := .inr none
  m := Sum.elim callerCode (fun phase => liftStmt Γ (program phase))

theorem linked_finite_alphabets (hΓ : ∀ i, Finite (Γ i)) :
    ∀ i, Finite ((linked Γ callerCode entry).Γ i) := by
  intro i
  cases i with
  | inl k => exact hΓ k
  | inr k => exact inferInstanceAs (Finite Bool)

variable (extra : ∀ k, List (Γ k))

private def liftStacks (s : Port → List Bool) : ∀ k, List (alphabet Γ k) :=
  fun k => match k with
  | .inl i => extra i
  | .inr j => s j

/-- A lifted configuration can retain any private producer data; the suffix
    preserves those stacks exactly. -/
def liftCfg (c : machine.Cfg) : (linked Γ callerCode entry).Cfg :=
  ⟨c.l.map Sum.inr, .inr c.var, liftStacks Γ extra c.stk⟩

omit [Fintype K] in
private theorem lift_update (s : Port → List Bool) (k : Port) (w : List Bool) :
    Function.update (liftStacks Γ extra s) (.inr k) w =
      liftStacks Γ extra (Function.update s k w) := by
  funext i
  cases i with
  | inl i => simp [Function.update, liftStacks]; rfl
  | inr j =>
    by_cases h : j = k
    · subst j; simp [Function.update, liftStacks]; rfl
    · simp [Function.update, h, liftStacks]; rfl

private theorem aux_lift (q : Instruction) (v : Option Bool) (s : Port → List Bool) :
    TM2.stepAux (liftStmt (L := L) (V := V) Γ q) (.inr v) (liftStacks Γ extra s) =
      liftCfg Γ callerCode entry extra (TM2.stepAux q v s) := by
  induction q generalizing v s with
  | push k f q ih =>
    exact (congrArg (TM2.stepAux (liftStmt (L := L) (V := V) Γ q) (.inr v))
      (lift_update Γ extra s k (f v :: s k))).trans (ih _ _)
  | peek k f q ih => exact ih _ _
  | pop k f q ih =>
    exact (congrArg (TM2.stepAux (liftStmt (L := L) (V := V) Γ q) (.inr (f v (s k).head?)))
      (lift_update Γ extra s k (s k).tail)).trans (ih _ _)
  | load f q ih => exact ih _ _
  | branch f q r hq hr =>
    cases h : f v <;> simp [liftStmt, readLocal, TM2.stepAux, h, hq, hr] <;> rfl
  | goto f => rfl
  | halt => rfl

theorem step_lift (c : machine.Cfg) :
    (linked Γ callerCode entry).step (liftCfg Γ callerCode entry extra c) =
      (machine.step c).map (liftCfg Γ callerCode entry extra) := by
  obtain ⟨(_ | q), v, s⟩ := c
  · rfl
  · exact congrArg some (aux_lift Γ callerCode entry extra (program q) v s)

private theorem iter_lift (n : ℕ) (x : Option machine.Cfg) :
    (fun x : Option (linked Γ callerCode entry).Cfg => x.bind (linked Γ callerCode entry).step)^[n]
      (x.map (liftCfg Γ callerCode entry extra)) =
    ((fun x : Option machine.Cfg => x.bind machine.step)^[n] x).map (liftCfg Γ callerCode entry extra) := by
  induction n generalizing x with
  | zero => rfl
  | succ n ih =>
    rw [Function.iterate_succ_apply, Function.iterate_succ_apply]
    cases x with
    | none => exact ih none
    | some c => simpa only [Option.map_some, Option.bind_some, step_lift] using ih (machine.step c)

private theorem linked_halt (out : List Bool) :
    liftCfg Γ callerCode entry (fun _ => []) (haltList machine out) =
      haltList (linked Γ callerCode entry) out := by
  change (⟨_, _, _⟩ : TM2.Cfg _ _ _) = ⟨_, _, _⟩
  congr 1
  funext k
  cases k with
  | inl k => simp [liftStacks, linked]; rfl
  | inr k => cases k <;> rfl

/-- The actual composed time includes every producer step and every suffix bit.
    The only run supplied as a premise ends at the precisely specified buffers.
    Both segments belong to the same transition function and private stacks. -/
def finish_after {n : ℕ} {xs : List (ℕ × ℕ)} (h : CompleteFactorization n xs)
    (input trash : List Bool) (t : ℕ)
    (producer : EvalsToInTime (linked Γ callerCode entry).step (initList (linked Γ callerCode entry) input)
      (some (liftCfg Γ callerCode entry (fun _ => []) (atPhase (some .rows) none
        (word (n.log2+1) xs.length).reverse (encodeRows (n.log2+1) xs).reverse trash []))) t) :
    TM2OutputsInTime (linked Γ callerCode entry) input (some (encode n xs))
      (t + (encode n xs).length + trash.length + 3) := by
  let initial := atPhase (some .rows) none (word (n.log2+1) xs.length).reverse
    (encodeRows (n.log2+1) xs).reverse trash []
  let steps := (encode n xs).length + trash.length + 3
  have hx : Exact steps initial (haltList machine (encode n xs)) := canonical_exact h trash
  have hs := iter_lift Γ callerCode entry (fun _ => []) steps (some initial)
  change _ = _ at hs
  change (fun x : Option machine.Cfg => x.bind machine.step)^[steps] (some initial) = _ at hx
  rw [hx] at hs
  simp only [Option.map_some, linked_halt] at hs
  let suffix : EvalsToInTime (linked Γ callerCode entry).step
      (liftCfg Γ callerCode entry (fun _ => []) initial) (some (haltList (linked Γ callerCode entry) (encode n xs))) steps :=
    ⟨⟨steps, hs⟩, le_rfl⟩
  let run := EvalsToInTime.trans _ t steps _ _ _ producer suffix
  exact ⟨run.toEvalsTo, run.steps_le_m.trans (by dsimp [steps]; omega)⟩

end Linking

end GRWTSK.IntegerFactorization.WireMachine
