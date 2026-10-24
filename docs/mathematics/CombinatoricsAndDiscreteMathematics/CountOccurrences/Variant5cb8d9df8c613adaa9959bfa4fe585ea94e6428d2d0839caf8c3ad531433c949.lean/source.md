# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CountOccurrences.Variant5cb8d9df8c613adaa9959bfa4fe585ea94e6428d2d0839caf8c3ad531433c949

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf6c4da68a15281d53c2923a0f38983c3615d41c` · SHA-256 `89ef045c4fdbb4d541497b1a83ff0444eede04227ddb1338e317a9fbd0aa40b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveOccurrenceWindow.Variant8923fc2894337ba1a14b98cc41dab492f47d838783b4caf628824393ecf4ff2f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8923fc2894337ba1a14b98cc41dab492f47d838783b4caf628824393ecf4ff2f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PositiveOccurrenceWindow.Variant8923fc2894337ba1a14b98cc41dab492f47d838783b4caf628824393ecf4ff2f","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8923fc2894337ba1a14b98cc41dab492f47d838783b4caf628824393ecf4ff2f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/finite-stieltjes-independent-review/overlay/scratch/common_mean_stieltjes_20261004/CountOccurrences.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject
import Zeta23.Statement.SeamClosed
import Mathlib.SetTheory.Cardinal.Finite

/-!
Exact actual positive closed zero-window count, including every analytic
multiplicity slot. No sampled list, simple-zero assumption, verified-height
premise, or Riemann Hypothesis premise is introduced.
Originating mathematical direction, theorem selection, corrections and evaluation:
grwtsk contributors. Lean construction assistance: OpenAI Codex.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveOccurrenceWindow.Variant8923fc2894337ba1a14b98cc41dab492f47d838783b4caf628824393ecf4ff2f

set_option autoImplicit false
noncomputable section
namespace CommonMeanStieltjes
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject

/-- Actual positive ordinate window (0,t], closed at the upper endpoint. -/
def PositiveOccurrenceWindow (t : ℝ) :=
  {o : ZeroOccurrence // 0 < (shiftedValue o).im ∧ (shiftedValue o).im ≤ t}

/-- The same actual points and analytic slots in the count's carrier. -/
def PositiveCountFibres (t : ℝ) :=
  Σ ρ : Zeta23.zerosIn 0 t, Fin (Zeta23.zeroMult ρ.val)

/-- The half shift does not change the ordinate, and multiplicity is definitionally
identical on the two actual carriers. Every slot is preserved exactly once. -/
def positiveOccurrenceWindowEquiv (t : ℝ) :
    PositiveOccurrenceWindow t ≃ PositiveCountFibres t where
  toFun o := ⟨⟨o.val.1.val, by
    change Zeta23.IsNontrivialZero o.val.1.val ∧
      0 < o.val.1.val.im ∧ o.val.1.val.im ≤ t
    refine ⟨o.val.1.property, ?_⟩
    simpa only [shiftedValue, Complex.sub_im, Complex.div_ofNat_im, Complex.one_im,
      zero_div, sub_zero] using o.property⟩, o.val.2⟩
  invFun o := ⟨⟨⟨o.1.val, o.1.property.1⟩, o.2⟩, by
    simpa only [shiftedValue, Complex.sub_im, Complex.div_ofNat_im, Complex.one_im,
      zero_div, sub_zero] using o.1.property.2⟩
  left_inv o := by rcases o with ⟨⟨p, i⟩, h⟩; rfl
  right_inv o := by rcases o with ⟨p, i⟩; rfl

theorem positive_occurrence_window_finite (t : ℝ) : Finite (PositiveOccurrenceWindow t) := by
  have : Finite (Zeta23.zerosIn 0 t) := (Zeta23.zerosIn_finite 0 t).to_subtype
  let : Fintype (Zeta23.zerosIn 0 t) := Fintype.ofFinite _
  let : Fintype (PositiveCountFibres t) := by
    unfold PositiveCountFibres
    infer_instance
  exact Finite.of_equiv (PositiveCountFibres t) (positiveOccurrenceWindowEquiv t).symm

/-- Exact cardinality equals the repository count with analytic multiplicity.
The result holds for every real t, including an ordinate at the cutoff. -/
theorem positive_occurrence_window_card_eq_count (t : ℝ) :
    Nat.card (PositiveOccurrenceWindow t) = Zeta23.Ncount 0 t := by
  classical
  have : Finite (Zeta23.zerosIn 0 t) := (Zeta23.zerosIn_finite 0 t).to_subtype
  let : Fintype (Zeta23.zerosIn 0 t) := Fintype.ofFinite _
  rw [Nat.card_congr (positiveOccurrenceWindowEquiv t)]
  unfold PositiveCountFibres
  rw [Nat.card_sigma]
  simp only [Nat.card_fin]
  rw [Finset.sum_set_coe]
  exact (finsum_mem_eq_toFinset_sum Zeta23.zeroMult (Zeta23.zerosIn 0 t)).symm

end CommonMeanStieltjes
```
