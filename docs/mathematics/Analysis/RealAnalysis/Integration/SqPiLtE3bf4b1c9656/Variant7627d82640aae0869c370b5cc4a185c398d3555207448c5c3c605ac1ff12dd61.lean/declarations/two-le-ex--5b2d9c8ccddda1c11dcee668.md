# two_le_exₐ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f06b8815a68e0bc3decd472336d6373f75f0d0ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 990,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd68a607-9e20-d881-02f2-9621cc018927",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2457c536-8dcb-b0e3-8dc3-1677653b5c72",
  "kind": "lemma",
  "lexical_name": "two_le_exₐ",
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
  "slug": "two-le-ex--5b2d9c8ccddda1c11dcee668",
  "source": {
    "blob": "f06b8815a68e0bc3decd472336d6373f75f0d0ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 992,
    "line": 990,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b2d9c8ccddda1c11dcee6684df895740bebe56b53716e4fbedb6334321ec5f6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2457c536-8dcb-b0e3-8dc3-1677653b5c72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 990–992.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma two_le_exₐ : 2 ≤ exₐ :=
  le_trans two_le_xₐ xₐ_le_exₐ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7627d82640aae0869c370b5cc4a185c398d3555207448c5c3c605ac1ff12dd61.lean#L990).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f06b8815a68e0bc3decd472336d6373f75f0d0ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
