# reverse_mul_X_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d015f94a-d168-bbdb-304e-ddee62d573c3",
  "kind": "lemma",
  "lexical_name": "reverse_mul_X_pow",
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
  "slug": "reverse-mul-x-pow--f859be0fdd1bc5c5bcce26e6",
  "source": {
    "blob": "d5f8eadf2e8868b0b39a67ffeb72d104076f92ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 311,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f859be0fdd1bc5c5bcce26e6e30f8b67b234f6c42123971e820de07889abc77b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d015f94a-d168-bbdb-304e-ddee62d573c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma reverse_mul_X_pow (p : R[X]) (n : ℕ) : reverse (p * X ^ n) = reverse p := by
  induction n with
  | zero => simp
  | succ n ih => rw [pow_succ, ← mul_assoc, reverse_mul_X, ih]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variant7ec968d2fabc16e4d604b4cff9a282c08308d8d7aaaf09b0c724b22866b79863.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5f8eadf2e8868b0b39a67ffeb72d104076f92ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
