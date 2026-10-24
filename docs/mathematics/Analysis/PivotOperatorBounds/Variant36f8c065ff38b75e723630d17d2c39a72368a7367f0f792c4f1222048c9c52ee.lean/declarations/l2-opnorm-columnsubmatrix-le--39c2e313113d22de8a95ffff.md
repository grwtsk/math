# l2_opNorm_columnSubmatrix_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e72167ee-5e68-07ce-fbb9-ba50ef7cd96e",
  "kind": "theorem",
  "lexical_name": "l2_opNorm_columnSubmatrix_le",
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
  "slug": "l2-opnorm-columnsubmatrix-le--39c2e313113d22de8a95ffff",
  "source": {
    "blob": "7e907f0d68bac8a653334cce6a0238972133b88f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 69,
    "path": "GRWTSK/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39c2e313113d22de8a95ffffdc5f38efa67e65815dbef68e838e5f966f236665",
  "verification": {
    "reference": "docs/verification/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e72167ee-5e68-07ce-fbb9-ba50ef7cd96e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem l2_opNorm_columnSubmatrix_le (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hc : Function.Injective c) :
    ‖columnSubmatrix A c‖ ≤ ‖A‖ := by
  have ht (B : Matrix (Fin k) (Fin n) ℝ) : ‖B.transpose‖ = ‖B‖ := by
    simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
      Matrix.l2_opNorm_conjTranspose B
  have hs : ‖(columnSubmatrix A c).transpose‖ = ‖columnSubmatrix A c‖ := by
    simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
      Matrix.l2_opNorm_conjTranspose (columnSubmatrix A c)
  rw [← hs, Matrix.l2_opNorm_def]
  apply ContinuousLinearMap.opNorm_le_bound _ (norm_nonneg A)
  intro x
  have he : Matrix.toEuclideanLin (columnSubmatrix A c).transpose x =
      WithLp.toLp 2 (fun i => (Matrix.toEuclideanLin A.transpose x) (c i)) := rfl
  change ‖Matrix.toEuclideanLin (columnSubmatrix A c).transpose x‖ ≤ ‖A‖ * ‖x‖
  rw [he]
  exact (euclidean_norm_restrict_le c hc _).trans (by
    simpa only [ht A] using l2_opNorm_toEuclideanLin_le A.transpose x)

open scoped RealInnerProductSpace in
/-- Sharp lower singular-value estimate derived from the spectral theorem.
The product of Gram eigenvalues is at most each eigenvalue because all lie in `[0,1]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PivotOperatorBounds/Variant36f8c065ff38b75e723630d17d2c39a72368a7367f0f792c4f1222048c9c52ee.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e907f0d68bac8a653334cce6a0238972133b88f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
