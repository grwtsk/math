# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.Issue9ZeroSummability.Variantdba9396b26bb34920e978a342c5572ad678c324f63259f2843c4aa09bcd49c1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84d895eda6742994f8f0e3902251e9d1cccb172a` · SHA-256 `e9c733dc124ac84296e26db01126d48a8b763336907e4660183b90e462021ffd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ShellIndex.Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ShellIndex.Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/Issue9ZeroSummability.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTransform
import Mathlib.NumberTheory.LSeries.ZetaZeros
import Mathlib.Topology.Algebra.InfiniteSum.Real
import Mathlib.Analysis.PSeries
import Mathlib.Tactic
/- Disposable Issue 9 Z2.3 actual-occurrence counting reduction. No RH premise. -/

namespace GRWTSK.Analysis.AsymptoticAnalysis.ShellIndex.Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6

namespace Issue9ZeroSummability
open Set Metric
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroObject
noncomputable section

def shellIndex (o : ZeroOccurrence) : ℕ := ⌊‖shiftedValue o‖⌋₊
def ZeroShell (n : ℕ) := {o : ZeroOccurrence // shellIndex o = n}
def ZeroBallPoints (R : ℝ) := {p : ZeroPoint // ‖p.val - (1/2:ℂ)‖ ≤ R}

theorem zeroBallPoints_finite (R : ℝ) : Finite (ZeroBallPoints R) := by
  let T : Set ℂ := closedBall (1/2:ℂ) R ∩ riemannZetaZeros
  have ht : T.Finite := (isCompact_closedBall (1/2:ℂ) R).inter_riemannZetaZeros_finite
  have : Finite T := ht.to_subtype
  let f : ZeroBallPoints R → T := fun p ↦ ⟨p.val.val, by
    constructor
    · simpa only [mem_closedBall, dist_eq_norm] using p.property
    · exact p.val.property.1⟩
  apply Finite.of_injective f
  intro p q h
  apply Subtype.ext
  apply Subtype.ext
  exact congrArg (fun t : T ↦ t.val) h

theorem zeroShell_finite (n : ℕ) : Finite (ZeroShell n) := by
  have := zeroBallPoints_finite (n+1)
  let T := (Σ p : ZeroBallPoints (n+1), Fin (multiplicity p.val))
  let f : ZeroShell n → T := fun o ↦ ⟨⟨o.val.1, by
    have hb := Nat.lt_floor_add_one ‖shiftedValue o.val‖
    change ‖shiftedValue o.val‖ < (shellIndex o.val:ℝ)+1 at hb
    rw [o.property] at hb
    exact hb.le⟩, o.val.2⟩
  apply Finite.of_injective f
  intro p q h
  apply Subtype.ext
  exact congrArg (fun t : T ↦ (⟨t.1.val,t.2⟩ : ZeroOccurrence)) h

#print axioms zeroShell_finite

/-- A counting estimate over every actual analytic-multiplicity occurrence, not a height cutoff.
This exact growth proposition has no constructed proof in this probe. -/
def QuarticShellCountObligation : Prop :=
  ∃ C : ℝ, 0 < C ∧ ∀ n : ℕ, (Nat.card (ZeroShell n) : ℝ) ≤ C * (n+1:ℝ)^4

def weight (o : ZeroOccurrence) : ℝ := (1 + ‖shiftedValue o‖) ^ (-6:ℝ)

theorem weight_nonneg (o : ZeroOccurrence) : 0 ≤ weight o :=
  Real.rpow_nonneg (by positivity) _

theorem shell_weight_le (n : ℕ) (o : ZeroShell n) :
    weight o.val ≤ (n+1:ℝ)^(-6:ℝ) := by
  have hb := Nat.floor_le (norm_nonneg (shiftedValue o.val))
  change (shellIndex o.val:ℝ) ≤ ‖shiftedValue o.val‖ at hb
  rw [o.property] at hb
  exact Real.rpow_le_rpow_of_nonpos (by positivity) (by linarith) (by norm_num)

theorem shell_sum_bound {C : ℝ}
    (hc : ∀ n : ℕ, (Nat.card (ZeroShell n):ℝ) ≤ C*(n+1:ℝ)^4) (n : ℕ) :
    (∑' o : ZeroShell n, weight o.val) ≤ C*(n+1:ℝ)^(-2:ℝ) := by
  have := zeroShell_finite n
  let := Fintype.ofFinite (ZeroShell n)
  calc
    (∑' o : ZeroShell n, weight o.val) ≤ ∑' _o : ZeroShell n, (n+1:ℝ)^(-6:ℝ) :=
      Summable.tsum_le_tsum (shell_weight_le n) (Summable.of_finite) (Summable.of_finite)
    _ = (Nat.card (ZeroShell n):ℝ) * (n+1:ℝ)^(-6:ℝ) := by
      simp [tsum_fintype, Nat.card_eq_fintype_card]
    _ ≤ (C*(n+1:ℝ)^4) * (n+1:ℝ)^(-6:ℝ) :=
      mul_le_mul_of_nonneg_right (hc n) (Real.rpow_nonneg (by positivity) _)
    _ = C*(n+1:ℝ)^(-2:ℝ) := by
      rw [mul_assoc, ← Real.rpow_natCast (n+1:ℝ) 4, ← Real.rpow_add (by positivity)]
      norm_num

theorem zero_summability_of_quartic_shell_count (h : QuarticShellCountObligation) :
    ZeroSideTargets.ZeroSummabilityObligation := by
  obtain ⟨C,_hC,hbound⟩ := h
  change Summable weight
  have hm : Summable (fun n : ℕ ↦ C*(n+1:ℝ)^(-2:ℝ)) := by
    have hh : Summable (fun n : ℕ ↦ (n:ℝ)^(-2:ℝ)) := Real.summable_nat_rpow.mpr (by norm_num)
    simpa only [Nat.cast_add, Nat.cast_one] using
      ((summable_nat_add_iff 1).mpr hh).mul_left C
  have hs : Summable (fun n : ℕ ↦ ∑' o : ZeroShell n, weight o.val) :=
    Summable.of_nonneg_of_le (fun n ↦ tsum_nonneg (fun o ↦ weight_nonneg o.val))
      (shell_sum_bound hbound) hm
  apply (summable_partition (f := weight) (s := fun n ↦ {o | shellIndex o = n})
    weight_nonneg (fun o ↦ ⟨shellIndex o, rfl, fun n hn ↦ hn.symm⟩)).mpr
  refine ⟨?_, hs⟩
  intro n
  change Summable (fun o : ZeroShell n ↦ weight o.val)
  have := zeroShell_finite n
  exact Summable.of_finite

#print axioms zero_summability_of_quartic_shell_count
end
end Issue9ZeroSummability
```
