# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Posterior.Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03273580dc27c3d7c03e7c9366ca8788193c6dac",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03273580dc27c3d7c03e7c9366ca8788193c6dac`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.CompProdEqIff` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Disintegration.StandardBorel` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [posterior](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/posterior--d4c768b598838a804e213d59.md) | 65 | `declaration-track:d4c768b598838a804e213d59fb1f911e61bd75f9683858db4e507819f8df5164` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/instance--7fc7cfbc20f9cfc9656b3c0e.md) | 73 | `declaration-track:7fc7cfbc20f9cfc9656b3c0e60f03f73e811c5853a426c6157bb62d77708382a` |
| 3 | `lemma` | [compProd_posterior_eq_map_swap](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/compprod-posterior-eq-map-swap--008fb1ee2cdce8480c75b000.md) | 76 | `result-track:008fb1ee2cdce8480c75b0005497b7979c7432851b4d7e8774c8251eacf65050` |
| 4 | `lemma` | [compProd_posterior_eq_swap_comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/compprod-posterior-eq-swap-comp--0c70628462ef90a4e0381c5c.md) | 79 | `result-track:0c70628462ef90a4e0381c5c7516fb4830347d9c1d5bbc163045b3e270a6af4a` |
| 5 | `lemma` | [swap_compProd_posterior](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/swap-compprod-posterior--a120b65a02995a75d5d57022.md) | 82 | `result-track:a120b65a02995a75d5d57022307b4bef0f36dcb99d1751fbad259b9288dc0260` |
| 6 | `lemma` | [parallelProd_posterior_comp_copy_comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/parallelprod-posterior-comp-copy-comp--b43bd144310c22f94c1036aa.md) | 91 | `result-track:b43bd144310c22f94c1036aae871a5eae314c856857860babde11c36b325ee57` |
| 7 | `lemma` | [posterior_prod_id_comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/posterior-prod-id-comp--67ce04603de2a8973b4c2468.md) | 103 | `result-track:67ce04603de2a8973b4c246893c0e4df9cee0855ba32395d5f124fcf52ac2d1a` |
| 8 | `lemma` | [ae_eq_posterior_of_compProd_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/ae-eq-posterior-of-compprod-eq--76d0dfb7cb27bd1c60695366.md) | 108 | `result-track:76d0dfb7cb27bd1c6069536641d39061e6b8ca344f79dea1def73fc24d5e796b` |
| 9 | `lemma` | [ae_eq_posterior_of_compProd_eq_swap_comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/ae-eq-posterior-of-compprod-eq-swap-comp--61cba6d6c6d0d094cbcb7492.md) | 114 | `result-track:61cba6d6c6d0d094cbcb7492019aff1abddadfc820130b3d4e1c0af96e877085` |
| 10 | `lemma` | [posterior_comp_self](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/posterior-comp-self--8c3f7a1f68592c484edac930.md) | 120 | `result-track:8c3f7a1f68592c484edac930e43c55964cd44aaf4aa0bb228e35278c1000e97f` |
| 11 | `lemma` | [posterior_id](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/posterior-id--99c55f331488104b25f6469f.md) | 125 | `result-track:99c55f331488104b25f6469f58fa04715230929fcac6309873e008426277bae8` |
| 12 | `lemma` | [deterministic_comp_posterior](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/deterministic-comp-posterior--0ac91a08dbb369cd5eba7f8e.md) | 133 | `result-track:0ac91a08dbb369cd5eba7f8e3626aae3b564363535ca4f4642f97964b07bee93` |
| 13 | `lemma` | [absolutelyContinuous_posterior](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/absolutelycontinuous-posterior--69c4cab7d5f6c29d15df30d9.md) | 155 | `result-track:69c4cab7d5f6c29d15df30d92ad7d0529683923e14a2f402171cc067444bbb5c` |
| 14 | `lemma` | [posterior_posterior](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/posterior-posterior--de4cf4482e55f7fa275bcbc7.md) | 172 | `result-track:de4cf4482e55f7fa275bcbc74b4fb7a9e149741b09cb3029fe8fba13a65ac0da` |
| 15 | `lemma` | [posterior_comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/posterior-comp--2eab1603e0921b5981a2ef2b.md) | 181 | `result-track:2eab1603e0921b5981a2ef2bbe3f3b53da09f83d6642dfdaf5b6ab0498497aac` |
| 16 | `lemma` | [absolutelyContinuous_of_posterior](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/absolutelycontinuous-of-posterior--5853c5ec02c6ebfba55492b6.md) | 207 | `result-track:5853c5ec02c6ebfba55492b69ad2a2fbecd2ccce7fb080613e02fefa9d1cc0ab` |
| 17 | `lemma` | [absolutelyContinuous_posterior_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/absolutelycontinuous-posterior-iff--f0c96514e527574f9eec239a.md) | 219 | `result-track:f0c96514e527574f9eec239a2eba77ff24a6cb29c18bce329be957ce8b563ee4` |
| 18 | `lemma` | [Kernel.absolutelyContinuous_comp_of_absolutelyContinuous](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/kernel-absolutelycontinuous-comp-of-absolutelycontinuous--9621beb02d44cded2ef9cc29.md) | 222 | `result-track:9621beb02d44cded2ef9cc29487c1a202f304dbfe17c25a9d6a1aa4d1a6ca14f` |
| 19 | `lemma` | [rnDeriv_posterior_ae_prod](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/rnderiv-posterior-ae-prod--995cbffac2fd05c36dd206b1.md) | 228 | `result-track:995cbffac2fd05c36dd206b1b4e334b5d1b2a902eef242a15c0da79ed2ae1599` |
| 20 | `lemma` | [rnDeriv_posterior](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/rnderiv-posterior--ae7706b7643a4a8ddbb59532.md) | 263 | `result-track:ae7706b7643a4a8ddbb59532432a503fff2b31c9ea99f81cf11d235026c47a0a` |
| 21 | `lemma` | [rnDeriv_posterior_symm](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/rnderiv-posterior-symm--d45b53c172ccbc5c2729b781.md) | 268 | `result-track:d45b53c172ccbc5c2729b781182c8b9778659808ee968998ac34b7260df8af12` |
| 22 | `lemma` | [posterior_eq_withDensity](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variantacc626bbc00a3409392b717232867ff087fa03e6a27aa107b69ad865fa270769.lean/declarations/posterior-eq-withdensity--7061d8d11b18847bb057fa39.md) | 279 | `result-track:7061d8d11b18847bb057fa39b0676b483dc86cfb2d5f26dbbc5120b1d99b73f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
