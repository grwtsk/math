# addLECancellable_of_ne_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0b3c45d5de34e2907d577932f2997eadf315227",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 538,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1af88bbfdf0cb8d775d7299424318baa4e8ad62ecd64f18c9a6be66c1a4f672b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2aa8b6a0-925c-85aa-b74a-3443f20d2de9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34811f35-2884-cf9d-65b7-7ebb6487d753",
  "kind": "lemma",
  "lexical_name": "addLECancellable_of_ne_bot",
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
  "slug": "addlecancellable-of-ne-bot--49a661ea996fe1f099f05650",
  "source": {
    "blob": "e0b3c45d5de34e2907d577932f2997eadf315227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 538,
    "path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant1af88bbfdf0cb8d775d7299424318baa4e8ad62ecd64f18c9a6be66c1a4f672b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49a661ea996fe1f099f056506fcae8baa3aa6bd2dc9ac0b0c6a7c3c201d0fc39",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/WithTop/Variant1af88bbfdf0cb8d775d7299424318baa4e8ad62ecd64f18c9a6be66c1a4f672b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34811f35-2884-cf9d-65b7-7ebb6487d753`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma addLECancellable_of_ne_bot [LE α] [ContravariantClass α α (· + ·) (· ≤ ·)]
    (hx : x ≠ ⊥) : AddLECancellable x := fun _b _c ↦ WithBot.le_of_add_le_add_left hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/WithTop/Variant1af88bbfdf0cb8d775d7299424318baa4e8ad62ecd64f18c9a6be66c1a4f672b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant1af88bbfdf0cb8d775d7299424318baa4e8ad62ecd64f18c9a6be66c1a4f672b.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0b3c45d5de34e2907d577932f2997eadf315227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
