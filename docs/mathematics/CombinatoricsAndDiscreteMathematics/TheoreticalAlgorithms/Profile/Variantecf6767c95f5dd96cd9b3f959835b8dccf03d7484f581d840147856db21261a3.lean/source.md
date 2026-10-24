# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Profile.Variantecf6767c95f5dd96cd9b3f959835b8dccf03d7484f581d840147856db21261a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `509a7a79d07631d0187ca77e8044da18d0d0f8d3` · SHA-256 `5ffc18887b2161df5d18b9a1a7f98a00cb5e62a671fe7ff690891977bdbe9cf0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.JurisContext.Variant80ee5470f3387d22bcc6daa879f94755cc49a7ea7506340dcea05a2e3dbc5320","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"80ee5470f3387d22bcc6daa879f94755cc49a7ea7506340dcea05a2e3dbc5320","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.JurisContext.Variant80ee5470f3387d22bcc6daa879f94755cc49a7ea7506340dcea05a2e3dbc5320","mathematical_subject":"Computation.DataStructures","original_sha256":"80ee5470f3387d22bcc6daa879f94755cc49a7ea7506340dcea05a2e3dbc5320","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Juris/Profile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Capability.Scope
import Mathematics.Juris.Disposition

/-!
# Source-bound jurisdiction profile

The evaluator is supplied by a versioned profile bound to authoritative source
digests.  This formal layer does not invent legal rules.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.JurisContext.Variant80ee5470f3387d22bcc6daa879f94755cc49a7ea7506340dcea05a2e3dbc5320

namespace Mathematics.Juris

open Mathematics.Capability

structure JurisContext where
  actor : PrincipalId
  resource : ElementId
  dataClass : StableId
  purpose : PurposeId
  territory : StableId
  device : DeviceId
  effect : Effect

structure JurisProfile where
  profileId : StableId
  sourceDigests : List Digest
  sources_valid :
    ∀ digest ∈ sourceDigests, digest.Valid
  effectiveFrom : Nat
  effectiveUntil : Option Nat
  evaluate : JurisContext → JurisDisposition

def jurisEvaluate
    (profile : JurisProfile)
    (context : JurisContext) :
    JurisDisposition :=
  profile.evaluate context

structure JurisAdmission
    (profile : JurisProfile)
    (context : JurisContext) : Prop where
  allowed :
    jurisEvaluate profile context = .allowed

theorem JurisAdmission.mayExecute
    {profile : JurisProfile}
    {context : JurisContext}
    (admission : JurisAdmission profile context) :
    (jurisEvaluate profile context).MayExecute := by
  rw [admission.allowed]
  trivial

end Mathematics.Juris
```
