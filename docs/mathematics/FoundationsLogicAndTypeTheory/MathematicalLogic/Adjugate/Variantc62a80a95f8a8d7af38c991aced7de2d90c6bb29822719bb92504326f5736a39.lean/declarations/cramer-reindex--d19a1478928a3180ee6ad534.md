# cramer_reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29b7e601-5166-2b0b-07f4-cf6d558ccd15",
  "kind": "theorem",
  "lexical_name": "cramer_reindex",
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
  "slug": "cramer-reindex--d19a1478928a3180ee6ad534",
  "source": {
    "blob": "96d38cb25f7eecabfc4715a81adaf3b9e557cbaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 171,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variantc62a80a95f8a8d7af38c991aced7de2d90c6bb29822719bb92504326f5736a39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d19a1478928a3180ee6ad5342515f366a4e4e72800f772079d3b0dbbfbb25d4c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variantc62a80a95f8a8d7af38c991aced7de2d90c6bb29822719bb92504326f5736a39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29b7e601-5166-2b0b-07f4-cf6d558ccd15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cramer_reindex (e : m ≃ n) (A : Matrix m m α) (b : n → α) :
    cramer (reindex e e A) b = cramer A (b ∘ e) ∘ e.symm :=
  cramer_submatrix_equiv _ _ _

end Cramer

section Adjugate

/-!
### `adjugate` section

Define the `adjugate` matrix and a few equations.
These will hold for any matrix over a commutative ring.
-/


/-- The adjugate matrix is the transpose of the cofactor matrix.

  Typically, the cofactor matrix is defined by taking minors,
  i.e. the determinant of the matrix with a row and column removed.
  However, the proof of `mul_adjugate` becomes a lot easier if we use the
  matrix replacing a column with a basis vector, since it allows us to use
  facts about the `cramer` map.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variantc62a80a95f8a8d7af38c991aced7de2d90c6bb29822719bb92504326f5736a39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variantc62a80a95f8a8d7af38c991aced7de2d90c6bb29822719bb92504326f5736a39.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96d38cb25f7eecabfc4715a81adaf3b9e557cbaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
