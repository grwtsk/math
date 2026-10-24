# isAlgebraic_of_finite_intermediateField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6496f05dabad7c51dd05de34d543e6145817149e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 267,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6971334a-4aa3-735f-1f95-c05734be917d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:836f302c-e2d5-a00c-0f08-7d518dafac94",
  "kind": "theorem",
  "lexical_name": "isAlgebraic_of_finite_intermediateField",
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
  "slug": "isalgebraic-of-finite-intermediatefield--23bc34e622b28dde394e509e",
  "source": {
    "blob": "6496f05dabad7c51dd05de34d543e6145817149e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 267,
    "path": "GRWTSK/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23bc34e622b28dde394e509e82df62a32e1be16e5a1f60a49d9a2d97aafaabac",
  "verification": {
    "reference": "docs/verification/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:836f302c-e2d5-a00c-0f08-7d518dafac94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isAlgebraic_of_finite_intermediateField
    [Finite (IntermediateField F E)] : Algebra.IsAlgebraic F E := ⟨fun α ↦
  have ⟨_m, _n, hneq, heq⟩ := Finite.exists_ne_map_eq_of_infinite fun n ↦ F⟮α ^ n⟯
  isAlgebraic_of_adjoin_eq_adjoin F E hneq heq⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrimitiveElement/Variantc8c1f5a6b4ae0d3763cbb498b1e3e1a984a3c4d15f88201dc8724a74863611aa.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6496f05dabad7c51dd05de34d543e6145817149e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
