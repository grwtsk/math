# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.ProjectiveFubiniStudy.Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4207bbba730394f2666283dd79c9bc3e3b0175af` · SHA-256 `0b68a5c0e919cbbf1ad99e9ac299bac99e077b417488364c51007f0f98e61b87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.FubiniStudyBase.Variant2690b05583405b2ee6c6fd3742b21d79010b520b9e1a744bae45f67b82be08b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2690b05583405b2ee6c6fd3742b21d79010b520b9e1a744bae45f67b82be08b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.FubiniStudyBase.Variant2690b05583405b2ee6c6fd3742b21d79010b520b9e1a744bae45f67b82be08b9","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"2690b05583405b2ee6c6fd3742b21d79010b520b9e1a744bae45f67b82be08b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ProjectiveFubiniStudy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ProjectiveRayleigh
public import Mathlib.Analysis.Complex.Basic
public import Mathlib.Analysis.Normed.Module.Normalize
public import Mathlib.Geometry.Euclidean.Angle.Unoriented.TriangleInequality

/-!
# The Fubini--Study distance on complex projective inner-product spaces

For nonzero vectors `v w : H`, this module uses the ray-angle convention

```text
d([v], [w]) = arccos (‖⟪v, w⟫‖ / (‖v‖ * ‖w‖)).
```

The complex modulus is written with Lean's norm notation `‖z‖`; there is no
`Complex.abs` function in this mathlib API.  This convention has diameter
`π / 2`.  Some literature calls twice this distance the Fubini--Study
distance; no factor of two is used here.

Neither triangle proof in this module assumes finite dimension or completeness.
The installed metric follows the explicit manuscript route: unit normalization,
orthogonal remainders, Cauchy--Schwarz, and an isolated real `arccos` bridge.  An
independent theorem phase-aligns the two outer representatives and delegates the
same geometry to mathlib's real-angle triangle theorem.

Installing the `MetricSpace` below supplies its metric topology and uniformity.
It does not by itself construct a charted-space or smooth-manifold instance.
-/


namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.FubiniStudyBase.Variant2690b05583405b2ee6c6fd3742b21d79010b520b9e1a744bae45f67b82be08b9

public section

noncomputable section

open Complex InnerProductSpace
open scoped ComplexConjugate LinearAlgebra.Projectivization RealInnerProductSpace

namespace Surface.Core.ProjectiveFubiniStudy

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

/-- The Fubini--Study ray angle before quotienting by nonzero complex scale. -/
@[expose, surface_novel, surface_published]
def fubiniStudyBase (v w : H) : ℝ :=
  Real.arccos (‖inner ℂ v w‖ / (‖v‖ * ‖w‖))

/-- The unit-sphere form of the Fubini--Study ray angle. -/
@[expose, surface_novel, surface_published]
def angleBaseUnit (x y : H) : ℝ :=
  Real.arccos ‖inner ℂ x y‖

/-- Cauchy--Schwarz places the normalized overlap in the interval `(-∞, 1]`. -/
@[surface_adapter, surface_published]
theorem normalizedOverlap_le_one (v w : H) :
    ‖inner ℂ v w‖ / (‖v‖ * ‖w‖) ≤ 1 :=
  div_le_one_of_le₀ (norm_inner_le_norm v w)
    (mul_nonneg (norm_nonneg v) (norm_nonneg w))

/-- The normalized overlap is nonnegative. -/
@[surface_adapter, surface_published]
theorem normalizedOverlap_nonneg (v w : H) :
    0 ≤ ‖inner ℂ v w‖ / (‖v‖ * ‖w‖) :=
  div_nonneg (norm_nonneg _) (mul_nonneg (norm_nonneg v) (norm_nonneg w))

/--
The isolated trigonometric bridge used by a direct Cauchy--Schwarz remainder
proof.  The `C ∈ [0,1]` hypothesis records the geometric domain; mathlib's
globally clamped, antitone `arccos` makes it unnecessary inside the proof.
-/
@[surface_novel, surface_published]
theorem arccos_triangle_bound (A B C : ℝ)
    (hA : A ∈ Set.Icc 0 1) (hB : B ∈ Set.Icc 0 1) (_hC : C ∈ Set.Icc 0 1)
    (hbound : C ≥ A * B - Real.sqrt (1 - A ^ 2) * Real.sqrt (1 - B ^ 2)) :
    Real.arccos C ≤ Real.arccos A + Real.arccos B := by
  have hAneg : -1 ≤ A := le_trans (by norm_num) hA.1
  have hBneg : -1 ≤ B := le_trans (by norm_num) hB.1
  have hsumNonneg : 0 ≤ Real.arccos A + Real.arccos B :=
    add_nonneg (Real.arccos_nonneg A) (Real.arccos_nonneg B)
  have hsumLePi : Real.arccos A + Real.arccos B ≤ Real.pi := by
    have hAhalf : Real.arccos A ≤ Real.pi / 2 :=
      Real.arccos_le_pi_div_two.mpr hA.1
    have hBhalf : Real.arccos B ≤ Real.pi / 2 :=
      Real.arccos_le_pi_div_two.mpr hB.1
    linarith
  have hcos :
      Real.cos (Real.arccos A + Real.arccos B) =
        A * B - Real.sqrt (1 - A ^ 2) * Real.sqrt (1 - B ^ 2) := by
    rw [Real.cos_add, Real.cos_arccos hAneg hA.2,
      Real.cos_arccos hBneg hB.2, Real.sin_arccos, Real.sin_arccos]
  calc
    Real.arccos C ≤ Real.arccos
        (A * B - Real.sqrt (1 - A ^ 2) * Real.sqrt (1 - B ^ 2)) :=
      Real.arccos_le_arccos hbound
    _ = Real.arccos (Real.cos (Real.arccos A + Real.arccos B)) := by rw [hcos]
    _ = Real.arccos A + Real.arccos B :=
      Real.arccos_cos hsumNonneg hsumLePi

/-- A nonzero vector has zero ray angle with itself. -/
@[surface_novel, surface_published]
theorem fubiniStudyBase_self (v : H) (hv : v ≠ 0) :
    fubiniStudyBase v v = 0 := by
  have hoverlap : ‖inner ℂ v v‖ / (‖v‖ * ‖v‖) = 1 := by
    simpa using
      (norm_inner_div_norm_mul_norm_eq_one_of_ne_zero_of_ne_zero_mul
        (𝕜 := ℂ) (x := v) (r := (1 : ℂ)) hv one_ne_zero)
  rw [fubiniStudyBase, hoverlap, Real.arccos_one]

/-- The base ray angle is symmetric. -/
@[surface_novel, surface_published]
theorem fubiniStudyBase_comm (v w : H) :
    fubiniStudyBase v w = fubiniStudyBase w v := by
  unfold fubiniStudyBase
  congr 1
  rw [← inner_conj_symm (𝕜 := ℂ) v w, RCLike.norm_conj, mul_comm]

/-- Equality in Cauchy--Schwarz characterizes normalized overlap one. -/
@[surface_adapter, surface_published]
theorem normalizedOverlap_eq_one_iff (v w : H) :
    ‖inner ℂ v w‖ / (‖v‖ * ‖w‖) = 1 ↔
      v ≠ 0 ∧ ∃ c : ℂ, c ≠ 0 ∧ w = c • v := by
  simpa only [norm_div, norm_mul, RCLike.norm_coe_norm] using
    (norm_inner_div_norm_mul_norm_eq_one_iff (𝕜 := ℂ) v w)

/-- Zero Fubini--Study angle means precisely that the vectors determine the same complex ray. -/
@[surface_novel, surface_published]
theorem fubiniStudyBase_eq_zero_iff (v w : H) :
    fubiniStudyBase v w = 0 ↔
      v ≠ 0 ∧ ∃ c : ℂ, c ≠ 0 ∧ w = c • v := by
  rw [fubiniStudyBase, Real.arccos_eq_zero]
  constructor
  · intro h
    exact (normalizedOverlap_eq_one_iff v w).1
      (le_antisymm (normalizedOverlap_le_one v w) h)
  · intro h
    rw [(normalizedOverlap_eq_one_iff v w).2 h]

/-! ## Phase alignment and the analytic triangle inequality -/

/-- Rotate `x` so that its pairing with `y` is nonnegative real. -/
@[expose, surface_novel]
def alignLeft (x y : H) : H :=
  (inner ℂ x y / (‖inner ℂ x y‖ : ℂ)) • x

/-- Rotate `z` so that its pairing with `y` is nonnegative real. -/
@[expose, surface_novel]
def alignRight (y z : H) : H :=
  ((starRingEnd ℂ) (inner ℂ y z) / (‖inner ℂ y z‖ : ℂ)) • z

@[surface_adapter]
theorem norm_div_norm (a : ℂ) (ha : a ≠ 0) : ‖a / (‖a‖ : ℂ)‖ = 1 := by
  rw [norm_div, Complex.norm_real, Real.norm_of_nonneg (norm_nonneg a)]
  exact div_self (norm_ne_zero_iff.mpr ha)

@[surface_adapter]
theorem norm_conj_div_norm (a : ℂ) (ha : a ≠ 0) :
    ‖(starRingEnd ℂ) a / (‖a‖ : ℂ)‖ = 1 := by
  rw [norm_div, Complex.norm_conj, Complex.norm_real,
    Real.norm_of_nonneg (norm_nonneg a)]
  exact div_self (norm_ne_zero_iff.mpr ha)

@[surface_novel]
theorem aligned_left_inner (x y : H) (h : inner ℂ x y ≠ 0) :
    inner ℂ ((inner ℂ x y / (‖inner ℂ x y‖ : ℂ)) • x) y =
      (‖inner ℂ x y‖ : ℂ) := by
  rw [inner_smul_left, map_div₀]
  have hstar : (starRingEnd ℂ) (‖inner ℂ x y‖ : ℂ) = (‖inner ℂ x y‖ : ℂ) := by
    apply Complex.ext <;> simp
  rw [hstar, div_mul_eq_mul_div, Complex.conj_mul']
  field_simp [norm_ne_zero_iff.mpr h]

@[surface_novel]
theorem aligned_right_inner (y z : H) (h : inner ℂ y z ≠ 0) :
    inner ℂ y (((starRingEnd ℂ) (inner ℂ y z) /
      (‖inner ℂ y z‖ : ℂ)) • z) = (‖inner ℂ y z‖ : ℂ) := by
  rw [inner_smul_right, div_mul_eq_mul_div, Complex.conj_mul']
  field_simp [norm_ne_zero_iff.mpr h]

@[surface_novel]
theorem norm_alignLeft (x y : H) (h : inner ℂ x y ≠ 0) :
    ‖alignLeft x y‖ = ‖x‖ := by
  rw [alignLeft, norm_smul, norm_div_norm _ h, one_mul]

@[surface_novel]
theorem norm_alignRight (y z : H) (h : inner ℂ y z ≠ 0) :
    ‖alignRight y z‖ = ‖z‖ := by
  rw [alignRight, norm_smul, norm_conj_div_norm _ h, one_mul]

@[surface_novel]
theorem norm_inner_align (x y z : H)
    (hxy : inner ℂ x y ≠ 0) (hyz : inner ℂ y z ≠ 0) :
    ‖inner ℂ (alignLeft x y) (alignRight y z)‖ = ‖inner ℂ x z‖ := by
  rw [alignLeft, alignRight, inner_smul_left, inner_smul_right]
  simp only [norm_mul, RCLike.norm_conj]
  rw [norm_div_norm _ hxy, norm_conj_div_norm _ hyz]
  ring

@[surface_adapter]
theorem fubiniStudyBase_nonneg (x y : H) : 0 ≤ fubiniStudyBase x y :=
  Real.arccos_nonneg _

@[surface_novel]
theorem fubiniStudyBase_le_pi_div_two (x y : H) :
    fubiniStudyBase x y ≤ Real.pi / 2 := by
  rw [fubiniStudyBase, Real.arccos_le_pi_div_two]
  positivity

@[surface_novel]
theorem angle_alignLeft (x y : H) (h : inner ℂ x y ≠ 0) :
    letI : InnerProductSpace ℝ H := InnerProductSpace.rclikeToReal ℂ H
    InnerProductGeometry.angle (alignLeft x y) y = fubiniStudyBase x y := by
  letI : InnerProductSpace ℝ H := InnerProductSpace.rclikeToReal ℂ H
  rw [InnerProductGeometry.angle, fubiniStudyBase]
  change Real.arccos ((inner ℂ (alignLeft x y) y).re /
    (‖alignLeft x y‖ * ‖y‖)) = _
  rw [show inner ℂ (alignLeft x y) y = (‖inner ℂ x y‖ : ℂ) by
    simpa [alignLeft] using aligned_left_inner x y h]
  rw [norm_alignLeft x y h]
  simp

@[surface_novel]
theorem angle_alignRight (y z : H) (h : inner ℂ y z ≠ 0) :
    letI : InnerProductSpace ℝ H := InnerProductSpace.rclikeToReal ℂ H
    InnerProductGeometry.angle y (alignRight y z) = fubiniStudyBase y z := by
  letI : InnerProductSpace ℝ H := InnerProductSpace.rclikeToReal ℂ H
  rw [InnerProductGeometry.angle, fubiniStudyBase]
  change Real.arccos ((inner ℂ y (alignRight y z)).re /
    (‖y‖ * ‖alignRight y z‖)) = _
  rw [show inner ℂ y (alignRight y z) = (‖inner ℂ y z‖ : ℂ) by
    simpa [alignRight] using aligned_right_inner y z h]
  rw [norm_alignRight y z h]
  simp

/-- The ray angle is bounded by the real angle between phase-aligned representatives. -/
@[surface_novel]
theorem fubiniStudyBase_le_angle_align (x y z : H) (hx : x ≠ 0) (hz : z ≠ 0)
    (hxy : inner ℂ x y ≠ 0) (hyz : inner ℂ y z ≠ 0) :
    letI : InnerProductSpace ℝ H := InnerProductSpace.rclikeToReal ℂ H
    fubiniStudyBase x z ≤
      InnerProductGeometry.angle (alignLeft x y) (alignRight y z) := by
  letI : InnerProductSpace ℝ H := InnerProductSpace.rclikeToReal ℂ H
  rw [fubiniStudyBase, InnerProductGeometry.angle]
  change Real.arccos (‖inner ℂ x z‖ / (‖x‖ * ‖z‖)) ≤
    Real.arccos ((inner ℂ (alignLeft x y) (alignRight y z)).re /
      (‖alignLeft x y‖ * ‖alignRight y z‖))
  apply Real.arccos_le_arccos
  rw [norm_alignLeft x y hxy, norm_alignRight y z hyz]
  apply (div_le_div_iff_of_pos_right
    (mul_pos (norm_pos_iff.mpr hx) (norm_pos_iff.mpr hz))).2
  calc
    (inner ℂ (alignLeft x y) (alignRight y z)).re ≤
        ‖inner ℂ (alignLeft x y) (alignRight y z)‖ := Complex.re_le_norm _
    _ = ‖inner ℂ x z‖ := norm_inner_align x y z hxy hyz

/--
Triangle inequality for the base ray angle on nonzero outer vectors.  When an
adjacent inner product vanishes, that edge already has angle `π / 2`; otherwise
the proof phase-aligns and invokes the real-angle triangle inequality.
-/
@[surface_novel, surface_published]
theorem fubiniStudyBase_triangle (x y z : H) (hx : x ≠ 0) (hz : z ≠ 0) :
    fubiniStudyBase x z ≤ fubiniStudyBase x y + fubiniStudyBase y z := by
  by_cases hxy : inner ℂ x y = 0
  · have hhalf : fubiniStudyBase x y = Real.pi / 2 := by
      simp [fubiniStudyBase, hxy]
    linarith [fubiniStudyBase_le_pi_div_two x z, fubiniStudyBase_nonneg y z]
  by_cases hyz : inner ℂ y z = 0
  · have hhalf : fubiniStudyBase y z = Real.pi / 2 := by
      simp [fubiniStudyBase, hyz]
    linarith [fubiniStudyBase_le_pi_div_two x z, fubiniStudyBase_nonneg x y]
  letI : InnerProductSpace ℝ H := InnerProductSpace.rclikeToReal ℂ H
  calc
    fubiniStudyBase x z ≤
        InnerProductGeometry.angle (alignLeft x y) (alignRight y z) :=
      fubiniStudyBase_le_angle_align x y z hx hz hxy hyz
    _ ≤ InnerProductGeometry.angle (alignLeft x y) y +
        InnerProductGeometry.angle y (alignRight y z) :=
      InnerProductGeometry.angle_le_angle_add_angle _ _ _
    _ = fubiniStudyBase x y + fubiniStudyBase y z := by
      rw [angle_alignLeft x y hxy, angle_alignRight y z hyz]

/-- Nonzero scaling of the left representative leaves the ray angle unchanged. -/
@[surface_novel, surface_published]
theorem fubiniStudyBase_smul_left (v w : H) {c : ℂ} (hc : c ≠ 0) :
    fubiniStudyBase (c • v) w = fubiniStudyBase v w := by
  unfold fubiniStudyBase
  congr 1
  rw [inner_smul_left, norm_mul, RCLike.norm_conj, norm_smul]
  field_simp [norm_ne_zero_iff.mpr hc]

/-- Nonzero scaling of the right representative leaves the ray angle unchanged. -/
@[surface_novel, surface_published]
theorem fubiniStudyBase_smul_right (v w : H) {c : ℂ} (hc : c ≠ 0) :
    fubiniStudyBase v (c • w) = fubiniStudyBase v w := by
  unfold fubiniStudyBase
  congr 1
  rw [inner_smul_right, norm_mul, norm_smul]
  field_simp [norm_ne_zero_iff.mpr hc]

/-- Simultaneous nonzero rescaling in both arguments leaves the ray angle unchanged. -/
@[surface_novel, surface_published]
theorem fubiniStudyBase_smul (v w : H) {c d : ℂ} (hc : c ≠ 0) (hd : d ≠ 0) :
    fubiniStudyBase (c • v) (d • w) = fubiniStudyBase v w := by
  rw [fubiniStudyBase_smul_left _ _ hc, fubiniStudyBase_smul_right _ _ hd]

/--
Normalizing two nonzero representatives reduces the base formula to the
unit-sphere formula.  Projective representatives always satisfy these nonzero
hypotheses.
-/
@[surface_novel, surface_published]
theorem fubiniStudyBase_eq_angleBaseUnit_normalize (x y : H)
    (hx : x ≠ 0) (hy : y ≠ 0) :
    fubiniStudyBase x y =
      angleBaseUnit (NormedSpace.normalize x) (NormedSpace.normalize y) := by
  have hcx : (↑‖x‖⁻¹ : ℂ) ≠ 0 := by simp [hx]
  have hcy : (↑‖y‖⁻¹ : ℂ) ≠ 0 := by simp [hy]
  have hnormalize :
      fubiniStudyBase (NormedSpace.normalize x) (NormedSpace.normalize y) =
        fubiniStudyBase x y := by
    rw [NormedSpace.normalize, NormedSpace.normalize,
      RCLike.real_smul_eq_coe_smul (K := ℂ),
      RCLike.real_smul_eq_coe_smul (K := ℂ)]
    exact fubiniStudyBase_smul x y hcx hcy
  rw [← hnormalize]
  unfold fubiniStudyBase angleBaseUnit
  rw [NormedSpace.norm_normalize hx, NormedSpace.norm_normalize hy]
  simp

/-! ## Explicit complex orthogonal-remainder manuscript -/

/-- The component of `x` orthogonal to a unit vector `y`. -/
@[expose, surface_novel, surface_published]
def orthogonalRemainder (y x : H) : H :=
  x - inner ℂ y x • y

/-- The remainder is orthogonal to its unit reference vector. -/
@[surface_novel, surface_published]
theorem inner_orthogonalRemainder_left (y x : H) (hy : ‖y‖ = 1) :
    inner ℂ y (orthogonalRemainder y x) = 0 := by
  rw [orthogonalRemainder, inner_sub_right, inner_smul_right,
    inner_self_eq_one_of_norm_eq_one hy, mul_one, sub_self]

/-- The remainder belongs to the orthogonal complement of the reference line. -/
@[surface_novel, surface_published]
theorem orthogonalRemainder_mem_orthogonal (y x : H) (hy : ‖y‖ = 1) :
    orthogonalRemainder y x ∈ (ℂ ∙ y)ᗮ := by
  exact Submodule.mem_orthogonal_singleton_iff_inner_right.mpr
    (inner_orthogonalRemainder_left y x hy)

/-- The explicit remainder is subtraction of mathlib's ambient-valued line projection. -/
@[surface_adapter, surface_published]
theorem orthogonalRemainder_eq_sub_starProjection (y x : H) (hy : ‖y‖ = 1) :
    orthogonalRemainder y x = x - (ℂ ∙ y).starProjection x := by
  rw [Submodule.starProjection_unit_singleton ℂ hy]
  rfl

/-- Parallel component plus orthogonal remainder reconstructs the vector exactly. -/
@[surface_novel, surface_published]
theorem orthogonalRemainder_decomposition (y x : H) :
    x = inner ℂ y x • y + orthogonalRemainder y x := by
  simp [orthogonalRemainder]

/-- Pythagoras for the remainder about a unit reference vector. -/
@[surface_novel, surface_published]
theorem norm_orthogonalRemainder_sq (y x : H) (hy : ‖y‖ = 1) :
    ‖orthogonalRemainder y x‖ ^ 2 = ‖x‖ ^ 2 - ‖inner ℂ y x‖ ^ 2 := by
  have horth : inner ℂ (inner ℂ y x • y) (orthogonalRemainder y x) = 0 := by
    rw [inner_smul_left, inner_orthogonalRemainder_left y x hy, mul_zero]
  have hpyth := norm_add_sq_eq_norm_sq_add_norm_sq_of_inner_eq_zero
    (inner ℂ y x • y) (orthogonalRemainder y x) horth
  rw [← orthogonalRemainder_decomposition y x, norm_smul, hy, mul_one] at hpyth
  linarith

/-- Unit-vector specialization of the Pythagorean remainder identity. -/
@[surface_novel, surface_published]
theorem norm_orthogonalRemainder_sq_unit (y x : H)
    (hy : ‖y‖ = 1) (hx : ‖x‖ = 1) :
    ‖orthogonalRemainder y x‖ ^ 2 = 1 - ‖inner ℂ y x‖ ^ 2 := by
  rw [norm_orthogonalRemainder_sq y x hy, hx, one_pow]

/-- Exact square-root norm of the unit-vector orthogonal remainder. -/
@[surface_novel, surface_published]
theorem norm_orthogonalRemainder_unit (y x : H)
    (hy : ‖y‖ = 1) (hx : ‖x‖ = 1) :
    ‖orthogonalRemainder y x‖ = Real.sqrt (1 - ‖inner ℂ y x‖ ^ 2) := by
  rw [← norm_orthogonalRemainder_sq_unit y x hy hx,
    Real.sqrt_sq (norm_nonneg (orthogonalRemainder y x))]

/--
Exact complex inner-product decomposition.  Because mathlib's inner product is
conjugate-linear in its first argument, the parallel term is
`⟪x,y⟫ * ⟪y,z⟫`.
-/
@[surface_novel, surface_published]
theorem inner_eq_parallel_add_remainder (x y z : H) (hy : ‖y‖ = 1) :
    inner ℂ x z = inner ℂ x y * inner ℂ y z +
      inner ℂ (orthogonalRemainder y x) (orthogonalRemainder y z) := by
  conv_lhs =>
    rw [orthogonalRemainder_decomposition y x, orthogonalRemainder_decomposition y z,
      inner_add_left, inner_add_right, inner_add_right]
  have hzx : inner ℂ (orthogonalRemainder y x) y = 0 := by
    rw [← inner_conj_symm, inner_orthogonalRemainder_left y x hy, map_zero]
  simp only [inner_smul_left, inner_smul_right]
  rw [inner_orthogonalRemainder_left y z hy, hzx, mul_zero, mul_zero, add_zero, zero_add,
    inner_self_eq_one_of_norm_eq_one hy, mul_one]
  rw [show (starRingEnd ℂ) (inner ℂ y x) = inner ℂ x y by
    exact inner_conj_symm (𝕜 := ℂ) x y]
  ring

/--
The Cauchy--Schwarz/reverse-triangle lower bound on the third unit-vector
overlap.  This is the complex algebraic joint requested by the direct proof.
-/
@[surface_novel, surface_published]
theorem overlap_lower_bound (x y z : H)
    (hx : ‖x‖ = 1) (hy : ‖y‖ = 1) (hz : ‖z‖ = 1) :
    ‖inner ℂ x y‖ * ‖inner ℂ y z‖ -
        Real.sqrt (1 - ‖inner ℂ x y‖ ^ 2) *
          Real.sqrt (1 - ‖inner ℂ y z‖ ^ 2) ≤ ‖inner ℂ x z‖ := by
  let p : ℂ := inner ℂ x y * inner ℂ y z
  let r : ℂ := inner ℂ (orthogonalRemainder y x) (orthogonalRemainder y z)
  have hdecomp : inner ℂ x z = p + r := by
    simpa [p, r] using inner_eq_parallel_add_remainder x y z hy
  have hreverse : ‖p‖ - ‖r‖ ≤ ‖p + r‖ := by
    calc
      ‖p‖ - ‖r‖ = ‖p‖ - ‖-r‖ := by rw [norm_neg]
      _ ≤ ‖p - (-r)‖ := norm_sub_norm_le p (-r)
      _ = ‖p + r‖ := by rw [sub_neg_eq_add]
  calc
    ‖inner ℂ x y‖ * ‖inner ℂ y z‖ -
          Real.sqrt (1 - ‖inner ℂ x y‖ ^ 2) *
            Real.sqrt (1 - ‖inner ℂ y z‖ ^ 2) =
        ‖p‖ - ‖orthogonalRemainder y x‖ * ‖orthogonalRemainder y z‖ := by
          rw [norm_orthogonalRemainder_unit y x hy hx,
            norm_orthogonalRemainder_unit y z hy hz]
          simp [p, norm_inner_symm y x]
    _ ≤ ‖p‖ - ‖r‖ := by
      apply sub_le_sub_left
      exact norm_inner_le_norm (orthogonalRemainder y x) (orthogonalRemainder y z)
    _ ≤ ‖p + r‖ := hreverse
    _ = ‖inner ℂ x z‖ := by rw [hdecomp]

/-- The direct unit-sphere triangle theorem obtained from the two isolated bridges. -/
@[surface_novel, surface_published]
theorem angleBaseUnit_triangle (x y z : H)
    (hx : ‖x‖ = 1) (hy : ‖y‖ = 1) (hz : ‖z‖ = 1) :
    angleBaseUnit x z ≤ angleBaseUnit x y + angleBaseUnit y z := by
  apply arccos_triangle_bound
  · exact ⟨norm_nonneg _, by simpa [hx, hy] using norm_inner_le_norm x y⟩
  · exact ⟨norm_nonneg _, by simpa [hy, hz] using norm_inner_le_norm y z⟩
  · exact ⟨norm_nonneg _, by simpa [hx, hz] using norm_inner_le_norm x z⟩
  · exact overlap_lower_bound x y z hx hy hz

/--
The complete manuscript route: normalize three nonzero representatives, apply
the complex remainder bound, then cross the isolated real `arccos` bridge.
-/
@[surface_novel, surface_published]
theorem fubiniStudyBase_triangle_via_normalize (x y z : H)
    (hx : x ≠ 0) (hy : y ≠ 0) (hz : z ≠ 0) :
    fubiniStudyBase x z ≤ fubiniStudyBase x y + fubiniStudyBase y z := by
  rw [fubiniStudyBase_eq_angleBaseUnit_normalize x z hx hz,
    fubiniStudyBase_eq_angleBaseUnit_normalize x y hx hy,
    fubiniStudyBase_eq_angleBaseUnit_normalize y z hy hz]
  exact angleBaseUnit_triangle
    (NormedSpace.normalize x) (NormedSpace.normalize y) (NormedSpace.normalize z)
    (NormedSpace.norm_normalize hx) (NormedSpace.norm_normalize hy)
    (NormedSpace.norm_normalize hz)

/--
Hold the first nonzero representative fixed and descend the second argument to
complex projective space.
-/
@[expose, surface_novel]
def distanceFromRepresentative (v : {x : H // x ≠ 0}) :
    Projectivization ℂ H → ℝ :=
  Projectivization.lift
    (fun w ↦ fubiniStudyBase (v : H) (w : H))
    (by
      intro a b c hab
      have hc : c ≠ 0 := by
        intro hc
        apply a.property
        rw [hab, hc, zero_smul]
      rw [hab]
      exact fubiniStudyBase_smul_right (v : H) (b : H) hc)

/-- The representative-indexed distance is itself invariant under left scaling. -/
@[surface_novel]
theorem distanceFromRepresentative_eq_of_smul
    (a b : {x : H // x ≠ 0}) (c : ℂ) (hab : (a : H) = c • (b : H)) :
    distanceFromRepresentative a = distanceFromRepresentative b := by
  have hc : c ≠ 0 := by
    intro hc
    apply a.property
    rw [hab, hc, zero_smul]
  funext p
  induction p using Projectivization.ind with
  | h w hw =>
      simp only [distanceFromRepresentative, Projectivization.lift_mk]
      rw [hab]
      exact fubiniStudyBase_smul_left (b : H) w hc

/-- The double quotient lift of the Fubini--Study ray angle. -/
@[expose, surface_novel, surface_published]
def projectiveDistance : Projectivization ℂ H → Projectivization ℂ H → ℝ :=
  Projectivization.lift distanceFromRepresentative
    distanceFromRepresentative_eq_of_smul

/-- Computing the projective distance on any pair of nonzero representatives. -/
@[surface_novel, surface_published, simp]
theorem projectiveDistance_mk_mk (v w : H) (hv : v ≠ 0) (hw : w ≠ 0) :
    projectiveDistance (Projectivization.mk ℂ v hv) (Projectivization.mk ℂ w hw) =
      fubiniStudyBase v w := by
  simp [projectiveDistance, distanceFromRepresentative]

/-! ## Metric axioms on the double quotient -/

@[surface_novel, surface_published]
theorem projectiveDistance_self (p : Projectivization ℂ H) :
    projectiveDistance p p = 0 := by
  induction p using Projectivization.ind with
  | h v hv =>
      rw [projectiveDistance_mk_mk]
      exact fubiniStudyBase_self v hv

@[surface_novel, surface_published]
theorem projectiveDistance_comm (p q : Projectivization ℂ H) :
    projectiveDistance p q = projectiveDistance q p := by
  induction p using Projectivization.ind with
  | h v hv =>
      induction q using Projectivization.ind with
      | h w hw =>
          simp only [projectiveDistance_mk_mk]
          exact fubiniStudyBase_comm v w

@[surface_novel, surface_published]
theorem projectiveDistance_triangle (p q r : Projectivization ℂ H) :
    projectiveDistance p r ≤ projectiveDistance p q + projectiveDistance q r := by
  induction p using Projectivization.ind with
  | h x hx =>
      induction q using Projectivization.ind with
      | h y hy =>
          induction r using Projectivization.ind with
          | h z hz =>
              simpa only [projectiveDistance_mk_mk] using
                fubiniStudyBase_triangle_via_normalize x y z hx hy hz

@[surface_novel, surface_published]
theorem eq_of_projectiveDistance_eq_zero {p q : Projectivization ℂ H}
    (h : projectiveDistance p q = 0) : p = q := by
  induction p using Projectivization.ind with
  | h v hv =>
      induction q using Projectivization.ind with
      | h w hw =>
          simp only [projectiveDistance_mk_mk] at h
          rcases (fubiniStudyBase_eq_zero_iff v w).1 h with ⟨_, c, hc, hwc⟩
          apply (Projectivization.mk_eq_mk_iff' ℂ v w hv hw).2
          refine ⟨c⁻¹, ?_⟩
          rw [hwc, smul_smul, inv_mul_cancel₀ hc, one_smul]

/--
The ray-angle convention of the Fubini--Study metric on complex projective
inner-product space.  The inherited topology and uniformity are the ones
generated by this distance.
-/
@[surface_novel, surface_published]
noncomputable instance instMetricSpace : MetricSpace (Projectivization ℂ H) where
  dist := projectiveDistance
  dist_self := projectiveDistance_self
  dist_comm := projectiveDistance_comm
  dist_triangle := projectiveDistance_triangle
  eq_of_dist_eq_zero := eq_of_projectiveDistance_eq_zero

/-- The typeclass distance is definitionally the lifted projective distance. -/
@[surface_novel, surface_published]
theorem dist_eq_projectiveDistance (p q : Projectivization ℂ H) :
    dist p q = projectiveDistance p q :=
  rfl

/-- Exact representative formula for the installed metric. -/
@[surface_novel, surface_published, simp]
theorem dist_mk_mk (v w : H) (hv : v ≠ 0) (hw : w ≠ 0) :
    dist (Projectivization.mk ℂ v hv) (Projectivization.mk ℂ w hw) =
      Real.arccos (‖inner ℂ v w‖ / (‖v‖ * ‖w‖)) := by
  exact projectiveDistance_mk_mk v w hv hw

end Surface.Core.ProjectiveFubiniStudy
````
