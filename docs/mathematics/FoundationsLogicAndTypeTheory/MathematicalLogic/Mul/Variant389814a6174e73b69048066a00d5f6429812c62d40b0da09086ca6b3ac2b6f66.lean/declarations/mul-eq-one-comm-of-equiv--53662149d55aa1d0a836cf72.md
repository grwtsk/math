# mul_eq_one_comm_of_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff91eb667e375c22bc6d8973fa706f9dd1f9d100",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/389814a6174e73b69048066a00d5f6429812c62d40b0da09086ca6b3ac2b6f66.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64c221c2-56ae-2b6f-b52c-9ead4ce5a763",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8136870d-9470-d9ab-3ed6-f4636f939f0b",
  "kind": "theorem",
  "lexical_name": "mul_eq_one_comm_of_equiv",
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
  "slug": "mul-eq-one-comm-of-equiv--53662149d55aa1d0a836cf72",
  "source": {
    "blob": "ff91eb667e375c22bc6d8973fa706f9dd1f9d100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1260,
    "line": 1255,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant389814a6174e73b69048066a00d5f6429812c62d40b0da09086ca6b3ac2b6f66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53662149d55aa1d0a836cf72ff18b12f1de2b8a20eff668f1838504d198ba8c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant389814a6174e73b69048066a00d5f6429812c62d40b0da09086ca6b3ac2b6f66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8136870d-9470-d9ab-3ed6-f4636f939f0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1255–1260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_eq_one_comm_of_equiv [IsStablyFiniteRing R] {A : Matrix m n R} {B : Matrix n m R}
    (e : m ≃ n) : A * B = 1 ↔ B * A = 1 :=
  (reindex e e).injective.eq_iff.symm.trans <| by
    rw [reindex_apply, reindex_apply, submatrix_one_equiv, ← submatrix_mul_equiv _ _ _ (.refl _),
      mul_eq_one_comm, submatrix_mul_equiv, Equiv.coe_refl, submatrix_id_id]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant389814a6174e73b69048066a00d5f6429812c62d40b0da09086ca6b3ac2b6f66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant389814a6174e73b69048066a00d5f6429812c62d40b0da09086ca6b3ac2b6f66.lean#L1255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff91eb667e375c22bc6d8973fa706f9dd1f9d100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
