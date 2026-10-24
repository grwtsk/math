# polynomial_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96dc4ffc-0e68-04d3-4ab4-0f10981ed16e",
  "kind": "theorem",
  "lexical_name": "polynomial_norm_le",
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
  "slug": "polynomial-norm-le--f20a11eaf4147efbb0cee166",
  "source": {
    "blob": "f708a4ae9f2239d1adf8b2812a35acbcf9f1f4be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variantc996fc9fc494e14aec5e6803f2cc83ab62c36d7bce3fc96e5fd5ca3807b0730a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f20a11eaf4147efbb0cee1665dbbedb86bff79b94459565c26db937d574f318f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variantc996fc9fc494e14aec5e6803f2cc83ab62c36d7bce3fc96e5fd5ca3807b0730a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96dc4ffc-0e68-04d3-4ab4-0f10981ed16e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem polynomial_norm_le (A t : ℝ) :
    ‖actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I)‖ ≤
      actualRightLineMass (3 / 2) := by
  unfold actualClosedPrimeDirichletPolynomial actualRightLineMass
  calc
    _ ≤ ∑ n ∈ Finset.range (⌊Real.exp (2 * A)⌋₊ + 1),
        ‖LSeries.term actualMangoldtCoefficients ((3 / 2 : ℂ) + (t : ℂ) * I) n‖ :=
      norm_sum_le _ _
    _ = ∑ n ∈ Finset.range (⌊Real.exp (2 * A)⌋₊ + 1),
        ‖LSeries.term actualMangoldtCoefficients ((3 / 2 : ℝ) : ℂ) n‖ := by
      apply Finset.sum_congr rfl
      intro n _
      simp [LSeries.norm_term_eq]
    _ ≤ _ := (actualRightLineMass_summable (3 / 2) (by norm_num)).sum_le_tsum
      _ (fun n _ => norm_nonneg _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variantc996fc9fc494e14aec5e6803f2cc83ab62c36d7bce3fc96e5fd5ca3807b0730a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualTiltProjectedGrowth/Variantc996fc9fc494e14aec5e6803f2cc83ab62c36d7bce3fc96e5fd5ca3807b0730a.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f708a4ae9f2239d1adf8b2812a35acbcf9f1f4be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
