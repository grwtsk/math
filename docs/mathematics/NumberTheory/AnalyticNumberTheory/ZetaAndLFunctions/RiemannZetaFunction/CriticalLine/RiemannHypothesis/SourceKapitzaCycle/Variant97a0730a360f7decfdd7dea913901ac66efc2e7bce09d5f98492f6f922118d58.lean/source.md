# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceKapitzaCycle.Variant97a0730a360f7decfdd7dea913901ac66efc2e7bce09d5f98492f6f922118d58

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdbac1f85f2181a181a7ba2aa459e4fdd8abe142` · SHA-256 `63ca3e0b69aa03fa9bd018ca4445cdb048e1168092d9ac11610b8ec4045ec220`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCellKernelAbsLe.Variant00c28ddd372417bcf0ce990ef47470b365055d2ed04ab9bb23f7b6ec2269d296","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"00c28ddd372417bcf0ce990ef47470b365055d2ed04ab9bb23f7b6ec2269d296","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualCellKernelAbsLe.Variant00c28ddd372417bcf0ce990ef47470b365055d2ed04ab9bb23f7b6ec2269d296","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"00c28ddd372417bcf0ce990ef47470b365055d2ed04ab9bb23f7b6ec2269d296","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/post-Map285-PR450-actual-source-capture-v2-20261007T194312Z/selected-remote-blobs/FormalResearch/RiemannHypothesis/SourceKapitzaCycle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePairing
import FormalResearch.RiemannHypothesis.SourceCorrelationEnergy
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.Tactic

/-!
# Exact cell transfer and adaptive-cycle obstruction for the Kapitza proposal

The cell transfer is algebra for the actual frozen Chebyshev prefix between
successive logarithmic natural events. Source joining and global arithmetic
bounds remain separate obligations. The matrix and bracket fixtures diagnose
composition inferences; they are not asserted to transfer to the arithmetic
observable.

Human origin: grwtsk contributors reports an earlier Kapitza proposal; its
original date is unverified. Recovery task RH16-KAPITZA-20261007, 7 October 2026.
AI attribution: OpenAI Codex supplied these specific calculations and proof
terms. Native compilation does not settle issue #16 or establish RH.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCellKernelAbsLe.Variant00c28ddd372417bcf0ce990ef47470b365055d2ed04ab9bb23f7b6ec2269d296

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceKapitzaCycle

noncomputable section

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open MeasureTheory
open scoped Interval

/-- The exact original kernel has a uniform elementary envelope on all real scales `A ≥ 1`. -/
theorem actual_cell_kernel_abs_le (A s : ℝ) (hA : 1 ≤ A) :
    |SourcePairing.sourceCorrelation Realization.explicitSecondDerivative A s / 2 -
      deriv (SourcePairing.sourceCorrelation Realization.explicitSecondDerivative A) s| ≤
      (11 / 2 : ℝ) := by
  have hC := EstimateCorrelation.actual_correlation_abs_le_one A s hA
  have hd := SourceCorrelationEnergy.sourceCorrelation_deriv_abs_le_five_div hA s
  have hpos : 0 < A := by linarith
  have hratio : (5 : ℝ) / A ≤ 5 := (div_le_iff₀ hpos).mpr (by linarith)
  have htriangle := abs_add_le
    (SourcePairing.sourceCorrelation Realization.explicitSecondDerivative A s / 2)
    (-deriv (SourcePairing.sourceCorrelation Realization.explicitSecondDerivative A) s)
  simp only [← sub_eq_add_neg, abs_neg] at htriangle
  rw [abs_div, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)] at htriangle
  linarith

/-- The original full closed source count equals the native Chebyshev function. -/
theorem source_chebyshev_eq_psi (x : ℝ) :
    SourcePairing.chebyshevPrimePower x = Chebyshev.psi x := by
  rw [Chebyshev.psi_eq_sum_Icc]
  unfold SourcePairing.chebyshevPrimePower
  apply Finset.sum_subset
  · intro n hn
    simp only [Finset.mem_Icc] at hn ⊢
    omega
  · intro n hn hnnot
    have hsmall : n ≤ 1 := by
      simp only [Finset.mem_Icc] at hn hnnot
      omega
    interval_cases n <;> simp

/-- The independent unconditional input needed to pay cell freezing. -/
theorem source_normalized_prefix_bounds (x : ℝ) (hx : 0 < x) :
    0 ≤ SourcePairing.chebyshevPrimePower x / x ∧
      SourcePairing.chebyshevPrimePower x / x ≤ Real.log 4 + 4 := by
  rw [source_chebyshev_eq_psi]
  exact ⟨div_nonneg (Chebyshev.psi_nonneg x) hx.le,
    (div_le_iff₀ hx).mpr (Chebyshev.psi_le_const_mul_self hx.le)⟩

/-- The genuine endpoint slope has a global unconditional bound.
Subtracting `d = psi/x - 1` cancels the two unit terms. -/
theorem actual_affine_slope_abs_le (A : ℝ) :
    |SourcePairing.chebyshevPrimePower (Real.exp (2 * A - 1)) /
        Real.exp (2 * A - 1) -
      SourcePairing.chebyshevPrimePower (Real.exp (2 * A)) /
        Real.exp (2 * A)| ≤ Real.log 4 + 4 := by
  rcases source_normalized_prefix_bounds _ (Real.exp_pos (2 * A - 1)) with ⟨hlo₁, hhi₁⟩
  rcases source_normalized_prefix_bounds _ (Real.exp_pos (2 * A)) with ⟨hlo₂, hhi₂⟩
  rw [abs_le]
  constructor <;> linarith

/-- Each literal natural cell retains the closed lower event and excludes its next event. -/
theorem source_prefix_frozen (n : ℕ) (x : ℝ) (hlow : (n : ℝ) ≤ x)
    (hup : x < (n : ℝ) + 1) :
    SourcePairing.chebyshevPrimePower x = SourcePairing.chebyshevPrimePower n := by
  have hx : 0 ≤ x := (Nat.cast_nonneg n).trans hlow
  have hfloor : ⌊x⌋₊ = n := (Nat.floor_eq_iff hx).mpr ⟨hlow, hup⟩
  unfold SourcePairing.chebyshevPrimePower
  rw [hfloor, Nat.floor_natCast]

/-- Exact transfer over a logarithmic cell of width `t`, before the next atom. -/
def cellTransfer (z c b t : ℝ) : ℝ :=
  Real.exp (-t) * z + c * (1 - Real.exp (-t)) + b * (t - 1 + Real.exp (-t))

/-- A frozen normalized prefix and the actual affine trend give the cell transfer.
Here `q` is the prefix divided by the initial physical endpoint. -/
theorem frozen_prefix_cellTransfer (q ell b t : ℝ) :
    Real.exp (-t) * q - 1 - (ell - b * t) =
      cellTransfer (q - 1 - ell) (b - 1 - ell) b t := by
  unfold cellTransfer
  ring

/-- The exact cell transfer is joined to the full original closed source prefix.
The event at the lower endpoint is included. The upper atom is added separately. -/
theorem source_cellTransfer (n : ℕ) (ell b t : ℝ) (hn : 0 < n)
    (hlow : (n : ℝ) ≤ (n : ℝ) * Real.exp t)
    (hup : (n : ℝ) * Real.exp t < (n : ℝ) + 1) :
    SourcePairing.chebyshevPrimePower ((n : ℝ) * Real.exp t) /
        ((n : ℝ) * Real.exp t) - 1 - (ell - b * t) =
      cellTransfer (SourcePairing.chebyshevPrimePower n / n - 1 - ell)
        (b - 1 - ell) b t := by
  rw [source_prefix_frozen n _ hlow hup]
  have hn0 : (n : ℝ) ≠ 0 := by exact_mod_cast hn.ne'
  have hq : SourcePairing.chebyshevPrimePower n / ((n : ℝ) * Real.exp t) =
      Real.exp (-t) * (SourcePairing.chebyshevPrimePower n / n) := by
    rw [Real.exp_neg]
    field_simp
  rw [hq]
  exact frozen_prefix_cellTransfer _ _ _ _

/-- The cell transfer solves the complete affine drift, including the slope. -/
theorem cellTransfer_hasDerivAt (z c b t : ℝ) :
    HasDerivAt (cellTransfer z c b)
      (-cellTransfer z c b t + (c + b * t)) t := by
  have he : HasDerivAt (fun x : ℝ => Real.exp (-x)) (-Real.exp (-t)) t := by
    convert ((hasDerivAt_id t).neg).exp using 1 <;> simp
  have hd := ((he.mul_const z).add
    (((hasDerivAt_const t (1 : ℝ)).sub he).const_mul c)).add
    ((((hasDerivAt_id t).sub (hasDerivAt_const t (1 : ℝ))).add he).const_mul b)
  exact hd.congr_deriv (by simp only [cellTransfer]; ring)

/-- Appending an impulse retains its full coefficient; the drift pays no part of it. -/
theorem cellTransfer_with_impulse (q ell b t j : ℝ) :
    (Real.exp (-t) * q + j) - 1 - (ell - b * t) =
      cellTransfer (q - 1 - ell) (b - 1 - ell) b t + j := by
  rw [← frozen_prefix_cellTransfer]
  ring

/-- Local cell freezing has a first-order error with no signed-arithmetic premise. -/
theorem frozen_prefix_deviation_le (q ell b t : ℝ) (hq : 0 ≤ q) (ht : 0 ≤ t) :
    |(Real.exp (-t) * q - 1 - (ell - b * t)) - (q - 1 - ell)| ≤
      (q + |b|) * t := by
  have hexp : Real.exp (-t) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith)
  have hexp_lower := Real.add_one_le_exp (-t)
  have hfactor : |Real.exp (-t) - 1| ≤ t := by
    rw [abs_of_nonpos (by linarith : Real.exp (-t) - 1 ≤ 0)]
    linarith
  have hfirst := mul_le_mul_of_nonneg_right hfactor hq
  have he : (Real.exp (-t) * q - 1 - (ell - b * t)) - (q - 1 - ell) =
      (Real.exp (-t) - 1) * q + b * t := by ring
  rw [he]
  calc
    |(Real.exp (-t) - 1) * q + b * t| ≤
        |(Real.exp (-t) - 1) * q| + |b * t| := abs_add_le _ _
    _ ≤ t * q + |b| * t := by
      rw [abs_mul, abs_mul, abs_of_nonneg hq, abs_of_nonneg ht]
      exact add_le_add hfirst le_rfl
    _ = (q + |b|) * t := by ring

/-- The exact integrated cell weight pays a quadratic microscopic error.
No signed estimate is imposed on the frozen nodal readout. -/
theorem cell_freezing_integral_le (q ell b D M : ℝ) (K : ℝ → ℝ)
    (hq : 0 ≤ q) (hD : 0 ≤ D) (hM : 0 ≤ M)
    (hK : ∀ t ∈ Set.Icc (0 : ℝ) D, |K t| ≤ M)
    (hi : IntervalIntegrable (fun t => K t *
      ((Real.exp (-t) * q - 1 - (ell - b * t)) - (q - 1 - ell))) volume 0 D) :
    |∫ t in 0..D, K t *
      ((Real.exp (-t) * q - 1 - (ell - b * t)) - (q - 1 - ell))| ≤
      M * (q + |b|) * D ^ 2 / 2 := by
  have hpoly : IntervalIntegrable (fun t : ℝ => M * (q + |b|) * t) volume 0 D :=
    (continuous_const.mul continuous_id).intervalIntegrable _ _
  have hpoint (t : ℝ) (ht : t ∈ Set.Icc (0 : ℝ) D) :
      |K t * ((Real.exp (-t) * q - 1 - (ell - b * t)) - (q - 1 - ell))| ≤
        M * (q + |b|) * t := by
    rw [abs_mul]
    have hd := frozen_prefix_deviation_le q ell b t hq ht.1
    calc
      _ ≤ M * ((q + |b|) * t) :=
        mul_le_mul (hK t ht) hd (abs_nonneg _) hM
      _ = _ := by ring
  calc
    _ ≤ ∫ t in 0..D,
        |K t * ((Real.exp (-t) * q - 1 - (ell - b * t)) - (q - 1 - ell))| :=
      intervalIntegral.abs_integral_le_integral_abs hD
    _ ≤ ∫ t in 0..D, M * (q + |b|) * t :=
      intervalIntegral.integral_mono_on hD hi.abs hpoly hpoint
    _ = _ := by
      rw [intervalIntegral.integral_const_mul, integral_id]
      ring

/-- A generic hyperbolic matrix, used before binding the cosh/sinh parameter. -/
def hyperbolic (c s : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := !![c, s; s, c]

/-- The quarter-turn matrix in the prescribed fixture. -/
def quarterTurn : Matrix (Fin 2) (Fin 2) ℝ := !![0, 1; -1, 0]

/-- A spectrally stable cycle whose metric depends on the parameter. -/
def stableCycle (c s : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := !![-s, c; -c, s]

theorem stableCycle_eq_hyperbolic_mul_quarterTurn (c s : ℝ) :
    stableCycle c s = hyperbolic c s * quarterTurn := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [stableCycle, hyperbolic, quarterTurn, Matrix.mul_apply, Fin.sum_univ_two]

theorem stableCycle_square (c s : ℝ) (h : c ^ 2 - s ^ 2 = 1) :
    stableCycle c s * stableCycle c s = -(1 : Matrix (Fin 2) (Fin 2) ℝ) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [stableCycle, Matrix.mul_apply, Fin.sum_univ_two] <;> nlinarith

/-- Full product of two different cycles, before any stability inference. -/
theorem stableCycle_pair (c₁ s₁ c₂ s₂ : ℝ) :
    stableCycle c₂ s₂ * stableCycle c₁ s₁ =
      -hyperbolic (c₂ * c₁ - s₂ * s₁) (s₂ * c₁ - c₂ * s₁) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [stableCycle, hyperbolic, Matrix.mul_apply, Fin.sum_univ_two] <;> ring

/-- The fixed-cycle metric is invariant, while it is allowed to vary with the cycle. -/
theorem stableCycle_metric (c s : ℝ) (h : c ^ 2 - s ^ 2 = 1) :
    (stableCycle c s).transpose * hyperbolic c (-s) * stableCycle c s =
      hyperbolic c (-s) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [stableCycle, hyperbolic, Matrix.mul_apply, Fin.sum_univ_two] <;>
      nlinarith [congrArg (fun x : ℝ => c * x) h, congrArg (fun x : ℝ => s * x) h]

def H (b : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := hyperbolic (Real.cosh b) (Real.sinh b)

def M (b : ℝ) : Matrix (Fin 2) (Fin 2) ℝ := stableCycle (Real.cosh b) (Real.sinh b)

/-- Each fixed parameter has exact fourth-order periodic powers. -/
theorem M_square (b : ℝ) : M b * M b = -(1 : Matrix (Fin 2) (Fin 2) ℝ) :=
  stableCycle_square _ _ (Real.cosh_sq_sub_sinh_sq b)

/-- Different individually stable parameters leave a hyperbolic expansion. -/
theorem M_pair (b₁ b₂ : ℝ) : M b₂ * M b₁ = -H (b₂ - b₁) := by
  rw [M, M, stableCycle_pair, H, Real.cosh_sub, Real.sinh_sub]

/-- The two-cycle product expands the fixed plus direction when the parameter rises. -/
theorem M_pair_plus_direction (b₁ b₂ : ℝ) :
    (M b₂ * M b₁).mulVec (![1, 1] : Fin 2 → ℝ) =
      -Real.exp (b₂ - b₁) • (![1, 1] : Fin 2 → ℝ) := by
  rw [M_pair]
  ext i
  fin_cases i <;>
    simp [H, hyperbolic, Matrix.mulVec, dotProduct, Fin.sum_univ_two,
      ← Real.cosh_add_sinh]

/-- The varying invariant metric retains both reciprocal conditioning weights. -/
theorem metric_energy (b x y : ℝ) :
    Real.cosh b * (x ^ 2 + y ^ 2) - 2 * Real.sinh b * x * y =
      (Real.exp (-b) * (x + y) ^ 2 + Real.exp b * (x - y) ^ 2) / 2 := by
  rw [← Real.cosh_sub_sinh, ← Real.cosh_add_sinh]
  ring

/-- The arithmetic affine lift has one fixed drift and an additive impulse.
Its coordinates are `(z,c,b,1)`, with derivatives `(-z+c,b,0,0)`. -/
def sourceDrift : Matrix (Fin 4) (Fin 4) ℝ :=
  !![-1, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 0; 0, 0, 0, 0]

/-- The prescribed arithmetic impulse translates only the discrepancy coordinate. -/
def sourceImpulse : Matrix (Fin 4) (Fin 4) ℝ :=
  !![0, 0, 0, 1; 0, 0, 0, 0; 0, 0, 0, 0; 0, 0, 0, 0]

/-- Lie brackets of the source drift and impulse create no new impulse direction. -/
theorem source_bracket :
    sourceDrift * sourceImpulse - sourceImpulse * sourceDrift = -sourceImpulse := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [sourceDrift, sourceImpulse]

end

end FormalResearch.RiemannHypothesis.SourceKapitzaCycle
```
