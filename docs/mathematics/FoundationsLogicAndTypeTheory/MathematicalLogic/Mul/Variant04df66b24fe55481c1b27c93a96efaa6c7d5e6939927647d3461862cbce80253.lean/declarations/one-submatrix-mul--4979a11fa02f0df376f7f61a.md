# one_submatrix_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:741a582a-0bb1-a98d-a4db-f9f6b5ca34fd",
  "kind": "theorem",
  "lexical_name": "one_submatrix_mul",
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
  "slug": "one-submatrix-mul--4979a11fa02f0df376f7f61a",
  "source": {
    "blob": "357b35566fed4f09022b1fd49b0c85b6690af405",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1247,
    "line": 1237,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant04df66b24fe55481c1b27c93a96efaa6c7d5e6939927647d3461862cbce80253.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4979a11fa02f0df376f7f61ad73a5837735d7c41cba38ed7e7a390c3f4d583e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant04df66b24fe55481c1b27c93a96efaa6c7d5e6939927647d3461862cbce80253.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:741a582a-0bb1-a98d-a4db-f9f6b5ca34fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1237–1247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_submatrix_mul [Fintype m] [Finite o] [NonAssocSemiring α] [DecidableEq o] (e₁ : l → o)
    (e₂ : m ≃ o) (M : Matrix m n α) :
    ((1 : Matrix o o α).submatrix e₁ e₂) * M = submatrix M (e₂.symm ∘ e₁) id := by
  cases nonempty_fintype o
  let A := M.submatrix e₂.symm id
  have : M = A.submatrix e₂ id := by
    simp only [A, submatrix_submatrix, Function.comp_id, submatrix_id_id, Equiv.symm_comp_self]
  rw [this, submatrix_mul_equiv]
  simp only [A, Matrix.one_mul, submatrix_submatrix, Function.comp_id, submatrix_id_id,
    Equiv.symm_comp_self]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant04df66b24fe55481c1b27c93a96efaa6c7d5e6939927647d3461862cbce80253.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant04df66b24fe55481c1b27c93a96efaa6c7d5e6939927647d3461862cbce80253.lean#L1237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `357b35566fed4f09022b1fd49b0c85b6690af405` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
