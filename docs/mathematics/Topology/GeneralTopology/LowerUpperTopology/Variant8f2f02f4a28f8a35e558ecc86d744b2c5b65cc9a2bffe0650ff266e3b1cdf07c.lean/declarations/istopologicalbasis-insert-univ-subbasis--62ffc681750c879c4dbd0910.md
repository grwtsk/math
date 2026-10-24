# isTopologicalBasis_insert_univ_subbasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7db07cb4b8c52a3078efa07865a741108310081c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 460,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f2f02f4a28f8a35e558ecc86d744b2c5b65cc9a2bffe0650ff266e3b1cdf07c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9385fa2-a488-f908-55a3-f8f39f8125ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57572df0-c270-12d4-1cce-f9078d3d9def",
  "kind": "lemma",
  "lexical_name": "isTopologicalBasis_insert_univ_subbasis",
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
  "slug": "istopologicalbasis-insert-univ-subbasis--62ffc681750c879c4dbd0910",
  "source": {
    "blob": "7db07cb4b8c52a3078efa07865a741108310081c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 460,
    "path": "GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant8f2f02f4a28f8a35e558ecc86d744b2c5b65cc9a2bffe0650ff266e3b1cdf07c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62ffc681750c879c4dbd09104d0ec6de06e25d039ef4502f50c714042f9e83b1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LowerUpperTopology/Variant8f2f02f4a28f8a35e558ecc86d744b2c5b65cc9a2bffe0650ff266e3b1cdf07c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57572df0-c270-12d4-1cce-f9078d3d9def`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTopologicalBasis_insert_univ_subbasis :
    IsTopologicalBasis (insert univ {s : Set α | ∃ a, (Iic a)ᶜ = s}) :=
  IsLower.isTopologicalBasis_insert_univ_subbasis (α := αᵒᵈ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LowerUpperTopology/Variant8f2f02f4a28f8a35e558ecc86d744b2c5b65cc9a2bffe0650ff266e3b1cdf07c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant8f2f02f4a28f8a35e558ecc86d744b2c5b65cc9a2bffe0650ff266e3b1cdf07c.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7db07cb4b8c52a3078efa07865a741108310081c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
