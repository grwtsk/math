# Complete source: GRWTSK.Topology.GeneralTopology.Expansion.Variant078d0ca68c321557b80984191d52800a25d1a9098b3e951081f6678234d7eb9f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7bd209c79a14f60617ffde7bfe9a494f24c62c6` · SHA-256 `13bfce6867540c173dbcf7c6d54ebeef1012fb8e68ce8db984d50c1d03673621`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ExpandedSummand.Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ExpandedSummand.Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e","mathematical_subject":"Topology.GeneralTopology","original_sha256":"4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/RiemannHypothesis/Laplace/Expansion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.Laplace.Kernel
import Mathlib.Analysis.Normed.Group.FunctionSeries
import Mathlib.Topology.Algebra.InfiniteSum.TsumUniformlyOn

/-!
# B3.3 equation (17), local uniformity, and source growth

This module derives the exact support-radius exponential-polynomial expansion
from the integrated B3.2 zero-side identity.  It then proves one summable
majorant valid on every bounded radius interval.

The same majorant gives:

* genuine summability of the expanded occurrence family;
* uniform convergence on every `[1,B]`;
* continuity of the weighted source on every such interval;
* reality of the source by its unchanged real definition; and
* the sharp source-scale bound `C * (1 + A^8) * exp A`.

No support-radius Laplace integral or infinite integral--sum interchange occurs
in this module.
-/


namespace GRWTSK.Topology.GeneralTopology.ExpandedSummand.Variant4c74f0b02b2652315660db6797609b2e83e098f9724e8c073cca63a3137f3e4e

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.Laplace.Expansion

open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourcePairing
open ZeroSideTargets ZeroObject
open FormalResearch.RiemannHypothesis.Laplace.Algebra

noncomputable section

/-- The literal equation-(17) occurrence summand. -/
def expandedSummand (A : ℝ) (z : ℂ) : ℂ :=
  modeCoefficient z *
    (Complex.exp (2 * (A : ℂ) * z) *
        transformPolynomial ((A : ℂ) * z) ^ 2 +
      Complex.exp (-2 * (A : ℂ) * z) *
        transformPolynomial (-((A : ℂ) * z)) ^ 2 -
      2 * transformPolynomial ((A : ℂ) * z) *
        transformPolynomial (-((A : ℂ) * z)))

/-- The real-axis exclusion already proved for the actual zero object supplies
the denominator guard needed by the transform closed form. -/
theorem shifted_value_ne_zero (o : ZeroOccurrence) :
    shiftedValue o ≠ 0 :=
  shiftedValue_ne_zero_of_realZeroExclusion ZeroEta.real_zero_exclusion o

/-- Clearing the exact scale from one actual bilateral-transform square gives
the source coefficient and its ordinary complex-square numerator. -/
theorem actual_scaled_square
    (A : ℝ) (hA : 0 < A) (z : ℂ) (hz : z ≠ 0) :
    (A : ℂ) ^ 17 * bilateralTransform A z ^ 2 =
      modeCoefficient z *
        (Complex.exp ((A : ℂ) * z) *
            transformPolynomial ((A : ℂ) * z) -
          Complex.exp (-((A : ℂ) * z)) *
            transformPolynomial (-((A : ℂ) * z))) ^ 2 := by
  rw [ZeroTransform.actual_transform A hA z hz]
  unfold dividedTransform modeCoefficient
  rw [ZeroTransform.source_scale A hA]
  push_cast
  have ha : (A : ℂ) ≠ 0 := by
    exact_mod_cast hA.ne'
  have hs : (Real.sqrt A : ℂ) ≠ 0 := by
    exact_mod_cast (Real.sqrt_pos.mpr hA).ne'
  have hsq : (Real.sqrt A : ℂ) ^ 2 = (A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hA.le
  field_simp
  ring_nf
  simp only [hsq]
  ring

/-- Squaring the numerator gives exactly the positive shift, reflected negative
shift, and unshifted mixed term. -/
theorem numerator_square_expansion
    (A z : ℂ) :
    (Complex.exp (A * z) * transformPolynomial (A * z) -
      Complex.exp (-(A * z)) * transformPolynomial (-(A * z))) ^ 2 =
      Complex.exp (2 * A * z) * transformPolynomial (A * z) ^ 2 +
      Complex.exp (-2 * A * z) * transformPolynomial (-(A * z)) ^ 2 -
      2 * transformPolynomial (A * z) * transformPolynomial (-(A * z)) := by
  have hepos :
      Complex.exp (A * z) ^ 2 =
        Complex.exp (2 * A * z) := by
    rw [sq, ← Complex.exp_add]
    congr 1
    ring
  have heneg :
      Complex.exp (-(A * z)) ^ 2 =
        Complex.exp (-2 * A * z) := by
    rw [sq, ← Complex.exp_add]
    congr 1
    ring
  have hecross :
      Complex.exp (A * z) * Complex.exp (-(A * z)) = 1 := by
    rw [← Complex.exp_add, add_neg_cancel, Complex.exp_zero]
  rw [mode_square_expansion, hepos, heneg,
    mul_assoc (2 : ℂ) (Complex.exp (A * z)), hecross]
  ring

/-- Exact single-occurrence equation-(17) identity. -/
theorem expanded_summand_eq
    (A : ℝ) (hA : 1 ≤ A) (o : ZeroOccurrence) :
    expandedSummand A (shiftedValue o) =
      (A : ℂ) ^ 17 *
        bilateralTransform A (shiftedValue o) ^ 2 := by
  rw [actual_scaled_square A (by linarith)
    (shiftedValue o) (shifted_value_ne_zero o)]
  unfold expandedSummand
  rw [numerator_square_expansion]

/-- Equation (17), derived from the completed B3.2 identity rather than taken
as a new explicit-formula premise. -/
theorem equation17
    (A : ℝ) (hA : 1 ≤ A) :
    Summable
      (fun o : ZeroOccurrence ↦
        expandedSummand A (shiftedValue o)) ∧
    (weightedSource A : ℂ) =
      ∑' o : ZeroOccurrence,
        expandedSummand A (shiftedValue o) := by
  obtain ⟨_, _, hsum, hnorm, hzero⟩ :=
    FormalResearch.RiemannHypothesis.ZeroSide.Assembly.zero_side_identity A hA
  have hscaled :=
    hsum.mul_left ((A : ℂ) ^ 17)
  constructor
  · exact hscaled.congr
      (fun o ↦ (expanded_summand_eq A hA o).symm)
  · simp_rw [expanded_summand_eq A hA]
    rw [hsum.tsum_mul_left, ← hzero, ← hnorm]
    simp [weightedSource, mul_assoc]

/-- A universal degree-four source-polynomial bound, valid also inside the
unit ball. -/
theorem transformPolynomial_norm_le_one_add
    (t : ℂ) :
    ‖transformPolynomial t‖ ≤
      266 * (1 + ‖t‖) ^ 4 := by
  have hb :
      ‖transformPolynomial t‖ ≤
        ‖t‖ ^ 4 + 10 * ‖t‖ ^ 3 + 45 * ‖t‖ ^ 2 +
          105 * ‖t‖ + 105 := by
    unfold transformPolynomial
    calc
      _ ≤ ‖t ^ 4 - 10 * t ^ 3 + 45 * t ^ 2 - 105 * t‖ +
          ‖(105 : ℂ)‖ := norm_add_le _ _
      _ ≤
          (‖t ^ 4 - 10 * t ^ 3 + 45 * t ^ 2‖ +
            ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_sub_le _ _
      _ ≤
          ((‖t ^ 4 - 10 * t ^ 3‖ + ‖45 * t ^ 2‖) +
            ‖105 * t‖) + ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_add_le _ _
      _ ≤
          (((‖t ^ 4‖ + ‖10 * t ^ 3‖) +
            ‖45 * t ^ 2‖) + ‖105 * t‖) +
            ‖(105 : ℂ)‖ := by
        gcongr
        exact norm_sub_le _ _
      _ = _ := by
        norm_num [norm_mul, norm_pow]
  have hr : 0 ≤ ‖t‖ := norm_nonneg t
  have hpoly :
      ‖t‖ ^ 4 + 10 * ‖t‖ ^ 3 + 45 * ‖t‖ ^ 2 +
          105 * ‖t‖ + 105 ≤
        266 * (1 + ‖t‖) ^ 4 := by
    nlinarith [pow_nonneg hr 2, pow_nonneg hr 3, pow_nonneg hr 4]
  exact hb.trans hpoly

/-- On the source radius domain the polynomial factor has exactly the safe
`A^4 (1+‖z‖)^4` envelope needed for equation (18). -/
theorem transformPolynomial_norm_le_scale
    (A : ℝ) (hA : 1 ≤ A) (z : ℂ) :
    ‖transformPolynomial ((A : ℂ) * z)‖ ≤
      266 * A ^ 4 * (1 + ‖z‖) ^ 4 := by
  have hnorm :
      ‖(A : ℂ) * z‖ = A * ‖z‖ := by
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (by linarith)]
  have hlin :
      1 + A * ‖z‖ ≤ A * (1 + ‖z‖) := by
    nlinarith [norm_nonneg z]
  have hpow :
      (1 + A * ‖z‖) ^ 4 ≤
        (A * (1 + ‖z‖)) ^ 4 :=
    pow_le_pow_left₀ (by positivity) hlin 4
  calc
    _ ≤ 266 * (1 + ‖(A : ℂ) * z‖) ^ 4 :=
      transformPolynomial_norm_le_one_add _
    _ = 266 * (1 + A * ‖z‖) ^ 4 := by rw [hnorm]
    _ ≤ 266 * (A * (1 + ‖z‖)) ^ 4 := by
      exact mul_le_mul_of_nonneg_left hpow (by norm_num)
    _ = _ := by ring

/-- The equation-(17) coefficient contributes fourteen inverse powers in the
large-zero tail. -/
theorem modeCoefficient_norm_le
    (z : ℂ) (hz : 1 ≤ ‖z‖) :
    ‖modeCoefficient z‖ ≤
      589824 / ‖z‖ ^ 14 := by
  have hr : 0 < ‖z‖ := by linarith
  have hf :
      ‖z ^ 2 - 1 / 4‖ ≤ 2 * ‖z‖ ^ 2 := by
    calc
      _ ≤ ‖z ^ 2‖ + ‖(1 / 4 : ℂ)‖ :=
        norm_sub_le _ _
      _ ≤ _ := by
        norm_num [norm_pow]
        nlinarith
  unfold modeCoefficient
  rw [norm_div, norm_mul, norm_pow, norm_pow, norm_pow]
  norm_num only [Complex.norm_ofNat]
  calc
    _ ≤ (384 ^ 2 * (2 * ‖z‖ ^ 2) ^ 2) /
        ‖z‖ ^ 18 := by
      gcongr
      norm_num
    _ = 589824 / ‖z‖ ^ 14 := by
      field_simp
      ring

/-- The summable zero-dependent factor left after extracting the entire
radius dependence from equation (17). -/
def modeWeight (o : ZeroOccurrence) : ℝ :=
  ‖modeCoefficient (shiftedValue o)‖ *
    (1 + ‖shiftedValue o‖) ^ 8

theorem modeWeight_nonneg
    (o : ZeroOccurrence) :
    0 ≤ modeWeight o := by
  unfold modeWeight
  positivity

private def modeTailConstant : ℝ :=
  589824 * 256 * 64

private theorem modeWeight_tail_le
    (o : ZeroOccurrence)
    (ho : 1 ≤ ‖shiftedValue o‖) :
    modeWeight o ≤
      modeTailConstant *
        (1 + ‖shiftedValue o‖) ^ (-6 : ℝ) := by
  let r := ‖shiftedValue o‖
  have hr : 0 < r := by
    dsimp [r]
    linarith
  have hr1 : 0 < 1 + r := by positivity
  have hcoef :=
    modeCoefficient_norm_le (shiftedValue o) ho
  have h8 :
      (1 + r) ^ 8 ≤ 256 * r ^ 8 := by
    calc
      _ ≤ (2 * r) ^ 8 := by
        gcongr
        linarith
      _ = _ := by ring
  have h6 :
      (1 + r) ^ 6 ≤ 64 * r ^ 6 := by
    calc
      _ ≤ (2 * r) ^ 6 := by
        gcongr
        linarith
      _ = _ := by ring
  have hinv :
      1 / r ^ 6 ≤ 64 / (1 + r) ^ 6 := by
    apply (div_le_div_iff₀ (by positivity) (by positivity)).2
    simpa only [one_mul] using h6
  calc
    modeWeight o ≤
        (589824 / r ^ 14) * (256 * r ^ 8) := by
      unfold modeWeight
      dsimp [r] at hcoef ⊢
      gcongr
    _ = (589824 * 256) * (1 / r ^ 6) := by
      field_simp
    _ ≤ (589824 * 256) *
        (64 / (1 + r) ^ 6) := by
      exact mul_le_mul_of_nonneg_left hinv (by norm_num)
    _ = modeTailConstant *
        (1 + r) ^ (-6 : ℝ) := by
      unfold modeTailConstant
      rw [show (-6 : ℝ) = -(6 : ℕ) by norm_num,
        Real.rpow_neg hr1.le, Real.rpow_natCast]
      ring

private theorem eventually_one_le_shifted_norm :
    ∀ᶠ o : ZeroOccurrence in cofinite,
      1 ≤ ‖shiftedValue o‖ := by
  rw [eventually_cofinite]
  have hfinite :
      Finite (ZeroSummability.ZeroShell 0) :=
    ZeroSummability.zeroShell_finite 0
  have hf :
      {o : ZeroOccurrence |
        ZeroSummability.shellIndex o = 0}.Finite :=
    Set.finite_coe_iff.mp hfinite
  simpa only [not_le, ZeroSummability.shellIndex,
    Nat.floor_eq_zero] using hf

/-- The zero-dependent coefficient required for the sharp equation-(18) bound
is summable over all analytic-multiplicity occurrence slots. -/
theorem modeWeight_summable :
    Summable modeWeight := by
  have hsum :=
    ZeroShellCount.zero_summability.mul_left modeTailConstant
  apply hsum.of_norm_bounded_eventually
  filter_upwards [eventually_one_le_shifted_norm] with o ho
  rw [Real.norm_of_nonneg (modeWeight_nonneg o)]
  exact modeWeight_tail_le o ho

private def growthFactor : ℝ :=
  4 * 266 ^ 2

private theorem growthFactor_nonneg :
    0 ≤ growthFactor := by
  unfold growthFactor
  norm_num

/-- The complete equation-(17) occurrence summand has the sharp
degree-eight/exponential radius dependence. -/
theorem expandedSummand_norm_le
    (A : ℝ) (hA : 1 ≤ A) (o : ZeroOccurrence) :
    ‖expandedSummand A (shiftedValue o)‖ ≤
      growthFactor * (1 + A ^ 8) * Real.exp A *
        modeWeight o := by
  let z := shiftedValue o
  let M := 266 * A ^ 4 * (1 + ‖z‖) ^ 4
  have hP :
      ‖transformPolynomial ((A : ℂ) * z)‖ ≤ M := by
    simpa [M, z] using
      transformPolynomial_norm_le_scale A hA z
  have hN :
      ‖transformPolynomial (-((A : ℂ) * z))‖ ≤ M := by
    have h :=
      transformPolynomial_norm_le_scale A hA (-z)
    simpa only [norm_neg, mul_neg] using h
  have hepos :
      ‖Complex.exp (2 * (A : ℂ) * z)‖ ≤
        Real.exp A := by
    rw [Complex.norm_exp]
    apply Real.exp_le_exp.mpr
    dsimp [z]
    norm_num [Complex.mul_re]
    nlinarith [(shiftedValue_strip o).2]
  have heneg :
      ‖Complex.exp (-2 * (A : ℂ) * z)‖ ≤
        Real.exp A := by
    rw [Complex.norm_exp]
    apply Real.exp_le_exp.mpr
    dsimp [z]
    norm_num [Complex.mul_re]
    nlinarith [(shiftedValue_strip o).1]
  have hone : 1 ≤ Real.exp A := by
    have := Real.exp_le_exp.mpr (show (0 : ℝ) ≤ A by linarith)
    simpa using this
  have hM : 0 ≤ M := by
    dsimp [M]
    positivity
  have hbracket :
      ‖Complex.exp (2 * (A : ℂ) * z) *
            transformPolynomial ((A : ℂ) * z) ^ 2 +
          Complex.exp (-2 * (A : ℂ) * z) *
            transformPolynomial (-((A : ℂ) * z)) ^ 2 -
          2 * transformPolynomial ((A : ℂ) * z) *
            transformPolynomial (-((A : ℂ) * z))‖ ≤
        4 * Real.exp A * M ^ 2 := by
    calc
      _ ≤
          ‖Complex.exp (2 * (A : ℂ) * z) *
              transformPolynomial ((A : ℂ) * z) ^ 2 +
            Complex.exp (-2 * (A : ℂ) * z) *
              transformPolynomial (-((A : ℂ) * z)) ^ 2‖ +
          ‖2 * transformPolynomial ((A : ℂ) * z) *
              transformPolynomial (-((A : ℂ) * z))‖ :=
        norm_sub_le _ _
      _ ≤
          (‖Complex.exp (2 * (A : ℂ) * z) *
              transformPolynomial ((A : ℂ) * z) ^ 2‖ +
            ‖Complex.exp (-2 * (A : ℂ) * z) *
              transformPolynomial (-((A : ℂ) * z)) ^ 2‖) +
          ‖2 * transformPolynomial ((A : ℂ) * z) *
              transformPolynomial (-((A : ℂ) * z))‖ := by
        gcongr
        exact norm_add_le _ _
      _ =
          ‖Complex.exp (2 * (A : ℂ) * z)‖ *
              ‖transformPolynomial ((A : ℂ) * z)‖ ^ 2 +
          ‖Complex.exp (-2 * (A : ℂ) * z)‖ *
              ‖transformPolynomial (-((A : ℂ) * z))‖ ^ 2 +
          2 * ‖transformPolynomial ((A : ℂ) * z)‖ *
              ‖transformPolynomial (-((A : ℂ) * z))‖ := by
        simp only [norm_mul, norm_pow, Complex.norm_ofNat]
      _ ≤
          Real.exp A * M ^ 2 +
            Real.exp A * M ^ 2 + 2 * M * M := by
        gcongr
      _ ≤ 4 * Real.exp A * M ^ 2 := by
        nlinarith [Real.exp_pos A, sq_nonneg M]
  unfold expandedSummand
  rw [norm_mul]
  calc
    _ ≤ ‖modeCoefficient z‖ *
        (4 * Real.exp A * M ^ 2) := by
      exact mul_le_mul_of_nonneg_left hbracket (norm_nonneg _)
    _ =
        growthFactor * A ^ 8 * Real.exp A *
          modeWeight o := by
      unfold growthFactor modeWeight
      dsimp [M, z]
      ring
    _ ≤
        growthFactor * (1 + A ^ 8) * Real.exp A *
          modeWeight o := by
      have hfac :
          0 ≤ growthFactor * Real.exp A * modeWeight o :=
        mul_nonneg
          (mul_nonneg growthFactor_nonneg (Real.exp_pos A).le)
          (modeWeight_nonneg o)
      nlinarith

/-- The same summable majorant is uniform throughout every bounded source
radius interval. -/
theorem expandedSummand_norm_le_on_Icc
    (B : ℝ) (hB : 1 ≤ B)
    (o : ZeroOccurrence) (A : ℝ)
    (hA : A ∈ Icc (1 : ℝ) B) :
    ‖expandedSummand A (shiftedValue o)‖ ≤
      growthFactor * (1 + B ^ 8) * Real.exp B *
        modeWeight o := by
  have hbase :=
    expandedSummand_norm_le A hA.1 o
  have hp : A ^ 8 ≤ B ^ 8 :=
    pow_le_pow_left₀ (by linarith [hA.1]) hA.2 8
  have he : Real.exp A ≤ Real.exp B :=
    Real.exp_le_exp.mpr hA.2
  calc
    _ ≤ growthFactor * (1 + A ^ 8) * Real.exp A *
        modeWeight o := hbase
    _ ≤ growthFactor * (1 + B ^ 8) * Real.exp B *
        modeWeight o := by
      have hg := growthFactor_nonneg
      have hm := modeWeight_nonneg o
      gcongr

/-- Weierstrass convergence of the complete occurrence expansion on every
bounded source radius interval. -/
theorem expanded_hasSumUniformlyOn_Icc
    (B : ℝ) (hB : 1 ≤ B) :
    HasSumUniformlyOn
      (fun o : ZeroOccurrence ↦
        fun A : ℝ ↦ expandedSummand A (shiftedValue o))
      (fun A ↦ ∑' o : ZeroOccurrence,
        expandedSummand A (shiftedValue o))
      (Icc (1 : ℝ) B) := by
  apply HasSumUniformlyOn.of_norm_le_summable
    (modeWeight_summable.mul_left
      (growthFactor * (1 + B ^ 8) * Real.exp B))
  intro o A hA
  exact expandedSummand_norm_le_on_Icc B hB o A hA

private theorem expandedSummand_continuous
    (o : ZeroOccurrence) :
    Continuous
      (fun A : ℝ ↦
        expandedSummand A (shiftedValue o)) := by
  unfold expandedSummand modeCoefficient transformPolynomial
  fun_prop

/-- Local uniform convergence makes the equation-(17) sum continuous on every
bounded source radius interval. -/
theorem expanded_sum_continuousOn_Icc
    (B : ℝ) (hB : 1 ≤ B) :
    ContinuousOn
      (fun A : ℝ ↦
        ∑' o : ZeroOccurrence,
          expandedSummand A (shiftedValue o))
      (Icc (1 : ℝ) B) := by
  refine continuousOn_tsum
    (fun o ↦ (expandedSummand_continuous o).continuousOn)
    (modeWeight_summable.mul_left
      (growthFactor * (1 + B ^ 8) * Real.exp B))
    ?_
  intro o A hA
  exact expandedSummand_norm_le_on_Icc B hB o A hA

/-- The actual weighted arithmetic source is therefore continuous on every
bounded radius interval, not merely the zero-side surrogate. -/
theorem weightedSource_continuousOn_Icc
    (B : ℝ) (hB : 1 ≤ B) :
    ContinuousOn
      (fun A : ℝ ↦ (weightedSource A : ℂ))
      (Icc (1 : ℝ) B) := by
  refine (expanded_sum_continuousOn_Icc B hB).congr ?_
  intro A hA
  exact (equation17 A hA.1).2

/-- The weighted source remains the real-valued source family. -/
theorem weightedSource_im
    (A : ℝ) :
    ((weightedSource A : ℂ)).im = 0 := by
  simp

/-- A finite nonnegative constant for the sharp source growth estimate. -/
def growthConstant : ℝ :=
  growthFactor * ∑' o : ZeroOccurrence, modeWeight o

theorem growthConstant_nonneg :
    0 ≤ growthConstant := by
  unfold growthConstant
  exact mul_nonneg growthFactor_nonneg
    (tsum_nonneg modeWeight_nonneg)

/-- Norm bound for the complete equation-(17) occurrence sum. -/
theorem expanded_sum_norm_le
    (A : ℝ) (hA : 1 ≤ A) :
    ‖∑' o : ZeroOccurrence,
        expandedSummand A (shiftedValue o)‖ ≤
      growthConstant * (1 + A ^ 8) * Real.exp A := by
  let C : ℝ :=
    growthFactor * (1 + A ^ 8) * Real.exp A
  have hC : 0 ≤ C := by
    have hg := growthFactor_nonneg
    dsimp [C]
    positivity
  have hmajor :
      Summable
        (fun o : ZeroOccurrence ↦ C * modeWeight o) :=
    modeWeight_summable.mul_left C
  have hnorm :
      Summable
        (fun o : ZeroOccurrence ↦
          ‖expandedSummand A (shiftedValue o)‖) := by
    apply Summable.of_nonneg_of_le
      (fun _ ↦ norm_nonneg _)
      (fun o ↦ by
        simpa [C] using expandedSummand_norm_le A hA o)
      hmajor
  calc
    _ ≤ ∑' o : ZeroOccurrence,
        ‖expandedSummand A (shiftedValue o)‖ :=
      norm_tsum_le_tsum_norm hnorm
    _ ≤ ∑' o : ZeroOccurrence, C * modeWeight o :=
      hnorm.tsum_le_tsum
        (fun o ↦ by
          simpa [C] using expandedSummand_norm_le A hA o)
        hmajor
    _ = C * ∑' o : ZeroOccurrence, modeWeight o := by
      rw [modeWeight_summable.tsum_mul_left]
    _ = growthConstant * (1 + A ^ 8) * Real.exp A := by
      unfold C growthConstant
      ring

/-- RH-0010 equation (18), now derived from the actual B3.2 source identity. -/
theorem weightedSource_growth
    (A : ℝ) (hA : 1 ≤ A) :
    ‖(weightedSource A : ℂ)‖ ≤
      growthConstant * (1 + A ^ 8) * Real.exp A := by
  rw [(equation17 A hA).2]
  exact expanded_sum_norm_le A hA

/-- The exact B3.3 checkpoint reached in this increment. -/
def Equation17GrowthCheckpoint : Prop :=
  (∀ A : ℝ, 1 ≤ A →
    Summable
      (fun o : ZeroOccurrence ↦
        expandedSummand A (shiftedValue o)) ∧
    (weightedSource A : ℂ) =
      ∑' o : ZeroOccurrence,
        expandedSummand A (shiftedValue o)) ∧
  (∀ B : ℝ, 1 ≤ B →
    HasSumUniformlyOn
      (fun o : ZeroOccurrence ↦
        fun A : ℝ ↦ expandedSummand A (shiftedValue o))
      (fun A ↦ ∑' o : ZeroOccurrence,
        expandedSummand A (shiftedValue o))
      (Icc (1 : ℝ) B)) ∧
  (∀ B : ℝ, 1 ≤ B →
    ContinuousOn
      (fun A : ℝ ↦ (weightedSource A : ℂ))
      (Icc (1 : ℝ) B)) ∧
  (∀ A : ℝ, ((weightedSource A : ℂ)).im = 0) ∧
  (0 ≤ growthConstant ∧
    ∀ A : ℝ, 1 ≤ A →
      ‖(weightedSource A : ℂ)‖ ≤
        growthConstant * (1 + A ^ 8) * Real.exp A)

theorem equation17_growth_checkpoint :
    Equation17GrowthCheckpoint := by
  refine ⟨?_, expanded_hasSumUniformlyOn_Icc,
    weightedSource_continuousOn_Icc, weightedSource_im,
    growthConstant_nonneg, weightedSource_growth⟩
  intro A hA
  exact ⟨(equation17 A hA).1, (equation17 A hA).2⟩

end
end FormalResearch.RiemannHypothesis.Laplace.Expansion
```
