# exists_orthogonal_rowChange_of_orthonormal_frames

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fc73db0-c8d1-8daf-4e28-b52b0090f528",
  "kind": "theorem",
  "lexical_name": "exists_orthogonal_rowChange_of_orthonormal_frames",
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
  "slug": "exists-orthogonal-rowchange-of-orthonormal-frames--6ca400cab1308078f1487354",
  "source": {
    "blob": "20e1714ebe9797c029a6f9a1d4386faf4ec3fa10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 60,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotOrthonormal/Variant71c232d3cb8a2eee3d10919c6b4ca5330f0fbf4baedae9386d676379715ab322.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ca400cab1308078f1487354e97126d335e102f1336edd0297c4019c2b539fa9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotOrthonormal/Variant71c232d3cb8a2eee3d10919c6b4ca5330f0fbf4baedae9386d676379715ab322.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fc73db0-c8d1-8daf-4e28-b52b0090f528`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_orthogonal_rowChange_of_orthonormal_frames
    (A B : FullRankFrame k n) (hA : A.val * A.val.transpose = 1)
    (hB : B.val * B.val.transpose = 1) (hspace : representedPlane A = representedPlane B) :
    ∃ O : Matrix (Fin k) (Fin k) ℝ,
      O * O.transpose = 1 ∧ B.val = O * A.val := by
  obtain ⟨O, _, hO⟩ := exists_rowChange_of_frameRowSpace_eq A.val B.val B.property
    ((representedPlane_eq_iff A B).mp hspace)
  refine ⟨O, ?_, hO⟩
  calc
    O * O.transpose = O * (A.val * A.val.transpose) * O.transpose := by
      rw [hA, Matrix.mul_one]
    _ = (O * A.val) * (O * A.val).transpose := by
      rw [Matrix.transpose_mul]
      simp only [Matrix.mul_assoc]
    _ = B.val * B.val.transpose := by rw [← hO]
    _ = 1 := hB

/-- Controlled pivots reach every intrinsic plane through an actual orthonormal representative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotOrthonormal/Variant71c232d3cb8a2eee3d10919c6b4ca5330f0fbf4baedae9386d676379715ab322.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotOrthonormal/Variant71c232d3cb8a2eee3d10919c6b4ca5330f0fbf4baedae9386d676379715ab322.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20e1714ebe9797c029a6f9a1d4386faf4ec3fa10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
