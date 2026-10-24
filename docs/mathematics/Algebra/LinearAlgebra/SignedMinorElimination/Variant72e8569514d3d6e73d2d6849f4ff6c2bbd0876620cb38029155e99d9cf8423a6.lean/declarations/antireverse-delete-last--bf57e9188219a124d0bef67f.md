# antiReverse_delete_last

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a96980a-cb8f-e74b-4e46-508b42d91c22",
  "kind": "theorem",
  "lexical_name": "antiReverse_delete_last",
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
  "slug": "antireverse-delete-last--bf57e9188219a124d0bef67f",
  "source": {
    "blob": "6dd55d9392af17a167eb7e4c49797ba087596929",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 63,
    "path": "GRWTSK/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf57e9188219a124d0bef67fa3e61d634e6e99adb9b11f45b2d0963a5f21a5ba",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a96980a-cb8f-e74b-4e46-508b42d91c22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem antiReverse_delete_last (n : ℕ) :
    (antiReverse (n + 1)).submatrix (Fin.last n).succAbove Fin.succ = antiReverse n := by
  ext i j
  have hi : (Fin.last n).succAbove i = i.castSucc :=
    Fin.succAbove_of_castSucc_lt _ _ (by exact i.isLt)
  rw [Matrix.submatrix_apply, hi]
  have he : j.succ = i.castSucc.rev ↔ j = i.rev := by
    constructor <;> intro h <;> apply Fin.ext
    · have hv := congrArg Fin.val h
      simp only [Fin.val_succ, Fin.rev, Fin.val_castSucc] at hv ⊢
      omega
    · have hv := congrArg Fin.val h
      simp only [Fin.rev] at hv
      simp only [Fin.val_succ, Fin.rev, Fin.val_castSucc]
      omega
  simp only [antiReverse, Fin.val_castSucc, he]

/-- The signed reversal has determinant one at every rank, including zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SignedMinorElimination/Variant72e8569514d3d6e73d2d6849f4ff6c2bbd0876620cb38029155e99d9cf8423a6.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dd55d9392af17a167eb7e4c49797ba087596929` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
