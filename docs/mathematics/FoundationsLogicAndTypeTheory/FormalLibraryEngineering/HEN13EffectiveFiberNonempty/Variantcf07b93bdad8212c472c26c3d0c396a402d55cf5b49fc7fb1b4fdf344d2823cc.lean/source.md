# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN13EffectiveFiberNonempty.Variantcf07b93bdad8212c472c26c3d0c396a402d55cf5b49fc7fb1b4fdf344d2823cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `286890d2ae8da90ea455c060311b1c79cbdb2048` · SHA-256 `195f3c8ccb8fc9c0aaecd8e353293a7f9cfd32ba596d91aecd119c3df6446e66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen13EffectiveFiberNonempty.Variantec894f8b4e8e5fb31cc0f1701e2f525f56cf00a59ccf92a1755ddcde2a9ae5fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ec894f8b4e8e5fb31cc0f1701e2f525f56cf00a59ccf92a1755ddcde2a9ae5fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Hen13EffectiveFiberNonempty.Variantec894f8b4e8e5fb31cc0f1701e2f525f56cf00a59ccf92a1755ddcde2a9ae5fe","mathematical_subject":"Foundations.Unclassified","original_sha256":"ec894f8b4e8e5fb31cc0f1701e2f525f56cf00a59ccf92a1755ddcde2a9ae5fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/HEN13_EffectiveFiberNonempty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Theorems.HEN03_EssentialImageCharacterization


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen13EffectiveFiberNonempty.Variantec894f8b4e8e5fb31cc0f1701e2f525f56cf00a59ccf92a1755ddcde2a9ae5fe

namespace FCRS.Algebraization.Theorems

/-- Every algebraically generated target object has a nonempty algebraization fiber. -/
theorem hen13_effectiveFiberNonempty
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (hProfile : S.P.henselianProfile)
    (hSource : SourceGenerated S.generators S.cohAlgEpi)
    {Y : S.categories.CohHen.Obj}
    (hGenerated :
      AlgebraicallyGenerated
        S.generators
        S.cohHenEpi
        Y) :
    Nonempty
      (AlgebraizationFiber
        S.functors.HenPullback
        Y) := by
  have hImage :=
    (hen03_essentialImageCharacterization
      S registry hProfile hSource Y).mp hGenerated
  rcases hImage with ⟨X, hIso⟩
  rcases hIso with ⟨e⟩
  exact ⟨{
    source := X
    comparison := e
  }⟩

end FCRS.Algebraization.Theorems
```
