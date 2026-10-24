# sourceHeatPolynomial_integral_eq_packets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aab4191f-2b75-bc7c-555c-96085cf02076",
  "kind": "theorem",
  "lexical_name": "sourceHeatPolynomial_integral_eq_packets",
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
  "slug": "sourceheatpolynomial-integral-eq-packets--0ce95192a8e06bbfc2cc6c25",
  "source": {
    "blob": "5f34b34644d855926a0731874b2dc6036adf7de0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatPacketExpansion/Variantc3500cece9fa4964c9680a9e31ecfb14e645eed6f94d61c74ead51224749350d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ce95192a8e06bbfc2cc6c252946a60cfa78e8976fca4f6f1c50a22c2826d9a8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatPacketExpansion/Variantc3500cece9fa4964c9680a9e31ecfb14e645eed6f94d61c74ead51224749350d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aab4191f-2b75-bc7c-555c-96085cf02076`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceHeatPolynomial_integral_eq_packets (A : ℝ) (hA : 1 ≤ A)
    (N : ℕ) (τ : ℝ) :
    (∫ ξ : ℝ, heatRemainderPolynomial N τ (compensatedFourierSymbol A ξ)
      ∂sourceProbabilityMeasure A) = sourceHeatPacketApproximation A τ N := by
  have he : (fun ξ : ℝ => heatRemainderPolynomial N τ (compensatedFourierSymbol A ξ)) =
      fun ξ => ∑ j ∈ Finset.range (N + 1),
        ((-1 : ℝ) ^ j * τ ^ (j + 1) / (j + 1).factorial) *
          compensatedFourierSymbol A ξ ^ (2 * j + 3) := by
    funext ξ
    rw [heatRemainderPolynomial_eq_sum]
    apply Finset.sum_congr rfl
    intro j _
    ring
  rw [he, integral_finsetSum _ (fun j _ =>
    (sourceProbability_power_integrable hA (2 * j + 3)).const_mul _)]
  simp_rw [integral_const_mul, sourceProbability_moment_eq_tuples hA]
  rfl

/-- Nonzero-time source-to-heat-to-tuples with the full sharp absolute tail.
The time is common to the source calculation, while the estimate is at fixed `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatPacketExpansion/Variantc3500cece9fa4964c9680a9e31ecfb14e645eed6f94d61c74ead51224749350d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHeatPacketExpansion/Variantc3500cece9fa4964c9680a9e31ecfb14e645eed6f94d61c74ead51224749350d.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f34b34644d855926a0731874b2dc6036adf7de0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
