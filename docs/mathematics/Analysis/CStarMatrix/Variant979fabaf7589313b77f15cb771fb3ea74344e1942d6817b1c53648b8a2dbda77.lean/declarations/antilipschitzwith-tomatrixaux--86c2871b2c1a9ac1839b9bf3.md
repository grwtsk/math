# antilipschitzWith_toMatrixAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:190e1608-d69a-75d2-6ddf-69c285206b70",
  "kind": "lemma",
  "lexical_name": "antilipschitzWith_toMatrixAux",
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
  "slug": "antilipschitzwith-tomatrixaux--86c2871b2c1a9ac1839b9bf3",
  "source": {
    "blob": "be1a38097998dad5c98fe948b6b723db534af057",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 696,
    "line": 675,
    "path": "GRWTSK/Analysis/CStarMatrix/Variant979fabaf7589313b77f15cb771fb3ea74344e1942d6817b1c53648b8a2dbda77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86c2871b2c1a9ac1839b9bf358556cf26f3a2ea40832b6126356921a29f9718f",
  "verification": {
    "reference": "docs/verification/Analysis/CStarMatrix/Variant979fabaf7589313b77f15cb771fb3ea74344e1942d6817b1c53648b8a2dbda77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:190e1608-d69a-75d2-6ddf-69c285206b70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 675–696.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma antilipschitzWith_toMatrixAux :
    AntilipschitzWith (Fintype.card n * Fintype.card m)
      (ofMatrixₗ.symm (R := ℂ) : CStarMatrix m n A → Matrix m n A) := by
  refine AddMonoidHomClass.antilipschitz_of_bound _ fun M => ?_
  calc
    ‖M‖ ≤ ∑ j, ∑ i, ‖M i j‖ := by
      rw [norm_def]
      refine (toCLM M).opNorm_le_bound (by positivity) fun v => ?_
      simp only [toCLM_apply_eq_sum, Finset.sum_mul]
      apply pi_norm_le_sum_norm _ |>.trans
      gcongr with i _
      apply norm_sum_le _ _ |>.trans
      gcongr with j _
      apply norm_mul_le _ _ |>.trans
      rw [mul_comm]
      gcongr
      exact norm_apply_le_norm v j
    _ ≤ ∑ _ : n, ∑ _ : m, ‖ofMatrixₗ.symm (R := ℂ) M‖ := by
      gcongr with j _ i _
      exact ofMatrixₗ.symm (R := ℂ) M |>.norm_entry_le_entrywise_sup_norm
    _ = _ := by simp [mul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CStarMatrix/Variant979fabaf7589313b77f15cb771fb3ea74344e1942d6817b1c53648b8a2dbda77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CStarMatrix/Variant979fabaf7589313b77f15cb771fb3ea74344e1942d6817b1c53648b8a2dbda77.lean#L675).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be1a38097998dad5c98fe948b6b723db534af057` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
