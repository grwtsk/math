# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceHybridStorage.Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `643fa245f70ff184fcfe69841fc69cedf5bc0697` · SHA-256 `72b973b15340b52c3b497c0cc2b774a276bc98c44fccd821f6103cb7c286b5c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FlowIntegralBound.Variant32096cef44ade4dabc4bfaaf0cb37871c78bad313b82e4d5440c34753194676b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"32096cef44ade4dabc4bfaaf0cb37871c78bad313b82e4d5440c34753194676b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FlowIntegralBound.Variant32096cef44ade4dabc4bfaaf0cb37871c78bad313b82e4d5440c34753194676b","mathematical_subject":"Analysis.Integration","original_sha256":"32096cef44ade4dabc4bfaaf0cb37871c78bad313b82e4d5440c34753194676b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceHybridStorage.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.Data.Complex.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NoncommRing
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Abel

/-!
# Signed hybrid storage with changing event dimensions and moving charts

QGL-ALL-20261007. Research direction, theorem selection, corrections and
evaluation: grwtsk contributors. These proofs and calculations: OpenAI Codex.
No arithmetic upper-bound provider is asserted by this module.

The scalar telescope applies after integrating each absolutely continuous
flow piece. Its event traces may belong to different state spaces. Matrix
congruence keeps before/after charts separate, including rectangular resets.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.FlowIntegralBound.Variant32096cef44ade4dabc4bfaaf0cb37871c78bad313b82e4d5440c34753194676b

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceHybridStorage

open MeasureTheory Set
open scoped BigOperators Matrix

/-- Integrating a local storage inequality retains its signed error integral. -/
theorem flow_integral_bound (S f e Sd : ℝ → ℝ) (a b : ℝ) (hab : a ≤ b)
    (hS : ∀ s ∈ uIcc a b, HasDerivAt S (Sd s) s)
    (hf : IntervalIntegrable f volume a b)
    (hd : IntervalIntegrable Sd volume a b)
    (he : IntervalIntegrable e volume a b)
    (hlocal : ∀ s ∈ Icc a b, f s + Sd s ≤ e s) :
    (∫ s in a..b, f s) + S b - S a ≤ ∫ s in a..b, e s := by
  have hft := intervalIntegral.integral_eq_sub_of_hasDerivAt hS hd
  have hi := intervalIntegral.integral_mono_on hab (hf.add hd) he hlocal
  rw [intervalIntegral.integral_add hf hd, hft] at hi
  linarith only [hi]

/-- Flow costs telescope with signed event costs, without a common event dimension. -/
theorem signed_hybrid_telescope (f g ef eg L R : ℕ → ℝ) (N : ℕ)
    (hflow : ∀ j ≤ N, f j + R j - L j ≤ ef j)
    (hevent : ∀ j < N, g j + L (j + 1) - R j ≤ eg j) :
    (∑ j ∈ Finset.range (N + 1), f j) + (∑ j ∈ Finset.range N, g j) ≤
      L 0 - R N + (∑ j ∈ Finset.range (N + 1), ef j) +
        (∑ j ∈ Finset.range N, eg j) := by
  induction N with
  | zero =>
      simp only [zero_add, Finset.sum_range_one, Finset.sum_range_zero, add_zero]
      have h := hflow 0 (by omega)
      linarith only [h]
  | succ N ih =>
      have hp := ih (fun j hj => hflow j (by omega))
        (fun j hj => hevent j (by omega))
      have hf := hflow (N + 1) (by omega)
      have hg := hevent N (by omega)
      simp only [Finset.sum_range_succ] at hp ⊢
      linarith only [hp, hf, hg]

/-- Only the initial storage, final storage and total signed error are bounded. -/
theorem signed_hybrid_bound (f g ef eg L R : ℕ → ℝ) (N : ℕ)
    (d Cd C0 Cerror : ℝ)
    (hflow : ∀ j ≤ N, f j + R j - L j ≤ ef j)
    (hevent : ∀ j < N, g j + L (j + 1) - R j ≤ eg j)
    (hd : d ≤ Cd) (h0 : L 0 ≤ C0) (hterminal : 0 ≤ R N)
    (herror : (∑ j ∈ Finset.range (N + 1), ef j) +
      (∑ j ∈ Finset.range N, eg j) ≤ Cerror) :
    d + (∑ j ∈ Finset.range (N + 1), f j) + (∑ j ∈ Finset.range N, g j) ≤
      Cd + C0 + Cerror := by
  have h := signed_hybrid_telescope f g ef eg L R N hflow hevent
  linarith only [h, hd, h0, hterminal, herror]

section ComplexForms

variable {n m : Type*} [Fintype n] [Fintype m]

/-- The real Hermitian quadratic readout (also defined for arbitrary matrices). -/
def quadraticReadout (P : Matrix n n ℂ) (w : n → ℂ) : ℝ :=
  (star w ⬝ᵥ (P *ᵥ w)).re

/-- Quadratic-form order; for Hermitian matrices this is Loewner order. -/
def FormLE (P Q : Matrix n n ℂ) : Prop :=
  ∀ w : n → ℂ, quadraticReadout P w ≤ quadraticReadout Q w

theorem quadraticReadout_congruence (P : Matrix n n ℂ) (K : Matrix n m ℂ)
    (w : m → ℂ) :
    quadraticReadout (Kᴴ * P * K) w = quadraticReadout P (K *ᵥ w) := by
  unfold quadraticReadout
  rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec,
    Matrix.dotProduct_mulVec, Matrix.vecMul_conjTranspose, star_star]

theorem formLE_congruence {P Q : Matrix n n ℂ} (h : FormLE P Q)
    (K : Matrix n m ℂ) : FormLE (Kᴴ * P * K) (Kᴴ * Q * K) := by
  intro w
  simpa only [quadraticReadout_congruence] using h (K *ᵥ w)

/-- Projection onto the homogeneous coordinate. -/
def homogeneousProjector [DecidableEq n] (last : n) : Matrix n n ℂ :=
  Matrix.diagonal (Pi.single last 1)

theorem homogeneousProjector_readout [DecidableEq n] (last : n) (w : n → ℂ) :
    quadraticReadout (homogeneousProjector last) w = Complex.normSq (w last) := by
  have h : star w ⬝ᵥ (homogeneousProjector last *ᵥ w) = star (w last) * w last := by
    simp [homogeneousProjector, Matrix.mulVec_diagonal, dotProduct, Pi.single_apply]
  unfold quadraticReadout
  rw [h, Complex.star_def, ← Complex.normSq_eq_conj_mul_self]
  rfl

/-- A homogeneous affine chart preserves the error projector exactly on quadratic readouts. -/
theorem homogeneousProjector_covariance [DecidableEq n] (last : n)
    (K : Matrix n n ℂ) (hK : ∀ w : n → ℂ, (K *ᵥ w) last = w last)
    (w : n → ℂ) :
    quadraticReadout (Kᴴ * homogeneousProjector last * K) w =
      quadraticReadout (homogeneousProjector last) w := by
  rw [quadraticReadout_congruence, homogeneousProjector_readout,
    homogeneousProjector_readout, hK]

end ComplexForms

section ChartCovariance

variable {n m : Type*} [Fintype n] [Fintype m] [DecidableEq n] [DecidableEq m]

/-- The moving-chart derivative of inverse-congruence storage.
`D` is T-dot and `K` is T-inverse. -/
def transformedStorageDerivative (P Pd D K : Matrix n n ℂ) : Matrix n n ℂ :=
  (-K * D * K)ᴴ * P * K + Kᴴ * Pd * K + Kᴴ * P * (-K * D * K)

theorem flow_defect_covariance (L P Pd B T D K : Matrix n n ℂ)
    (hKT : K * T = 1) :
    Kᴴ * L * K + transformedStorageDerivative P Pd D K +
      (D * K + T * B * K)ᴴ * (Kᴴ * P * K) +
      (Kᴴ * P * K) * (D * K + T * B * K) =
        Kᴴ * (L + Pd + Bᴴ * P + P * B) * K := by
  have hstar : Tᴴ * Kᴴ = 1 := by
    rw [← Matrix.conjTranspose_mul, hKT, Matrix.conjTranspose_one]
  unfold transformedStorageDerivative
  simp only [Matrix.conjTranspose_add, Matrix.conjTranspose_mul,
    Matrix.conjTranspose_neg]
  simp only [Matrix.add_mul, Matrix.mul_add, Matrix.neg_mul, Matrix.mul_neg,
    Matrix.mul_assoc]
  simp only [← Matrix.mul_assoc Tᴴ Kᴴ, hstar, Matrix.one_mul,
    ← Matrix.mul_assoc K T, hKT, Matrix.one_mul]
  abel

omit [DecidableEq n] in
/-- A reset can be rectangular; both before/after chart changes are retained. -/
theorem event_defect_covariance (L Pminus : Matrix n n ℂ) (Pplus : Matrix m m ℂ)
    (M : Matrix m n ℂ) (Tplus Kplus : Matrix m m ℂ) (Kminus : Matrix n n ℂ)
    (hplus : Kplus * Tplus = 1) :
    Kminusᴴ * L * Kminus + (Tplus * M * Kminus)ᴴ *
      (Kplusᴴ * Pplus * Kplus) * (Tplus * M * Kminus) -
      Kminusᴴ * Pminus * Kminus =
        Kminusᴴ * (L + Mᴴ * Pplus * M - Pminus) * Kminus := by
  have hstar : Tplusᴴ * Kplusᴴ = 1 := by
    rw [← Matrix.conjTranspose_mul, hplus, Matrix.conjTranspose_one]
  simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
  simp only [← Matrix.mul_assoc Tplusᴴ Kplusᴴ, hstar, Matrix.one_mul,
    ← Matrix.mul_assoc Kplus Tplus, hplus, Matrix.one_mul]
  simp only [Matrix.mul_add, Matrix.add_mul, Matrix.mul_sub, Matrix.sub_mul,
    Matrix.mul_assoc]

end ChartCovariance

/-- Simultaneous additive resets retain cross terms between distinct impulses. -/
theorem simultaneous_affine_reset (p q r pm qm rm a b z cost : ℝ) :
    cost + (p * (a * z + b) ^ 2 + q * (a * z + b) + r) -
      (pm * z ^ 2 + qm * z + rm) =
    (p * a ^ 2 - pm) * z ^ 2 + (2 * p * a * b + q * a - qm) * z +
      (cost + p * b ^ 2 + q * b + r - rm) := by ring

theorem simultaneous_impulse_mixed_term (w z eta j t : ℝ) :
    w * (z + j + t) ^ 2 + eta * (z + j + t) - (w * z ^ 2 + eta * z) =
      2 * w * z * (j + t) + w * j ^ 2 + 2 * w * j * t + w * t ^ 2 +
        eta * (j + t) := by ring

/-- Chart-dependent scalar offsets contribute exactly their initial-to-final difference.
Any chart seam or period must occur in one of these displayed increments. -/
theorem offset_telescope (L R : ℕ → ℝ) (N : ℕ) :
    (∑ j ∈ Finset.range (N + 1), (R j - L j)) +
      (∑ j ∈ Finset.range N, (L (j + 1) - R j)) = R N - L 0 := by
  induction N with
  | zero => simp
  | succ N ih =>
      simp only [Finset.sum_range_succ] at ih ⊢
      linarith only [ih]

end FormalResearch.RiemannHypothesis.SourceHybridStorage
```
