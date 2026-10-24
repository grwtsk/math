-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.RayProjection.Variant036b311cefaa4b9345b354aed4718ba67c2c7fda4477ef0921bb12aa51290679","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"036b311cefaa4b9345b354aed4718ba67c2c7fda4477ef0921bb12aa51290679","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.RayProjection.Variant036b311cefaa4b9345b354aed4718ba67c2c7fda4477ef0921bb12aa51290679","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"036b311cefaa4b9345b354aed4718ba67c2c7fda4477ef0921bb12aa51290679","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/ProjectivePerturbation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","late_preamble_command","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ProjectiveFubiniStudy
public import Mathlib.Analysis.InnerProductSpace.Adjoint
public import Mathlib.Analysis.InnerProductSpace.Projection.Basic
public import Mathlib.Analysis.InnerProductSpace.Symmetric

/-!
# Rank-one projective migration and a posteriori sin-Theta control

For a complex projective ray `p`, `rayProjection p` is the orthogonal
projection onto its one-dimensional subspace.  On a complete complex inner
product space this module proves the exact bridge

```text
‖rayProjection p - rayProjection q‖ = sin (projectiveDistance p q).
```

The spectral perturbation theorem proved here is deliberately a posteriori.
For a unit eigenvector `x` of a bounded symmetric operator `A`, a unit
eigenvector `y` of `A + V`, and the perturbed eigenvalue `mu`, `ReducedGapAt`
records the lower bound

```text
delta * ‖u‖ ≤ ‖A u - mu • u‖       whenever ⟨x,u⟩ = 0.
```

That certificate yields the kernel-checked bounds

```text
sin (d_FS [x] [y]) ≤ ‖V‖ / delta
d_FS [x] [y] ≤ arcsin (‖V‖ / delta).
```

Here `delta` is separation from the *perturbed* eigenvalue on the reduced
space.  It is not merely `dist(lambda, spectrum(A) \ {lambda})`.  The latter
unperturbed gap alone does not imply the displayed constant.  If an additional
branch-tracking theorem supplies `|mu - lambda| ≤ epsilon`, the elementary
cross-gap estimate uses `delta₀ - epsilon`, giving
`arcsin (epsilon / (delta₀ - epsilon))`; the robust strict regime is
`epsilon < delta₀ / 2`.  Current mathlib does not package Davis--Kahan, a
Riesz--Dunford projection, or the general self-adjoint spectral result that
would derive `ReducedGapAt` from a spectrum; this module therefore exposes that
missing boundary rather than assuming it.

Likewise, `‖V‖ ≥ delta` only makes the estimate non-informative.  It does not
prove a crossing, merger, continuous-spectrum event, or topological
singularity.  A scalar perturbation can be arbitrarily large while leaving all
eigenspaces fixed.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.RayProjection.Variant036b311cefaa4b9345b354aed4718ba67c2c7fda4477ef0921bb12aa51290679

public section

noncomputable section

open Complex InnerProductSpace
open scoped ComplexConjugate InnerProduct LinearAlgebra.Projectivization

namespace Surface.Core.ProjectivePerturbation

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

/-! ## Canonical projection of a projective ray -/

/-- The ambient-valued orthogonal projection onto a complex projective ray. -/
@[expose, surface_novel, surface_published]
def rayProjection (p : Projectivization ℂ H) : H →L[ℂ] H :=
  p.submodule.starProjection

@[surface_adapter, surface_published, simp]
theorem rayProjection_mk (x : H) (hx : x ≠ 0) :
    rayProjection (Projectivization.mk ℂ x hx) = (ℂ ∙ x).starProjection :=
  rfl

@[surface_adapter, surface_published]
theorem rayProjection_mk_apply (x z : H) (hx : x ≠ 0) :
    rayProjection (Projectivization.mk ℂ x hx) z =
      (inner ℂ x z / ((‖x‖ ^ 2 : ℝ) : ℂ)) • x := by
  rw [rayProjection_mk, Submodule.starProjection_singleton]
  congr 2

@[surface_adapter, surface_published]
theorem rayProjection_mk_unit (x : H) (hx0 : x ≠ 0) (hx : ‖x‖ = 1) :
    rayProjection (Projectivization.mk ℂ x hx0) = rankOne ℂ x x := by
  ext z
  rw [rayProjection_mk, Submodule.starProjection_unit_singleton ℂ hx]
  rfl

/-! ## The sine coordinate and the easy half of the norm bridge -/

@[surface_adapter]
theorem sin_angleBaseUnit_eq_norm_remainder (x y : H)
    (hx : ‖x‖ = 1) (hy : ‖y‖ = 1) :
    Real.sin (ProjectiveFubiniStudy.angleBaseUnit x y) =
      ‖ProjectiveFubiniStudy.orthogonalRemainder x y‖ := by
  rw [ProjectiveFubiniStudy.angleBaseUnit, Real.sin_arccos,
    ProjectiveFubiniStudy.norm_orthogonalRemainder_unit x y hx hy]

@[surface_novel]
theorem sin_angleBaseUnit_le_norm_projection_sub (x y : H)
    (hx : ‖x‖ = 1) (hy : ‖y‖ = 1) :
    Real.sin (ProjectiveFubiniStudy.angleBaseUnit x y) ≤
      ‖rankOne ℂ x x - rankOne ℂ y y‖ := by
  rw [sin_angleBaseUnit_eq_norm_remainder x y hx hy]
  calc
    ‖ProjectiveFubiniStudy.orthogonalRemainder x y‖ =
        ‖(rankOne ℂ x x - rankOne ℂ y y) y‖ := by
      have happly : (rankOne ℂ x x - rankOne ℂ y y) y =
          -ProjectiveFubiniStudy.orthogonalRemainder x y := by
        simp [ProjectiveFubiniStudy.orthogonalRemainder,
          InnerProductSpace.rankOne_apply, hy, inner_self_eq_norm_sq_to_K]
      rw [happly, norm_neg]
    _ ≤ ‖rankOne ℂ x x - rankOne ℂ y y‖ * ‖y‖ :=
      ContinuousLinearMap.le_opNorm _ _
    _ = ‖rankOne ℂ x x - rankOne ℂ y y‖ := by rw [hy, mul_one]

/-! ## Exact projection-angle identity on a Hilbert space -/

/--
The difference of two rank-one unit projections satisfies its cubic minimal
polynomial.  The scalar is the squared sine of their projective angle.
-/
@[surface_novel]
theorem rankOne_projection_sub_cube (x y : H) (hx : ‖x‖ = 1) (hy : ‖y‖ = 1) :
    (rankOne ℂ x x - rankOne ℂ y y) ^ 3 =
      ((1 - ‖inner ℂ x y‖ ^ 2 : ℝ) : ℂ) •
        (rankOne ℂ x x - rankOne ℂ y y) := by
  calc
    (rankOne ℂ x x - rankOne ℂ y y) ^ 3 =
        (rankOne ℂ x x - rankOne ℂ y y) *
          (rankOne ℂ x x - rankOne ℂ y y) *
            (rankOne ℂ x x - rankOne ℂ y y) := by noncomm_ring
    _ = ((1 - ‖inner ℂ x y‖ ^ 2 : ℝ) : ℂ) •
        (rankOne ℂ x x - rankOne ℂ y y) := by
      ext z
      simp only [mul_apply_eq_comp, sub_apply, InnerProductSpace.rankOne_apply,
        inner_sub_right, inner_smul_right, smul_sub, smul_apply]
      rw [inner_self_eq_norm_sq_to_K, inner_self_eq_norm_sq_to_K, hx, hy]
      simp only [one_pow, RCLike.ofReal_one]
      rw [Complex.sq_norm]
      push_cast
      rw [Complex.normSq_eq_conj_mul_self]
      rw [← inner_conj_symm (𝕜 := ℂ) x y]
      have hstar : (starRingEnd ℂ) ((starRingEnd ℂ) (inner ℂ y x)) = inner ℂ y x :=
        star_star (inner ℂ y x)
      rw [hstar]
      module

section Complete

variable [CompleteSpace H]

/-- Exact operator norm of the difference of two rank-one unit projections. -/
@[surface_novel, surface_published]
theorem norm_rankOne_projection_sub (x y : H) (hx : ‖x‖ = 1) (hy : ‖y‖ = 1) :
    ‖rankOne ℂ x x - rankOne ℂ y y‖ =
      Real.sqrt (1 - ‖inner ℂ x y‖ ^ 2) := by
  let T : H →L[ℂ] H := rankOne ℂ x x - rankOne ℂ y y
  let s2 : ℝ := 1 - ‖inner ℂ x y‖ ^ 2
  have hoverlap : ‖inner ℂ x y‖ ≤ 1 := by
    simpa [hx, hy] using norm_inner_le_norm x y
  have hs2 : 0 ≤ s2 := by
    dsimp [s2]
    nlinarith [norm_nonneg (inner ℂ x y)]
  have hTadj : T† = T := by
    simp [T]
  have hcube : T ^ 3 = (s2 : ℂ) • T := by
    simpa [T, s2] using rankOne_projection_sub_cube x y hx hy
  have hfour : T ^ 4 = (s2 : ℂ) • T ^ 2 := by
    calc
      T ^ 4 = T ^ 3 * T := by noncomm_ring
      _ = ((s2 : ℂ) • T) * T := by rw [hcube]
      _ = (s2 : ℂ) • T ^ 2 := by
        rw [pow_two]
        exact Algebra.smul_mul_assoc _ _ _
  have hnormPolynomial : ‖T‖ ^ 4 = s2 * ‖T‖ ^ 2 := by
    have hnorm2 : ‖T ^ 2‖ = ‖T‖ ^ 2 := by
      calc
        ‖T ^ 2‖ = ‖T† ∘L T‖ := by rw [pow_two, hTadj]; rfl
        _ = ‖T‖ * ‖T‖ := ContinuousLinearMap.norm_adjoint_comp_self T
        _ = ‖T‖ ^ 2 := by ring
    have hT2adj : (T ^ 2)† = T ^ 2 := by
      rw [pow_two]
      change (T ∘L T)† = T ∘L T
      rw [ContinuousLinearMap.adjoint_comp, hTadj]
    have hnorm4 : ‖T ^ 4‖ = ‖T‖ ^ 4 := by
      calc
        ‖T ^ 4‖ = ‖(T ^ 2) ^ 2‖ := by noncomm_ring
        _ = ‖(T ^ 2)† ∘L (T ^ 2)‖ := by rw [pow_two, hT2adj]; rfl
        _ = ‖T ^ 2‖ * ‖T ^ 2‖ :=
          ContinuousLinearMap.norm_adjoint_comp_self (T ^ 2)
        _ = ‖T‖ ^ 4 := by rw [hnorm2]; ring
    have hnorm := congrArg norm hfour
    rw [hnorm4, norm_smul, Complex.norm_real, Real.norm_of_nonneg hs2, hnorm2] at hnorm
    exact hnorm
  have hsqrt : Real.sqrt s2 ≤ ‖T‖ := by
    simpa [T, s2, sin_angleBaseUnit_eq_norm_remainder x y hx hy,
      ProjectiveFubiniStudy.angleBaseUnit, Real.sin_arccos,
      ProjectiveFubiniStudy.norm_orthogonalRemainder_unit x y hx hy]
      using sin_angleBaseUnit_le_norm_projection_sub x y hx hy
  have hsqrt_sq : (Real.sqrt s2) ^ 2 = s2 := Real.sq_sqrt hs2
  have hfactor : ‖T‖ ^ 2 * (‖T‖ ^ 2 - s2) = 0 := by
    nlinarith
  rcases mul_eq_zero.mp hfactor with hzero | heq
  · have hTzero : ‖T‖ = 0 := (sq_eq_zero_iff).mp hzero
    have hsqrt_zero : Real.sqrt s2 = 0 := by
      nlinarith [Real.sqrt_nonneg s2]
    simp [T, s2, hTzero, hsqrt_zero]
  · have hsq : ‖T‖ ^ 2 = (Real.sqrt s2) ^ 2 := by nlinarith
    have hequal : ‖T‖ = Real.sqrt s2 :=
      (sq_eq_sq₀ (norm_nonneg T) (Real.sqrt_nonneg s2)).mp hsq
    simpa [T, s2] using hequal

@[surface_novel, surface_published]
theorem norm_rankOne_projection_sub_eq_sin_angleBaseUnit
    (x y : H) (hx : ‖x‖ = 1) (hy : ‖y‖ = 1) :
    ‖rankOne ℂ x x - rankOne ℂ y y‖ =
      Real.sin (ProjectiveFubiniStudy.angleBaseUnit x y) := by
  rw [norm_rankOne_projection_sub x y hx hy,
    ProjectiveFubiniStudy.angleBaseUnit, Real.sin_arccos]

omit [CompleteSpace H] in
@[surface_adapter]
theorem mk_normalize (x : H) (hx : x ≠ 0) :
    Projectivization.mk ℂ (NormedSpace.normalize x)
        ((NormedSpace.normalize_eq_zero_iff x).not.mpr hx) =
      Projectivization.mk ℂ x hx := by
  symm
  apply (Projectivization.mk_eq_mk_iff' ℂ x (NormedSpace.normalize x) hx
    ((NormedSpace.normalize_eq_zero_iff x).not.mpr hx)).2
  refine ⟨(‖x‖ : ℂ), ?_⟩
  exact_mod_cast NormedSpace.norm_smul_normalize x

@[surface_novel]
theorem norm_rayProjection_sub_eq_sin_projectiveDistance_mk_unit
    (x y : H) (hx0 : x ≠ 0) (hy0 : y ≠ 0) (hx : ‖x‖ = 1) (hy : ‖y‖ = 1) :
    ‖rayProjection (Projectivization.mk ℂ x hx0) -
        rayProjection (Projectivization.mk ℂ y hy0)‖ =
      Real.sin (ProjectiveFubiniStudy.projectiveDistance
        (Projectivization.mk ℂ x hx0) (Projectivization.mk ℂ y hy0)) := by
  rw [rayProjection_mk_unit x hx0 hx, rayProjection_mk_unit y hy0 hy,
    norm_rankOne_projection_sub_eq_sin_angleBaseUnit x y hx hy,
    ProjectiveFubiniStudy.projectiveDistance_mk_mk,
    ProjectiveFubiniStudy.fubiniStudyBase,
    ProjectiveFubiniStudy.angleBaseUnit, hx, hy]
  simp

/-- The exact analytic/geometric bridge for arbitrary complex projective rays. -/
@[surface_novel, surface_published]
theorem norm_rayProjection_sub_eq_sin_projectiveDistance
    (p q : Projectivization ℂ H) :
    ‖rayProjection p - rayProjection q‖ =
      Real.sin (ProjectiveFubiniStudy.projectiveDistance p q) := by
  induction p using Projectivization.ind with
  | h x hx =>
      induction q using Projectivization.ind with
      | h y hy =>
          rw [← mk_normalize x hx, ← mk_normalize y hy]
          exact norm_rayProjection_sub_eq_sin_projectiveDistance_mk_unit
            (NormedSpace.normalize x) (NormedSpace.normalize y)
            ((NormedSpace.normalize_eq_zero_iff x).not.mpr hx)
            ((NormedSpace.normalize_eq_zero_iff y).not.mpr hy)
            (NormedSpace.norm_normalize hx) (NormedSpace.norm_normalize hy)

@[surface_adapter, surface_published]
theorem norm_rayProjection_sub_eq_sin_dist (p q : Projectivization ℂ H) :
    ‖rayProjection p - rayProjection q‖ = Real.sin (dist p q) := by
  rw [ProjectiveFubiniStudy.dist_eq_projectiveDistance]
  exact norm_rayProjection_sub_eq_sin_projectiveDistance p q

omit [CompleteSpace H] in
@[surface_adapter]
theorem projectiveDistance_nonneg (p q : Projectivization ℂ H) :
    0 ≤ ProjectiveFubiniStudy.projectiveDistance p q := by
  rw [← ProjectiveFubiniStudy.dist_eq_projectiveDistance]
  exact dist_nonneg

omit [CompleteSpace H] in
@[surface_adapter]
theorem projectiveDistance_le_pi_div_two (p q : Projectivization ℂ H) :
    ProjectiveFubiniStudy.projectiveDistance p q ≤ Real.pi / 2 := by
  induction p using Projectivization.ind with
  | h x hx =>
      induction q using Projectivization.ind with
      | h y hy =>
          rw [ProjectiveFubiniStudy.projectiveDistance_mk_mk]
          exact ProjectiveFubiniStudy.fubiniStudyBase_le_pi_div_two x y

/-- Any operator-norm migration estimate converts monotonically to an angle estimate. -/
@[surface_novel, surface_published]
theorem projectiveDistance_le_arcsin_of_rayProjection_norm_le
    (p q : Projectivization ℂ H) (r : ℝ)
    (hbound : ‖rayProjection p - rayProjection q‖ ≤ r) :
    ProjectiveFubiniStudy.projectiveDistance p q ≤ Real.arcsin r := by
  have hlower : -(Real.pi / 2) ≤ ProjectiveFubiniStudy.projectiveDistance p q := by
    have hpi : 0 ≤ Real.pi / 2 := by positivity
    linarith [projectiveDistance_nonneg p q]
  calc
    ProjectiveFubiniStudy.projectiveDistance p q =
        Real.arcsin (Real.sin (ProjectiveFubiniStudy.projectiveDistance p q)) :=
      (Real.arcsin_sin hlower (projectiveDistance_le_pi_div_two p q)).symm
    _ = Real.arcsin ‖rayProjection p - rayProjection q‖ := by
      rw [norm_rayProjection_sub_eq_sin_projectiveDistance]
    _ ≤ Real.arcsin r := Real.arcsin_le_arcsin hbound

@[surface_novel, surface_published]
theorem projectiveDistance_lt_pi_div_two_of_rayProjection_norm_lt_one
    (p q : Projectivization ℂ H)
    (hbound : ‖rayProjection p - rayProjection q‖ < 1) :
    ProjectiveFubiniStudy.projectiveDistance p q < Real.pi / 2 := by
  refine lt_of_le_of_lt
    (projectiveDistance_le_arcsin_of_rayProjection_norm_le p q
      ‖rayProjection p - rayProjection q‖ le_rfl) ?_
  exact Real.arcsin_lt_pi_div_two.mpr hbound

end Complete

/-! ## A posteriori reduced-gap perturbation theorem -/

/--
Coercivity of `A - mu` on the orthogonal complement of the reference
eigenvector.  For a self-adjoint operator this is the precise analytic
certificate supplied by separation of `mu` from the reduced spectrum.
-/
@[expose, surface_novel, surface_published]
def ReducedGapAt (A : H →L[ℂ] H) (x : H) (mu delta : ℝ) : Prop :=
  ∀ u : H, inner ℂ x u = 0 →
    delta * ‖u‖ ≤ ‖A u - (mu : ℂ) • u‖

@[surface_adapter]
theorem norm_orthogonalRemainder_le (x z : H) (hx : ‖x‖ = 1) :
    ‖ProjectiveFubiniStudy.orthogonalRemainder x z‖ ≤ ‖z‖ := by
  have hsquare := ProjectiveFubiniStudy.norm_orthogonalRemainder_sq x z hx
  nlinarith [sq_nonneg ‖inner ℂ x z‖,
    norm_nonneg (ProjectiveFubiniStudy.orthogonalRemainder x z), norm_nonneg z]

/--
Projecting the perturbed eigen-equation onto `x⊥` gives the exact reduced
residual.  No contour integral is needed in the rank-one case.
-/
@[surface_novel]
theorem reduced_residual_eq_orthogonal_perturbation
    (A V : H →L[ℂ] H) (x y : H) (lambda mu : ℝ)
    (hA : A.toLinearMap.IsSymmetric)
    (hAx : A x = (lambda : ℂ) • x)
    (hBy : (A + V) y = (mu : ℂ) • y) :
    A (ProjectiveFubiniStudy.orthogonalRemainder x y) -
        (mu : ℂ) • ProjectiveFubiniStudy.orthogonalRemainder x y =
      ProjectiveFubiniStudy.orthogonalRemainder x (-V y) := by
  have hAy : A y - (mu : ℂ) • y = -V y := by
    have hBy' : A y + V y = (mu : ℂ) • y := by simpa using hBy
    have hAeq : A y = (mu : ℂ) • y - V y := eq_sub_of_add_eq hBy'
    rw [hAeq]
    abel
  have hinner :
      inner ℂ x (-V y) = ((lambda - mu : ℝ) : ℂ) * inner ℂ x y := by
    rw [← hAy, inner_sub_right, ← hA.apply_clm x y, hAx,
      inner_smul_left, inner_smul_right]
    simp
    ring
  rw [ProjectiveFubiniStudy.orthogonalRemainder,
    ProjectiveFubiniStudy.orthogonalRemainder, map_sub, map_smul, hAx, hinner]
  rw [← hAy]
  module

@[surface_novel, surface_published]
theorem reduced_residual_norm_le_perturbation
    (A V : H →L[ℂ] H) (x y : H) (lambda mu : ℝ)
    (hx : ‖x‖ = 1) (hy : ‖y‖ = 1)
    (hA : A.toLinearMap.IsSymmetric)
    (hAx : A x = (lambda : ℂ) • x)
    (hBy : (A + V) y = (mu : ℂ) • y) :
    ‖A (ProjectiveFubiniStudy.orthogonalRemainder x y) -
        (mu : ℂ) • ProjectiveFubiniStudy.orthogonalRemainder x y‖ ≤ ‖V‖ := by
  rw [reduced_residual_eq_orthogonal_perturbation A V x y lambda mu hA hAx hBy]
  calc
    ‖ProjectiveFubiniStudy.orthogonalRemainder x (-V y)‖ ≤ ‖-V y‖ :=
      norm_orthogonalRemainder_le x (-V y) hx
    _ = ‖V y‖ := norm_neg _
    _ ≤ ‖V‖ * ‖y‖ := ContinuousLinearMap.le_opNorm V y
    _ = ‖V‖ := by rw [hy, mul_one]

/-- The kernel-checked a posteriori rank-one sin-Theta estimate. -/
@[surface_novel, surface_published]
theorem sin_angleBaseUnit_le_perturbation_div_reducedGap
    (A V : H →L[ℂ] H) (x y : H) (lambda mu delta : ℝ)
    (hx : ‖x‖ = 1) (hy : ‖y‖ = 1)
    (hA : A.toLinearMap.IsSymmetric)
    (hAx : A x = (lambda : ℂ) • x)
    (hBy : (A + V) y = (mu : ℂ) • y)
    (hdelta : 0 < delta) (hgap : ReducedGapAt A x mu delta) :
    Real.sin (ProjectiveFubiniStudy.angleBaseUnit x y) ≤ ‖V‖ / delta := by
  rw [sin_angleBaseUnit_eq_norm_remainder x y hx hy]
  rw [le_div_iff₀ hdelta]
  simpa only [mul_comm] using
    (hgap _ (ProjectiveFubiniStudy.inner_orthogonalRemainder_left x y hx)).trans
      (reduced_residual_norm_le_perturbation A V x y lambda mu hx hy hA hAx hBy)

/-- The Fubini--Study migration bound extracted from the a posteriori sin-Theta estimate. -/
@[surface_novel, surface_published]
theorem angleBaseUnit_le_arcsin_perturbation_div_reducedGap
    (A V : H →L[ℂ] H) (x y : H) (lambda mu delta : ℝ)
    (hx : ‖x‖ = 1) (hy : ‖y‖ = 1)
    (hA : A.toLinearMap.IsSymmetric)
    (hAx : A x = (lambda : ℂ) • x)
    (hBy : (A + V) y = (mu : ℂ) • y)
    (hdelta : 0 < delta) (hgap : ReducedGapAt A x mu delta) :
    ProjectiveFubiniStudy.angleBaseUnit x y ≤ Real.arcsin (‖V‖ / delta) := by
  have hnonneg : 0 ≤ ProjectiveFubiniStudy.angleBaseUnit x y := Real.arccos_nonneg _
  have hlower : -(Real.pi / 2) ≤ ProjectiveFubiniStudy.angleBaseUnit x y := by
    have hpi : 0 ≤ Real.pi / 2 := by positivity
    linarith
  have hupper : ProjectiveFubiniStudy.angleBaseUnit x y ≤ Real.pi / 2 := by
    rw [ProjectiveFubiniStudy.angleBaseUnit, Real.arccos_le_pi_div_two]
    exact norm_nonneg _
  calc
    ProjectiveFubiniStudy.angleBaseUnit x y =
        Real.arcsin (Real.sin (ProjectiveFubiniStudy.angleBaseUnit x y)) :=
      (Real.arcsin_sin hlower hupper).symm
    _ ≤ Real.arcsin (‖V‖ / delta) := Real.arcsin_le_arcsin
      (sin_angleBaseUnit_le_perturbation_div_reducedGap
        A V x y lambda mu delta hx hy hA hAx hBy hdelta hgap)

@[surface_novel, surface_published]
theorem angleBaseUnit_lt_pi_div_two_of_perturbation_lt_reducedGap
    (A V : H →L[ℂ] H) (x y : H) (lambda mu delta : ℝ)
    (hx : ‖x‖ = 1) (hy : ‖y‖ = 1)
    (hA : A.toLinearMap.IsSymmetric)
    (hAx : A x = (lambda : ℂ) • x)
    (hBy : (A + V) y = (mu : ℂ) • y)
    (hdelta : 0 < delta) (hgap : ReducedGapAt A x mu delta)
    (hsmall : ‖V‖ < delta) :
    ProjectiveFubiniStudy.angleBaseUnit x y < Real.pi / 2 := by
  refine lt_of_le_of_lt
    (angleBaseUnit_le_arcsin_perturbation_div_reducedGap
      A V x y lambda mu delta hx hy hA hAx hBy hdelta hgap) ?_
  rw [Real.arcsin_lt_pi_div_two]
  exact (div_lt_one hdelta).2 hsmall

@[surface_adapter, surface_published]
theorem projectiveDistance_mk_unit_eq_angleBaseUnit
    (x y : H) (hx0 : x ≠ 0) (hy0 : y ≠ 0) (hx : ‖x‖ = 1) (hy : ‖y‖ = 1) :
    ProjectiveFubiniStudy.projectiveDistance
        (Projectivization.mk ℂ x hx0) (Projectivization.mk ℂ y hy0) =
      ProjectiveFubiniStudy.angleBaseUnit x y := by
  rw [ProjectiveFubiniStudy.projectiveDistance_mk_mk]
  simp [ProjectiveFubiniStudy.fubiniStudyBase,
    ProjectiveFubiniStudy.angleBaseUnit, hx, hy]

/-- Projective-space form of the a posteriori Davis--Kahan consequence. -/
@[surface_novel, surface_published]
theorem projectiveDistance_mk_le_arcsin_perturbation_div_reducedGap
    (A V : H →L[ℂ] H) (x y : H) (lambda mu delta : ℝ)
    (hx0 : x ≠ 0) (hy0 : y ≠ 0) (hx : ‖x‖ = 1) (hy : ‖y‖ = 1)
    (hA : A.toLinearMap.IsSymmetric)
    (hAx : A x = (lambda : ℂ) • x)
    (hBy : (A + V) y = (mu : ℂ) • y)
    (hdelta : 0 < delta) (hgap : ReducedGapAt A x mu delta) :
    ProjectiveFubiniStudy.projectiveDistance
        (Projectivization.mk ℂ x hx0) (Projectivization.mk ℂ y hy0) ≤
      Real.arcsin (‖V‖ / delta) := by
  rw [projectiveDistance_mk_unit_eq_angleBaseUnit x y hx0 hy0 hx hy]
  exact angleBaseUnit_le_arcsin_perturbation_div_reducedGap
    A V x y lambda mu delta hx hy hA hAx hBy hdelta hgap

end Surface.Core.ProjectivePerturbation
