# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Posterior.Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebc437e5a60bcf5ac9ce548c18a0920ef6d3aa36",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebc437e5a60bcf5ac9ce548c18a0920ef6d3aa36`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.CompProdEqIff` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Disintegration.StandardBorel` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [posterior](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/posterior--47f548f4bc335c77c512e8ff.md) | 73 | `declaration-track:47f548f4bc335c77c512e8ff616a91fa4a9144740032264c6d8d11e5e12bba42` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/instance--65e96354c98919c83b51ccb7.md) | 81 | `declaration-track:65e96354c98919c83b51ccb7f8d5d27873d5da079d105dfa3070af5086571bb5` |
| 3 | `lemma` | [compProd_posterior_eq_map_swap](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/compprod-posterior-eq-map-swap--42465052ddcb808e1fd32248.md) | 84 | `result-track:42465052ddcb808e1fd32248fa3d2a9e2e690a35c873716a2335daf3f6af007c` |
| 4 | `lemma` | [compProd_posterior_eq_swap_comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/compprod-posterior-eq-swap-comp--2813548bbe222104bbed3b48.md) | 87 | `result-track:2813548bbe222104bbed3b48ac2ff0074b870b7f6b5907b629b48bd18b45612f` |
| 5 | `lemma` | [swap_compProd_posterior](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/swap-compprod-posterior--cc9da14255cdec1d486c1449.md) | 90 | `result-track:cc9da14255cdec1d486c1449dd482fe55649bb7fd907298568cba28e8d3a25df` |
| 6 | `lemma` | [parallelProd_posterior_comp_copy_comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/parallelprod-posterior-comp-copy-comp--749a04a8dc17cbcf6051a595.md) | 99 | `result-track:749a04a8dc17cbcf6051a59580a1b831ccdefd8e0361503f4e85b76670e8a735` |
| 7 | `lemma` | [posterior_prod_id_comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/posterior-prod-id-comp--a4c751d23ca54a0bcedf6ef1.md) | 111 | `result-track:a4c751d23ca54a0bcedf6ef1e9040367525d8d7caff9dfb6280e77038527da1d` |
| 8 | `lemma` | [ae_eq_posterior_of_compProd_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/ae-eq-posterior-of-compprod-eq--6c179400a3f5cf20ff67d577.md) | 116 | `result-track:6c179400a3f5cf20ff67d577cd33fa36380eb5d27cfc289d9010f044b6f2c894` |
| 9 | `lemma` | [ae_eq_posterior_of_compProd_eq_swap_comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/ae-eq-posterior-of-compprod-eq-swap-comp--6717d1c26b95ab644a9575cb.md) | 122 | `result-track:6717d1c26b95ab644a9575cb396184de4c390403fa2b119b65809e031bdcff64` |
| 10 | `lemma` | [posterior_comp_self](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/posterior-comp-self--b283062a1e9d0fa627f3ca05.md) | 128 | `result-track:b283062a1e9d0fa627f3ca05e8127a576ceaab7752fe5e04c93df44213d0a774` |
| 11 | `lemma` | [posterior_id](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/posterior-id--cdf3c470507af45644d9b5cf.md) | 133 | `result-track:cdf3c470507af45644d9b5cf0bd85e28f088007c15ff2bf4694db1ace749d3f9` |
| 12 | `lemma` | [deterministic_comp_posterior](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/deterministic-comp-posterior--d6ca90a5ed46cfdf0e6fef70.md) | 141 | `result-track:d6ca90a5ed46cfdf0e6fef70a7820842937ba84aecd3afaad2129f16a267f45b` |
| 13 | `lemma` | [absolutelyContinuous_posterior](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/absolutelycontinuous-posterior--909488d5eeca4dc24224dec2.md) | 163 | `result-track:909488d5eeca4dc24224dec2d4ba38f959d4b52a08ecb036082f531a988470da` |
| 14 | `lemma` | [posterior_posterior](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/posterior-posterior--b897bde0740f2eb7a3acb6dc.md) | 180 | `result-track:b897bde0740f2eb7a3acb6dccf037ec411feec6293486f52d21f368a1bd94a06` |
| 15 | `lemma` | [posterior_comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/posterior-comp--0fa5e62e3dd2d3672c0e2cba.md) | 189 | `result-track:0fa5e62e3dd2d3672c0e2cba7eed9998b9720e59732731fd8b529fe593bf4fd1` |
| 16 | `lemma` | [absolutelyContinuous_of_posterior](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/absolutelycontinuous-of-posterior--bf58d5ff39e7e216c3f408b9.md) | 215 | `result-track:bf58d5ff39e7e216c3f408b98b265d63f3ea7532847de64c721aa5a8f2896b8f` |
| 17 | `lemma` | [absolutelyContinuous_posterior_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/absolutelycontinuous-posterior-iff--c9d0d089baf601f506db0d26.md) | 227 | `result-track:c9d0d089baf601f506db0d263610257b22d2490b218a7531c1702756afa74f4f` |
| 18 | `lemma` | [Kernel.absolutelyContinuous_comp_of_absolutelyContinuous](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/kernel-absolutelycontinuous-comp-of-absolutelycontinuous--396dbeacb275f5c0debac95e.md) | 230 | `result-track:396dbeacb275f5c0debac95ef3d0804db9fce535d5d3606dd894969bffa00fd2` |
| 19 | `lemma` | [rnDeriv_posterior_ae_prod](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/rnderiv-posterior-ae-prod--135581c18e3b0dcc87eba846.md) | 236 | `result-track:135581c18e3b0dcc87eba8466dc59dc6098061fa17a64cd7e4335420fc66da25` |
| 20 | `lemma` | [rnDeriv_posterior](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/rnderiv-posterior--c63bdefaa18b023c2334ec6b.md) | 271 | `result-track:c63bdefaa18b023c2334ec6b069ce9150ebb9e7ff4f9671be7bb31038bc46536` |
| 21 | `lemma` | [rnDeriv_posterior_symm](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/rnderiv-posterior-symm--e3f9ddf91853ca7a63aa8943.md) | 276 | `result-track:e3f9ddf91853ca7a63aa89431a79e1b701df26fef5a505acec5a65cbdd1f192d` |
| 22 | `lemma` | [posterior_eq_withDensity](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantae406b81ad7cad150c5fc0475ac913351373491fa194d2839779d6b98b67cbf0.lean/declarations/posterior-eq-withdensity--efac2cf584a8dab3dec2c09b.md) | 287 | `result-track:efac2cf584a8dab3dec2c09b00a5705cf0aa93159f219f2cb3e723ccfc2b0877` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
