# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SeparationBounds.Variant4b74bc99788f74a84bda16ca0d1f912e305f6efd573dfb527dafb3745811f310

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5317dc39f6dcc69bd21053e283f26dd8cac3f82d` · SHA-256 `d067b645f803a3dbb4073591d30ad54cf9612698592154533f613ab6e849a242`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CardLeOfPairwiseDisjointSeparatorSets.Variant7092d6b2d0f633d4f403edbfcfcc80efe3c2cfa4347c34ba529f20810f5bb2b2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7092d6b2d0f633d4f403edbfcfcc80efe3c2cfa4347c34ba529f20810f5bb2b2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CardLeOfPairwiseDisjointSeparatorSets.Variant7092d6b2d0f633d4f403edbfcfcc80efe3c2cfa4347c34ba529f20810f5bb2b2","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"7092d6b2d0f633d4f403edbfcfcc80efe3c2cfa4347c34ba529f20810f5bb2b2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/history-independent-reconstructed-464b26cc/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/SeparationBounds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.TargetSeparation
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.NotionJoin
import Mathlib.Data.Finset.Card

/-!
# Finite separation bounds and budgeted determination

A family of target-distinct pairs whose admitted separator sets are pairwise
disjoint requires at least one different selected test per pair. This is a
cardinality lower bound for the declared observation inventory, not a bound on
computation, elapsed time, or a resource vector.

The budget bridge uses exactly the existing finite notion relation: its selected
tests are the declared inventory filtered by the existing per-test cost cutoff.
It does not replace that cutoff by a bound on the sum of selected costs.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CardLeOfPairwiseDisjointSeparatorSets.Variant7092d6b2d0f633d4f403edbfcfcc80efe3c2cfa4347c34ba529f20810f5bb2b2

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

variable {Object Test Value Result : Type*}

/-- Disjoint admitted separator sets force distinct selected tests for every
indexed target distinction. The pair index type itself need not be finite. -/
theorem card_le_of_pairwise_disjoint_separator_sets {I : Type*} [DecidableEq Value]
    (obs : Test → Object → Value) (admitted selected : Finset Test)
    (target : Object → Result) (pairs : Finset I) (left right : I → Object)
    (targetDistinct : ∀ i ∈ pairs, target (left i) ≠ target (right i))
    (pairwiseDisjoint : (pairs : Set I).PairwiseDisjoint
      (fun i => separatorSet obs admitted (left i) (right i)))
    (selectedAdmitted : selected ⊆ admitted)
    (separates : SeparatesTarget obs selected target) : pairs.card ≤ selected.card := by
  classical
  have witness (i : pairs) :
      ∃ test : selected, test.val ∈ separatorSet obs admitted (left i.val) (right i.val) := by
    obtain ⟨test, selectedMember, different⟩ :=
      separates (left i.val) (right i.val) (targetDistinct i.val i.property)
    exact ⟨⟨test, selectedMember⟩,
      (mem_separatorSet obs admitted (left i.val) (right i.val) test).mpr
        ⟨selectedAdmitted selectedMember, different⟩⟩
  let chosen (i : pairs) : selected := Classical.choose (witness i)
  have member (i : pairs) :
      (chosen i).val ∈ separatorSet obs admitted (left i.val) (right i.val) :=
    Classical.choose_spec (witness i)
  apply Finset.card_le_card_of_injective (f := chosen)
  intro i j same
  apply Subtype.ext
  by_contra distinct
  exact (Finset.disjoint_left.mp (pairwiseDisjoint i.property j.property distinct)
    (member i)) (by simpa only [same] using member j)

namespace FiniteNotion

/-- Existing finite determination is exactly target separation by all declared
tests whose individual costs lie within the specified budget. -/
theorem determinesAt_iff_separatesTarget (notion : FiniteNotion Object Test Value)
    (budget : ℕ) (target : Object → Result) :
    notion.DeterminesAt budget target ↔
      SeparatesTarget notion.policy.observe
        (notion.tests.filter (fun test => notion.policy.cost test ≤ budget)) target := by
  classical
  constructor
  · intro determined x y differentTarget
    by_contra noSeparator
    apply differentTarget
    apply determined
    intro test member affordable
    by_contra differentObservation
    exact noSeparator ⟨test, Finset.mem_filter.mpr ⟨member, affordable⟩,
      differentObservation⟩
  · intro separates x y equivalent
    by_contra differentTarget
    obtain ⟨test, member, differentObservation⟩ := separates x y differentTarget
    exact differentObservation
      (equivalent test (Finset.mem_filter.mp member).1 (Finset.mem_filter.mp member).2)

/-- Increasing the existing per-test budget preserves target separation within
the same declared finite observation inventory. -/
theorem separatesTarget_of_budget_le {notion : FiniteNotion Object Test Value}
    {small large : ℕ} {target : Object → Result} (bound : small ≤ large)
    (separates : SeparatesTarget notion.policy.observe
      (notion.tests.filter (fun test => notion.policy.cost test ≤ small)) target) :
    SeparatesTarget notion.policy.observe
      (notion.tests.filter (fun test => notion.policy.cost test ≤ large)) target :=
  (notion.determinesAt_iff_separatesTarget large target).mp
    (determines_of_budget_le bound
      ((notion.determinesAt_iff_separatesTarget small target).mpr separates))

/-- An equivalent pair with different target values blocks separation by the
affordable declared tests at that exact budget. -/
theorem not_separatesTarget_of_equivalent_ne (notion : FiniteNotion Object Test Value)
    (budget : ℕ) (target : Object → Result) {x y : Object}
    (equivalent : notion.Equivalent budget x y) (differentTarget : target x ≠ target y) :
    ¬SeparatesTarget notion.policy.observe
      (notion.tests.filter (fun test => notion.policy.cost test ≤ budget)) target :=
  fun separates => differentTarget
    ((notion.determinesAt_iff_separatesTarget budget target).mpr separates equivalent)

end FiniteNotion

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
