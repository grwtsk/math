# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceTupleRationalPackets.Variant3f21860392fce9856144ddd134414eebd44046c67b48a9ee628723ac61c9701e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb8923e6739c92f400509416b0acb1a793138d99` · SHA-256 `8328fc652aac370a97c25194eabde369f636721b5dda5b574607f6fcd616fa62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TupleRationalKey.Variantc26e96d943e02ec7e81d9e11f87f601e6b99d30571f97083be10703c1008dd9f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c26e96d943e02ec7e81d9e11f87f601e6b99d30571f97083be10703c1008dd9f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.TupleRationalKey.Variantc26e96d943e02ec7e81d9e11f87f601e6b99d30571f97083be10703c1008dd9f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c26e96d943e02ec7e81d9e11f87f601e6b99d30571f97083be10703c1008dd9f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceTupleRationalPackets.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceHeatPacketExpansion

/-!
# Exact rational packets at every tuple degree

Every complete ordered index/sign tuple is associated with its exact positive
rational product or ratio. Its signed logarithmic shift is proved to equal the
logarithm of that rational key's real cast. Grouping equal keys retains every
tuple and sums the original signed coefficients, including repeated indices and
the degree-zero empty tuple. The finite heat approximation retains its complete
absolute high-moment error. No estimate uniform in the source scale is asserted.

Research direction: grwtsk contributors. This particular finite construction and
formal implementation: OpenAI Codex, 7 October 2026.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TupleRationalKey.Variantc26e96d943e02ec7e81d9e11f87f601e6b99d30571f97083be10703c1008dd9f

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceTupleRationalPackets

open MeasureTheory
open SourceTuplePackets SourceMultiplicativePackets SourceHeatPacketExpansion
open SourceCompensatedFourier SourceSignedHeat SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent

universe u

/-- The exact product/ratio key, with one original label and sign at each position. -/
def tupleRationalKey {ι : Type u} (label : ι → ℚ) :
    (j : ℕ) → SignTuple ι j → ℚ
  | 0, _ => 1
  | j + 1, p =>
    (if p.2.1 then label p.1 else (label p.1)⁻¹) * tupleRationalKey label j p.2.2

/-- Positive original labels give a positive exact key at every degree. -/
theorem tupleRationalKey_pos {ι : Type u} (label : ι → ℚ)
    (hlabel : ∀ i, 0 < label i) (j : ℕ) (p : SignTuple ι j) :
    0 < tupleRationalKey label j p := by
  induction j with
  | zero => simp only [tupleRationalKey, zero_lt_one]
  | succ j ih =>
    simp only [tupleRationalKey]
    split_ifs
    · exact mul_pos (hlabel p.1) (ih p.2.2)
    · exact mul_pos (inv_pos.mpr (hlabel p.1)) (ih p.2.2)

/-- The complete signed logarithmic shift is transported exactly by the rational key. -/
theorem tupleShift_eq_log_rationalKey {ι : Type u} (label : ι → ℚ)
    (hlabel : ∀ i, 0 < label i) (j : ℕ) (p : SignTuple ι j) :
    tupleShift (fun i => Real.log (label i : ℝ)) j p =
      Real.log (tupleRationalKey label j p : ℝ) := by
  induction j with
  | zero => simp only [tupleShift, tupleRationalKey, Rat.cast_one, Real.log_one]
  | succ j ih =>
    have hn : 0 < (label p.1 : ℝ) := Rat.cast_pos.mpr (hlabel p.1)
    have hp : 0 < (tupleRationalKey label j p.2.2 : ℝ) :=
      Rat.cast_pos.mpr (tupleRationalKey_pos label hlabel j p.2.2)
    change signedShift (Real.log (label p.1 : ℝ)) p.2.1 +
      tupleShift (fun i => Real.log (label i : ℝ)) j p.2.2 =
        Real.log (((if p.2.1 then label p.1 else (label p.1)⁻¹) *
          tupleRationalKey label j p.2.2 : ℚ) : ℝ)
    rw [Rat.cast_mul, ih p.2.2]
    cases hb : p.2.1 <;>
      simp only [signedShift, Bool.false_eq_true, if_true, if_false, Rat.cast_inv]
    · rw [Real.log_mul (inv_ne_zero hn.ne') hp.ne', Real.log_inv]
    · rw [Real.log_mul hn.ne' hp.ne']

/-- Every source inventory label is a natural number at least two. -/
theorem sourceIndex_rational_pos (A : ℝ) (n : SourceIndex A) : 0 < (n.1 : ℚ) := by
  have hn := n.2
  simp only [primePowerInventory, Finset.mem_Icc] at hn
  exact_mod_cast (by omega : 0 < n.1)

/-- The exact rational product or ratio of every complete actual source tuple. -/
def sourceTupleKey (A : ℝ) (j : ℕ) (p : SignTuple (SourceIndex A) j) : ℚ :=
  tupleRationalKey (fun n : SourceIndex A => (n.1 : ℚ)) j p

theorem sourceTupleKey_pos (A : ℝ) (j : ℕ) (p : SignTuple (SourceIndex A) j) :
    0 < sourceTupleKey A j p :=
  tupleRationalKey_pos _ (sourceIndex_rational_pos A) j p

theorem sourceTupleKey_zero (A : ℝ) (p : SignTuple (SourceIndex A) 0) :
    sourceTupleKey A 0 p = 1 := rfl

/-- No logarithmic rounding or approximate key comparison enters this transport. -/
theorem sourceTupleShift_eq_log_key (A : ℝ) (j : ℕ)
    (p : SignTuple (SourceIndex A) j) :
    tupleShift (fun n => Real.log n.1) j p = Real.log (sourceTupleKey A j p : ℝ) := by
  simpa only [sourceTupleKey, Rat.cast_natCast] using
    tupleShift_eq_log_rationalKey (fun n : SourceIndex A => (n.1 : ℚ))
      (sourceIndex_rational_pos A) j p

/-- The original signed coefficient, including the exact degree factor `2^(-j)`. -/
def sourceTupleCoefficient (A : ℝ) (j : ℕ) (p : SignTuple (SourceIndex A) j) : ℝ :=
  (1 / 2 : ℝ) ^ j * tupleWeight (fun n => compensatedCoefficient n.1) j p

/-- Group all complete tuples by exact equality of their rational keys. -/
def sourceRationalTupleMoment (A : ℝ) (j : ℕ) : ℝ :=
  ∑ q ∈ (Finset.univ : Finset (SignTuple (SourceIndex A) j)).image (sourceTupleKey A j),
    (∑ p ∈ Finset.univ with sourceTupleKey A j p = q, sourceTupleCoefficient A j p) *
      sourceCorrelation explicitSecondDerivative A (Real.log (q : ℝ))

/-- Every grouped key remains a positive exact rational product or ratio. -/
theorem grouped_key_pos {A : ℝ} {j : ℕ} {q : ℚ}
    (hq : q ∈ (Finset.univ : Finset (SignTuple (SourceIndex A) j)).image
      (sourceTupleKey A j)) : 0 < q := by
  obtain ⟨p, _, rfl⟩ := Finset.mem_image.mp hq
  exact sourceTupleKey_pos A j p

/-- Fiber grouping preserves every signed tuple, including coincident keys. -/
theorem sourceTupleMoment_eq_grouped_keys (A : ℝ) (j : ℕ) :
    sourceTupleMoment A j = sourceRationalTupleMoment A j := by
  classical
  unfold sourceRationalTupleMoment
  rw [← sum_grouped_by_key (Finset.univ : Finset (SignTuple (SourceIndex A) j))
    (sourceTupleKey A j) (sourceTupleCoefficient A j)
    (fun q => sourceCorrelation explicitSecondDerivative A (Real.log (q : ℝ)))]
  simp only [sourceTupleMoment, tupleObservation, zero_add, Finset.mul_sum,
    sourceTupleCoefficient, mul_assoc, sourceTupleShift_eq_log_key]

/-- The complete actual source probability moment is grouped by exact rational keys. -/
theorem sourceProbability_moment_eq_rational_packets {A : ℝ} (hA : 1 ≤ A) (j : ℕ) :
    (∫ xi : ℝ, compensatedFourierSymbol A xi ^ j ∂sourceProbabilityMeasure A) =
      sourceRationalTupleMoment A j := by
  rw [sourceProbability_moment_eq_tuples hA j, sourceTupleMoment_eq_grouped_keys]

/-- The empty tuple has key one and its grouped actual source observation has mass one. -/
theorem sourceRationalTupleMoment_zero {A : ℝ} (hA : 1 ≤ A) :
    sourceRationalTupleMoment A 0 = 1 := by
  rw [← sourceProbability_moment_eq_rational_packets hA 0]
  let _ := sourceProbabilityMeasure_isProbability A hA
  simp

/-- The exact source-relative support boundary applies at every tuple degree. -/
theorem sourceTuple_response_zero_of_one_le_distance {A : ℝ} (hA : 0 < A)
    (j : ℕ) (p : SignTuple (SourceIndex A) j)
    (hd : 1 ≤ multiplicativeDistance A (sourceTupleKey A j p : ℝ) 1) :
    sourceCorrelation explicitSecondDerivative A (Real.log (sourceTupleKey A j p : ℝ)) =
      0 := by
  simpa only [div_one] using sourceCorrelation_eq_zero_of_one_le_distance hA
    (sourceTupleKey A j p : ℝ) 1 hd

/-- The complete finite heat approximation, with exact rational grouping at each degree. -/
def sourceHeatRationalPacketApproximation (A tau : ℝ) (N : ℕ) : ℝ :=
  ∑ j ∈ Finset.range (N + 1),
    ((-1 : ℝ) ^ j * tau ^ (j + 1) / (j + 1).factorial) *
      sourceRationalTupleMoment A (2 * j + 3)

theorem sourceHeatPacketApproximation_eq_rational (A tau : ℝ) (N : ℕ) :
    sourceHeatPacketApproximation A tau N = sourceHeatRationalPacketApproximation A tau N := by
  simp only [sourceHeatPacketApproximation, sourceHeatRationalPacketApproximation,
    sourceTupleMoment_eq_grouped_keys]

/-- All-degree rational heat grouping retains the complete absolute high-moment error. -/
theorem sourceHeatRemainder_rational_packet_error (A : ℝ) (hA : 1 ≤ A) (N : ℕ)
    {tau : ℝ} (htau : 0 ≤ tau) :
    |sourceHeatRemainder A tau - sourceHeatRationalPacketApproximation A tau N| ≤
      tau ^ (N + 2) / (N + 2).factorial *
        (∫ xi : ℝ, |compensatedFourierSymbol A xi| ^ (2 * N + 5)
          ∂sourceProbabilityMeasure A) := by
  rw [← sourceHeatPacketApproximation_eq_rational]
  exact sourceHeatRemainder_packet_error A hA N htau

end FormalResearch.RiemannHypothesis.SourceTupleRationalPackets
```
