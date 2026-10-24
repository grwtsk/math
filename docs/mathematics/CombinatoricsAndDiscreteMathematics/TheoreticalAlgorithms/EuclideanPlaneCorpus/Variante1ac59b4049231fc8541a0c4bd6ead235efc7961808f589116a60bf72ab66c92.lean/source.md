# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EuclideanPlaneCorpus.Variante1ac59b4049231fc8541a0c4bd6ead235efc7961808f589116a60bf72ab66c92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `334d8068aadc6c2d3ce135046efd7c6d98da97d1` · SHA-256 `e2b06ae4e09dc0e3a5eeec54d6ae46dfccb3099fc54b8d6a64edc7bd106328b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceModule.Variantae4b31702053ddb55a3cffa85b6a9f56b785a51f3a62df2c8af98b8bc5085c30","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae4b31702053ddb55a3cffa85b6a9f56b785a51f3a62df2c8af98b8bc5085c30","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SourceModule.Variantae4b31702053ddb55a3cffa85b6a9f56b785a51f3a62df2c8af98b8bc5085c30","mathematical_subject":"Computation.DataStructures","original_sha256":"ae4b31702053ddb55a3cffa85b6a9f56b785a51f3a62df2c8af98b8bc5085c30","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/EuclideanPlaneCorpus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Discovery.IdeasCorpus

/-!
# Euclidean-plane corpus address

Corpus module 195 has no project-local imports.  Its Mathlib imports are
external prerequisites, so this one module is the complete local source
closure.  The path and ordinal are provenance coordinates only.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceModule.Variantae4b31702053ddb55a3cffa85b6a9f56b785a51f3a62df2c8af98b8bc5085c30

namespace Mathematics.Geometry.EuclideanPlaneCorpus

open Mathematics
open Mathematics.Discovery

def sourceModule : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 195
  modulePath := "BitMatrix/Geometry/Euclidean.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "719d566e7d77e00ce44d438cea2904012f10931716afabdc8a01f3d52d271a58"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

/-- The exact project-local source closure. -/
def dependencyClosure : List CorpusModuleAddress := [sourceModule]

@[simp] theorem dependencyClosure_length :
    dependencyClosure.length = 1 := by decide

end Mathematics.Geometry.EuclideanPlaneCorpus
```
