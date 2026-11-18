/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteSineGammaQuadrature
import GRWTSK.FunctionalAnalysis.SpatialGramEnclosure
import Mathlib.Analysis.Calculus.MeanValue

/-!
# Complete spatial residual Grams of original finite-sine source trials

The columns are the PRE-EXISTING gamma-quadrature outputs with the same
complete signed prime/pole remainder. An arbitrary finite source sine head
is subtracted. Against every original high test this head has zero pairing;
it need not be an exactly evaluated orthogonal projection.

Actual finite spatial representatives are derived, not assumed. Their
complete integral Gram is enclosed by whole-cell ranges and finite samples.
The canonical operator row error is then added separately. No finite Fourier
sampling is substituted for the norm, and no uncertain inverse is used.

Consumer: the energy-dual Schur residual estimate with an independently
proved true high floor. This does NOT supply that floor, a positive Schur
matrix, a cofinal family, or an RH/GRH proof. Real odd zeta source only.
SOURCE_PROOF_CANDIDATE; all formal execution and certified computation NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter Matrix
open scoped BigOperators Interval

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FiniteSineSpatialResidual

open TranslationCutoffs TranslationEnergyDomain FormDomainDensity
open OddRootProjection OddSineForm OddGammaOutput OddSineParseval
open OddPrimePoleOutput FiniteSineOperator ClosedSourceBilinear
open GammaCutoffResidual GammaGeometricQuadrature GammaBochnerRow
open FiniteSineGammaQuadrature
open GRWTSK.FunctionalAnalysis.SpatialGramEnclosure
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

private theorem sum_smul_ae {α : Type*} [DecidableEq α]
    (s : Finset α) (z : α → Physical) (f : α → ℝ → ℝ)
    (hz : ∀ i, z i =ᵐ[volume] f i) (v : α → ℝ) :
    (∑ i ∈ s, v i • z i) =ᵐ[volume] fun t => ∑ i ∈ s, v i * f i t := by
  induction s using Finset.induction_on with
  | empty => simpa using (Lp.coeFn_zero : (0 : Physical) =ᵐ[volume] (fun _ : ℝ => (0 : ℝ)))
  | @insert i s hi ih =>
      simp only [Finset.sum_insert hi]
      filter_upwards [Lp.coeFn_add (v i • z i) (∑ j ∈ s, v j • z j),
        Lp.coeFn_smul (v i) (z i), hz i, ih] with t ha hs hz' ht
      simp only [ha, hs, hz', ht, Pi.add_apply, Pi.smul_apply, smul_eq_mul]

/-- Original scalar differences represent the corresponding physical L2 row. -/
theorem finite_symmetricDifference_ae {M : ℕ} (T r : ℝ) (c : Fin M → ℝ) :
    GammaCutoffResidual.symmetricDifference (finiteInput T c : Physical) r =ᵐ[volume]
      OddGammaOutput.symmetricDifference r (finiteSine T c) := by
  have hc := finiteInput_ae T c
  have hp := (measurePreserving_add_right volume r).quasiMeasurePreserving.ae hc
  have hm := (measurePreserving_add_right volume (-r)).quasiMeasurePreserving.ae hc
  filter_upwards [jump_ae (finiteInput T c : Physical) r,
    jump_ae (finiteInput T c : Physical) (-r), hc, hp, hm,
    Lp.coeFn_add (jump (finiteInput T c : Physical) r) (jump (finiteInput T c : Physical) (-r)),
    Lp.coeFn_neg (jump (finiteInput T c : Physical) r + jump (finiteInput T c : Physical) (-r))]
    with t hjp hjm hct hpt hmt ha hn
  change (-(jump (finiteInput T c : Physical) r + jump (finiteInput T c : Physical) (-r))) t = _
  rw [hn, ha, hjp, hjm, hct, hpt, hmt]
  simp only [OddGammaOutput.symmetricDifference, sub_eq_add_neg]
  ring

/-- The finite middle-lag expression is pointwise elementary. -/
def middleFunction {M : ℕ} (T : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (c : Fin M → ℝ) (t : ℝ) : ℝ :=
  ∑ k ∈ Finset.range N, cellWeight (x k) (x (k + 1)) *
    OddGammaOutput.symmetricDifference ((x k + x (k + 1)) / 2) (finiteSine T c) t

theorem midpointRow_ae {M : ℕ} (T : ℝ) (x : ℕ → ℝ) (N : ℕ) (c : Fin M → ℝ) :
    midpointRow x N (finiteInput T c : Physical) =ᵐ[volume] middleFunction T x N c := by
  exact sum_smul_ae (Finset.range N)
    (fun k => GammaCutoffResidual.symmetricDifference (finiteInput T c : Physical)
      ((x k + x (k + 1)) / 2))
    (fun k => OddGammaOutput.symmetricDifference ((x k + x (k + 1)) / 2) (finiteSine T c))
    (fun k => finite_symmetricDifference_ae T _ c)
    (fun k => cellWeight (x k) (x (k + 1)))

/-- Exact arithmetic representative of the finite-translation approximation. -/
def spatialOutput {M : ℕ} (T β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (c : Fin M → ℝ) (t : ℝ) : ℝ :=
  (Icc (-T) T).indicator (middleFunction T x N c) t +
    (2 * tailWeight (x N)) * finiteSine T c t +
    primePoleOutput T β (finiteSine T c) (polePort T c) t

theorem approximateOutput_ae {M : ℕ} (T β : ℝ) (x : ℕ → ℝ) (N : ℕ) (c : Fin M → ℝ) :
    approximateOutput T β x N c =ᵐ[volume] spatialOutput T β x N c := by
  let f : Physical := finiteInput T c
  let mid : Physical := midpointRow x N f
  let tail : Physical := (2 * tailWeight (x N)) • f
  have hwindow := GRWTSK.FunctionalAnalysis.L2WindowRestriction.restrict_ae
    volume (Icc (-T) T) measurableSet_Icc mid
  filter_upwards [Lp.coeFn_add (quadratureRow T x N f) (primePolePart T β c),
    Lp.coeFn_add (physicalWindow T mid) tail,
    Lp.coeFn_smul (2 * tailWeight (x N)) f,
    hwindow, midpointRow_ae T x N c, finiteInput_ae T c, primePolePart_ae T β c]
    with t ha hq hs hw hm hf hp
  change (quadratureRow T x N f + primePolePart T β c) t = _
  rw [ha]
  change (physicalWindow T mid + tail) t + primePolePart T β c t = _
  rw [hq, hs, hw, hf, hp]
  unfold spatialOutput
  by_cases ht : t ∈ Icc (-T) T <;> simp [ht, hm, Pi.smul_apply, smul_eq_mul]

def correctedColumn {M K : ℕ} (T β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (c : Fin M → ℝ) (d : Fin K → ℝ) : Physical :=
  approximateOutput T β x N c - (finiteInput T d : Physical)

def spatialColumn {M K : ℕ} (T β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (c : Fin M → ℝ) (d : Fin K → ℝ) (t : ℝ) : ℝ :=
  spatialOutput T β x N c t - finiteSine T d t

theorem correctedColumn_ae {M K : ℕ} (T β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (c : Fin M → ℝ) (d : Fin K → ℝ) :
    correctedColumn T β x N c d =ᵐ[volume] spatialColumn T β x N c d := by
  filter_upwards [Lp.coeFn_sub (approximateOutput T β x N c) (finiteInput T d : Physical),
    approximateOutput_ae T β x N c, finiteInput_ae T d] with t hs ho hd
  simp only [correctedColumn, spatialColumn, hs, ho, hd, Pi.sub_apply]

theorem spatialColumn_memLp {M K : ℕ} (T β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (c : Fin M → ℝ) (d : Fin K → ℝ) :
    MemLp (spatialColumn T β x N c d) 2 volume :=
  (Lp.memLp (correctedColumn T β x N c d)).congr (correctedColumn_ae T β x N c d)

theorem spatialColumn_supported {M K : ℕ} (T β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (c : Fin M → ℝ) (d : Fin K → ℝ) {t : ℝ} (ht : t ∉ Icc (-T) T) :
    spatialColumn T β x N c d t = 0 := by
  simp only [spatialColumn, spatialOutput, indicator_of_notMem ht,
    finiteSine_eq_zero_off_window T c ht, finiteSine_eq_zero_off_window T d ht,
    primePoleOutput_eq_zero_of_not_mem T β _ _ t ht, mul_zero, add_zero, sub_zero]


private theorem weighted_sum_difference {α : Type*} [DecidableEq α]
    (s : Finset α) (a B : α → ℝ) (f : α → ℝ → ℝ) (u v : ℝ)
    (h : ∀ i ∈ s, |f i u - f i v| ≤ B i * |u - v|) :
    |(∑ i ∈ s, a i * f i u) - ∑ i ∈ s, a i * f i v| ≤
      (∑ i ∈ s, |a i| * B i) * |u - v| := by
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ i ∈ s, |a i * f i u - a i * f i v| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ i ∈ s, (|a i| * B i) * |u - v| := by
      apply Finset.sum_le_sum
      intro i hi
      rw [← mul_sub, abs_mul]
      simpa only [mul_assoc] using mul_le_mul_of_nonneg_left (h i hi) (abs_nonneg _)
    _ = _ := (Finset.sum_mul _ _ _).symm

private theorem scalar_symmetricDifference_modulus {f : ℝ → ℝ} {K : ℝ≥0}
    (hf : LipschitzWith K f) (r u v : ℝ) :
    |OddGammaOutput.symmetricDifference r f u - OddGammaOutput.symmetricDifference r f v| ≤
      (4 * (K : ℝ)) * |u - v| := by
  have h0 : |f u - f v| ≤ (K : ℝ) * |u - v| := by
    simpa only [Real.norm_eq_abs] using hf.norm_sub_le u v
  have hp : |f (u + r) - f (v + r)| ≤ (K : ℝ) * |u - v| := by
    simpa only [Real.norm_eq_abs, add_sub_add_right_eq_sub] using hf.norm_sub_le (u + r) (v + r)
  have hm : |f (u - r) - f (v - r)| ≤ (K : ℝ) * |u - v| := by
    simpa only [Real.norm_eq_abs, sub_sub_sub_cancel_right] using hf.norm_sub_le (u - r) (v - r)
  have hid : OddGammaOutput.symmetricDifference r f u - OddGammaOutput.symmetricDifference r f v =
      2 * (f u - f v) - (f (u + r) - f (v + r)) - (f (u - r) - f (v - r)) := by
    unfold OddGammaOutput.symmetricDifference
    ring
  rw [hid]
  have h1 := abs_sub (2 * (f u - f v)) (f (u + r) - f (v + r))
  have h2 := abs_sub (2 * (f u - f v) - (f (u + r) - f (v + r)))
    (f (u - r) - f (v - r))
  rw [abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at h1
  linarith

private theorem scalar_prime_modulus (T : ℝ) {f : ℝ → ℝ} {K : ℝ≥0}
    (hf : LipschitzWith K f) (u v : ℝ) :
    |primeOutput T f u - primeOutput T f v| ≤
      (2 * ∑ q ∈ activePrimePowers T, |primeWeight q|) * (K : ℝ) * |u - v| := by
  have hpair (r : ℝ) : |(f (u + r) + f (u - r)) - (f (v + r) + f (v - r))| ≤
      (2 * (K : ℝ)) * |u - v| := by
    have hp := hf.norm_sub_le (u + r) (v + r)
    have hm := hf.norm_sub_le (u - r) (v - r)
    simp only [Real.norm_eq_abs, add_sub_add_right_eq_sub, sub_sub_sub_cancel_right] at hp hm
    have hid : (f (u + r) + f (u - r)) - (f (v + r) + f (v - r)) =
        (f (u + r) - f (v + r)) + (f (u - r) - f (v - r)) := by ring
    rw [hid]
    linarith [abs_add (f (u + r) - f (v + r)) (f (u - r) - f (v - r))]
  have h := weighted_sum_difference (activePrimePowers T) primeWeight
    (fun _ => 2 * (K : ℝ)) (fun q t => f (t + Real.log q) + f (t - Real.log q))
    u v (fun q _ => hpair (Real.log q))
  simpa only [primeOutput, ← Finset.sum_mul, mul_assoc, mul_left_comm, mul_comm] using h

/-- The true sinh port has a window-wide modulus; it is not dropped. -/
theorem sinh_window_modulus (T : ℝ) (hT : 0 < T) {u v : ℝ}
    (hu : u ∈ Icc (-T) T) (hv : v ∈ Icc (-T) T) :
    |Real.sinh (u / 2) - Real.sinh (v / 2)| ≤ (Real.cosh (T / 2) / 2) * |u - v| := by
  have hd (s : ℝ) : HasDerivAt (fun t : ℝ => Real.sinh (t / 2)) (Real.cosh (s / 2) / 2) s := by
    convert ((hasDerivAt_id s).div_const 2).sinh using 1 <;> ring
  have hb (s : ℝ) (hs : s ∈ Icc (-T) T) :
      ‖deriv (fun t : ℝ => Real.sinh (t / 2)) s‖ ≤ Real.cosh (T / 2) / 2 := by
    rw [(hd s).deriv, Real.norm_of_nonneg (by positivity)]
    apply div_le_div_of_nonneg_right _ (by norm_num)
    apply Real.cosh_le_cosh.mpr
    rw [abs_of_pos (by positivity : 0 < T / 2)]
    exact abs_le.mpr ⟨by linarith [hs.1], by linarith [hs.2]⟩
  simpa only [Real.norm_eq_abs] using
    (convex_Icc (-T) T).norm_image_sub_le_of_norm_deriv_le
      (fun s _ => (hd s).differentiableAt) hb hv hu

/-- Absolute coefficient mass is used only for VARIATION error control,
never as a replacement for the signed source being tested. -/
def spatialCoefficientMass (T β : ℝ) (x : ℕ → ℝ) (N : ℕ) : ℝ :=
  4 * (∑ k ∈ Finset.range N, |cellWeight (x k) (x (k + 1))|) +
    2 * |tailWeight (x N)| + |gammaConstant 1 0 - β| +
    2 * (∑ q ∈ activePrimePowers T, |primeWeight q|)

def spatialSlope {M K : ℕ} (T β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (c : Fin M → ℝ) (d : Fin K → ℝ) : ℝ :=
  spatialCoefficientMass T β x N * (sineLipschitz T c : ℝ) +
    |polePort T c| * (Real.cosh (T / 2) / 2) + (sineLipschitz T d : ℝ)

theorem spatialSlope_nonneg {M K : ℕ} (T β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (c : Fin M → ℝ) (d : Fin K → ℝ) : 0 ≤ spatialSlope T β x N c d := by
  unfold spatialSlope spatialCoefficientMass
  positivity

private theorem abs_six_terms (a b c d e f : ℝ) :
    |a + b + c - d + e - f| ≤ |a| + |b| + |c| + |d| + |e| + |f| := by
  linarith [abs_add a b, abs_add (a + b) c, abs_sub (a + b + c) d,
    abs_add (a + b + c - d) e, abs_sub (a + b + c - d + e) f]

/-- Uniform on every point of the physical interval, including internal
shift-cutoff corners. No differentiability at those corners is asserted. -/
theorem spatialColumn_modulus {M K : ℕ} (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (N : ℕ) (c : Fin M → ℝ) (d : Fin K → ℝ)
    {u v : ℝ} (hu : u ∈ Icc (-T) T) (hv : v ∈ Icc (-T) T) :
    |spatialColumn T β x N c d u - spatialColumn T β x N c d v| ≤
      spatialSlope T β x N c d * |u - v| := by
  have hc := finiteSine_lipschitz T hT c
  have hd := finiteSine_lipschitz T hT d
  have hfc : |finiteSine T c u - finiteSine T c v| ≤
      (sineLipschitz T c : ℝ) * |u - v| := by
    simpa only [Real.norm_eq_abs] using hc.norm_sub_le u v
  have hfd : |finiteSine T d u - finiteSine T d v| ≤
      (sineLipschitz T d : ℝ) * |u - v| := by
    simpa only [Real.norm_eq_abs] using hd.norm_sub_le u v
  have hmid := weighted_sum_difference (Finset.range N)
    (fun k => cellWeight (x k) (x (k + 1)))
    (fun _ => 4 * (sineLipschitz T c : ℝ))
    (fun k t => OddGammaOutput.symmetricDifference ((x k + x (k + 1)) / 2) (finiteSine T c) t)
    u v (fun k _ => scalar_symmetricDifference_modulus hc _ u v)
  have hmid' : |middleFunction T x N c u - middleFunction T x N c v| ≤
      (4 * ∑ k ∈ Finset.range N, |cellWeight (x k) (x (k + 1))|) *
        (sineLipschitz T c : ℝ) * |u - v| := by
    simpa only [middleFunction, ← Finset.sum_mul, mul_assoc, mul_left_comm, mul_comm] using hmid
  have hprime := scalar_prime_modulus T hc u v
  have hpole := mul_le_mul_of_nonneg_left (sinh_window_modulus T hT hu hv) (abs_nonneg (polePort T c))
  have htail := mul_le_mul_of_nonneg_left hfc (abs_nonneg (2 * tailWeight (x N)))
  have hmass := mul_le_mul_of_nonneg_left hfc (abs_nonneg (gammaConstant 1 0 - β))
  have hid : spatialColumn T β x N c d u - spatialColumn T β x N c d v =
      (middleFunction T x N c u - middleFunction T x N c v) +
      (2 * tailWeight (x N)) * (finiteSine T c u - finiteSine T c v) +
      (gammaConstant 1 0 - β) * (finiteSine T c u - finiteSine T c v) -
      (primeOutput T (finiteSine T c) u - primeOutput T (finiteSine T c) v) +
      polePort T c * (Real.sinh (u / 2) - Real.sinh (v / 2)) -
      (finiteSine T d u - finiteSine T d v) := by
    simp only [spatialColumn, spatialOutput, primePoleOutput, indicator_of_mem hu, indicator_of_mem hv]
    ring
  rw [hid]
  apply (abs_six_terms _ _ _ _ _ _).trans
  simp only [abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at htail ⊢
  unfold spatialSlope spatialCoefficientMass
  nlinarith

/-- Whole-cell ranges are DERIVED from the source modulus and a midpoint
value enclosure. Only the finite scalar value enclosure remains input. -/
theorem spatialColumn_midpoint_range {M K : ℕ} (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (N : ℕ) (c : Fin M → ℝ) (d : Fin K → ℝ)
    {a b p e : ℝ} (ha : -T ≤ a) (hab : a ≤ b) (hb : b ≤ T)
    (hsample : |spatialColumn T β x N c d ((a + b) / 2) - p| ≤ e)
    {u : ℝ} (hu : u ∈ Icc a b) :
    |spatialColumn T β x N c d u - p| ≤
      spatialSlope T β x N c d * (b - a) / 2 + e := by
  apply midpoint_range hab (spatialSlope_nonneg T β x N c d) _ hsample hu
  intro s hs
  exact spatialColumn_modulus T hT β x N c d
    ⟨ha.trans hs.1, hs.2.trans hb⟩ ⟨by linarith, by linarith⟩

variable {ι : Type*} [Fintype ι] [DecidableEq ι] {M K : ℕ}

/-- Complete physical residual upper Gram; this is NOT a Fourier truncation. -/
def residualGram (T β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (c : ι → Fin M → ℝ) (d : ι → Fin K → ℝ) : Matrix ι ι ℝ :=
  Matrix.gram ℝ (fun i => correctedColumn T β x N (c i) (d i))

/-- There is no external source-identity premise in this finite spatial return. -/
theorem residualGram_eq_integral (T : ℝ) (hT : 0 < T) (β : ℝ) (x : ℕ → ℝ) (N : ℕ)
    (c : ι → Fin M → ℝ) (d : ι → Fin K → ℝ) :
    residualGram T β x N c d =
      integralGram (fun i => spatialColumn T β x N (c i) (d i)) (-T) T := by
  apply L2_gram_eq_integralGram _ _ (by linarith)
    (fun i => correctedColumn_ae T β x N (c i) (d i))
  intro i
  exact Eventually.of_forall (fun t ht => spatialColumn_supported T β x N (c i) (d i) ht)

/-- Actual source columns turn a finite range table into an all-vector upper bound. -/
theorem residualGram_upper_of_cells (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (N : ℕ) (c : ι → Fin M → ℝ) (d : ι → Fin K → ℝ)
    (y : ℕ → ℝ) (J : ℕ) (p r : ℕ → ι → ℝ)
    (hy : Monotone y) (hy0 : y 0 = -T) (hyJ : y J = T)
    (hr : ∀ k < J, ∀ i, 0 ≤ r k i)
    (hcell : ∀ k < J, ∀ i t, t ∈ Icc (y k) (y (k + 1)) →
      |spatialColumn T β x N (c i) (d i) t - p k i| ≤ r k i)
    (v : ι → ℝ) :
    quadratic (residualGram T β x N c d) v ≤
      quadratic (sampleGram y p J + diagonalAllowance (entryRadius y p r J)) v := by
  have hG : residualGram T β x N c d =
      integralGram (fun i => spatialColumn T β x N (c i) (d i)) (y 0) (y J) := by
    simpa only [hy0, hyJ] using residualGram_eq_integral T hT β x N c d
  rw [hG]
  apply integralGram_upper_of_cells _ y p r J hy hr _ hcell v
  intro i j k _
  exact ((spatialColumn_memLp T β x N (c i) (d i)).integrable_mul
    (spatialColumn_memLp T β x N (c j) (d j))).intervalIntegrable


/-- Only finite scalar enclosures remain input. Whole-cell variation,
complete spatial integration, and all-vector matrix order are derived. -/
theorem residualGram_upper_of_rational_samples (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (N : ℕ) (c : ι → Fin M → ℝ) (d : ι → Fin K → ℝ)
    (y : ℕ → ℚ) (J : ℕ) (p e : ℕ → ι → ℚ) (Khat : ι → ℚ)
    (hy : Monotone y) (hy0 : (y 0 : ℝ) = -T) (hyJ : (y J : ℝ) = T)
    (he : ∀ k < J, ∀ i, 0 ≤ e k i)
    (hK : ∀ i, spatialSlope T β x N (c i) (d i) ≤ (Khat i : ℝ))
    (hsample : ∀ k < J, ∀ i,
      |spatialColumn T β x N (c i) (d i) (((y k : ℝ) + (y (k + 1) : ℝ)) / 2) - (p k i : ℝ)| ≤
        (e k i : ℝ)) (v : ι → ℝ) :
    quadratic (residualGram T β x N c d) v ≤
      quadratic ((rationalUpper y p (rationalCellRadii y Khat e) J).map (Rat.castHom ℝ)) v := by
  have hyR : Monotone (fun k => (y k : ℝ)) := by
    intro a b hab
    exact_mod_cast hy hab
  have hK0 (i : ι) : (0 : ℝ) ≤ (Khat i : ℝ) :=
    (spatialSlope_nonneg T β x N (c i) (d i)).trans (hK i)
  rw [rationalUpper_cast]
  apply residualGram_upper_of_cells T hT β x N c d (fun k => (y k : ℝ)) J
    (fun k i => (p k i : ℝ)) (fun k i => (rationalCellRadii y Khat e k i : ℝ))
    hyR hy0 hyJ _ _ v
  · intro k hk i
    have hw : (0 : ℝ) ≤ (y (k + 1) : ℝ) - (y k : ℝ) :=
      sub_nonneg.mpr (hyR (Nat.le_succ k))
    have heR : (0 : ℝ) ≤ (e k i : ℝ) := by exact_mod_cast he k hk i
    simp only [rationalCellRadii, Rat.cast_add, Rat.cast_div, Rat.cast_mul, Rat.cast_sub,
      Rat.cast_ofNat]
    positivity
  · intro k hk i u hu
    have ha : -T ≤ (y k : ℝ) := by rw [← hy0]; exact hyR (Nat.zero_le k)
    have hb : (y (k + 1) : ℝ) ≤ T := by rw [← hyJ]; exact hyR (by omega)
    have hw : (0 : ℝ) ≤ (y (k + 1) : ℝ) - (y k : ℝ) :=
      sub_nonneg.mpr (hyR (Nat.le_succ k))
    have h := spatialColumn_midpoint_range T hT β x N (c i) (d i)
      ha (hyR (Nat.le_succ k)) hb (hsample k hk i) hu
    apply h.trans
    simp only [rationalCellRadii, Rat.cast_add, Rat.cast_div, Rat.cast_mul, Rat.cast_sub,
      Rat.cast_ofNat]
    nlinarith [mul_le_mul_of_nonneg_right (hK i) hw]

/-- A family of the ORIGINAL source-domain finite-sine lifts. -/
def trial (T : ℝ) (hT : 0 < T) (c : ι → Fin M → ℝ) (v : ι → ℝ) : FormDomain T :=
  ∑ i, v i • finiteLift T hT (c i)

theorem sourceForm_trial (T : ℝ) (hT : 0 < T) (β : ℝ)
    (c : ι → Fin M → ℝ) (v : ι → ℝ) (w : FormDomain T) :
    sourceForm T β (trial T hT c v) w =
      inner ℝ (∑ i, v i • (finiteOutput T hT β (c i) : Physical)) (input T w) := by
  simp only [trial, map_sum, map_smul, ContinuousLinearMap.sum_apply,
    ContinuousLinearMap.smul_apply, smul_eq_mul, sum_inner, real_inner_smul_left,
    finiteLift_sourceForm] <;> rfl

/-- The retained head pairs only with the corresponding ORIGINAL sine coefficients. -/
theorem finiteInput_pair (T : ℝ) (d : Fin K → ℝ) (w : Physical) :
    inner ℝ (finiteInput T d : Physical) w =
      ∑ i : Fin K, d i * sineCoefficient T w (i.val + 1) := by
  rw [L2.inner_def]
  calc
    _ = ∫ t : ℝ, finiteSine T d t * w t := by
      apply integral_congr_ae
      filter_upwards [finiteInput_ae T d] with t ht
      simp [ht, RCLike.inner_apply, mul_comm]
    _ = ∫ t : ℝ, ∑ i : Fin K, d i * (zeroExtendedSine T (i.val + 1) t * w t) := by
      apply integral_congr_ae
      filter_upwards [] with t
      simp only [finiteSine, Finset.sum_mul, mul_assoc]
    _ = _ := by
      rw [integral_finsetSum _ (fun i _ =>
        ((memLp_zeroExtendedSine T (i.val + 1)).integrable_mul (Lp.memLp w)).const_mul (d i))]
      simp only [integral_const_mul, sineCoefficient]

/-- The exact gamma error for each original trial column. -/
def rowErrors (T : ℝ) (x : ℕ → ℝ) (eta : ℝ) (c : ι → Fin M → ℝ) : ι → ℝ :=
  fun i => (x 0 + (x 0) ^ 2 + 5 * eta) * slopeBound T (c i)

/-- No projection oracle: arbitrary source-head coefficients and complete spatial
Gram enclosures control the pairing with EVERY genuine high-domain test. -/
theorem source_high_pairing_sq_le (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (N : ℕ) (c : ι → Fin M → ℝ) (d : ι → Fin K → ℝ)
    {eta t : ℝ} (hx : Monotone x) (hx0 : 0 < x 0) (hfar : 2 * T ≤ x N)
    (heta : 0 ≤ eta) (hwidth : ∀ i < N, x (i + 1) - x i ≤ eta * x i)
    (ht : 0 < t) (R : Matrix ι ι ℝ)
    (hR : ∀ v, quadratic (residualGram T β x N c d) v ≤ quadratic R v)
    (v : ι → ℝ) (w : FormDomain T)
    (hhigh : ∀ a : Fin K, sineCoefficient T (input T w) (a.val + 1) = 0) :
    (sourceForm T β (trial T hT c v) w) ^ 2 ≤
      ((1 + t) * quadratic R v + (1 + 1 / t) *
        quadratic (columnErrorMatrix (rowErrors T x eta c)) v) * ‖input T w‖ ^ 2 := by
  let z : Physical := ∑ i, v i • (finiteOutput T hT β (c i) : Physical)
  let zh : Physical := ∑ i, v i • approximateOutput T β x N (c i)
  let head : Physical := ∑ i, v i • (finiteInput T (d i) : Physical)
  let e : ℝ := ∑ i, |v i| * rowErrors T x eta c i
  have he : ‖z - zh‖ ≤ e :=
    sum_row_error _ _ _
      (fun i => finiteOutput_error_le T hT β x N (c i) hx hx0 hfar heta hwidth) v
  have hh : inner ℝ head (input T w) = 0 := by
    simp only [head, sum_inner, real_inner_smul_left, finiteInput_pair, hhigh,
      mul_zero, Finset.sum_const_zero]
  have hdiff : zh - head = ∑ i, v i • correctedColumn T β x N (c i) (d i) := by
    simp only [zh, head, correctedColumn, smul_sub, Finset.sum_sub_distrib]
  have hgram : ‖zh - head‖ ^ 2 = quadratic (residualGram T β x N c d) v := by
    rw [hdiff]
    exact (gram_quadratic _ _).symm
  have hs := pairing_sq_le_after_head z zh head (input T w) he hh ht
  rw [hgram] at hs
  rw [sourceForm_trial]
  apply hs.trans
  apply mul_le_mul_of_nonneg_right _ (sq_nonneg _)
  apply add_le_add
  · exact mul_le_mul_of_nonneg_left (hR v) (by positivity)
  · exact mul_le_mul_of_nonneg_left (column_error_sq_le (rowErrors T x eta c) v)
      (by positivity)

/-- The finite range table supplies the previous theorem's complete Gram budget.
The core energy floor and the signed Schur comparison remain separate. -/
theorem source_high_pairing_sq_le_cells (T : ℝ) (hT : 0 < T) (β : ℝ)
    (x : ℕ → ℝ) (N : ℕ) (c : ι → Fin M → ℝ) (d : ι → Fin K → ℝ)
    {eta t : ℝ} (hx : Monotone x) (hx0 : 0 < x 0) (hfar : 2 * T ≤ x N)
    (heta : 0 ≤ eta) (hwidth : ∀ i < N, x (i + 1) - x i ≤ eta * x i) (ht : 0 < t)
    (y : ℕ → ℝ) (J : ℕ) (p r : ℕ → ι → ℝ)
    (hy : Monotone y) (hy0 : y 0 = -T) (hyJ : y J = T)
    (hr : ∀ k < J, ∀ i, 0 ≤ r k i)
    (hcell : ∀ k < J, ∀ i u, u ∈ Icc (y k) (y (k + 1)) →
      |spatialColumn T β x N (c i) (d i) u - p k i| ≤ r k i)
    (v : ι → ℝ) (w : FormDomain T)
    (hhigh : ∀ a : Fin K, sineCoefficient T (input T w) (a.val + 1) = 0) :
    (sourceForm T β (trial T hT c v) w) ^ 2 ≤
      ((1 + t) * quadratic (sampleGram y p J + diagonalAllowance (entryRadius y p r J)) v +
        (1 + 1 / t) * quadratic (columnErrorMatrix (rowErrors T x eta c)) v) *
      ‖input T w‖ ^ 2 :=
  source_high_pairing_sq_le T hT β x N c d hx hx0 hfar heta hwidth ht _
    (residualGram_upper_of_cells T hT β x N c d y J p r hy hy0 hyJ hr hcell) v w hhigh

end GRWTSK.NumberTheory.WeilQuadraticForm.FiniteSineSpatialResidual
