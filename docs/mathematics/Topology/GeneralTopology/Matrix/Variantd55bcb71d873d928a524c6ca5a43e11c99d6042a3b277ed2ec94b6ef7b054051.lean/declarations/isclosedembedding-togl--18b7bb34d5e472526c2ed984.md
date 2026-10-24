# isClosedEmbedding_toGL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7fdd0d23e6dbb53bbf1ac6b92ab804a545b3a97",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d55bcb71d873d928a524c6ca5a43e11c99d6042a3b277ed2ec94b6ef7b054051.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b68300e9-c0b8-42a8-7d03-03f57971e4e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c61dc998-f3be-16ac-1de5-b343b4dac180",
  "kind": "lemma",
  "lexical_name": "isClosedEmbedding_toGL",
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
  "slug": "isclosedembedding-togl--18b7bb34d5e472526c2ed984",
  "source": {
    "blob": "e7fdd0d23e6dbb53bbf1ac6b92ab804a545b3a97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 160,
    "path": "GRWTSK/Topology/GeneralTopology/Matrix/Variantd55bcb71d873d928a524c6ca5a43e11c99d6042a3b277ed2ec94b6ef7b054051.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18b7bb34d5e472526c2ed98472971db8d77d34e00b56731d96968dab8ee11000",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Matrix/Variantd55bcb71d873d928a524c6ca5a43e11c99d6042a3b277ed2ec94b6ef7b054051.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c61dc998-f3be-16ac-1de5-b343b4dac180`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosedEmbedding_toGL [T0Space R] : IsClosedEmbedding (toGL : SL n R → GL n R) :=
  ⟨isEmbedding_toGL, by
    rw [← MonoidHom.coe_range, range_toGL_eq_ker_det, MonoidHom.coe_ker]
    exact isClosed_singleton.preimage <| by fun_prop⟩

end toGL

section mapGL

/-!
### Shortcuts for the composite `SL(n, R) → GL(n, S)`
-/
variable [Algebra R S] [IsTopologicalRing S]

omit [IsTopologicalRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Matrix/Variantd55bcb71d873d928a524c6ca5a43e11c99d6042a3b277ed2ec94b6ef7b054051.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Matrix/Variantd55bcb71d873d928a524c6ca5a43e11c99d6042a3b277ed2ec94b6ef7b054051.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7fdd0d23e6dbb53bbf1ac6b92ab804a545b3a97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
