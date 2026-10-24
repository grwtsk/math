# finiteWalshBoundary_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6dd47075-1eea-a659-0aae-7ed5e178e560",
  "kind": "theorem",
  "lexical_name": "finiteWalshBoundary_return",
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
  "slug": "finitewalshboundary-return--f4d14e63f9113eace3edebae",
  "source": {
    "blob": "3f464e53d39b346db2eb71ae54cf2c8f09bfc876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 141,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBoundaryTriangle.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4d14e63f9113eace3edebae6ee9063411c660da16088a7859e5fd9c925efe64",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBoundaryTriangle.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dd47075-1eea-a659-0aae-7ed5e178e560`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteWalshBoundary_return
    (roots exception : Finset ℕ)
    (source model : ℕ → ι → Bool)
    (hroots : 0 < roots.card) (hsub : exception ⊆ roots)
    (hagree : ∀ n ∈ roots, n ∉ exception → source n = model n) :
    (totalVariationFromUniform roots model : ℝ) ≤
      ((exception.card : ℚ) / (roots.card : ℚ) : ℝ) +
        Real.sqrt (nonemptyCorrelationEnergy roots source : ℝ) / 2 := by
  classical
  have ht := uniformTV_le_boundaryTV_add_sourceTV roots source model hroots
  have hb := fullCubeBoundaryTV_le roots exception source model hroots hsub hagree
  have he := totalVariation_le_half_sqrt_energy roots source hroots
  have htR :
      (totalVariationFromUniform roots model : ℝ) ≤
      (categoricalTotalVariation roots source model : ℝ) +
        (totalVariationFromUniform roots source : ℝ) := by
    exact_mod_cast ht
  have hbR :
      (categoricalTotalVariation roots source model : ℝ) ≤
        ((exception.card : ℚ) / (roots.card : ℚ) : ℝ) := by
    exact_mod_cast hb
  linarith

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBoundaryTriangle.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBoundaryTriangle.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f464e53d39b346db2eb71ae54cf2c8f09bfc876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
