# sourceCorrelation_eq_primitive_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ab9ce38-5161-76eb-fc2f-3ed569414034",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_eq_primitive_filter",
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
  "slug": "sourcecorrelation-eq-primitive-filter--b7d322dd1ec538b514931786",
  "source": {
    "blob": "675fb10ef832678b82587d6e129177be3303c228",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 98,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variant12d943a48f304a8d4d4a6360f52b1c2fb8d41b8e1a5cd5dbc9acf17e5b199066.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7d322dd1ec538b5149317861edff91e5de63347e8321ff6fb38288fc1ff2839",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variant12d943a48f304a8d4d4a6360f52b1c2fb8d41b8e1a5cd5dbc9acf17e5b199066.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ab9ce38-5161-76eb-fc2f-3ed569414034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_eq_primitive_filter {A : ℝ} (hA : 0 < A) (s : ℝ) :
    sourceCorrelation explicitSecondDerivative A s =
      primitiveCorrelationTwo A s + primitiveCorrelationOne A s / 2 +
        primitiveCorrelationZero A s / 16 := by
  let b := normalizedPrimitiveBump A
  have hc : ContDiff ℝ 2 b := normalizedPrimitiveBump_contDiff hA
  have hc' : ContDiff ℝ 1 (deriv b) := hc.deriv'
  have hb := hc.continuous
  have hb' := hc'.continuous
  have hb'' := hc'.continuous_deriv_one
  have hs : HasCompactSupport b := normalizedPrimitiveBump_hasCompactSupport hA
  have h22 := compact_shifted_product_integrable hb'' hb'' hs.deriv.deriv s
  have h20 := compact_shifted_product_integrable hb'' hb hs.deriv.deriv s
  have h02 := compact_shifted_product_integrable hb hb'' hs s
  have h00 := compact_shifted_product_integrable hb hb hs s
  have he : (fun x : ℝ => normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - s)) =
      fun x => deriv (deriv b) x * deriv (deriv b) (x - s) -
        (deriv (deriv b) x * b (x - s)) / 4 -
        (b x * deriv (deriv b) (x - s)) / 4 + (b x * b (x - s)) / 16 := by
    funext x
    rw [← normalizedPrimitiveBump_second_sub_quarter hA x,
      ← normalizedPrimitiveBump_second_sub_quarter hA (x - s)]
    dsimp only [b]
    ring
  have hadd := integral_add
    ((h22.sub (h20.div_const 4)).sub (h02.div_const 4)) (h00.div_const 16)
  have hsub1 := integral_sub (h22.sub (h20.div_const 4)) (h02.div_const 4)
  have hsub2 := integral_sub h22 (h20.div_const 4)
  simp only [Pi.sub_apply] at hadd hsub1 hsub2
  rw [sourceCorrelation, he, hadd, hsub1, hsub2, integral_div, integral_div, integral_div]
  have hm := primitive_mixed_second_integrals hA s
  change primitiveCorrelationTwo A s -
      (∫ x : ℝ, deriv (deriv (normalizedPrimitiveBump A)) x *
        normalizedPrimitiveBump A (x - s)) / 4 -
      (∫ x : ℝ, normalizedPrimitiveBump A x *
        deriv (deriv (normalizedPrimitiveBump A)) (x - s)) / 4 +
      primitiveCorrelationZero A s / 16 = _
  rw [hm.1, hm.2]
  ring

/-- The finite prime adapter preserves the literal floor and every signed lag term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variant12d943a48f304a8d4d4a6360f52b1c2fb8d41b8e1a5cd5dbc9acf17e5b199066.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimitivePrimeInteraction/Variant12d943a48f304a8d4d4a6360f52b1c2fb8d41b8e1a5cd5dbc9acf17e5b199066.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `675fb10ef832678b82587d6e129177be3303c228` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
