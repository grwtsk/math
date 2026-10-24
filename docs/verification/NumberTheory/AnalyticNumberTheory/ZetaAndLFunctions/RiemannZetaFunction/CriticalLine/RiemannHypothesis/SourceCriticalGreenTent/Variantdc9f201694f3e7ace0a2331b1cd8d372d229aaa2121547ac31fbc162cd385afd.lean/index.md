# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCriticalGreenTent.Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a83bcb838c9c28f928e80cc302d62aba2c9935d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a83bcb838c9c28f928e80cc302d62aba2c9935d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalDirichletTent](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd.lean/declarations/criticaldirichlettent--c51609e38e6561cf728a14b7.md) | 27 | `declaration-track:c51609e38e6561cf728a14b76373c83d8b2ca9e6b2304c02ca2d3ca866ae72d1` |
| 2 | `theorem` | [positivePart_sub_affine_eq_neg_tent](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd.lean/declarations/positivepart-sub-affine-eq-neg-tent--520101093970d0667f06b49b.md) | 31 | `result-track:520101093970d0667f06b49bc901854c16e1433b1758abacf5c244e5438d6790` |
| 3 | `theorem` | [criticalDirichletTent_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd.lean/declarations/criticaldirichlettent-nonneg--c0154cf129562380b286506d.md) | 43 | `result-track:c0154cf129562380b286506da169b47332222d9453d2782b838f695183c29539` |
| 4 | `theorem` | [criticalDirichletTent_endpoints](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd.lean/declarations/criticaldirichlettent-endpoints--50613844b40b375ad15958ea.md) | 51 | `result-track:50613844b40b375ad15958eacd816e484f3497860b8aa691da0f0f6566db301e` |
| 5 | `theorem` | [primeLogSum_hinge_common_inventory](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd.lean/declarations/primelogsum-hinge-common-inventory--7656c1deff581ed981d39990.md) | 70 | `result-track:7656c1deff581ed981d39990194b746a84771ee81132b25f3b0cc3f454b8bf38` |
| 6 | `theorem` | [criticalDiscrepancyBridge_eq_green_tents](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalGreenTent/Variantdc9f201694f3e7ace0a2331b1cd8d372d229aaa2121547ac31fbc162cd385afd.lean/declarations/criticaldiscrepancybridge-eq-green-tents--cd402a1be0ca849f25a407ec.md) | 84 | `result-track:cd402a1be0ca849f25a407ec1b78fbeb2072e52fafeb76caee9b13d16a288920` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
