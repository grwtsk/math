# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaJacobiAdapter.Variant32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9a2e1c84b9c549ce04477c6829328c1d99ec7e5` · SHA-256 `32c56329cfedace1cc2df43cf98b1fd217434bbfc968a2728099d31207bccd97`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.PositiveFourSector
import FormalResearch.RiemannHypothesis.CatalanJacobi
import Mathlib.LinearAlgebra.Matrix.ToLin
import Mathlib.MeasureTheory.Integral.Bochner.Basic

/-!
# Exact moment transport and the signed geometry adapter

The accepted source at `b2e9938b` has no theta-tail moment measure or theta
Jacobi construction.  The theta modules in the PR #151 review tree are not
imports of this module.  Accordingly, the results below are general proved
adapters, not an assertion that the missing theta Jacobi construction exists.

`cyclicMoment_transport` records all pointed intertwining data explicitly.
`positive_atomic_first_moment` isolates the first-moment obstruction for a
positive magnitude measure supported on strictly positive nodes.  In
particular, positive magnitude moments cannot be identified with the free
Jacobi moments, whose first moment vanishes.

The actual accepted Positive Atlas involution projectors are reused to prove
that the signed quadratic form is the difference of its two sector energies.
Keeping the involution is essential: discarding its negative sector changes
the form.  None of these algebraic results supplies the RH #16 estimate.
-/

namespace FormalResearch.RiemannHypothesis.ThetaJacobi

open FormalResearch.PositiveAtlas

universe u v

section MomentTransport

variable {V : Type u} {W : Type v}
variable [AddCommGroup V] [Module ℝ V] [AddCommGroup W] [Module ℝ W]

/-- A pointed cyclic moment, with its covector retained explicitly. -/
noncomputable def cyclicMoment (J : Module.End ℝ V) (e : V)
    (ell : V →ₗ[ℝ] ℝ) (n : ℕ) : ℝ :=
  ell ((J ^ n) e)

/-- An intertwiner transports every power, in the actual order of composition. -/
theorem intertwiner_power_apply (J : Module.End ℝ V) (K : Module.End ℝ W)
    (f : V →ₗ[ℝ] W) (h : ∀ x, f (J x) = K (f x)) (n : ℕ) (x : V) :
    f ((J ^ n) x) = (K ^ n) (f x) := by
  induction n with
  | zero => simp
  | succ n ih =>
    simp only [pow_succ', Module.End.mul_apply]
    rw [h, ih]

/-- Moment preservation requires both the vector and covector adapters.
Common transfer-matrix syntax alone supplies neither of these hypotheses. -/
theorem cyclicMoment_transport (J : Module.End ℝ V) (K : Module.End ℝ W)
    (e : V) (v : W) (ell : V →ₗ[ℝ] ℝ) (q : W →ₗ[ℝ] ℝ)
    (f : V →ₗ[ℝ] W)
    (hintertwine : ∀ x, f (J x) = K (f x))
    (hvector : f e = v) (hcovector : ∀ x, q (f x) = ell x) (n : ℕ) :
    cyclicMoment J e ell n = cyclicMoment K v q n := by
  unfold cyclicMoment
  rw [← hcovector, intertwiner_power_apply J K f hintertwine, hvector]

/-- A nonzero first moment excludes equality of the pointed moment sequences. -/
theorem first_moment_obstructs_transport (m free : ℕ → ℝ)
    (hfirst : m 1 ≠ 0) (hfree : free 1 = 0) : m ≠ free := by
  intro h
  apply hfirst
  rw [h, hfree]

end MomentTransport

section AtomicMagnitude

variable {ι : Type u} [Fintype ι]

/-- The finite positive-magnitude moment tape; signs are deliberately absent. -/
noncomputable def atomicMagnitudeMoment (w x : ι → ℝ) (n : ℕ) : ℝ :=
  ∑ i, w i * x i ^ n

/-- A nonzero positive magnitude tape on strictly positive support has a
strictly positive first moment.  This is incompatible with the free model. -/
theorem positive_atomic_first_moment (w x : ι → ℝ)
    (hw : ∀ i, 0 ≤ w i) (hx : ∀ i, 0 < x i)
    (hnonzero : ∃ i, 0 < w i) :
    0 < atomicMagnitudeMoment w x 1 := by
  simp only [atomicMagnitudeMoment, pow_one]
  apply Finset.sum_pos'
  · intro i _
    exact mul_nonneg (hw i) (hx i).le
  · obtain ⟨i, hi⟩ := hnonzero
    exact ⟨i, Finset.mem_univ i, mul_pos hi (hx i)⟩

/-- Positive support rules out an exact pointed free-moment identification;
no theta source theorem is assumed by this generic statement. -/
theorem positive_atomic_moments_not_free (w x : ι → ℝ)
    (hw : ∀ i, 0 ≤ w i) (hx : ∀ i, 0 < x i)
    (hnonzero : ∃ i, 0 < w i) (free : ℕ → ℝ) (hfree : free 1 = 0) :
    atomicMagnitudeMoment w x ≠ free :=
  first_moment_obstructs_transport _ _
    (positive_atomic_first_moment w x hw hx hnonzero).ne' hfree

/-- The independently constructed infinite half-line free operator cannot
have these positive-support magnitude moments at its canonical cyclic vector.
This is an actual adapter to the free theorem, not matching initial examples. -/
theorem positive_atomic_moments_not_canonical_free (w x : ι → ℝ)
    (hw : ∀ i, 0 ≤ w i) (hx : ∀ i, 0 < x i)
    (hnonzero : ∃ i, 0 < w i) :
    atomicMagnitudeMoment w x ≠ CatalanJacobi.cyclicCoefficient (R := ℝ) :=
  positive_atomic_moments_not_free w x hw hx hnonzero _
    CatalanJacobi.cyclicCoefficient_one

end AtomicMagnitude

section MeasureMagnitude

open MeasureTheory

/-- Real measure moments, without silently normalizing the total mass.
Each integral identity needs its own integrability hypotheses. -/
noncomputable def measureMagnitudeMoment (μ : Measure ℝ) (n : ℕ) : ℝ :=
  ∫ x : ℝ, x ^ n ∂μ

/-- For an integrable nonnegative first moment, strict positivity is exactly
nonzero measure on its support.  Integrability is essential to this statement. -/
theorem measure_first_moment_positive_iff (μ : Measure ℝ)
    (hnonneg : ∀ᵐ x ∂μ, 0 ≤ x) (hint : Integrable (fun x : ℝ => x) μ) :
    0 < measureMagnitudeMoment μ 1 ↔ 0 < μ (Function.support (fun x : ℝ => x)) := by
  simpa [measureMagnitudeMoment] using
    integral_pos_iff_support_of_nonneg_ae hnonneg hint

/-- A positive magnitude measure on the nonnegative half-line with positive
mass away from zero has a strictly positive first moment. -/
theorem measure_first_moment_positive_of_positive_support (μ : Measure ℝ)
    (hnonneg : ∀ᵐ x ∂μ, 0 ≤ x) (hint : Integrable (fun x : ℝ => x) μ)
    (hmass : 0 < μ (Set.Ioi 0)) : 0 < measureMagnitudeMoment μ 1 := by
  apply (measure_first_moment_positive_iff μ hnonneg hint).mpr
  apply hmass.trans_le
  apply measure_mono
  intro x hx
  exact (Set.mem_Ioi.mp hx).ne'

/-- The infinite free/Catalan cyclic model cannot represent such a positive
half-line magnitude measure at its canonical vector, already at order one. -/
theorem measure_moments_not_canonical_free (μ : Measure ℝ)
    (hnonneg : ∀ᵐ x ∂μ, 0 ≤ x) (hint : Integrable (fun x : ℝ => x) μ)
    (hmass : 0 < μ (Set.Ioi 0)) :
    measureMagnitudeMoment μ ≠ CatalanJacobi.cyclicCoefficient (R := ℝ) :=
  first_moment_obstructs_transport _ _
    (measure_first_moment_positive_of_positive_support μ hnonneg hint hmass).ne'
    CatalanJacobi.cyclicCoefficient_one

end MeasureMagnitude

section SignedGeometry

variable {V : Type u} [AddCommGroup V] [Module ℝ V]

/-- The signed involution form is a difference of sector energies.  This
reuses the accepted Positive Atlas projector API and retains both signs. -/
theorem involution_form_eq_sector_difference (G : PositiveForm V)
    (J : Module.End ℝ V) (hJ : ∀ x, J (J x) = x)
    (x : V) :
    G.form x (J x) =
      G.form (involutionPlus J x) (involutionPlus J x) -
        G.form (involutionMinus J x) (involutionMinus J x) := by
  have hneg (a b : V) : G.form a (-b) = -G.form a b := by
    simpa using G.smul_right (-1 : ℝ) a b
  have hdecomp := involution_projection_decomposition J x
  conv_lhs => rw [← hdecomp]
  rw [map_add, involution_on_plus J hJ, involution_on_minus J hJ]
  simp only [G.add_left, G.add_right, hneg]
  rw [G.symmetric (involutionMinus J x) (involutionPlus J x)]
  ring

/-- On a nonnull negative sector the involution form is strictly negative,
despite positivity of the magnitude geometry. -/
theorem negative_sector_form_negative (G : PositiveForm V)
    (J : Module.End ℝ V) (x : V) (hx : J x = -x)
    (hvisible : G.Visible x) : G.form x (J x) < 0 := by
  rw [hx]
  have hneg : G.form x (-x) = -G.form x x := by
    simpa using G.smul_right (-1 : ℝ) x x
  rw [hneg]
  exact neg_neg_of_pos hvisible

/-- Replacing a signed involution by the identity changes the form whenever
a visible negative direction exists. -/
theorem negative_sector_prevents_magnitude_identification (G : PositiveForm V)
    (J : Module.End ℝ V) (x : V) (hx : J x = -x)
    (hvisible : G.Visible x) : G.form x (J x) ≠ G.form x x := by
  have hnegative := negative_sector_form_negative G J x hx hvisible
  exact ne_of_lt (hnegative.trans_le (G.nonnegative x))

end SignedGeometry

end FormalResearch.RiemannHypothesis.ThetaJacobi
```
