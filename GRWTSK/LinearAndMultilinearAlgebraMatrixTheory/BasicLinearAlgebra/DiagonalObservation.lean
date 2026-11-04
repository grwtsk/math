/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ObservationFibers
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.PartialChannels
import GRWTSK.FunctionsOfAComplexVariable.ReciprocalStability

set_option autoImplicit false

noncomputable section

/-!
# Diagonal observations, exact reconstruction, and residual control

For an arbitrary index type, an observation multiplies coordinate i by a(i).
The reconstruction divides by precisely that same coefficient. The two round
trips hold iff no coordinate coefficient vanishes. If a coefficient is zero,
a unit coordinate vector and zero have the same observation. No finite-support,
finite-dimensionality, stochastic-independence, or numerical-stability premise
is concealed in the algebraic assertion.

The consumer of the round trip is the existing observation-fiber API: every
predicate on the source is determined, and the existing partial-channel serial
criterion transports precisely the values actually published. Neither result
creates availability where the original partial channel has no result.
Quantitative conclusions use the separate residual/margin result. Equality of
returned values is not a promise of an efficient inversion algorithm.

Primary route: coordinatewise field identities. Hostile check: an explicitly
constructed coordinate vector in the kernel of any zero multiplier. These are
complementary necessity and sufficiency arguments, not independent proofs of RH.
Reuses ObservationFibers and PartialChannels at
567008acec20530ce7776dbb0af5f8f88cea0487. Elementary linear algebra; novelty not
claimed. AI-assisted formalization. Independent review, compilation, fresh kernel
checking and transitive axiom audit: NOT_RUN. Target: Lean v4.34.1.
-/

namespace GRWTSK.LinearAlgebra.Diagonal

universe u v
variable {ι : Type u} {Source : Type v}

/-- Coefficients are fixed by the observation, not reconstructed from a label. -/
def observe (a x : ι → ℂ) : ι → ℂ := fun i => a i * x i

/-- Mathematical division, with no claim of computability or a certified margin. -/
def reconstruct (a y : ι → ℂ) : ι → ℂ := fun i => y i / a i

/-- Encode-then-decode recovers every coordinate at its original index. -/
theorem reconstruct_observe (a : ι → ℂ) (hn : ∀ i, a i ≠ 0) (x : ι → ℂ) :
    reconstruct a (observe a x) = x := by
  funext i
  dsimp [reconstruct, observe]
  field_simp [hn i] <;> ring

/-- Decode-then-encode recovers every output; both directions are needed for an equivalence. -/
theorem observe_reconstruct (a : ι → ℂ) (hn : ∀ i, a i ≠ 0) (y : ι → ℂ) :
    observe a (reconstruct a y) = y := by
  funext i
  dsimp [reconstruct, observe]
  field_simp [hn i] <;> ring

/-- The actual maps, not just a cardinality comparison. -/
def equivalence (a : ι → ℂ) (hn : ∀ i, a i ≠ 0) : (ι → ℂ) ≃ (ι → ℂ) where
  toFun := observe a
  invFun := reconstruct a
  left_inv := reconstruct_observe a hn
  right_inv := observe_reconstruct a hn

theorem observe_injective (a : ι → ℂ) (hn : ∀ i, a i ≠ 0) :
    Function.Injective (observe a) := by
  intro x y hxy
  calc
    x = reconstruct a (observe a x) := (reconstruct_observe a hn x).symm
    _ = reconstruct a (observe a y) := congrArg (reconstruct a) hxy
    _ = y := reconstruct_observe a hn y

/-- A vanished coordinate gives an explicit collision, regardless of every other coefficient. -/
theorem zero_coordinate_collision (a : ι → ℂ) (j : ι) (hj : a j = 0) :
    ∃ x y : ι → ℂ, x ≠ y ∧ observe a x = observe a y := by
  classical
  let spike : ι → ℂ := fun i => if i = j then 1 else 0
  refine ⟨spike, fun _ => 0, ?_, ?_⟩
  · intro heq
    have hvalue := congrFun heq j
    simpa [spike] using hvalue
  · funext i
    by_cases hij : i = j
    · subst i
      simp [observe, spike, hj]
    · simp [observe, spike, hij]

/-- Nonzero coefficients are necessary as well as sufficient. -/
theorem injective_iff (a : ι → ℂ) :
    Function.Injective (observe a) ↔ ∀ i, a i ≠ 0 := by
  constructor
  · intro hi j hj
    obtain ⟨x, y, hne, heq⟩ := zero_coordinate_collision a j hj
    exact hne (hi heq)
  · exact observe_injective a

/-- A consumer-backed use of the existing observational descent theorem. -/
theorem all_predicates_determined_iff (a : ι → ℂ) :
    (∀ P : (ι → ℂ) → Prop, GRWTSK.Logic.Observation.Determined (observe a) P) ↔
      ∀ i, a i ≠ 0 := by
  constructor
  · intro h
    apply (injective_iff a).mp
    intro x y heq
    exact (GRWTSK.Logic.Observation.all_predicates_determined_iff_injective
      (observe a)).mp h x y heq
  · intro hn
    apply (GRWTSK.Logic.Observation.all_predicates_determined_iff_injective
      (observe a)).mpr
    intro x y heq
    exact observe_injective a hn heq

/-- Full predicate recovery is returned only after the no-zero-coordinate premise. -/
theorem determines (a : ι → ℂ) (hn : ∀ i, a i ≠ 0)
    (P : (ι → ℂ) → Prop) : GRWTSK.Logic.Observation.Determined (observe a) P :=
  (all_predicates_determined_iff a).mpr hn P

/-- Surjectivity fails at a vanished coordinate: an output with that coordinate one is impossible. -/
theorem not_surjective_of_zero (a : ι → ℂ) (j : ι) (hj : a j = 0) :
    ¬ Function.Surjective (observe a) := by
  intro hs
  obtain ⟨x, hx⟩ := hs (fun _ => 1)
  have hvalue := congrFun hx j
  simp [observe, hj] at hvalue

/-- A source already published by a partial channel survives a lossless encode/decode. -/
theorem partial_roundtrip (a : ι → ℂ) (hn : ∀ i, a i ≠ 0)
    (f : GRWTSK.Logic.Channel.Partial Source (ι → ℂ)) :
    GRWTSK.Logic.Channel.serial
      (GRWTSK.Logic.Channel.serial f (fun x => some (observe a x)))
      (fun y => some (reconstruct a y)) = f := by
  funext x
  cases hx : f x with
  | none => simp [GRWTSK.Logic.Channel.serial, hx]
  | some y =>
    simp [GRWTSK.Logic.Channel.serial, hx, reconstruct_observe a hn y]

/-- More stages preserve, but do not manufacture, source availability. -/
theorem partial_roundtrip_available_iff (a : ι → ℂ) (hn : ∀ i, a i ≠ 0)
    (f : GRWTSK.Logic.Channel.Partial Source (ι → ℂ)) (x : Source) :
    GRWTSK.Logic.Channel.Available
      (GRWTSK.Logic.Channel.serial
        (GRWTSK.Logic.Channel.serial f (fun y => some (observe a y)))
        (fun y => some (reconstruct a y))) x ↔
      GRWTSK.Logic.Channel.Available f x := by
  rw [partial_roundtrip a hn f]

/-- One lower margin and a coordinatewise residual certificate imply a uniform error bound. -/
theorem reconstruction_error (a u y : ι → ℂ) {δ ε : ℝ}
    (hδ : 0 < δ) (hmargin : ∀ i, δ ≤ ‖a i‖)
    (hresidual : ∀ i, ‖observe a u i - y i‖ ≤ ε) :
    ∀ i, ‖u i - reconstruct a y i‖ ≤ ε / δ := by
  intro i
  exact GRWTSK.Analysis.Division.error_le_of_residual hδ (hmargin i) (hresidual i)

/-- Output equality at a zero coordinate does not determine even that coordinate's value. -/
theorem zero_coordinate_not_determined (a : ι → ℂ) (j : ι) (hj : a j = 0) :
    ¬ GRWTSK.Logic.Observation.Determined (observe a) (fun x => x j = 1) := by
  classical
  let spike : ι → ℂ := fun i => if i = j then 1 else 0
  apply GRWTSK.Logic.Observation.not_determined_of_collision
    (observe a) (fun x => x j = 1) (x := spike) (y := fun _ => 0)
  · funext i
    by_cases hij : i = j
    · subst i
      simp [observe, spike, hj]
    · simp [observe, spike, hij]
  · simp [spike]
  · exact zero_ne_one

end GRWTSK.LinearAlgebra.Diagonal
