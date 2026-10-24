# GeneralizingMap.restrictPreimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fdfa3be8b4546f492f06d6b1f98457eaa6990bd4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/ee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93986953-91f6-4780-cb27-fb68188b22fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ab8e017-c8b4-5a75-cbf4-e259223011ea",
  "kind": "lemma",
  "lexical_name": "GeneralizingMap.restrictPreimage",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "generalizingmap-restrictpreimage--dc0ffaffdaca41a9bc86204b",
  "source": {
    "blob": "fdfa3be8b4546f492f06d6b1f98457eaa6990bd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc0ffaffdaca41a9bc86204bbb8630212f83c64843f3be73fecbed87293e48ae",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ab8e017-c8b4-5a75-cbf4-e259223011ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma GeneralizingMap.restrictPreimage (H : GeneralizingMap f) (s : Set β) :
    GeneralizingMap (s.restrictPreimage f) := by
  intro x y h
  obtain ⟨a, ha, hy⟩ := H (h.map <| continuous_subtype_val (p := s))
  use ⟨a, by simp [hy]⟩
  simp [hy, subtype_specializes_iff, ha]

namespace TopologicalSpace.IsOpenCover

section LocalAtTarget

variable {U : ι → Opens β} {s : Set β} (hU : IsOpenCover U)
include hU

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalAtTarget/Variantee641e2850734b505bbb633d98e06f16b4470a45c4c9997de23083ec7e0c7d69.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdfa3be8b4546f492f06d6b1f98457eaa6990bd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
