# tridiagonal_second_cofactor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94e6ffd9-c42b-b423-ed2f-b00948022128",
  "kind": "theorem",
  "lexical_name": "tridiagonal_second_cofactor",
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
  "slug": "tridiagonal-second-cofactor--eb13d89922022f3de80576d0",
  "source": {
    "blob": "40fcd297ecdfe347f54d9a9a0a47d2820827643e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 95,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb13d89922022f3de80576d089a96bc5be88cae0e09ec9938decc20ff27695b8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94e6ffd9-c42b-b423-ed2f-b00948022128`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tridiagonal_second_cofactor (b c : ℝ) (n : ℕ) :
    Matrix.det ((tridiagonal b c (n + 2)).submatrix Fin.succ
      (1 : Fin (n + 2)).succAbove) = Matrix.det (tridiagonal b c n) := by
  let M := (tridiagonal b c (n + 2)).submatrix Fin.succ
    (1 : Fin (n + 2)).succAbove
  have hc : ∀ i, M i 0 = if i = 0 then (-1 : ℝ) ^ (0 : Fin (n + 1)).val else 0 := by
    intro i
    have h0 : (1 : Fin (n + 2)).succAbove (0 : Fin (n + 1)) = 0 := by
      simp [Fin.succAbove]
    simp only [M, Matrix.submatrix_apply, h0, tridiagonal, Fin.val_succ, Fin.val_zero]
    by_cases hi : i = 0
    · subst i
      norm_num
    · have hi0 : i.val ≠ 0 := fun hh => hi (Fin.ext hh)
      simp [hi, hi0]
  rw [SignedMinorElimination.det_cancel_signed_unit M 0 hc]
  congr 1
  ext i j
  simp only [M, Matrix.submatrix_apply, Fin.zero_succAbove]
  have hj : (1 : Fin (n + 2)).succAbove j.succ = j.succ.succ := by
    apply Fin.succAbove_of_le_castSucc
    change 1 ≤ j.val + 1
    omega
  rw [hj]
  simp [tridiagonal, Nat.add_left_comm, Nat.add_comm]

/-- Laplace expansion proves the continuant recurrence for actual determinants. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quadratic/Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40fcd297ecdfe347f54d9a9a0a47d2820827643e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
