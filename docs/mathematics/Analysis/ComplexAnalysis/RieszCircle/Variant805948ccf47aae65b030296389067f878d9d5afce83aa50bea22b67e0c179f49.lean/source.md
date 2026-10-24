# Complete source: GRWTSK.Analysis.ComplexAnalysis.RieszCircle.Variant805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdf9d48707cf9984996c02d232aaa3cd14ed56b7` · SHA-256 `805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.Complex.CauchyIntegral
public import Mathlib.Analysis.Normed.Algebra.GelfandFormula

/-!
# Circular Riesz-integral infrastructure

Mathlib currently totalizes the resolvent by setting it to zero on the
spectrum, and it provides Banach-valued circle integrals.  This module joins
those two APIs without introducing a second path-integration implementation.

For a bounded operator `A`, define the normalized circular resolvent integral

```text
circleRieszCandidate A c r =
  (2 * pi * I)⁻¹ • ∮ z in C(c,r), resolvent A z.
```

The name `Candidate` is intentional.  This module proves:

* the two-point Hilbert resolvent identity with the correct sign;
* holomorphy and circle integrability when the contour avoids the spectrum;
* the normalized contour norm bound;
* commutation of the candidate with `A`.

It does **not** prove that the candidate is idempotent.  Avoiding the spectrum
only makes the integral analytic; it does not say which spectral component the
circle encloses.  Idempotence additionally needs winding/separation data and a
Banach-algebra-valued Cauchy or double-contour reduction.  Those packaged Riesz
projection and winding-number layers are absent from the installed mathlib, so
`ResolventCircle.IsProjection` below is an explicit remaining proof obligation,
not an assumed theorem.

For concentric circles the missing general theorem has a concrete, stronger
hypothesis than merely checking the two boundaries.  Given `0 < r < R`, require

```text
closedBall c R \ ball c r ⊆ resolventSet ℂ A.
```

This says that the complete closed annulus is spectrum-free, so the two circles
enclose the same spectral portion and the candidate may be deformed between
them.  With `z` on the outer circle and `w` on the inner circle, the sign-clean
resolvent decomposition is

```text
∮[z∈Γ_R] ∮[w∈Γ_r] R(z)R(w) dw dz
  = ∮[w∈Γ_r] R(w) (∮[z∈Γ_R] dz/(z-w)) dw
    - ∮[z∈Γ_R] R(z) (∮[w∈Γ_r] dw/(z-w)) dz.
```

The first scalar kernel integrates to `2πi`; the second integrates to zero.
Equivalently, using `1/(w-z)` introduces a minus sign.  Cauchy's theorem is
applied here only to these scalar kernels: the resolvent is generally not
holomorphic on either filled disk because the selected spectrum is inside.
Formalizing this argument still requires a circle-integral Fubini helper after
expanding `circleIntegral` into its parameterized Bochner integral.

For normal or self-adjoint operators, a continuous-functional-calculus
characteristic function gives a shorter, independently defined projection.
That construction does not identify its result with `circleRieszCandidate`;
such an identification is a separate contour--CFC compatibility theorem.

For a circle, mathlib's `circleIntegral` is already the relevant Bochner
integral.  A separate general `Path` abstraction is therefore unnecessary at
this stage.
-/

public section

noncomputable section

open Complex Set
open scoped Interval Ring

namespace Surface.Core.RieszCircle

/-! ## Algebraic resolvent identities -/

universe u v

section Algebraic

variable {R : Type u} {B : Type v}
variable [CommSemiring R] [Ring B] [Algebra R B]

local notation "↑ₐ" => algebraMap R B

/--
The first resolvent identity before moving the central scalar factor.  This is
purely algebraic: no norm, completeness, or self-adjointness is required.
-/
@[surface_novel, surface_published]
theorem resolvent_sub_resolvent_algebraMap {a : B} {z w : R}
    (hz : z ∈ resolventSet R a) (hw : w ∈ resolventSet R a) :
    resolvent a z - resolvent a w =
      resolvent a z * (↑ₐ w - ↑ₐ z) * resolvent a w := by
  have hz_right : resolvent a z * (↑ₐ z - a) = 1 := by
    rw [spectrum.resolvent_eq hz]
    exact hz.val_inv_mul
  have hw_left : (↑ₐ w - a) * resolvent a w = 1 := by
    rw [spectrum.resolvent_eq hw]
    exact hw.mul_val_inv
  calc
    resolvent a z - resolvent a w =
        resolvent a z * 1 - 1 * resolvent a w := by rw [mul_one, one_mul]
    _ = resolvent a z * ((↑ₐ w - a) * resolvent a w) -
        (resolvent a z * (↑ₐ z - a)) * resolvent a w := by
      rw [hw_left, hz_right]
    _ = resolvent a z * (↑ₐ w - ↑ₐ z) * resolvent a w := by
      noncomm_ring

/--
The operator-perturbation resolvent identity at one scalar:
`R_b(z) - R_a(z) = R_b(z) (b - a) R_a(z)`.
-/
@[surface_novel, surface_published]
theorem perturbation_resolvent_equation {a b : B} {z : R}
    (ha : z ∈ resolventSet R a) (hb : z ∈ resolventSet R b) :
    resolvent b z - resolvent a z =
      resolvent b z * (b - a) * resolvent a z := by
  have hb_right : resolvent b z * (↑ₐ z - b) = 1 := by
    rw [spectrum.resolvent_eq hb]
    exact hb.val_inv_mul
  have ha_left : (↑ₐ z - a) * resolvent a z = 1 := by
    rw [spectrum.resolvent_eq ha]
    exact ha.mul_val_inv
  calc
    resolvent b z - resolvent a z =
        resolvent b z * ((↑ₐ z - a) * resolvent a z) -
          (resolvent b z * (↑ₐ z - b)) * resolvent a z := by
      rw [hb_right, ha_left, mul_one, one_mul]
    _ = resolvent b z * ((↑ₐ z - a) - (↑ₐ z - b)) * resolvent a z := by
      noncomm_ring
    _ = resolvent b z * (b - a) * resolvent a z := by
      congr 1
      abel_nf

end Algebraic

section CommutativeScalars

variable {R : Type u} {B : Type v}
variable [CommRing R] [Ring B] [Algebra R B]

local notation "↑ₐ" => algebraMap R B

/--
The conventional central-scalar form
`R(z) - R(w) = (w - z) R(z) R(w)`.
-/
@[surface_novel, surface_published]
theorem resolvent_sub_resolvent {a : B} {z w : R}
    (hz : z ∈ resolventSet R a) (hw : w ∈ resolventSet R a) :
    resolvent a z - resolvent a w =
      ↑ₐ (w - z) * (resolvent a z * resolvent a w) := by
  rw [resolvent_sub_resolvent_algebraMap hz hw]
  calc
    resolvent a z * (↑ₐ w - ↑ₐ z) * resolvent a w =
        resolvent a z * ↑ₐ (w - z) * resolvent a w := by rw [map_sub]
    _ = ↑ₐ (w - z) * resolvent a z * resolvent a w := by
      rw [Algebra.commutes (w - z) (resolvent a z)]
    _ = ↑ₐ (w - z) * (resolvent a z * resolvent a w) := by rw [mul_assoc]

/-- The totalized resolvent commutes with its operator at every scalar. -/
@[surface_adapter, surface_published]
theorem resolvent_commute_all (a : B) (z : R) : Commute (resolvent a z) a := by
  by_cases hz : z ∈ spectrum R a
  · rw [spectrum.resolvent_zero_of_mem_spectrum hz]
    exact Commute.zero_left a
  · have hden : Commute (↑ₐ z - a) a := by
      rw [Commute, SemiconjBy]
      simp only [sub_mul, mul_sub]
      rw [Algebra.commutes]
    rw [spectrum.resolvent_eq (spectrum.notMem_iff.mp hz)]
    exact hden.units_inv_left

end CommutativeScalars

/-! ## Normalized circular integrals -/

/-- The normalized complex circle integral of a Banach-valued function. -/
@[expose, surface_novel]
def normalizedCircleIntegral
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    (f : ℂ → E) (c : ℂ) (r : ℝ) : E :=
  (2 * Real.pi * I : ℂ)⁻¹ • ∮ z in C(c, r), f z

@[surface_adapter]
theorem normalizedCircleIntegral_add
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    {f g : ℂ → E} {c : ℂ} {r : ℝ}
    (hf : CircleIntegrable f c r) (hg : CircleIntegrable g c r) :
    normalizedCircleIntegral (fun z ↦ f z + g z) c r =
      normalizedCircleIntegral f c r + normalizedCircleIntegral g c r := by
  simp only [normalizedCircleIntegral, circleIntegral.integral_add hf hg, smul_add]

@[surface_adapter]
theorem normalizedCircleIntegral_sub
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    {f g : ℂ → E} {c : ℂ} {r : ℝ}
    (hf : CircleIntegrable f c r) (hg : CircleIntegrable g c r) :
    normalizedCircleIntegral (fun z ↦ f z - g z) c r =
      normalizedCircleIntegral f c r - normalizedCircleIntegral g c r := by
  simp only [normalizedCircleIntegral, circleIntegral.integral_sub hf hg, smul_sub]

@[surface_adapter, simp]
theorem normalizedCircleIntegral_smul
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
    (a : ℂ) (f : ℂ → E) (c : ℂ) (r : ℝ) :
    normalizedCircleIntegral (fun z ↦ a • f z) c r =
      a • normalizedCircleIntegral f c r := by
  rw [normalizedCircleIntegral, circleIntegral.integral_smul, normalizedCircleIntegral]
  exact smul_comm _ _ _

/-! ## The typed bounded-operator candidate -/

variable {H : Type*} [NormedAddCommGroup H] [NormedSpace ℂ H]

/--
The normalized circular integral of the totalized resolvent.  No idempotence is
asserted by this definition.
-/
@[expose, surface_novel, surface_published]
def circleRieszCandidate (A : H →L[ℂ] H) (c : ℂ) (r : ℝ) : H →L[ℂ] H :=
  normalizedCircleIntegral (resolvent A) c r

@[surface_adapter, surface_published, simp]
theorem circleRieszCandidate_radius_zero (A : H →L[ℂ] H) (c : ℂ) :
    circleRieszCandidate A c 0 = 0 := by
  simp [circleRieszCandidate, normalizedCircleIntegral]

@[surface_novel, surface_published]
theorem norm_circleRieszCandidate_le (A : H →L[ℂ] H) (c : ℂ) {r C : ℝ}
    (hr : 0 ≤ r) (hC : ∀ z ∈ Metric.sphere c r, ‖resolvent A z‖ ≤ C) :
    ‖circleRieszCandidate A c r‖ ≤ r * C := by
  simpa [circleRieszCandidate, normalizedCircleIntegral] using
    circleIntegral.norm_two_pi_i_inv_smul_integral_le_of_norm_le_const hr hC

/-- Pointwise norm form of the perturbation resolvent identity. -/
@[surface_novel, surface_published]
theorem norm_resolvent_perturbation_le (A B : H →L[ℂ] H) {z : ℂ}
    (hA : z ∈ resolventSet ℂ A) (hB : z ∈ resolventSet ℂ B) :
    ‖resolvent B z - resolvent A z‖ ≤
      ‖resolvent B z‖ * ‖B - A‖ * ‖resolvent A z‖ := by
  rw [perturbation_resolvent_equation hA hB]
  calc
    ‖resolvent B z * (B - A) * resolvent A z‖ ≤
        ‖resolvent B z * (B - A)‖ * ‖resolvent A z‖ := norm_mul_le _ _
    _ ≤ (‖resolvent B z‖ * ‖B - A‖) * ‖resolvent A z‖ :=
      mul_le_mul_of_nonneg_right (norm_mul_le _ _) (norm_nonneg _)

/-- A positive circular contour lying entirely in the resolvent set. -/
@[surface_novel, surface_published]
structure ResolventCircle (A : H →L[ℂ] H) where
  center : ℂ
  radius : ℝ
  radius_pos : 0 < radius
  contour_resolvent : Metric.sphere center radius ⊆ resolventSet ℂ A

namespace ResolventCircle

/-- The candidate selected by a certified resolvent circle. -/
@[expose, surface_novel, surface_published]
def candidate {A : H →L[ℂ] H} (C : ResolventCircle A) : H →L[ℂ] H :=
  circleRieszCandidate A C.center C.radius

/--
The exact outstanding target.  This proposition is not inhabited merely by
`contour_resolvent`; winding/separation is still required.
-/
@[expose, surface_novel]
def IsProjection {A : H →L[ℂ] H} (C : ResolventCircle A) : Prop :=
  IsIdempotentElem C.candidate

@[surface_adapter, surface_published]
theorem norm_candidate_le {A : H →L[ℂ] H} (C : ResolventCircle A) {M : ℝ}
    (hM : ∀ z ∈ Metric.sphere C.center C.radius, ‖resolvent A z‖ ≤ M) :
    ‖C.candidate‖ ≤ C.radius * M :=
  norm_circleRieszCandidate_le A C.center C.radius_pos.le hM

end ResolventCircle

/-! ## Analytic and commutation properties -/

section Complete

variable [CompleteSpace H]

/-- The totalized resolvent is complex differentiable throughout its resolvent set. -/
@[surface_adapter, surface_published]
theorem differentiableOn_resolvent (A : H →L[ℂ] H) :
    DifferentiableOn ℂ (resolvent A) (resolventSet ℂ A) := by
  intro z hz
  exact (spectrum.hasDerivAt_resolvent_const_left hz).differentiableAt.differentiableWithinAt

@[surface_adapter, surface_published]
theorem analyticOnNhd_resolvent (A : H →L[ℂ] H) :
    AnalyticOnNhd ℂ (resolvent A) (resolventSet ℂ A) :=
  (differentiableOn_resolvent A).analyticOnNhd (spectrum.isOpen_resolventSet A)

@[surface_adapter]
theorem continuousOn_resolvent_of_subset (A : H →L[ℂ] H) {s : Set ℂ}
    (hs : s ⊆ resolventSet ℂ A) : ContinuousOn (resolvent A) s :=
  fun _ hz ↦
    (spectrum.hasDerivAt_resolvent_const_left (hs hz)).continuousAt.continuousWithinAt

/-- A bounded complex-linear map may be passed through a circle integral. -/
@[surface_adapter]
theorem circleIntegral_comp_comm
    {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] [CompleteSpace E]
    [NormedAddCommGroup F] [NormedSpace ℂ F] [CompleteSpace F]
    (L : E →L[ℂ] F) {f : ℂ → E} {c : ℂ} {r : ℝ}
    (hf : CircleIntegrable f c r) :
    (∮ z in C(c, r), L (f z)) = L (∮ z in C(c, r), f z) := by
  simp only [circleIntegral]
  rw [← L.intervalIntegral_comp_comm hf.out]
  simp only [map_smul]

/-- Resolvent-set avoidance supplies the continuity needed by the Bochner circle integral. -/
@[surface_novel, surface_published]
theorem circleIntegrable_resolvent_of_sphere_subset_resolventSet
    (A : H →L[ℂ] H) (c : ℂ) {r : ℝ} (hr : 0 ≤ r)
    (hρ : Metric.sphere c r ⊆ resolventSet ℂ A) :
    CircleIntegrable (resolvent A) c r := by
  apply ContinuousOn.circleIntegrable hr
  intro z hz
  exact (spectrum.hasDerivAt_resolvent_const_left (hρ hz)).continuousAt.continuousWithinAt

/--
The circular resolvent integral is invariant under a radial deformation whose
entire intervening closed annulus remains in the resolvent set.
-/
@[surface_novel, surface_published]
theorem circleIntegral_resolvent_eq_of_annulus
    (A : H →L[ℂ] H) {c : ℂ} {r R : ℝ}
    (hr : 0 < r) (hrR : r ≤ R)
    (hann : Metric.closedBall c R \ Metric.ball c r ⊆ resolventSet ℂ A) :
    circleIntegral (resolvent A) c R = circleIntegral (resolvent A) c r := by
  apply Complex.circleIntegral_eq_of_differentiable_on_annulus_off_countable
      hr hrR Set.countable_empty
  · exact continuousOn_resolvent_of_subset A hann
  · intro z hz
    exact (spectrum.hasDerivAt_resolvent_const_left
      (hann ⟨Metric.ball_subset_closedBall hz.1.1,
        fun hzr ↦ hz.1.2 (Metric.ball_subset_closedBall hzr)⟩)).differentiableAt

@[surface_novel, surface_published]
theorem circleRieszCandidate_eq_of_annulus
    (A : H →L[ℂ] H) {c : ℂ} {r R : ℝ}
    (hr : 0 < r) (hrR : r ≤ R)
    (hann : Metric.closedBall c R \ Metric.ball c r ⊆ resolventSet ℂ A) :
    circleRieszCandidate A c R = circleRieszCandidate A c r := by
  unfold circleRieszCandidate normalizedCircleIntegral
  rw [circleIntegral_resolvent_eq_of_annulus A hr hrR hann]

@[surface_adapter, surface_published]
theorem ResolventCircle.resolvent_circleIntegrable {A : H →L[ℂ] H}
    (C : ResolventCircle A) : CircleIntegrable (resolvent A) C.center C.radius :=
  circleIntegrable_resolvent_of_sphere_subset_resolventSet
    A C.center C.radius_pos.le C.contour_resolvent

/-- Integrating the pointwise perturbation identity gives the candidate difference. -/
@[surface_novel, surface_published]
theorem circleRieszCandidate_sub
    (A B : H →L[ℂ] H) (c : ℂ) {r : ℝ} (hr : 0 ≤ r)
    (hA : Metric.sphere c r ⊆ resolventSet ℂ A)
    (hB : Metric.sphere c r ⊆ resolventSet ℂ B) :
    circleRieszCandidate B c r - circleRieszCandidate A c r =
      normalizedCircleIntegral (fun z ↦ resolvent B z - resolvent A z) c r := by
  have hiA := circleIntegrable_resolvent_of_sphere_subset_resolventSet A c hr hA
  have hiB := circleIntegrable_resolvent_of_sphere_subset_resolventSet B c hr hB
  symm
  exact normalizedCircleIntegral_sub hiB hiA

/--
Contour-integrated perturbation estimate.  It has the expected two resolvent
factors and therefore does not by itself collapse to a sharp Davis--Kahan
`1 / gap` constant.
-/
@[surface_novel, surface_published]
theorem norm_circleRieszCandidate_sub_le
    (A B : H →L[ℂ] H) (c : ℂ) {r MA MB : ℝ} (hr : 0 ≤ r)
    (hA : Metric.sphere c r ⊆ resolventSet ℂ A)
    (hB : Metric.sphere c r ⊆ resolventSet ℂ B)
    (hMA : ∀ z ∈ Metric.sphere c r, ‖resolvent A z‖ ≤ MA)
    (hMB : ∀ z ∈ Metric.sphere c r, ‖resolvent B z‖ ≤ MB) :
    ‖circleRieszCandidate B c r - circleRieszCandidate A c r‖ ≤
      r * (MB * ‖B - A‖ * MA) := by
  rw [circleRieszCandidate_sub A B c hr hA hB]
  apply circleIntegral.norm_two_pi_i_inv_smul_integral_le_of_norm_le_const hr
  intro z hz
  calc
    ‖resolvent B z - resolvent A z‖ ≤
        ‖resolvent B z‖ * ‖B - A‖ * ‖resolvent A z‖ :=
      norm_resolvent_perturbation_le A B (hA hz) (hB hz)
    _ ≤ MB * ‖B - A‖ * ‖resolvent A z‖ :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_right (hMB z hz) (norm_nonneg _)) (norm_nonneg _)
    _ ≤ MB * ‖B - A‖ * MA :=
      mul_le_mul_of_nonneg_left (hMA z hz)
        (mul_nonneg ((norm_nonneg _).trans (hMB z hz)) (norm_nonneg _))

/-- Circle integration preserves pointwise commutation. -/
@[surface_novel]
theorem commute_circleIntegral (A : H →L[ℂ] H)
    {f : ℂ → (H →L[ℂ] H)} {c : ℂ} {r : ℝ}
    (hr : 0 ≤ r) (hf : CircleIntegrable f c r)
    (hcomm : ∀ z, Commute A (f z)) :
    Commute A (∮ z in C(c, r), f z) := by
  rw [Commute]
  let Lleft : (H →L[ℂ] H) →L[ℂ] (H →L[ℂ] H) :=
    (ContinuousLinearMap.mulLeftRight ℂ (H →L[ℂ] H)) A 1
  let Lright : (H →L[ℂ] H) →L[ℂ] (H →L[ℂ] H) :=
    (ContinuousLinearMap.mulLeftRight ℂ (H →L[ℂ] H)) 1 A
  change Lleft (∮ z in C(c, r), f z) = Lright (∮ z in C(c, r), f z)
  rw [← circleIntegral_comp_comm Lleft hf, ← circleIntegral_comp_comm Lright hf]
  apply circleIntegral.integral_congr hr
  intro z hz
  exact (hcomm z).eq

/-- The normalized circular resolvent integral commutes with its operator. -/
@[surface_novel, surface_published]
theorem commute_circleRieszCandidate (A : H →L[ℂ] H) (c : ℂ) {r : ℝ}
    (hr : 0 ≤ r) (hint : CircleIntegrable (resolvent A) c r) :
    Commute A (circleRieszCandidate A c r) := by
  unfold circleRieszCandidate
  exact (commute_circleIntegral A hr hint fun z ↦
    (resolvent_commute_all A z).symm).smul_right _

@[surface_novel, surface_published]
theorem ResolventCircle.commute_candidate {A : H →L[ℂ] H}
    (C : ResolventCircle A) : Commute A C.candidate :=
  commute_circleRieszCandidate A C.center C.radius_pos.le C.resolvent_circleIntegrable

end Complete

end Surface.Core.RieszCircle
````
