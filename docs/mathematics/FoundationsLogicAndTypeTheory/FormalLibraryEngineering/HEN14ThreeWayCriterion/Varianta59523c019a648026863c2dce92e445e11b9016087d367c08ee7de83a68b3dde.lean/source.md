# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN14ThreeWayCriterion.Varianta59523c019a648026863c2dce92e445e11b9016087d367c08ee7de83a68b3dde

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `790edacbeec7d132d46b16b211a00437b781ddb5` · SHA-256 `bcc3632a0fc6b491c799cbf355649295bbc0afa3274b8c42b66538b73f4c942b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen14ThreeWayCriterion.Variant2886bc13a5740a5437209664e368c5894db9e8564bf9c6f23e85c7c69985d3ee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2886bc13a5740a5437209664e368c5894db9e8564bf9c6f23e85c7c69985d3ee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Hen14ThreeWayCriterion.Variant2886bc13a5740a5437209664e368c5894db9e8564bf9c6f23e85c7c69985d3ee","mathematical_subject":"Foundations.Unclassified","original_sha256":"2886bc13a5740a5437209664e368c5894db9e8564bf9c6f23e85c7c69985d3ee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/HEN14_ThreeWayCriterion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Theorems.HEN05_HSGCriterion


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen14ThreeWayCriterion.Variant2886bc13a5740a5437209664e368c5894db9e8564bf9c6f23e85c7c69985d3ee

namespace FCRS.Algebraization.Theorems

/--
The three formulations coincide: unrestricted essential surjectivity, every
target object satisfying the intrinsic generator predicate, and HSG.
-/
theorem hen14_threeWayCriterion
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi) :
    (EssentiallySurjective S.functors.HenPullback ↔
      ∀ Y : S.categories.CohHen.Obj,
        AlgebraicallyGenerated
          S.generators
          S.cohHenEpi
          Y) ∧
    ((∀ Y : S.categories.CohHen.Obj,
        AlgebraicallyGenerated
          S.generators
          S.cohHenEpi
          Y) ↔
      HenselianSerreGeneration
        S.generators
        S.cohHenEpi) := by
  have hCriterion :=
    hen05_hsgCriterion
      S registry hProfile hSource
  exact ⟨hCriterion, Iff.rfl⟩

end FCRS.Algebraization.Theorems
```
