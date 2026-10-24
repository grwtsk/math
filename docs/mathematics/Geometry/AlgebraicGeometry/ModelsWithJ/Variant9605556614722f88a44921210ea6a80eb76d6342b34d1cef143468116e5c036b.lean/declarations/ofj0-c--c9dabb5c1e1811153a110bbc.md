# ofJ0_c₄

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab68c4c1-d412-f6b7-b9c0-f02fe6b1d619",
  "kind": "lemma",
  "lexical_name": "ofJ0_c₄",
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
  "slug": "ofj0-c--c9dabb5c1e1811153a110bbc",
  "source": {
    "blob": "8b33152725287452fcd4e30b20efd2a7af4def93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 51,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ModelsWithJ/Variant9605556614722f88a44921210ea6a80eb76d6342b34d1cef143468116e5c036b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9dabb5c1e1811153a110bbcab6ecda26c9b330bc2718c003a5147189547439a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ModelsWithJ/Variant9605556614722f88a44921210ea6a80eb76d6342b34d1cef143468116e5c036b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab68c4c1-d412-f6b7-b9c0-f02fe6b1d619`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofJ0_c₄ : (ofJ0 R).c₄ = 0 := by
  rw [ofJ0, c₄, b₂, b₄]
  norm_num1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ModelsWithJ/Variant9605556614722f88a44921210ea6a80eb76d6342b34d1cef143468116e5c036b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ModelsWithJ/Variant9605556614722f88a44921210ea6a80eb76d6342b34d1cef143468116e5c036b.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b33152725287452fcd4e30b20efd2a7af4def93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
