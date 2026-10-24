# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Corpus.Variant52808891b0095711cea7118ab2f322644b15dca9e48a6b05670dc938fbfc8a05

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06da70e6e15fe1112ec8b5c5200e607ba2d2e4df` · SHA-256 `b8b8c5fea4f05113941610ff2e0e2a86874f8e8af538e9454a11d966cc657dd8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TubeRoot.Variant40f352d5f36015561716cc5659611992292f72ded84f12535389a5e97adb073a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"40f352d5f36015561716cc5659611992292f72ded84f12535389a5e97adb073a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TubeRoot.Variant40f352d5f36015561716cc5659611992292f72ded84f12535389a5e97adb073a","mathematical_subject":"Computation.DataStructures","original_sha256":"40f352d5f36015561716cc5659611992292f72ded84f12535389a5e97adb073a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Kakeya/Corpus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Discovery.IdeasCorpus

/-!
# Kakeya tube-root corpus address

Corpus module 984 is the unique import-free declaration-bearing root of the
retained Kakeya component.  Its path and ordinal are provenance coordinates;
the source digest is the identity-bearing evidence.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TubeRoot.Variant40f352d5f36015561716cc5659611992292f72ded84f12535389a5e97adb073a

namespace Mathematics.Geometry.Kakeya.Corpus

open Mathematics
open Mathematics.Discovery

def tubeRoot : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 984
  modulePath := "Geometry/Kakeya/Tubes.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "737641b8e7951275211274c8b092f6211ff046f85eb293c1302027168ee57f51"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

/-- The exact project-local dependency closure of the import-free root. -/
def tubeRootDependencyClosure : List CorpusModuleAddress := [tubeRoot]

@[simp] theorem tubeRootDependencyClosure_length :
    tubeRootDependencyClosure.length = 1 := by decide

end Mathematics.Geometry.Kakeya.Corpus
```
