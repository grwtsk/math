# original_estimate_of_integer_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8114c67b-5c3b-2c47-9f1f-b2c712a66a62",
  "kind": "theorem",
  "lexical_name": "original_estimate_of_integer_prefix",
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
  "slug": "original-estimate-of-integer-prefix--f7b0de9aeb28488ec914c922",
  "source": {
    "blob": "ade6f1778628cbc0728ef54aaaa12b1172969dca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 134,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variant99749ac9959068f8d899a058b7f3f9a59ff30f800bd19664c464244caca70fdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7b0de9aeb28488ec914c922d7624841793c3f05bade422125b538edb901b3cf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variant99749ac9959068f8d899a058b7f3f9a59ff30f800bd19664c464244caca70fdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8114c67b-5c3b-2c47-9f1f-b2c712a66a62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_estimate_of_integer_prefix (L R : ℝ) (N₀ : ℕ)
    (hL : 0 ≤ L) (hN₀ : 7 ≤ N₀) (hR : 91 ≤ R)
    (hcut : Real.log (N₀ : ℝ) ≤ 2 * R)
    (hprefix : ∀ N : ℕ, N₀ ≤ N →
      actualXiWeightedIntegerPrefix N ≤ L * Real.log (N : ℝ)) :
    CorrelationAssembly.EstimateObligation := by
  exact estimate_of_uniform_primitive_average (actualIntegerPrefixMeanCoefficient L) R
    (actualIntegerPrefixMeanCoefficient_nonneg hL) hR
    (actual_uniform_primitive_mean_of_integer_prefix hL hN₀ hcut hprefix)

/-- The displayed maximum removes an extra radius choice, while retaining the integer witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variant99749ac9959068f8d899a058b7f3f9a59ff30f800bd19664c464244caca70fdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variant99749ac9959068f8d899a058b7f3f9a59ff30f800bd19664c464244caca70fdf.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ade6f1778628cbc0728ef54aaaa12b1172969dca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
