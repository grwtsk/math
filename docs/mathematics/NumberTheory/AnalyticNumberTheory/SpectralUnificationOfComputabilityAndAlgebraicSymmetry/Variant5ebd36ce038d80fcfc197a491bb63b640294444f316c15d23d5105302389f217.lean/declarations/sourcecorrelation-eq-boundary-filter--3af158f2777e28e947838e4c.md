# sourceCorrelation_eq_boundary_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b1e5bd5-c498-e14b-42b8-d681db5baf3a",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_eq_boundary_filter",
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
  "slug": "sourcecorrelation-eq-boundary-filter--3af158f2777e28e947838e4c",
  "source": {
    "blob": "a2ec7ef9efcc767ebecb658e67ca9d01223693e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 65,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5ebd36ce038d80fcfc197a491bb63b640294444f316c15d23d5105302389f217.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3af158f2777e28e947838e4c57c63b551886c2fe780541a5f814ab2ab441a8f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5ebd36ce038d80fcfc197a491bb63b640294444f316c15d23d5105302389f217.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b1e5bd5-c498-e14b-42b8-d681db5baf3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_eq_boundary_filter (A u : ℝ) (hA : 1 ≤ A)
    (hu : 0 ≤ u) (huA : u ≤ 2 * A) :
    sourceNormalization A * sourceCorrelation explicitSecondDerivative A (2 * A - u) =
      ∑ j ∈ Finset.Icc 9 17, boundaryCoefficient j / A ^ j * monomialFilter j u := by
  have hA0 : 0 < A := by linarith
  have hAn := ne_of_gt hA0
  have hv := sourceCorrelation_eq_polynomial A ((2 * A - u) / A) hA
    (div_nonneg (by linarith) hA0.le) ((div_le_iff₀ hA0).2 (by linarith))
  rw [mul_div_cancel₀ _ hAn] at hv
  rw [hv, mul_div_cancel₀ _ (ne_of_gt (source_normalization_pos A hA)), degree_inventory]
  norm_num [boundaryCoefficient, monomialFilter]
  dsimp [bumpCorrelation, bumpCorrelationSecond, bumpCorrelationFourth]
  field_simp
  ring

/-- The upper atom vanishes in each of the nine individual filters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5ebd36ce038d80fcfc197a491bb63b640294444f316c15d23d5105302389f217.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5ebd36ce038d80fcfc197a491bb63b640294444f316c15d23d5105302389f217.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2ec7ef9efcc767ebecb658e67ca9d01223693e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
