# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt01.Variantcc202b4154e5d4ce6a150c1cc5ebb6016068730af04095738d0921e8124f7ebc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `496939f5b3c6499f43e2f9c62619ebbb5461d859` · SHA-256 `a070b16e2a50b954ae842b168d7e96724d7d3e1499cf8f6a1fdef25e5e2371ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualReciprocalXiQuotientWeight.Variant80f4e8646b1572ffd39059df80933aff5341ee2305c780bd26332660f380e4b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"80f4e8646b1572ffd39059df80933aff5341ee2305c780bd26332660f380e4b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualReciprocalXiQuotientWeight.Variant80f4e8646b1572ffd39059df80933aff5341ee2305c780bd26332660f380e4b6","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"80f4e8646b1572ffd39059df80933aff5341ee2305c780bd26332660f380e4b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-xi-reciprocal-joint-abel/attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiClosedKernelHyperbola

/-!
The actual psi-combined logarithmic quotient weight is paired with the literal
reciprocal Moebius prefix through exact finite Abel, preserving all quotient
jumps. Its true upper weight vanishes by the zero unit logarithm. No triangle
budget or average witness is asserted here.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualReciprocalXiQuotientWeight.Variant80f4e8646b1572ffd39059df80933aff5341ee2305c780bd26332660f380e4b6

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiReciprocalJointAbel
open ArithmeticFunction MeasureTheory Set
open scoped Interval
open SourceActualXiClosedKernelHyperbola RootActualXiTailPrimitive
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering
noncomputable section

/-- Literal reciprocal-prefix weight of the already combined closed-psi quotient row. -/
def actualReciprocalXiQuotientWeight (Y : ℝ) (d : ℕ) : ℝ :=
  (d : ℝ) * ∑ m ∈ Finset.Icc 1 (Nat.floor Y / d),
    Real.log (m : ℝ) * actualClosedXiAtomKernel Y (d * m)

private theorem actual_weighted_alpha_identity (N : ℕ) (w : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, (moebius n : ℝ) / n * w n) =
      alpha N * w N +
        ∑ n ∈ Finset.Icc 1 (N - 1), alpha n * (w n - w (n + 1)) := by
  induction N with
  | zero => simp [alpha]
  | succ N ih =>
    by_cases hN : N = 0
    · subst N
      simp [alpha]
    · have hn : 1 ≤ N := by omega
      have ha : alpha (N + 1) = alpha N + (moebius (N + 1) : ℝ) / (N + 1 : ℕ) := by
        unfold alpha
        rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]
      have hs : (∑ n ∈ Finset.Icc 1 N, alpha n * (w n - w (n + 1))) =
          (∑ n ∈ Finset.Icc 1 (N - 1), alpha n * (w n - w (n + 1))) +
            alpha N * (w N - w (N + 1)) := by
        simpa only [Nat.sub_add_cancel hn] using
          (Finset.sum_Icc_succ_top (f := fun n => alpha n * (w n - w (n + 1)))
            (by omega : 1 ≤ (N - 1) + 1))
      rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1), ih, Nat.succ_sub_one, hs, ha]
      ring

/-- The left weight is the full positive logarithmic joint-kernel row, not an arithmetic mean. -/
theorem actualReciprocalXiQuotientWeight_one (Y : ℝ) :
    actualReciprocalXiQuotientWeight Y 1 =
      ∑ m ∈ Finset.Icc 1 (Nat.floor Y), Real.log (m : ℝ) * actualClosedXiAtomKernel Y m := by
  simp [actualReciprocalXiQuotientWeight]

/-- The source upper weight truly vanishes by the retained unit log, including cutoff zero. -/
theorem actualReciprocalXiQuotientWeight_at_cutoff (Y : ℝ) :
    actualReciprocalXiQuotientWeight Y (Nat.floor Y) = 0 := by
  by_cases hN : Nat.floor Y = 0
  · simp [actualReciprocalXiQuotientWeight, hN]
  · unfold actualReciprocalXiQuotientWeight
    rw [Nat.div_self hN]
    simp

/-- The actual closed psi combination reweights each complete signed row without sigma misuse. -/
theorem actualClosedMangoldtXiPair_eq_reciprocal_weight (Y : ℝ) :
    actualClosedMangoldtXiPair Y =
      ∑ d ∈ Finset.Icc 1 (Nat.floor Y),
        (moebius d : ℝ) / (d : ℝ) * actualReciprocalXiQuotientWeight Y d := by
  rw [actualClosedMangoldtXiPair_eq_joint_hyperbola]
  unfold actualClosedMobiusXiHyperbola actualReciprocalXiQuotientWeight
  apply Finset.sum_congr rfl
  intro d hd
  have hdp : 0 < (d : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hd).1
  field_simp

/-- Exact source finite Abel leaves actual signed reciprocal prefixes and true joint differences. -/
theorem actualClosedMangoldtXiPair_eq_reciprocal_abel (Y : ℝ) :
    actualClosedMangoldtXiPair Y =
      ∑ d ∈ Finset.Icc 1 (Nat.floor Y - 1), alpha d *
        (actualReciprocalXiQuotientWeight Y d - actualReciprocalXiQuotientWeight Y (d + 1)) := by
  rw [actualClosedMangoldtXiPair_eq_reciprocal_weight, actual_weighted_alpha_identity,
    actualReciprocalXiQuotientWeight_at_cutoff, mul_zero, zero_add]

/-- Original F7 retains the continuous baseline, gamma and closed-seven source after exact Abel. -/
theorem actualAnchoredXiTailPrimitive_eq_reciprocal_abel {t : ℝ} (ht : Real.log 7 ≤ t) :
    actualAnchoredXiTailPrimitive t =
      2 * ((∑ d ∈ Finset.Icc 1 (Nat.floor (Real.exp t) - 1), alpha d *
        (actualReciprocalXiQuotientWeight (Real.exp t) d -
          actualReciprocalXiQuotientWeight (Real.exp t) (d + 1))) -
        ∑ d ∈ Finset.Icc 1 6, alpha d *
          (actualReciprocalXiQuotientWeight 7 d - actualReciprocalXiQuotientWeight 7 (d + 1))) -
        2 * (Real.exp t + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) /
          Real.sqrt (Real.exp t) +
        2 * (7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / Real.sqrt 7 := by
  rw [actualAnchoredXiTailPrimitive_eq_closed_pair ht,
    actualClosedMangoldtXiPair_eq_reciprocal_abel,
    actualClosedMangoldtXiPair_eq_reciprocal_abel]
  norm_num

end
end FormalResearch.RiemannHypothesis.SourceActualXiReciprocalJointAbel
```
