# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.QuantizerTower.Varianta553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46b6bd68f0e952fd2be7e9ffbd410da5529ca163` · SHA-256 `a553291cf0de463c1c92d6dd0ee720e42de38b4f9a1041b2ea6f5d17b3150779`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Causal.ObserverFactor
import Mathlib.Order.BoundedOrder.Basic

/-!
# Coherent towers of observer resolutions

A `QuantizerTower` specifies how a fine observation is projected to every
coarser resolution.  The order convention is `coarse ≤ fine`, so maps travel
from fine observations to coarse observations.  Coherence and compatibility
with the global observation induce canonical surjections between the
corresponding observer-local causal quotients.

When the resolution order has a top element, equality of top-resolution
future traces implies equality at every resolution.  Consequently the global
causal state is equivalent to the top local causal state.  Without a finest
resolution this module makes no claim that one local state represents the
whole observer family.  Causal minimality remains relative to the selected
observers, and none of these projections imply equality of concrete states,
reversibility, phase information, cycle data, homological transport, or
avalanche behavior.
-/

open ObservableRecursion
open ObserverFactor

universe uI uS uR uO

/-- A coherent family of fine-to-coarse observation projections. -/
structure QuantizerTower
    {Input : Type uI}
    {State : Type uS}
    {Resolution : Type uR}
    (M : System Input State Resolution)
    [Preorder Resolution] where
  project : ∀ {coarse fine : Resolution},
    coarse ≤ fine → M.Observation fine → M.Observation coarse
  project_refl : ∀ (ρ : Resolution) (observation : M.Observation ρ),
    project (le_refl ρ) observation = observation
  project_trans : ∀ {coarse middle fine : Resolution}
      (hcm : coarse ≤ middle) (hmf : middle ≤ fine)
      (observation : M.Observation fine),
    project (hcm.trans hmf) observation =
      project hcm (project hmf observation)
  observe_project : ∀ {coarse fine : Resolution}
      (h : coarse ≤ fine) (x : State),
    project h (M.observe fine x) = M.observe coarse x

namespace QuantizerTower

variable {Input : Type uI} {State : Type uS} {Resolution : Type uR}
variable {M : System Input State Resolution}
variable [Preorder Resolution]

/-- Fine local causal equivalence implies coarse local causal equivalence. -/
theorem localCausalEquivalent_of_le
    (T : QuantizerTower M)
    {coarse fine : Resolution}
    (h : coarse ≤ fine)
    {x y : State}
    (hxy : LocalCausalEquivalent M fine x y) :
    LocalCausalEquivalent M coarse x y := by
  intro inputs
  calc
    M.observe coarse (M.run inputs x) =
        T.project h (M.observe fine (M.run inputs x)) :=
      (T.observe_project h _).symm
    _ = T.project h (M.observe fine (M.run inputs y)) := by
      rw [hxy inputs]
    _ = M.observe coarse (M.run inputs y) :=
      T.observe_project h _

/-- Forget fine observational distinctions that the coarse observer cannot see. -/
def localProject
    (T : QuantizerTower M)
    {coarse fine : Resolution}
    (h : coarse ≤ fine) :
    LocalCausalState M fine → LocalCausalState M coarse :=
  Quotient.map id
    (fun _ _ hxy => T.localCausalEquivalent_of_le h hxy)

@[simp]
theorem localProject_toLocalCausal
    (T : QuantizerTower M)
    {coarse fine : Resolution}
    (h : coarse ≤ fine)
    (x : State) :
    T.localProject h (toLocalCausal M fine x) =
      toLocalCausal M coarse x :=
  rfl

/-- Every coarse local class has a representative at the finer resolution. -/
theorem localProject_surjective
    (T : QuantizerTower M)
    {coarse fine : Resolution}
    (h : coarse ≤ fine) :
    Function.Surjective (T.localProject h) := by
  intro coarseState
  refine Quotient.inductionOn coarseState ?_
  intro x
  exact ⟨toLocalCausal M fine x, rfl⟩

/-- Fine-to-coarse projection commutes with every descended transition. -/
theorem localProject_step
    (T : QuantizerTower M)
    {coarse fine : Resolution}
    (h : coarse ≤ fine)
    (input : Input)
    (c : LocalCausalState M fine) :
    T.localProject h (localCausalStep M fine input c) =
      localCausalStep M coarse input (T.localProject h c) := by
  refine Quotient.inductionOn c ?_
  intro x
  rfl

/-- Projecting a fine descended observation gives the coarse observation. -/
theorem localProject_observe
    (T : QuantizerTower M)
    {coarse fine : Resolution}
    (h : coarse ≤ fine)
    (c : LocalCausalState M fine) :
    T.project h (localCausalObserve M fine c) =
      localCausalObserve M coarse (T.localProject h c) := by
  refine Quotient.inductionOn c ?_
  intro x
  exact T.observe_project h x

/-- Projection along reflexivity is the identity local factor. -/
theorem localProject_refl
    (T : QuantizerTower M)
    (ρ : Resolution) :
    T.localProject (le_refl ρ) = id := by
  funext c
  refine Quotient.inductionOn c ?_
  intro x
  rfl

/-- Successive local projections equal the direct coarse projection. -/
theorem localProject_trans
    (T : QuantizerTower M)
    {coarse middle fine : Resolution}
    (hcm : coarse ≤ middle)
    (hmf : middle ≤ fine)
    (c : LocalCausalState M fine) :
    T.localProject hcm (T.localProject hmf c) =
      T.localProject (hcm.trans hmf) c := by
  refine Quotient.inductionOn c ?_
  intro x
  rfl

/-- The global-to-local maps form the expected commuting triangle. -/
theorem causalToLocal_naturality
    (T : QuantizerTower M)
    {coarse fine : Resolution}
    (h : coarse ≤ fine)
    (c : M.CausalState) :
    T.localProject h (causalToLocal M fine c) =
      causalToLocal M coarse c := by
  refine Quotient.inductionOn c ?_
  intro x
  rfl

/-! ## A finest observer represents the complete selected observer family -/

variable [OrderTop Resolution]

/-- The top local factor is injective because it projects to every observer. -/
theorem causalToFinestLocal_injective
    (T : QuantizerTower M) :
    Function.Injective (causalToLocal M (⊤ : Resolution)) := by
  intro c d
  refine Quotient.inductionOn₂ c d ?_
  intro x y hxy
  apply Quotient.sound
  have htop : LocalCausalEquivalent M (⊤ : Resolution) x y :=
    (toLocalCausal_eq_iff M (⊤ : Resolution) x y).mp hxy
  intro inputs ρ
  calc
    M.observe ρ (M.run inputs x) =
        T.project (show ρ ≤ (⊤ : Resolution) from le_top)
          (M.observe ⊤ (M.run inputs x)) :=
      (T.observe_project le_top _).symm
    _ = T.project (show ρ ≤ (⊤ : Resolution) from le_top)
          (M.observe ⊤ (M.run inputs y)) := by
      rw [htop inputs]
    _ = M.observe ρ (M.run inputs y) :=
      T.observe_project le_top _

/--
With a finest resolution, global causal states are exactly its local causal
states.  The equivalence is the canonical global-to-local factor.
-/
noncomputable def causalStateEquivFinestLocal
    (T : QuantizerTower M) :
    M.CausalState ≃ LocalCausalState M (⊤ : Resolution) :=
  Equiv.ofBijective (causalToLocal M (⊤ : Resolution))
    ⟨T.causalToFinestLocal_injective,
      causalToLocal_surjective M (⊤ : Resolution)⟩

@[simp]
theorem causalStateEquivFinestLocal_apply
    (T : QuantizerTower M)
    (c : M.CausalState) :
    T.causalStateEquivFinestLocal c =
      causalToLocal M (⊤ : Resolution) c :=
  rfl

end QuantizerTower

/-! ## Dynamically closed observations -/

namespace ObserverFactor

universe uInput uState uResolution uObservation

/--
An observation whose value evolves autonomously under every system input.
Only under this kernel-stability condition is the current observation already
a sufficient local causal state.
-/
structure ClosedObservation
    {Input : Type uInput}
    {State : Type uState}
    {Resolution : Type uResolution}
    (M : System Input State Resolution)
    (ρ : Resolution) where
  observedStep : Input → M.Observation ρ → M.Observation ρ
  commute : ∀ input x,
    M.observe ρ (M.step input x) =
      observedStep input (M.observe ρ x)

/-- A closed observation has no additional hidden future distinctions. -/
theorem localCausalEquivalent_iff_currentObservation_eq
    {Input : Type uInput}
    {State : Type uState}
    {Resolution : Type uResolution}
    {M : System Input State Resolution}
    {ρ : Resolution}
    (C : ClosedObservation M ρ)
    (x y : State) :
    LocalCausalEquivalent M ρ x y ↔
      M.observe ρ x = M.observe ρ y := by
  constructor
  · intro h
    simpa using h []
  · intro h inputs
    induction inputs generalizing x y with
    | nil => exact h
    | cons input rest ih =>
        apply ih
        rw [C.commute, C.commute, h]

end ObserverFactor
```
