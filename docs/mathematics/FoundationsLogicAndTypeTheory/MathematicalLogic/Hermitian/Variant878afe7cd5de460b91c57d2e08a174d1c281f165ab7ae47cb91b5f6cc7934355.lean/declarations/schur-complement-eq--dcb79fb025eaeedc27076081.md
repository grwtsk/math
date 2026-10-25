# schur_complement_eq₁₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb939d6e-a1bd-677a-2aee-944259c2b9ac",
  "kind": "theorem",
  "lexical_name": "schur_complement_eq₁₁",
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
  "slug": "schur-complement-eq--dcb79fb025eaeedc27076081",
  "source": {
    "blob": "ad46fccc48a6fcfaf8890d5a61235c54094dbcba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 383,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hermitian/Variant878afe7cd5de460b91c57d2e08a174d1c281f165ab7ae47cb91b5f6cc7934355.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcb79fb025eaeedc27076081a19cc7557f4932be8b0fd535e5f1c0abc40a7b5f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Hermitian/Variant878afe7cd5de460b91c57d2e08a174d1c281f165ab7ae47cb91b5f6cc7934355.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb939d6e-a1bd-677a-2aee-944259c2b9ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem schur_complement_eq₁₁ [Fintype m] [DecidableEq m] [Fintype n] {A : Matrix m m α}
    (B : Matrix m n α) (D : Matrix n n α) (x : m → α) (y : n → α) [Invertible A]
    (hA : A.IsHermitian) :
    (star (x ⊕ᵥ y)) ᵥ* (Matrix.fromBlocks A B Bᴴ D) ⬝ᵥ (x ⊕ᵥ y) =
      (star (x + (A⁻¹ * B) *ᵥ y)) ᵥ* A ⬝ᵥ (x + (A⁻¹ * B) *ᵥ y) +
        (star y) ᵥ* (D - Bᴴ * A⁻¹ * B) ⬝ᵥ y := by
  simp [Function.star_sumElim, vecMul_fromBlocks, add_vecMul,
    dotProduct_mulVec, vecMul_sub, Matrix.mul_assoc, hA.eq,
    conjTranspose_nonsing_inv, star_mulVec]
  abel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Hermitian/Variant878afe7cd5de460b91c57d2e08a174d1c281f165ab7ae47cb91b5f6cc7934355.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hermitian/Variant878afe7cd5de460b91c57d2e08a174d1c281f165ab7ae47cb91b5f6cc7934355.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad46fccc48a6fcfaf8890d5a61235c54094dbcba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
