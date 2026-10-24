# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Subsumption.Variant02878324a49787e7c91c25a2c4274f66bff6b941336abbcca2e136537c034d2e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ba8d68f4cbeeea79168cad084998a6b731604ee` · SHA-256 `cae1c1d749c66c02be5dd56a8aab7d3b568b17b43f972ab8dbfcdf54caede59a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Link.Variantaa63d202ea18023c1a83f30c1b4c9333bfe640cbf01df989a0ad9e4a7d14a1f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa63d202ea18023c1a83f30c1b4c9333bfe640cbf01df989a0ad9e4a7d14a1f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Link.Variantaa63d202ea18023c1a83f30c1b4c9333bfe640cbf01df989a0ad9e4a7d14a1f3","mathematical_subject":"Computation.DataStructures","original_sha256":"aa63d202ea18023c1a83f30c1b4c9333bfe640cbf01df989a0ad9e4a7d14a1f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Kakeya/Subsumption.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.Kakeya.Corpus
import Mathematics.Geometry.Kakeya.Family

/-!
# Kakeya tube-root subsumption

All three declarations in corpus module 984 route to exact Euclidean
carriers.  The source's labels, duplicated ambient dimension, and
proof-by-field finiteness marker are rejected as mathematical structure.
Every link remains proposal-only.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Link.Variantaa63d202ea18023c1a83f30c1b4c9333bfe640cbf01df989a0ad9e4a7d14a1f3

namespace Mathematics.Geometry.Kakeya.Subsumption

open Mathematics
open Mathematics.Discovery

private def link
    (ordinal : Nat)
    (sourceName : String)
    (sourceName_nonempty : sourceName ≠ "")
    (digest : Digest)
    (digest_valid : digest.Valid)
    (target : String)
    (target_nonempty : target ≠ "")
    (rationale : String) :
    CorpusSubsumptionLink :=
  Corpus.tubeRoot.subsumption
    { value := "ideas:kakeya-tube-root:" ++ toString ordinal }
    (by simp [StableId.Valid])
    ordinal
    sourceName
    sourceName_nonempty
    .structure
    digest
    digest_valid
    target
    target_nonempty
    .semanticCorrection
    rationale

def scaleData := link 0 "ScaleData" (by decide)
  { value := "35800afaa08dcddcbae04c29344e61cb666e7ce12483c81f94aaf6125ef8e85d" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Geometry.Kakeya.ScaleWindow" (by decide)
  "Replace integer scale labels by an ordered positive real scale window."

def tube := link 1 "Tube" (by decide)
  { value := "5a1eb47514be90807348a8c45c3cb79e315ed1efaaf4fa2d2352cffee743a1c5" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Geometry.Kakeya.Tube" (by decide)
  "Replace direction strings and repeated dimension values by a typed unit vector and exact tube carrier."

def tubeConfiguration := link 2 "TubeConfiguration" (by decide)
  { value := "accb40a772a3d323a69ea56e4564c85752d8ac77b456ea794c6f99f972654e73" }
  (by unfold Digest.Valid; native_decide)
  "Mathematics.Geometry.Kakeya.FiniteTubeFamily" (by decide)
  "Encode finiteness structurally through a Fin-indexed family in one type-indexed ambient dimension."

def links : List CorpusSubsumptionLink := [
  scaleData,
  tube,
  tubeConfiguration
]

@[simp] theorem links_length : links.length = 3 := by decide

theorem links_proposal_only :
    ∀ sourceLink ∈ links, sourceLink.authority = .proposalOnly := by
  intro sourceLink _membership
  exact sourceLink.authority_is_proposal_only

end Mathematics.Geometry.Kakeya.Subsumption
```
