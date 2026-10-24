# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Resolver.Variantcff8340f1e6659ef49c84878092c4f7b958ecbb308112761e8a3b60b99ff54a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `424a764f375a996334bebee0282189ce2dd59d52` · SHA-256 `2b895848a9325f2f07b6be64728295193f3edc4f1825123f2788c4b7166ed993`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.GraphAccessResolution.Variantbb17fa9399d94ec644edd702397cd9e8084680f4ee9173ee7cac495e3e7b97b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb17fa9399d94ec644edd702397cd9e8084680f4ee9173ee7cac495e3e7b97b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.GraphAccessResolution.Variantbb17fa9399d94ec644edd702397cd9e8084680f4ee9173ee7cac495e3e7b97b6","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"bb17fa9399d94ec644edd702397cd9e8084680f4ee9173ee7cac495e3e7b97b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/Resolver.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Admission

/-!
# Dependency-inverted graph-access resolver

Admission and mode construction are injected.  The dispatcher knows no BFS,
Dijkstra, A*, rotor, sequence, sampling, obstruction, or cylinder internals.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphAccessResolution.Variantbb17fa9399d94ec644edd702397cd9e8084680f4ee9173ee7cac495e3e7b97b6

namespace Mathematics.GraphAccess

inductive GraphAccessResolution
    (G : GraphCut)
    (profiles : ModeProfileFamily G)
  | completed
      (request : AdmittedAccessRequest G profiles)
      (resultType : ModeOutputFamily G request)
      (machine :
        AccessMachine G request resultType)
      (result : MachineResolution machine)
  | unknown
      (requestId : RequestId)
      (frontier : Option ByteArray)
      (unknowns : Finset GraphAccessUnknownKind)
      (unknowns_nonempty : unknowns.Nonempty)
  | rejected
      (requestId : RequestId)
      (reason : RequestAdmissionFailure)
  | operationalFailure
      (requestId : RequestId)
      (failure : OperationalFailure)

structure ModeBackendRegistry
    (G : GraphCut)
    (profiles : ModeProfileFamily G) where
  outputs :
    ∀ request : AdmittedAccessRequest G profiles,
      ModeOutputFamily G request
  machine :
    ∀ request : AdmittedAccessRequest G profiles,
      AccessMachine G request (outputs request)

def resolveGraphAccess
    (G : GraphCut)
    (profiles : ModeProfileFamily G)
    (admitter : RequestAdmitter G profiles)
    (backend : ModeBackendRegistry G profiles)
    (raw : RawGraphAccessRequest) :
    GraphAccessResolution G profiles :=
  match admitter.admit raw with
  | .admitted request =>
      .completed request
        (backend.outputs request)
        (backend.machine request)
        (executeMachine (backend.machine request))
  | .unknown requestId unknowns nonempty =>
      .unknown requestId none unknowns nonempty
  | .rejected requestId failure =>
      .rejected requestId failure

end Mathematics.GraphAccess
```
