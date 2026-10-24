# eigenvalueCount_le_add_difference_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4f565ee-fc37-2f98-fca6-2cb17ff68c73",
  "kind": "theorem",
  "lexical_name": "eigenvalueCount_le_add_difference_rank",
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
  "slug": "eigenvaluecount-le-add-difference-rank--fc15f17e92276e1d8e4f3516",
  "source": {
    "blob": "88de4aff802aae87fbf78dd2b6f080e2ac222df8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 219,
    "path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc15f17e92276e1d8e4f3516e424a1a32b9335945d4ab3c528822279aa649651",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4f565ee-fc37-2f98-fca6-2cb17ff68c73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eigenvalueCount_le_add_difference_rank {A B : Matrix ι ι ℝ}
    (hA : A.IsHermitian) (hB : B.IsHermitian) (E : ℝ) :
    eigenvalueCount hB E ≤ eigenvalueCount hA E +
      Module.finrank ℝ (LinearMap.range (B.toEuclideanLin - A.toEuclideanLin)) := by
  apply eigenvalueCount_le_add_finrank_of_kernel hA hB
    (B.toEuclideanLin - A.toEuclideanLin).rangeRestrict
  intro v hv
  have hz : (B.toEuclideanLin - A.toEuclideanLin) v = 0 :=
    congrArg Subtype.val hv
  exact (sub_eq_zero.mp hz).symm

/-- Two-sided inclusive count control from one common defect space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence04db82276ffc1a2e4dea3d6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88de4aff802aae87fbf78dd2b6f080e2ac222df8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
