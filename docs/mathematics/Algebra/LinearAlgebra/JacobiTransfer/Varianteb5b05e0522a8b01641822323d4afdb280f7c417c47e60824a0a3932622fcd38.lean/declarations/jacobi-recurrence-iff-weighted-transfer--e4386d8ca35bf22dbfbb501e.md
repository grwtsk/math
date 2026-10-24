# jacobi_recurrence_iff_weighted_transfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3dea6d6-f437-557b-e3af-c9d16b2ea8c4",
  "kind": "theorem",
  "lexical_name": "jacobi_recurrence_iff_weighted_transfer",
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
  "slug": "jacobi-recurrence-iff-weighted-transfer--e4386d8ca35bf22dbfbb501e",
  "source": {
    "blob": "724dce41da89e50f002a8c96c9cbbca462be8018",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 143,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Varianteb5b05e0522a8b01641822323d4afdb280f7c417c47e60824a0a3932622fcd38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4386d8ca35bf22dbfbb501e869b955fac3b9287f0a28f74783c3f059f75fa24",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobiTransfer/Varianteb5b05e0522a8b01641822323d4afdb280f7c417c47e60824a0a3932622fcd38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3dea6d6-f437-557b-e3af-c9d16b2ea8c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobi_recurrence_iff_weighted_transfer {K : Type u} [Field K]
    (E b aCurrent aPrevious previous current next : K) (ha : aCurrent ≠ 0) :
    jacobiRecurrence E b aCurrent aPrevious previous current next ↔
      weightedState aCurrent current next =
        (weightedJacobiTransfer E b aCurrent).mulVec
          (weightedState aPrevious previous current) := by
  rw [jacobi_recurrence_iff_solved E b aCurrent aPrevious previous current next ha]
  have hcoord : (weightedJacobiTransfer E b aCurrent).mulVec
      (weightedState aPrevious previous current) =
      weightedState aCurrent current (((E - b) / aCurrent) * current -
        (aPrevious / aCurrent) * previous) := by
    ext i
    fin_cases i <;> simp [weightedJacobiTransfer, weightedState, Matrix.mulVec,
      dotProduct, Fin.sum_univ_two]
    all_goals ring
  rw [hcoord]
  constructor
  · intro h
    rw [h]
  · intro h
    simpa only [weightedState, Matrix.cons_val_zero] using congrFun h 0

/-- Nonzero current off-diagonal gives determinant one directly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobiTransfer/Varianteb5b05e0522a8b01641822323d4afdb280f7c417c47e60824a0a3932622fcd38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Varianteb5b05e0522a8b01641822323d4afdb280f7c417c47e60824a0a3932622fcd38.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `724dce41da89e50f002a8c96c9cbbca462be8018` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
