# condExp_stronglyMeasurable_mul_of_bound₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a25f491-e13b-bd13-2594-48e22d68282a",
  "kind": "theorem",
  "lexical_name": "condExp_stronglyMeasurable_mul_of_bound₀",
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
  "slug": "condexp-stronglymeasurable-mul-of-bound--271c644bdeceaa43d0da018b",
  "source": {
    "blob": "ce9732219aad38850f6376c8baed04bfb9f2ddf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 273,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:271c644bdeceaa43d0da018bfad65e533d857cdec9e6b1a8defd8f4bcceda8b6",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a25f491-e13b-bd13-2594-48e22d68282a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_stronglyMeasurable_mul_of_bound₀ (hm : m ≤ mΩ) [IsFiniteMeasure μ] {f g : Ω → ℝ}
    (hf : AEStronglyMeasurable[m] f μ) (hg : Integrable g μ) (c : ℝ)
    (hf_bound : ∀ᵐ ω ∂μ, ‖f ω‖ ≤ c) : μ[f * g | m] =ᵐ[μ] f * μ[g | m] :=
  condExp_aestronglyMeasurable_bilin_of_bound (.mul ℝ ℝ) hm hf hg c hf_bound

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce9732219aad38850f6376c8baed04bfb9f2ddf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
