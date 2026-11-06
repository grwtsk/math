/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ObservationDescent
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Calculus.FDeriv.Mul
import Mathlib.Algebra.BigOperators.GroupWithZero.Finset

/-!
# A finite observation obstruction inside the class of entire functions

For a finite sample set S and an unsampled point c, put
P(z) = product_{w in S}(z-w) and g(z) = 1 - P(z)/P(c).
Then P(c) != 0, g is entire, g equals one at every sample, and g(c)=0.
Thus even entire-function regularity and exact finite values alone do not
separate a zero-free function from one with a prescribed unsampled zero.

This explicit pair is a consumer of the existing ObservationDescent theorem:
there is no exact decoder, even on realized sample keys, for evaluation at c.
ObservationFibers separately rules out a predicate decoder for nonvanishing
on any region containing c. This is a general observation-model obstruction,
not an impossibility theorem for zeta-specific arguments with additional
functional equations, bounds, coefficients, or universal certificates.

Primary argument: finite product, nonzero denominator, and a direct analytic
construction. No probabilistic argument, numerical experiment or novelty claim.
Dependencies inspected at 78d3de57395378dfc4164a75af7a844ea2806efc and Mathlib
 d13f23b723b8a846827a245b89c10fc7d3f11612. Upstream attribution is unchanged.
AI-assisted formalization. Compilation, fresh kernel checking, transitive axiom
audit and independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.Observation

open GRWTSK.Logic.Observation

/-- The polynomial product is kept as a function to reuse standard differentiation. -/
def vanishingProduct (S : Finset ℂ) (z : ℂ) : ℂ := ∏ w ∈ S, (z - w)

theorem vanishingProduct_at_sample (S : Finset ℂ) {z : ℂ} (hz : z ∈ S) :
    vanishingProduct S z = 0 :=
  Finset.prod_eq_zero hz (sub_self z)

theorem vanishingProduct_ne_zero (S : Finset ℂ) {z : ℂ} (hz : z ∉ S) :
    vanishingProduct S z ≠ 0 := by
  apply Finset.prod_ne_zero_iff.mpr
  intro w hw
  apply sub_ne_zero.mpr
  intro same
  apply hz
  rw [same]
  exact hw

theorem differentiable_vanishingProduct (S : Finset ℂ) :
    Differentiable ℂ (vanishingProduct S) := by
  classical
  induction S using Finset.induction_on with
  | empty =>
    simpa [vanishingProduct] using (differentiable_const (1 : ℂ) :
      Differentiable ℂ (fun _ : ℂ => (1 : ℂ)))
  | @insert w S hw ih =>
    have product : Differentiable ℂ
        (fun z : ℂ => (z - w) * vanishingProduct S z) :=
      (differentiable_id.sub_const w).mul ih
    simpa [vanishingProduct, Finset.prod_insert, hw] using product

/-- One finite interpolation polynomial inserts a chosen hidden zero. -/
def hiddenZero (S : Finset ℂ) (c z : ℂ) : ℂ :=
  1 - vanishingProduct S z * (vanishingProduct S c)⁻¹

theorem hiddenZero_at_sample (S : Finset ℂ) (c : ℂ) {z : ℂ} (hz : z ∈ S) :
    hiddenZero S c z = 1 := by
  simp [hiddenZero, vanishingProduct_at_sample S hz]

theorem hiddenZero_at_center (S : Finset ℂ) {c : ℂ} (hc : c ∉ S) :
    hiddenZero S c c = 0 := by
  simp [hiddenZero, vanishingProduct_ne_zero S hc]

theorem differentiable_hiddenZero (S : Finset ℂ) (c : ℂ) :
    Differentiable ℂ (hiddenZero S c) := by
  exact (differentiable_const (1 : ℂ)).sub
    ((differentiable_vanishingProduct S).mul_const (vanishingProduct S c)⁻¹)

/-- The counterexample is restricted to entire functions, not arbitrary samples. -/
abbrev Entire := {f : ℂ → ℂ // Differentiable ℂ f}

def sample (S : Finset ℂ) (f : Entire) : {z : ℂ // z ∈ S} → ℂ :=
  fun z => f.val z.val

def constantOne : Entire := ⟨fun _ => 1, differentiable_const 1⟩

def hiddenEntire (S : Finset ℂ) (c : ℂ) : Entire :=
  ⟨hiddenZero S c, differentiable_hiddenZero S c⟩

theorem same_finite_samples (S : Finset ℂ) (c : ℂ) :
    sample S constantOne = sample S (hiddenEntire S c) := by
  funext z
  exact (hiddenZero_at_sample S c z.property).symm

theorem different_at_unsampled_point (S : Finset ℂ) {c : ℂ} (hc : c ∉ S) :
    constantOne.val c ≠ (hiddenEntire S c).val c := by
  change (1 : ℂ) ≠ hiddenZero S c c
  rw [hiddenZero_at_center S hc]
  exact one_ne_zero

/-- Apply actual observation descent: even realized-key decoding fails here. -/
theorem no_unsampled_value_decoder_on_range (S : Finset ℂ) {c : ℂ} (hc : c ∉ S) :
    ¬ ∃ decoder : Set.range (sample S) → ℂ,
      ∀ f : Entire, decoder ⟨sample S f, ⟨f, rfl⟩⟩ = f.val c := by
  intro decoded
  have refinement :=
    (refines_iff_factors_on_range (sample S) (fun f : Entire => f.val c)).mpr decoded
  exact different_at_unsampled_point S hc
    (refinement constantOne (hiddenEntire S c) (same_finite_samples S c))

/-- The same pair destroys determination of region-wise nonvanishing. -/
theorem finite_samples_do_not_determine_nonvanishing (S : Finset ℂ) (U : Set ℂ)
    {c : ℂ} (hc : c ∉ S) (inside : c ∈ U) :
    ¬ Determined (sample S) (fun f : Entire => ∀ z ∈ U, f.val z ≠ 0) := by
  apply not_determined_of_collision (sample S)
    (fun f : Entire => ∀ z ∈ U, f.val z ≠ 0)
    (x := constantOne) (y := hiddenEntire S c) (same_finite_samples S c)
  · intro z hz
    exact one_ne_zero
  · intro nonzero
    exact nonzero c inside (hiddenZero_at_center S hc)

/-- No exact predicate decision exists from these data without extra restrictions. -/
theorem no_nonvanishing_predicate_decoder (S : Finset ℂ) (U : Set ℂ)
    {c : ℂ} (hc : c ∉ S) (inside : c ∈ U) :
    ¬ ∃ decideRegion : ({z : ℂ // z ∈ S} → ℂ) → Prop,
      ∀ f : Entire, (∀ z ∈ U, f.val z ≠ 0) ↔ decideRegion (sample S f) := by
  intro decoded
  exact finite_samples_do_not_determine_nonvanishing S U hc inside
    ((determined_iff_factors (sample S)
      (fun f : Entire => ∀ z ∈ U, f.val z ≠ 0)).mpr decoded)

/-- The obstruction is valid even for an empty set of samples. -/
theorem empty_samples_hide_a_zero (c : ℂ) :
    sample ∅ constantOne = sample ∅ (hiddenEntire ∅ c) ∧
      (hiddenEntire ∅ c).val c = 0 :=
  ⟨same_finite_samples ∅ c, hiddenZero_at_center ∅ (by simp)⟩

end GRWTSK.Analysis.Observation
