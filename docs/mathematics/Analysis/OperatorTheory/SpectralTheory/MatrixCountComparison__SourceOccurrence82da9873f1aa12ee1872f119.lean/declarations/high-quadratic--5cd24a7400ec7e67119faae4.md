# high_quadratic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e71a6523-c0cd-4e24-899c-28e9243ebede",
  "kind": "theorem",
  "lexical_name": "high_quadratic",
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
  "slug": "high-quadratic--5cd24a7400ec7e67119faae4",
  "source": {
    "blob": "88de4aff802aae87fbf78dd2b6f080e2ac222df8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 83,
    "path": "GRWTSK/Spectral/MatrixCountComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cd24a7400ec7e67119faae4c2a7336fc477a21988ae3cc03f946d7c41357650",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e71a6523-c0cd-4e24-899c-28e9243ebede`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem high_quadratic {A : Matrix ι ι ℝ} (hA : A.IsHermitian)
    (E : ℝ) (v : EuclideanSpace ℝ ι) (hv0 : v ≠ 0)
    (hv : ∀ i, i ∈ eigenvalueCut hA E → hA.eigenvectorBasis.repr v i = 0) :
    E * ‖v‖^2 < ⟪v, A.toEuclideanLin v⟫ := by
  have hex : ∃ j, hA.eigenvectorBasis.repr v j ≠ 0 := by
    by_contra! hn
    apply hv0
    apply hA.eigenvectorBasis.repr.injective
    ext i
    simpa using hn i
  obtain ⟨j, hj⟩ := hex
  have hjcut : j ∉ eigenvalueCut hA E := fun h => hj (hv j h)
  have hEj : E < hA.eigenvalues j := by
    simpa [eigenvalueCut] using hjcut
  rw [eigenbasis_quadratic hA, eigenbasis_norm hA, Finset.mul_sum]
  apply Finset.sum_lt_sum
  · intro i _
    by_cases hi : i ∈ eigenvalueCut hA E
    · simp [hv i hi]
    · have hEi : E < hA.eigenvalues i := by simpa [eigenvalueCut] using hi
      exact mul_le_mul_of_nonneg_right hEi.le (sq_nonneg _)
  · exact ⟨j, Finset.mem_univ j, mul_lt_mul_of_pos_right hEj (sq_pos_of_ne_zero hj)⟩

/-- Extend cut coordinates by zero, then synthesize in the actual eigenbasis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/MatrixCountComparison.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88de4aff802aae87fbf78dd2b6f080e2ac222df8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
