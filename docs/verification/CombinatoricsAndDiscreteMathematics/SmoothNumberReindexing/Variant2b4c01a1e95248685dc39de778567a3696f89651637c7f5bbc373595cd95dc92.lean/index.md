# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SmoothNumberReindexing.Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fc4fe772cf350b921139575e4553f55be892a34",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fc4fe772cf350b921139575e4553f55be892a34`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.FiniteFactorizationPlumbing` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.WeightMultiplicativity` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.MultiplicativeFunction` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteEulerFactorOf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean/declarations/finiteeulerfactorof--4fdedc1948baf17142f461b3.md) | 18 | `declaration-track:4fdedc1948baf17142f461b39d7a9a220b3ae3339233f15d98c6a4c87f891547` |
| 2 | `def` | [finiteEulerProductOf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean/declarations/finiteeulerproductof--64a3a738bae3de389335e071.md) | 24 | `declaration-track:64a3a738bae3de389335e071e729e707e8ee30bc21d8d2b83cb5de2ba7362ffc` |
| 3 | `theorem` | [finiteEulerFactorOf_eq_fin_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean/declarations/finiteeulerfactorof-eq-fin-sum--1932206893da62231e9663f1.md) | 31 | `result-track:1932206893da62231e9663f19ef2484fd4446dbc1b4af0b2fe9381c428a4cf74` |
| 4 | `theorem` | [finiteEulerProductOf_expands_exponent_vectors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean/declarations/finiteeulerproductof-expands-exponent-vectors--1d425a2e8f3b484a689e6914.md) | 40 | `result-track:1d425a2e8f3b484a689e6914a71cf48730973c33a3d95f507a1911e5a2997f84` |
| 5 | `theorem` | [completely_multiplicative_exponentVectorNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean/declarations/completely-multiplicative-exponentvectornat--5ee2370f6377ad036c837245.md) | 65 | `result-track:5ee2370f6377ad036c8372450a5b922dfe1cfff1e26292eb48b7d2712536b68b` |
| 6 | `theorem` | [finiteEulerProductOf_expands_boundedSmoothNumbers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean/declarations/finiteeulerproductof-expands-boundedsmoothnumbers--58dd00f736046dbd0d480590.md) | 84 | `result-track:58dd00f736046dbd0d4805900d9fd5ea9581529c342d11dda5ac5b99da008307` |
| 7 | `theorem` | [posWeightReal_completely_multiplicative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean/declarations/posweightreal-completely-multiplicative--405261788e03cc5c08b4e64a.md) | 116 | `result-track:405261788e03cc5c08b4e64a05c0f7117926d34bf32b708c104274957ef936e8` |
| 8 | `theorem` | [posWeightReal_prime_power](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean/declarations/posweightreal-prime-power--ba2ad6f78a1125d116434bed.md) | 130 | `result-track:ba2ad6f78a1125d116434bed2b8d30ba2f10f95d337b650ba46f9937fc4b91d2` |
| 9 | `theorem` | [finiteZetaEulerProductReal_eq_finiteEulerProductOf_posWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean/declarations/finitezetaeulerproductreal-eq-finiteeulerproductof-posweight--4f60e4e321af9d3aa201b388.md) | 143 | `result-track:4f60e4e321af9d3aa201b388be82ca4d70a3192fb0c2da85c7aa071afaa286d0` |
| 10 | `theorem` | [finiteZetaEulerProductReal_expands_boundedSmoothNumbers](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SmoothNumberReindexing/Variant2b4c01a1e95248685dc39de778567a3696f89651637c7f5bbc373595cd95dc92.lean/declarations/finitezetaeulerproductreal-expands-boundedsmoothnumbers--38d7aa7eae6abc823edcec04.md) | 158 | `result-track:38d7aa7eae6abc823edcec04535378c9bb68e217aeb673357d1faa827dfa0b67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
