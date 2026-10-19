import DAF.Causal.CausalState

/-!
# Observer-localState causal factors

The global causal quotient remembers the complete future behavior of the
selected observer family.  This module also forms the quotient seen by one
observer and proves that the global quotient maps onto it.  The tuple of all
localState classes determines a global causal class, but only tuples in the
realized image are claimed to come from a global state.

An `ObserverReducer` is an implementation-level localState state machine with a
proved semiconjugacy to the global recursion.  Its localState type is required to be
realized by the reducer; `ofRealizedImage` supplies this condition for an
arbitrary raw reducer by restricting its codomain.  Every such implementation
maps onto the canonical localState causal quotient.  It is equivalent to that
quotient only under the separately stated `Exact` kernel hypothesis.

Causal minimality is relative to the selected observations, and causal
equivalence need not be equality of underlying states.  The results make no
claim about reversibility, phases, cycle data, homology, avalanche behavior,
cryptographic security, or the sufficiency of one observed trajectory.
-/

namespace ObserverFactor

open ObservableRecursion

universe uI uS uR uO uL

variable {Input : Type uI} {State : Type uS} {Resolution : Type uR}

/-! ## The canonical quotient for one observer -/

/-- Equality of one observer's output after every future input word. -/
def LocalCausalEquivalent
    (M : System Input State Resolution)
    (ρ : Resolution)
    (x y : State) : Prop :=
  ∀ inputs : List Input,
    M.observe ρ (M.run inputs x) =
      M.observe ρ (M.run inputs y)

theorem localCausalEquivalent_refl
    (M : System Input State Resolution)
    (ρ : Resolution)
    (x : State) :
    LocalCausalEquivalent M ρ x x := by
  intro inputs
  rfl

theorem localCausalEquivalent_symm
    (M : System Input State Resolution)
    {ρ : Resolution} {x y : State}
    (h : LocalCausalEquivalent M ρ x y) :
    LocalCausalEquivalent M ρ y x := by
  intro inputs
  exact (h inputs).symm

theorem localCausalEquivalent_trans
    (M : System Input State Resolution)
    {ρ : Resolution} {x y z : State}
    (hxy : LocalCausalEquivalent M ρ x y)
    (hyz : LocalCausalEquivalent M ρ y z) :
    LocalCausalEquivalent M ρ x z := by
  intro inputs
  exact (hxy inputs).trans (hyz inputs)

/-- The setoid induced by one observer's complete future trace. -/
def localCausalSetoid
    (M : System Input State Resolution)
    (ρ : Resolution) : Setoid State where
  r := LocalCausalEquivalent M ρ
  iseqv := {
    refl := fun x => localCausalEquivalent_refl M ρ x
    symm := fun h => localCausalEquivalent_symm M h
    trans := fun hxy hyz => localCausalEquivalent_trans M hxy hyz
  }

/-- Canonical causal state for a single observer. -/
def LocalCausalState
    (M : System Input State Resolution)
    (ρ : Resolution) :=
  Quotient (localCausalSetoid M ρ)

/-- Send a concrete state to its localState causal class. -/
def toLocalCausal
    (M : System Input State Resolution)
    (ρ : Resolution)
    (x : State) : LocalCausalState M ρ :=
  Quotient.mk (localCausalSetoid M ρ) x

@[simp]
theorem toLocalCausal_eq_iff
    (M : System Input State Resolution)
    (ρ : Resolution)
    (x y : State) :
    toLocalCausal M ρ x = toLocalCausal M ρ y ↔
      LocalCausalEquivalent M ρ x y := by
  constructor
  · exact Quotient.exact
  · intro h
    apply Quotient.sound
    exact h

/-- Local causal equivalence is stable under every input transition. -/
theorem localCausalEquivalent_step
    (M : System Input State Resolution)
    {ρ : Resolution} {x y : State}
    (input : Input)
    (h : LocalCausalEquivalent M ρ x y) :
    LocalCausalEquivalent M ρ
      (M.step input x) (M.step input y) := by
  intro inputs
  simpa only [ObservableRecursion.System.run_cons] using
    h (input :: inputs)

/-- The transition induced on one observer's causal quotient. -/
def localCausalStep
    (M : System Input State Resolution)
    (ρ : Resolution)
    (input : Input) :
    LocalCausalState M ρ → LocalCausalState M ρ :=
  Quotient.map (M.step input)
    (fun _ _ h => localCausalEquivalent_step M input h)

@[simp]
theorem localCausalStep_toLocalCausal
    (M : System Input State Resolution)
    (ρ : Resolution)
    (input : Input)
    (x : State) :
    localCausalStep M ρ input (toLocalCausal M ρ x) =
      toLocalCausal M ρ (M.step input x) :=
  rfl

/-- Current observation descends to the observer-localState quotient. -/
def localCausalObserve
    (M : System Input State Resolution)
    (ρ : Resolution) :
    LocalCausalState M ρ → M.Observation ρ :=
  Quotient.lift (M.observe ρ) (by
    intro x y h
    simpa only [ObservableRecursion.System.run_nil] using h [])

@[simp]
theorem localCausalObserve_toLocalCausal
    (M : System Input State Resolution)
    (ρ : Resolution)
    (x : State) :
    localCausalObserve M ρ (toLocalCausal M ρ x) =
      M.observe ρ x :=
  rfl

/-! ## The global quotient maps onto every localState quotient -/

/-- Forget all observers except `ρ`. -/
def causalToLocal
    (M : System Input State Resolution)
    (ρ : Resolution) :
    M.CausalState → LocalCausalState M ρ :=
  Quotient.map id (fun _ _ h inputs => h inputs ρ)

@[simp]
theorem causalToLocal_toCausal
    (M : System Input State Resolution)
    (ρ : Resolution)
    (x : State) :
    causalToLocal M ρ (M.toCausal x) =
      toLocalCausal M ρ x :=
  rfl

/-- Every localState causal class is represented by a global causal class. -/
theorem causalToLocal_surjective
    (M : System Input State Resolution)
    (ρ : Resolution) :
    Function.Surjective (causalToLocal M ρ) := by
  intro localState
  refine Quotient.inductionOn localState ?_
  intro x
  exact ⟨M.toCausal x, rfl⟩

/-- The global-to-localState factor commutes with every input transition. -/
theorem causalToLocal_step
    (M : System Input State Resolution)
    (ρ : Resolution)
    (input : Input)
    (c : M.CausalState) :
    causalToLocal M ρ (M.causalStep input c) =
      localCausalStep M ρ input (causalToLocal M ρ c) := by
  refine Quotient.inductionOn c ?_
  intro x
  rfl

/-- The global and localState descended observations agree. -/
theorem causalToLocal_observe
    (M : System Input State Resolution)
    (ρ : Resolution)
    (c : M.CausalState) :
    localCausalObserve M ρ (causalToLocal M ρ c) =
      M.causalObserve ρ c := by
  refine Quotient.inductionOn c ?_
  intro x
  rfl

/-! ## The compatible tuple of every localState class -/

/-- Collect the localState causal class seen at every resolution. -/
def observerTuple
    (M : System Input State Resolution) :
    M.CausalState → (∀ ρ, LocalCausalState M ρ) :=
  fun c ρ => causalToLocal M ρ c

/-- All localState causal classes together determine the global causal class. -/
theorem observerTuple_injective
    (M : System Input State Resolution) :
    Function.Injective (observerTuple M) := by
  intro c d
  refine Quotient.inductionOn₂ c d ?_
  intro x y hxy
  apply Quotient.sound
  intro inputs ρ
  have hlocal :
      toLocalCausal M ρ x = toLocalCausal M ρ y := by
    exact congrFun hxy ρ
  exact (toLocalCausal_eq_iff M ρ x y).mp hlocal inputs

/-- The subtype of localState-class tuples actually realized by a global class. -/
def ObserverTupleImage
    (M : System Input State Resolution) :=
  {tuple : ∀ ρ, LocalCausalState M ρ //
    ∃ c : M.CausalState, observerTuple M c = tuple}

/-- Send a global causal class to its realized observer tuple. -/
def toObserverTupleImage
    (M : System Input State Resolution)
    (c : M.CausalState) : ObserverTupleImage M :=
  ⟨observerTuple M c, ⟨c, rfl⟩⟩

/-- Global causal states are exactly the realized compatible localState tuples. -/
noncomputable def causalStateEquivObserverTupleImage
    (M : System Input State Resolution) :
    M.CausalState ≃ ObserverTupleImage M :=
  Equiv.ofBijective (toObserverTupleImage M) ⟨by
    intro c d h
    apply observerTuple_injective M
    exact congrArg Subtype.val h, by
    rintro ⟨tuple, c, hc⟩
    refine ⟨c, ?_⟩
    apply Subtype.ext
    exact hc⟩

/-! ## User-supplied observer reducers -/

/--
A surjective observer-localState state machine semiconjugate to the global system.
Surjectivity means every declared localState value is realized by a global state.
-/
structure ObserverReducer
    (M : System Input State Resolution)
    (ρ : Resolution) where
  Local : Type uL
  reduce : State → Local
  localStep : Input → Local → Local
  localObserve : Local → M.Observation ρ
  reduce_surjective : Function.Surjective reduce
  step_commute : ∀ input x,
    reduce (M.step input x) = localStep input (reduce x)
  observe_commute : ∀ x,
    localObserve (reduce x) = M.observe ρ x

namespace ObserverReducer

variable {M : System Input State Resolution} {ρ : Resolution}

/--
Restrict an arbitrary raw reducer to the subtype of values it actually
realizes.  The supplied transition equation proves this image is closed.
-/
def ofRealizedImage
    {Local : Type uL}
    (reduce : State → Local)
    (localStep : Input → Local → Local)
    (localObserve : Local → M.Observation ρ)
    (step_commute : ∀ input x,
      reduce (M.step input x) = localStep input (reduce x))
    (observe_commute : ∀ x,
      localObserve (reduce x) = M.observe ρ x) :
    ObserverReducer M ρ where
  Local := {localState : Local // ∃ x : State, reduce x = localState}
  reduce x := ⟨reduce x, ⟨x, rfl⟩⟩
  localStep input localState :=
    ⟨localStep input localState.1, by
      rcases localState.2 with ⟨x, hx⟩
      refine ⟨M.step input x, ?_⟩
      rw [step_commute, hx]⟩
  localObserve localState := localObserve localState.1
  reduce_surjective := by
    rintro ⟨localState, x, hx⟩
    refine ⟨x, ?_⟩
    apply Subtype.ext
    exact hx
  step_commute input x := by
    apply Subtype.ext
    exact step_commute input x
  observe_commute := observe_commute

/-- Execute the reducer's localState transition over an input word. -/
def run
    (R : ObserverReducer M ρ)
    (inputs : List Input)
    (localState : R.Local) : R.Local :=
  match inputs with
  | [] => localState
  | input :: rest => R.run rest (R.localStep input localState)

@[simp]
theorem run_nil
    (R : ObserverReducer M ρ)
    (localState : R.Local) :
    R.run [] localState = localState :=
  rfl

@[simp]
theorem run_cons
    (R : ObserverReducer M ρ)
    (input : Input)
    (inputs : List Input)
    (localState : R.Local) :
    R.run (input :: inputs) localState =
      R.run inputs (R.localStep input localState) :=
  rfl

/-- Reduction commutes with execution of every finite input word. -/
theorem reduce_run
    (R : ObserverReducer M ρ)
    (inputs : List Input)
    (x : State) :
    R.reduce (M.run inputs x) = R.run inputs (R.reduce x) := by
  induction inputs generalizing x with
  | nil => rfl
  | cons input rest ih =>
      rw [ObservableRecursion.System.run_cons, R.run_cons,
        ih, R.step_commute]

/-- Equal reducer values imply equal future traces for this observer. -/
theorem reduce_eq_implies_localCausalEquivalent
    (R : ObserverReducer M ρ)
    {x y : State}
    (h : R.reduce x = R.reduce y) :
    LocalCausalEquivalent M ρ x y := by
  intro inputs
  calc
    M.observe ρ (M.run inputs x) =
        R.localObserve (R.reduce (M.run inputs x)) :=
      (R.observe_commute _).symm
    _ = R.localObserve (R.run inputs (R.reduce x)) := by
      rw [R.reduce_run]
    _ = R.localObserve (R.run inputs (R.reduce y)) := by
      rw [h]
    _ = R.localObserve (R.reduce (M.run inputs y)) := by
      rw [R.reduce_run]
    _ = M.observe ρ (M.run inputs y) := R.observe_commute _

/-- The canonical localState class represented by a realized reducer state. -/
noncomputable def toCanonicalLocal
    (R : ObserverReducer M ρ) :
    R.Local → LocalCausalState M ρ :=
  fun localState =>
    toLocalCausal M ρ (Classical.choose (R.reduce_surjective localState))

@[simp]
theorem toCanonicalLocal_reduce
    (R : ObserverReducer M ρ)
    (x : State) :
    R.toCanonicalLocal (R.reduce x) =
      toLocalCausal M ρ x := by
  apply Quotient.sound
  apply R.reduce_eq_implies_localCausalEquivalent
  exact Classical.choose_spec (R.reduce_surjective (R.reduce x))

/-- Every canonical localState class is represented by a reducer state. -/
theorem toCanonicalLocal_surjective
    (R : ObserverReducer M ρ) :
    Function.Surjective R.toCanonicalLocal := by
  intro localState
  refine Quotient.inductionOn localState ?_
  intro x
  exact ⟨R.reduce x, R.toCanonicalLocal_reduce x⟩

/-- The canonical factor commutes with the localState transition. -/
theorem toCanonicalLocal_step
    (R : ObserverReducer M ρ)
    (input : Input)
    (localState : R.Local) :
    R.toCanonicalLocal (R.localStep input localState) =
      localCausalStep M ρ input (R.toCanonicalLocal localState) := by
  rcases R.reduce_surjective localState with ⟨x, rfl⟩
  rw [← R.step_commute, R.toCanonicalLocal_reduce,
    R.toCanonicalLocal_reduce,
    localCausalStep_toLocalCausal M]

/-- The canonical factor preserves the localState observation. -/
theorem toCanonicalLocal_observe
    (R : ObserverReducer M ρ)
    (localState : R.Local) :
    localCausalObserve M ρ (R.toCanonicalLocal localState) =
      R.localObserve localState := by
  rcases R.reduce_surjective localState with ⟨x, rfl⟩
  rw [R.toCanonicalLocal_reduce,
    localCausalObserve_toLocalCausal M, R.observe_commute]

/-- The canonical factor is uniquely determined by its action on reductions. -/
theorem toCanonicalLocal_unique
    (R : ObserverReducer M ρ)
    (factor : R.Local → LocalCausalState M ρ)
    (hfactor : ∀ x,
      factor (R.reduce x) = toLocalCausal M ρ x) :
    factor = R.toCanonicalLocal := by
  funext localState
  rcases R.reduce_surjective localState with ⟨x, rfl⟩
  rw [hfactor, R.toCanonicalLocal_reduce]

/-- A reducer is exact when its kernel is precisely localState causal equivalence. -/
def Exact
    (R : ObserverReducer M ρ) : Prop :=
  ∀ x y,
    R.reduce x = R.reduce y ↔
      LocalCausalEquivalent M ρ x y

/-- Exactness makes the canonical factor injective. -/
theorem toCanonicalLocal_injective_of_exact
    (R : ObserverReducer M ρ)
    (hExact : R.Exact) :
    Function.Injective R.toCanonicalLocal := by
  intro localState₁ localState₂ h
  rcases R.reduce_surjective localState₁ with ⟨x, rfl⟩
  rcases R.reduce_surjective localState₂ with ⟨y, rfl⟩
  apply (hExact x y).2
  apply (toLocalCausal_eq_iff M ρ x y).mp
  simpa only [R.toCanonicalLocal_reduce] using h

/-- An exact reducer is equivalent to the canonical localState causal state. -/
noncomputable def equivCanonicalLocal
    (R : ObserverReducer M ρ)
    (hExact : R.Exact) :
    R.Local ≃ LocalCausalState M ρ :=
  Equiv.ofBijective R.toCanonicalLocal
    ⟨R.toCanonicalLocal_injective_of_exact hExact,
      R.toCanonicalLocal_surjective⟩

/-- Surjectivity makes the localState transition forced by semiconjugacy. -/
theorem localStep_unique
    (R : ObserverReducer M ρ)
    (candidate : Input → R.Local → R.Local)
    (hCandidate : ∀ input x,
      R.reduce (M.step input x) = candidate input (R.reduce x)) :
    candidate = R.localStep := by
  funext input localState
  rcases R.reduce_surjective localState with ⟨x, hx⟩
  rw [← hx, ← hCandidate, ← R.step_commute]

/-- Surjectivity likewise makes the localState observation map unique. -/
theorem localObserve_unique
    (R : ObserverReducer M ρ)
    (candidate : R.Local → M.Observation ρ)
    (hCandidate : ∀ x,
      candidate (R.reduce x) = M.observe ρ x) :
    candidate = R.localObserve := by
  funext localState
  rcases R.reduce_surjective localState with ⟨x, hx⟩
  rw [← hx, hCandidate, R.observe_commute]

end ObserverReducer

end ObserverFactor
