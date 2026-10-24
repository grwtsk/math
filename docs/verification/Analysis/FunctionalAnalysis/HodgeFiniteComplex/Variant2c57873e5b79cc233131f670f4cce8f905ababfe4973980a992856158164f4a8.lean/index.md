# Verification target: GRWTSK.Analysis.FunctionalAnalysis.HodgeFiniteComplex.Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "119610a284c38f3b844ea009c3e71df2dac341ba",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `119610a284c38f3b844ea009c3e71df2dac341ba`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.HodgeGaugeBounds` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [harmonicPart](../../../../../mathematics/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean/declarations/harmonicpart--705e636092881a829c6cb7e5.md) | 26 | `declaration-track:705e636092881a829c6cb7e519cab210fadd69a6d84c594575bc74001cc31c15` |
| 2 | `theorem` | [harmonicPart_adjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean/declarations/harmonicpart-adjoint--4a262ff927de1646eaee6bce.md) | 29 | `result-track:4a262ff927de1646eaee6bce3ec7e2e341ae7c9bb2515ec043e0bad6450189cc` |
| 3 | `theorem` | [harmonicPart_closed](../../../../../mathematics/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean/declarations/harmonicpart-closed--ba1a0f1a77fb0fcc191c01b4.md) | 37 | `result-track:ba1a0f1a77fb0fcc191c01b44b3fe0009613489581ddeb5d8f81b6e024dd6a88` |
| 4 | `theorem` | [harmonicPart_zero_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean/declarations/harmonicpart-zero-iff--9db553be936d85db959d2d1c.md) | 50 | `result-track:9db553be936d85db959d2d1cedb21714b0b8d399b9e87af8158fd5f955ad0416` |
| 5 | `theorem` | [exists_gauge_decomposition](../../../../../mathematics/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean/declarations/exists-gauge-decomposition--1f4558e05a85cc2db672f944.md) | 58 | `result-track:1f4558e05a85cc2db672f94434a331c205771885da0c9cb86d75eca7ba59c112` |
| 6 | `theorem` | [closed_hodge_decomposition](../../../../../mathematics/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean/declarations/closed-hodge-decomposition--2bd0267804dab7d71d146290.md) | 71 | `result-track:2bd0267804dab7d71d146290a13f61c52408ea06db55dbed3d2000d88fc42255` |
| 7 | `theorem` | [exact_gauge_bound](../../../../../mathematics/Analysis/FunctionalAnalysis/HodgeFiniteComplex/Variant2c57873e5b79cc233131f670f4cce8f905ababfe4973980a992856158164f4a8.lean/declarations/exact-gauge-bound--e454862ff85313a4e69d77d7.md) | 80 | `result-track:e454862ff85313a4e69d77d7c3fd93cdc2bbded4f43c9c59019733a6080b6631` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
