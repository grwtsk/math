/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumericalAnalysis.PolynomialCircuitDyad
import GRWTSK.NumericalAnalysis.PolynomialCircuitInverse
import GRWTSK.NumericalAnalysis.PolynomialCircuitSheaf
import Mathlib.Algebra.Polynomial.Derivative

/-!
# A bounded exact polynomial circuit

The entire input indexes every phase and leaf, so the polynomial and prompt revision
are fixed along every wire. A subdivision produces either a zero or a sign-changing
half. Inverse refinement preserves that half and improves the reciprocal of the
derivative at the midpoint. A separate exact evaluation establishes any proposed zero.
The phase rank decreases by at least one and starts at 36 for the twelve-halving
profile. This is a step bound, independent of presentation and scheduling.

The circuit reuses the dyadic and polynomial operations of the pinned Lean libraries.
The boundary tests below check whether exact values fit the Rust dyadic carrier.
They do not reproduce intermediate alignment and overflow checks of every Rust
operation. Rust run equivalence and complete root enumeration are separate obligations.
Runtime comparison source: grwtsk/noeaaeue, src/model/refinement.rs,
SHA-256 a86cdb530b6cefda771a13ede7010055ad347e9c5836cc75472b0933564801fa.
The sign-changing-half proof and the inverse residual proof have different consumers.
The linear polynomial with root 1/3 supplies a hostile check against identifying
reciprocal accuracy with root certification. AI-assisted formalization. No novelty
or independent mathematical review is claimed.
-/

set_option autoImplicit false

namespace GRWTSK.NumericalAnalysis.PolynomialCircuit

open Polynomial

/-- Ascending integer coefficients, with the signed 64-bit input profile. -/
structure Input where
  revision : Nat
  coefficients : List Int64
  lower : Int64
  upper : Int64

private def ofCoefficients (n : Nat) (coeff : Nat → ℚ)
    (outside : ∀ i, n ≤ i → coeff i = 0) : Polynomial ℚ :=
  .ofFinsupp (.ofCoeff {
    support := (Finset.range n).filter (fun i => coeff i ≠ 0)
    toFun := coeff
    mem_support_toFun := by
      intro i
      simp only [Finset.mem_filter, Finset.mem_range]
      exact ⟨And.right, fun h => ⟨lt_of_not_ge (fun hi => h (outside i hi)), h⟩⟩ })

def Input.coefficient (input : Input) (i : Nat) : ℚ :=
  ((input.coefficients[i]?.getD 0).toInt : ℚ)

theorem Input.coefficient_outside (input : Input) (i : Nat)
    (outside : input.coefficients.length ≤ i) : input.coefficient i = 0 := by
  simp [coefficient, List.getElem?_eq_none_iff.mpr outside]

def Input.polynomial (input : Input) : Polynomial ℚ :=
  ofCoefficients input.coefficients.length input.coefficient input.coefficient_outside

def Input.derivative (input : Input) : Polynomial ℚ :=
  ofCoefficients input.coefficients.length (fun i => input.coefficient (i + 1) * (i + 1))
    (fun i hi => by rw [input.coefficient_outside (i + 1) (by omega), zero_mul])

theorem Input.derivative_eq (input : Input) : input.derivative = input.polynomial.derivative := by
  ext i
  rw [Polynomial.coeff_derivative]
  rfl

/-- Check the value at a wire boundary, using the canonical rational numerator. -/
def fits (q : ℚ) : Bool :=
  decide ((-(2 ^ 127) : Int) ≤ q.num ∧ q.num < (2 ^ 127 : Int) ∧
    (q.toDyadic 126).toRat = q)

def checkedDyadic (q : ℚ) : Option Dyadic :=
  if fits q then some (q.toDyadic 126) else none

theorem checkedDyadic_exact {q : ℚ} {d : Dyadic} (h : checkedDyadic q = some d) :
    d.toRat = q := by
  unfold checkedDyadic at h
  split at h
  · rename_i hfits
    have hs := Option.some.inj h
    subst d
    exact (of_decide_eq_true hfits).2.2
  · contradiction

/-- Data exported by a subdivision that kept a half. -/
structure Midpoint (P : Polynomial ℚ) where
  parent : Dyad P
  child : Dyad P
  tested : Eval P parent.midpoint
  endpoints : (child.lower = parent.lower ∧ child.upper = parent.midpoint) ∨
    (child.lower = parent.midpoint ∧ child.upper = parent.upper)
  halfWidth : child.width = parent.width / 2

def Input.slope (input : Input) (mid : Midpoint input.polynomial) : ℚ :=
  input.derivative.eval mid.parent.midpoint.toRat

theorem Input.slope_eq (input : Input) (mid : Midpoint input.polynomial) :
    input.slope mid = input.polynomial.derivative.eval mid.parent.midpoint.toRat := by
  rw [slope, input.derivative_eq]

inductive Limit
  | halvingBudget
  | arithmetic
  deriving DecidableEq, Repr

inductive Leaf (input : Input)
  | exact (root : Root input.polynomial) (lower upper : Dyadic)
      (inside : lower ≤ root.point ∧ root.point ≤ upper)
  | bracketOnly (dyad : Dyad input.polynomial) (reason : Limit)
  | cancelled (dyad : Dyad input.polynomial)

/-- The count is the number of additional halvings after the current attempt. -/
inductive Phase (input : Input)
  | subdivide (dyad : Dyad input.polynomial) (more : Nat)
  | inverse (mid : Midpoint input.polynomial) (more : Nat)
  | check (mid : Midpoint input.polynomial) (more : Nat) (order : InverseOrder)
      (certificate : Refinement (input.slope mid) order)

variable {input : Input}

def Phase.dyad : Phase input → Dyad input.polynomial
  | .subdivide dyad _ => dyad
  | .inverse mid _ | .check mid _ _ _ => mid.child

def Phase.rank : Phase input → Nat
  | .subdivide _ n => 3 * n + 3
  | .inverse _ n => 3 * n + 2
  | .check _ n _ _ => 3 * n + 1

def Phase.cancel (phase : Phase input) : Leaf input :=
  .cancelled phase.dyad

abbrev Advance (phase : Phase input) :=
  Leaf input ⊕ { next : Phase input // next.rank < phase.rank }

private def resume (dyad : Dyad input.polynomial) (more : Nat) :
    Leaf input ⊕ { next : Phase input // next.rank ≤ 3 * more } :=
  match more with
  | 0 => .inl (.bracketOnly dyad .halvingBudget)
  | n + 1 => .inr ⟨.subdivide dyad n, by simp [Phase.rank, Nat.mul_succ]⟩

private def resumeFrom (dyad : Dyad input.polynomial) (more : Nat) (phase : Phase input)
    (room : 3 * more < phase.rank) : Advance phase :=
  match resume dyad more with
  | .inl leaf => .inl leaf
  | .inr next => .inr ⟨next.val, next.property.trans_lt room⟩

private def tryInverse (a : ℚ) : Option (Σ order, Refinement a order) := do
  if !fits a then none else
    let seed ← chooseSeed a
    if !fits seed.value then none else
      let fifth := refine seed .quintic
      if fits fifth.refined then some ⟨.quintic, fifth⟩ else
        let second := refine seed .quadratic
        if fits second.refined then some ⟨.quadratic, second⟩ else none

/-- The phase rank is checked at the construction of every continuing edge. -/
def step : (phase : Phase input) → Advance phase
  | .subdivide d more =>
    let tested := Eval.at input.polynomial d.midpoint
    if !(fits (d.lower.toRat + d.upper.toRat) && fits d.midpoint.toRat &&
        fits tested.value) then
      .inl (.bracketOnly d .arithmetic)
    else
      match d.subdivide with
      | .exact root atMidpoint =>
        .inl (.exact root d.lower d.upper (atMidpoint ▸ d.contains_midpoint))
      | .refined next endpoints halfWidth =>
        .inr ⟨.inverse ⟨d, next, tested, endpoints, halfWidth⟩ more, by
          simp [Phase.rank]⟩
  | .inverse mid more =>
    match tryInverse (input.slope mid) with
    | none => resumeFrom mid.child more (.inverse mid more) (by simp [Phase.rank])
    | some ⟨order, cert⟩ => .inr ⟨.check mid more order cert, by simp [Phase.rank]⟩
  | .check mid more order cert =>
    let x := mid.parent.midpoint.toRat
    let correction := mid.tested.value * cert.refined
    let proposal := if fits correction then checkedDyadic (x - correction) else none
    match proposal with
    | none => resumeFrom mid.child more (.check mid more order cert) (by simp [Phase.rank])
    | some y =>
      if fits (input.polynomial.eval y.toRat) then
        match h : mid.child.check y with
        | none => resumeFrom mid.child more (.check mid more order cert) (by simp [Phase.rank])
        | some root =>
          have hc := (mid.child.check_eq_some_iff y root).mp h
          .inl (.exact root mid.child.lower mid.child.upper (hc.2 ▸ hc.1))
      else resumeFrom mid.child more (.check mid more order cert) (by simp [Phase.rank])

/-- A terminal port absorbs later observations in the fixed-length trace. -/
inductive Port (input : Input)
  | running (phase : Phase input)
  | terminal (leaf : Leaf input)

def Port.rank : Port input → Nat
  | .running phase => phase.rank
  | .terminal _ => 0

def Port.advance : Port input → Port input
  | .running phase =>
    match step phase with
    | .inl leaf => .terminal leaf
    | .inr next => .running next.val
  | .terminal leaf => .terminal leaf

theorem Phase.rank_pos (phase : Phase input) : 0 < phase.rank := by
  cases phase <;> simp [rank]

theorem Port.advance_rank (port : Port input) : port.advance.rank ≤ port.rank - 1 := by
  cases port with
  | terminal => simp [advance, rank]
  | running phase =>
    cases h : step phase with
    | inl leaf => simp [advance, h, rank]
    | inr next => simpa only [advance, h, rank] using Nat.le_sub_one_of_lt next.property

def Port.observe (port : Port input) : Nat → Port input
  | 0 => port
  | n + 1 => (port.observe n).advance

theorem Port.observe_rank (port : Port input) (n : Nat) :
    (port.observe n).rank ≤ port.rank - n := by
  induction n with
  | zero => simp [observe]
  | succ n ih =>
    have h := (port.observe n).advance_rank
    simp only [observe]
    omega

/-- The exact bounded execution reaches a leaf before it runs out of observations. -/
def Port.run (port : Port input) : Leaf input :=
  match h : port.observe port.rank with
  | .terminal leaf => leaf
  | .running phase => False.elim (by
    have hbound := port.observe_rank port.rank
    rw [h] at hbound
    exact (Nat.not_le_of_lt phase.rank_pos) (by simpa [rank] using hbound))

theorem Port.observe_terminal (port : Port input) :
    port.observe port.rank = .terminal port.run := by
  unfold run
  split
  · assumption
  · rename_i phase heq
    have h := port.observe_rank port.rank
    rw [heq] at h
    exact (Nat.not_le_of_lt phase.rank_pos (by simpa [rank] using h)).elim

theorem Port.observe_after (port : Port input) (n : Nat) (enough : port.rank ≤ n) :
    port.observe n = .terminal port.run := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le enough
  clear enough
  induction k with
  | zero => simpa only [Nat.add_zero] using port.observe_terminal
  | succ k ih =>
    change (port.observe (port.rank + k)).advance = _
    rw [ih]
    rfl

/-- Each wire is the whole exact port. Agreement on observations such as sign is weaker. -/
def Port.trace (port : Port input) (n : Nat) :
    Path.Trace (fun (_ : Fin n) (a b : Port input) => a.advance = b) where
  ports := fun i => port.observe i.val
  valid := fun _ => rfl

/-- The bounded trace is a global section of the incidence sheaf. -/
def Port.section (port : Port input) :=
  (port.trace port.rank).toSection

/-- Exact matching pins the value at every wire once the entry is fixed. -/
theorem trace_determined_by_entry {n : Nat}
    (trace : Path.Trace (fun (_ : Fin n) (a b : Port input) => a.advance = b))
    (i : Fin (n + 1)) : trace.ports i = (trace.ports 0).observe i.val := by
  induction i using Fin.induction with
  | zero => rfl
  | succ i ih =>
    exact (trace.valid i).symm.trans (congrArg Port.advance ih)

/-- A trace glued from local witnesses and pinned at the entry returns the same leaf. -/
theorem Port.section_leaf {n : Nat} (port : Port input)
    (trace : Path.Trace (fun (_ : Fin n) (a b : Port input) => a.advance = b))
    (entry : trace.ports 0 = port) (enough : port.rank ≤ n) :
    trace.ports (Fin.last n) = .terminal port.run := by
  rw [trace_determined_by_entry, entry]
  exact port.observe_after n enough

/-- Local certificates over a complete cover give one source-pinned trace and leaf. -/
theorem Port.glue_from_entry {n : Nat} (port : Port input) (enough : port.rank ≤ n + 1)
    (gate : (g : Fin (n + 1)) → Path.GateWitness
      (fun _ (a b : Port input) => a.advance = b) g)
    (matching : Compatible (fun g => (gate g).toSection))
    (entry : (gate 0).input = port) :
    ∃! trace : Path.Trace (fun (_ : Fin (n + 1)) (a b : Port input) => a.advance = b),
      (∀ g, trace.toSection.restrict (Path.starCover.inside g) = (gate g).toSection) ∧
      trace.ports (Fin.last (n + 1)) = .terminal port.run := by
  obtain ⟨trace, agrees, unique⟩ := Path.uniqueTrace gate matching
  have hstart : trace.ports 0 = port := by
    have shared := congrArg
      (fun s => s.value ((0 : Fin (n + 1)).castSucc) (Or.inl rfl)) (agrees 0)
    exact shared.trans ((Path.GateWitness.toSection_input (gate 0)).trans entry)
  exact ⟨trace, ⟨agrees, port.section_leaf trace hstart enough⟩,
    fun candidate h => unique candidate h.1⟩

inductive InputError
  | coefficients
  | bracket
  | arithmetic
  deriving DecidableEq, Repr

/-- Start with a boundary certificate or a maximum of twelve sign-preserving halves. -/
def Input.enter (source : Input) : Except InputError (Port source) :=
  let lower := Dyadic.ofInt source.lower.toInt
  let upper := Dyadic.ofInt source.upper.toInt
  if source.coefficients.length < 2 || 6 < source.coefficients.length ||
      source.coefficients.getLast? == some 0 then .error .coefficients
  else if !(fits (upper.toRat - lower.toRat) &&
      fits (source.polynomial.eval lower.toRat) && fits (source.polynomial.eval upper.toRat)) then
    .error .arithmetic
  else
    match h : admit source.polynomial lower upper with
    | none => .error .bracket
    | some (.inl root) => .ok (.terminal (.exact root lower upper (admit_root_inside h)))
    | some (.inr dyad) => .ok (.running (.subdivide dyad 11))

def Input.run (source : Input) : Except InputError (Leaf source) :=
  source.enter.map Port.run

theorem Input.entry_rank (source : Input) (port : Port source)
    (h : source.enter = .ok port) : port.rank ≤ 36 := by
  simp only [enter] at h
  split at h
  · contradiction
  split at h
  · contradiction
  split at h
  · contradiction
  · cases h
    simp [Port.rank]
  · cases h
    simp [Port.rank, Phase.rank]

/-- Read back a root only from the exact leaf port. -/
def Leaf.root? : Leaf input → Option Dyadic
  | .exact root _ _ _ => some root.point
  | _ => none

theorem Leaf.root?_sound (leaf : Leaf input) {x : Dyadic}
    (h : leaf.root? = some x) : input.polynomial.eval x.toRat = 0 := by
  cases leaf with
  | exact root lower upper inside =>
    simp only [root?, Option.some.injEq] at h
    simpa only [← h] using root.zero
  | bracketOnly | cancelled => contradiction

def quinticExample : Input := ⟨0, [-1, 2, 0, 0, -1, 2], -1, 1⟩
def nonDyadicExample : Input := ⟨0, [-1, 3], 0, 1⟩

def Input.root? (source : Input) : Option Dyadic :=
  match source.run with
  | .ok leaf => leaf.root?
  | .error _ => none

theorem Input.root?_sound (source : Input) {x : Dyadic} (h : source.root? = some x) :
    source.polynomial.eval x.toRat = 0 := by
  unfold root? at h
  split at h
  · exact Leaf.root?_sound _ h
  · contradiction

-- Executable source profiles from the Rust circuit, including the non-dyadic boundary.
#guard quinticExample.root? == some (Dyadic.ofIntWithPrec 1 1)
#guard match nonDyadicExample.run with
  | .ok (.bracketOnly _ .halvingBudget) => true
  | _ => false
#guard match (Input.mk 0 [-1, 1073741825] (-1) 1).enter with
  | .ok port => match port.observe 2 with
    | .running (.check _ _ .quadratic _) => true
    | _ => false
  | .error _ => false

end GRWTSK.NumericalAnalysis.PolynomialCircuit
