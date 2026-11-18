/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSourcePrimeCorrelation
import GRWTSK.MeasureAndIntegration.RawMomentQuadrature
import Mathlib.Tactic

/-!
# Finite cells for the actual antilinear-first Weil correlation

MSC2020: 11M26, 11M41, 65D30, 65G20.
Reuse the original correlation, energy, signed character prime response and
zeroth raw-moment quadrature. Product samples retain their cross error.
A whole-line Lipschitz estimate pays separately for uncertainty in the lag;
the same unshifted cell table supplies its L1 coefficient.

Consumer: WeilExponentialBumpPrimeEvaluation. This module does not evaluate
logarithms, character phases or prime weights and does not assert a Weil sign.
SOURCE_PROOF_CANDIDATE. Parsing, elaboration, exact types, builds, kernel replay,
transitive axiom audit, certified computation and independent review NOT_RUN.
Novelty UNASSESSED. Individual analytical/provenance records are adjacent.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.CorrelationCells

open SourcePrimeCorrelation CharacterWindow LowSchur
open GRWTSK.MeasureAndIntegration.RawMomentQuadrature
open GRWTSK.MeasureAndIntegration.FourierMomentEnclosure

/-- Both sample errors, including their product, are charged. -/
def productSampleError (B e d : ℝ) : ℝ := B * (e + d) + e * d

private theorem norm_conj_product_sub_le (z w v u : ℂ) :
    ‖conj z * w - conj v * u‖ ≤ ‖z - v‖ * ‖w‖ + ‖v‖ * ‖w - u‖ := by
  have hid : conj z * w - conj v * u =
      conj (z - v) * w + conj v * (w - u) := by
    simp only [map_sub]
    ring
  rw [hid]
  calc
    _ ≤ ‖conj (z - v) * w‖ + ‖conj v * (w - u)‖ := norm_add_le _ _
    _ = _ := by rw [norm_mul, norm_mul, Complex.norm_conj, Complex.norm_conj]

/-- WCQ-1. The original factors are bounded; the sample factors need not be. -/
theorem norm_conj_product_sub_le_sample_error
    {z w v u : ℂ} {B e d : ℝ} (hB : 0 ≤ B) (he : 0 ≤ e) (hd : 0 ≤ d)
    (hz : ‖z‖ ≤ B) (hw : ‖w‖ ≤ B) (hzv : ‖z - v‖ ≤ e) (hwu : ‖w - u‖ ≤ d) :
    ‖conj z * w - conj v * u‖ ≤ productSampleError B e d := by
  have hv : ‖v‖ ≤ B + e := by
    have h := norm_add_le (v - z) z
    rw [sub_add_cancel, norm_sub_rev v z] at h
    linarith
  calc
    _ ≤ ‖z - v‖ * ‖w‖ + ‖v‖ * ‖w - u‖ := norm_conj_product_sub_le z w v u
    _ ≤ e * B + (B + e) * d := add_le_add
      (mul_le_mul hzv hw (norm_nonneg _) he)
      (mul_le_mul hv hwu (norm_nonneg _) (add_nonneg hB he))
    _ = productSampleError B e d := by unfold productSampleError; ring

/-- WCQ-2. Uniform in the lag; both translated sample locations are retained. -/
theorem correlation_integrand_lipschitz {f : ℝ → ℂ} {B K : ℝ}
    (hB : 0 ≤ B) (hK : 0 ≤ K) (hb : ∀ t, ‖f t‖ ≤ B)
    (hlip : ∀ x y, ‖f x - f y‖ ≤ K * |x - y|) (r x y : ℝ) :
    ‖conj (f x) * f (x + r) - conj (f y) * f (y + r)‖ ≤
      (2 * B * K) * |x - y| := by
  have hshift := hlip (x + r) (y + r)
  rw [show x + r - (y + r) = x - y by ring] at hshift
  calc
    _ ≤ ‖f x - f y‖ * ‖f (x + r)‖ + ‖f y‖ * ‖f (x + r) - f (y + r)‖ :=
      norm_conj_product_sub_le _ _ _ _
    _ ≤ (K * |x - y|) * B + B * (K * |x - y|) := add_le_add
      (mul_le_mul (hlip x y) (hb _) (norm_nonneg _) (mul_nonneg hK (abs_nonneg _)))
      (mul_le_mul (hb _) hshift (norm_nonneg _) hB)
    _ = _ := by ring

/-- Exact finite algebra, not a replacement of the smooth test in the Weil form. -/
def correlationCellEstimate (x : ℕ → ℝ) (v w : ℕ → ℂ) (N : ℕ) : ℂ :=
  quadratureMoment x (fun j => conj (v j) * w j) N 0

/-- Midpoint variation and product-sample uncertainty, integrated on every cell. -/
def correlationCellBudget (B K : ℝ) (x e d : ℕ → ℝ) (N : ℕ) : ℝ :=
  cellVariationBudget x
    (midpointCellError x (fun _ => 2 * B * K) (fun j => productSampleError B (e j) (d j))) N

/-- WCQ-3. The first factor's support is enough for the product; no shifted
edge contribution is discarded. L2 membership supplies product integrability. -/
theorem norm_correlation_sub_cells_le
    {f : ℝ → ℂ} (T : ℝ) (hT : 0 ≤ T) (hf : MemLp f 2 volume)
    (hs : ∀ t, T < |t| → f t = 0)
    (B K : ℝ) (hB : 0 ≤ B) (hK : 0 ≤ K) (hb : ∀ t, ‖f t‖ ≤ B)
    (hlip : ∀ x y, ‖f x - f y‖ ≤ K * |x - y|)
    (r : ℝ) (x : ℕ → ℝ) (v w : ℕ → ℂ) (e d : ℕ → ℝ) (N : ℕ)
    (hx0 : x 0 = -T) (hxN : x N = T)
    (hgeom : ∀ j < N, -T ≤ x j ∧ x j ≤ x (j + 1) ∧ x (j + 1) ≤ T)
    (he : ∀ j < N, 0 ≤ e j) (hd : ∀ j < N, 0 ≤ d j)
    (hv : ∀ j < N, ‖f ((x j + x (j + 1)) / 2) - v j‖ ≤ e j)
    (hw : ∀ j < N, ‖f ((x j + x (j + 1)) / 2 + r) - w j‖ ≤ d j) :
    ‖correlation f r - correlationCellEstimate x v w N‖ ≤ correlationCellBudget B K x e d N := by
  have h := moment_and_l1_bounds_of_midpoint
    (fun t => conj (f t) * f (t + r)) T hT (integrable_correlation_integrand hf r)
    (fun t ht => by simp only [hs t ht, map_zero, zero_mul])
    x (fun j => conj (v j) * w j) (fun _ => 2 * B * K)
    (fun j => productSampleError B (e j) (d j)) N hx0 hxN hgeom
    (fun _ _ => by positivity)
    (fun j hj => by
      have he' := he j hj
      have hd' := hd j hj
      unfold productSampleError
      positivity)
    (fun j _ t _ => correlation_integrand_lipschitz hB hK hb hlip r t
      ((x j + x (j + 1)) / 2))
    (fun j hj => norm_conj_product_sub_le_sample_error hB (he j hj) (hd j hj)
      (hb _) (hb _) (hv j hj) (hw j hj))
  simpa only [rawMoment, pow_zero, mul_one, one_mul, correlation,
    correlationCellEstimate, correlationCellBudget] using h.1 0

/-- WCQ-4. An approximate logarithmic lag must pay this actual-source error. -/
theorem norm_correlation_sub_le_lipschitz
    {f : ℝ → ℂ} (hf1 : Integrable f volume) (hf2 : MemLp f 2 volume)
    (K : ℝ) (hlip : ∀ x y, ‖f x - f y‖ ≤ K * |x - y|) (r s : ℝ) :
    ‖correlation f r - correlation f s‖ ≤ K * (∫ t : ℝ, ‖f t‖) * |r - s| := by
  unfold correlation
  rw [← integral_sub (integrable_correlation_integrand hf2 r)
    (integrable_correlation_integrand hf2 s)]
  calc
    _ ≤ ∫ t : ℝ, ‖f t‖ * (K * |r - s|) := by
      apply norm_integral_le_of_norm_le (hf1.norm.mul_const _)
      apply Filter.Eventually.of_forall
      intro t
      rw [← mul_sub, norm_mul, Complex.norm_conj]
      have h := hlip (t + r) (t + s)
      rw [show t + r - (t + s) = r - s by ring] at h
      exact mul_le_mul_of_nonneg_left h (norm_nonneg _)
    _ = _ := by rw [integral_mul_const]; ring

/-- WCQ-5. The same unshifted samples supply the L1 coefficient. Only the
lag enclosure, original regularity and finite sample certificates are inputs. -/
theorem norm_correlation_sub_cells_of_shift_error_le
    {f : ℝ → ℂ} (T : ℝ) (hT : 0 ≤ T)
    (hf1 : Integrable f volume) (hf2 : MemLp f 2 volume)
    (hs : ∀ t, T < |t| → f t = 0)
    (B K : ℝ) (hB : 0 ≤ B) (hK : 0 ≤ K) (hb : ∀ t, ‖f t‖ ≤ B)
    (hlip : ∀ x y, ‖f x - f y‖ ≤ K * |x - y|)
    (r s δ : ℝ) (hshift : |r - s| ≤ δ)
    (x : ℕ → ℝ) (v w : ℕ → ℂ) (e d : ℕ → ℝ) (N : ℕ)
    (hx0 : x 0 = -T) (hxN : x N = T)
    (hgeom : ∀ j < N, -T ≤ x j ∧ x j ≤ x (j + 1) ∧ x (j + 1) ≤ T)
    (he : ∀ j < N, 0 ≤ e j) (hd : ∀ j < N, 0 ≤ d j)
    (hv : ∀ j < N, ‖f ((x j + x (j + 1)) / 2) - v j‖ ≤ e j)
    (hw : ∀ j < N, ‖f ((x j + x (j + 1)) / 2 + s) - w j‖ ≤ d j) :
    let B₀ := cellL1Budget x v (midpointCellError x (fun _ => K) e) N
    ‖correlation f r - correlationCellEstimate x v w N‖ ≤
      K * B₀ * δ + correlationCellBudget B K x e d N := by
  intro B₀
  have hbase : (∫ t : ℝ, ‖f t‖) ≤ B₀ :=
    (moment_and_l1_bounds_of_midpoint f T hT hf1 hs x v (fun _ => K) e N
      hx0 hxN hgeom (fun _ _ => hK) he (fun j _ t _ => hlip t _) hv).2
  have hB₀ : 0 ≤ B₀ :=
    (integral_nonneg (fun t : ℝ => norm_nonneg (f t))).trans hbase
  have hlag : ‖correlation f r - correlation f s‖ ≤ K * B₀ * δ :=
    (norm_correlation_sub_le_lipschitz hf1 hf2 K hlip r s).trans
      (mul_le_mul (mul_le_mul_of_nonneg_left hbase hK) hshift
        (abs_nonneg _) (mul_nonneg hK hB₀))
  have hquad := norm_correlation_sub_cells_le T hT hf2 hs B K hB hK hb hlip
    s x v w e d N hx0 hxN hgeom he hd hv hw
  have htri := dist_triangle (correlation f r) (correlation f s) (correlationCellEstimate x v w N)
  simp only [dist_eq_norm] at htri
  exact htri.trans (add_le_add hlag hquad)

/-- WCQ-6. The zero-lag quantity is the original physical energy. -/
theorem correlation_zero_eq_energy (f : ℝ → ℂ) : correlation f 0 = (energy f : ℂ) := by
  have hp (t : ℝ) : conj (f t) * f t = ((‖f t‖ ^ 2 : ℝ) : ℂ) := by
    rw [mul_comm, Complex.mul_conj, Complex.normSq_eq_norm_sq]
  unfold correlation energy
  simp_rw [add_zero, hp]
  exact integral_ofReal

/-- WCQ-7. A complex correlation enclosure gives the actual energy enclosure. -/
theorem energy_error_of_correlation_zero {f : ℝ → ℂ} {z : ℂ} {e : ℝ}
    (h : ‖correlation f 0 - z‖ ≤ e) : |energy f - z.re| ≤ e := by
  calc
    |energy f - z.re| = |(correlation f 0 - z).re| := by
      rw [correlation_zero_eq_energy, Complex.sub_re, Complex.ofReal_re]
    _ ≤ ‖correlation f 0 - z‖ := Complex.abs_re_le_norm _
    _ ≤ e := h

/-- Every original active prime power occurs in this uncertainty sum. -/
def primeCorrelationError (T : ℝ) (e : ℕ → ℝ) : ℝ :=
  2 * ∑ n ∈ activePrimePowers T, primeWeight n * e n

/-- WCQ-8. Only the error is majorized; the approximated response remains
signed and retains the complex character phase. -/
theorem abs_twistedPrime_sub_le {q : ℕ} [NeZero q]
    (T : ℝ) (χ : DirichletCharacter ℂ q) (C A : ℕ → ℂ) (e : ℕ → ℝ)
    (hC : ∀ n ∈ activePrimePowers T, ‖C n - A n‖ ≤ e n) :
    |twistedPrime T χ C - twistedPrime T χ A| ≤ primeCorrelationError T e := by
  have hid : twistedPrime T χ C - twistedPrime T χ A =
      2 * ∑ n ∈ activePrimePowers T, primeWeight n * (conj (χ n) * (C n - A n)).re := by
    simp only [twistedPrime, mul_sub, Complex.sub_re, Finset.sum_sub_distrib]
  rw [hid, abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  calc
    _ ≤ 2 * ∑ n ∈ activePrimePowers T, |primeWeight n * (conj (χ n) * (C n - A n)).re| :=
      mul_le_mul_of_nonneg_left (Finset.abs_sum_le_sum_abs _ _) (by norm_num)
    _ ≤ primeCorrelationError T e := by
      unfold primeCorrelationError
      apply mul_le_mul_of_nonneg_left _ (by norm_num)
      apply Finset.sum_le_sum
      intro n hn
      rw [abs_mul, abs_of_nonneg (primeWeight_nonneg n)]
      apply mul_le_mul_of_nonneg_left _ (primeWeight_nonneg n)
      calc
        _ ≤ ‖conj (χ n) * (C n - A n)‖ := Complex.abs_re_le_norm _
        _ = ‖χ n‖ * ‖C n - A n‖ := by rw [norm_mul, Complex.norm_conj]
        _ ≤ 1 * ‖C n - A n‖ := mul_le_mul_of_nonneg_right (χ.norm_le_one n) (norm_nonneg _)
        _ ≤ e n := by simpa only [one_mul] using hC n hn

/-- WCQ-9. An explicit mesh/error bound at fixed support and regularity.
It does not supply a sign or uniformity in unbounded support. -/
theorem correlationCellBudget_le_of_mesh
    (B K T h e₀ d₀ : ℝ) (x e d : ℕ → ℝ) (N : ℕ)
    (hB : 0 ≤ B) (hK : 0 ≤ K) (he₀ : 0 ≤ e₀)
    (hx0 : x 0 = -T) (hxN : x N = T)
    (hwidth : ∀ j < N, 0 ≤ x (j + 1) - x j ∧ x (j + 1) - x j ≤ h)
    (hd : ∀ j < N, 0 ≤ d j)
    (heMax : ∀ j < N, e j ≤ e₀) (hdMax : ∀ j < N, d j ≤ d₀) :
    correlationCellBudget B K x e d N ≤
      2 * T * (B * K * h + productSampleError B e₀ d₀) := by
  have hsample (j : ℕ) (hj : j < N) :
      productSampleError B (e j) (d j) ≤ productSampleError B e₀ d₀ := by
    unfold productSampleError
    exact add_le_add
      (mul_le_mul_of_nonneg_left (add_le_add (heMax j hj) (hdMax j hj)) hB)
      (mul_le_mul (heMax j hj) (hdMax j hj) (hd j hj) he₀)
  have hbound := cellVariationBudget_le_of_mesh x (fun _ => 2 * B * K)
    (fun j => productSampleError B (e j) (d j)) N T (2 * B * K) h
    (productSampleError B e₀ d₀) hx0 hxN hwidth (by positivity)
    (fun _ _ => le_rfl) hsample
  calc
    correlationCellBudget B K x e d N ≤
        2 * T * ((2 * B * K) * h / 2 + productSampleError B e₀ d₀) := hbound
    _ = _ := by ring

end GRWTSK.NumberTheory.WeilQuadraticForm.CorrelationCells
