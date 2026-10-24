# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c7bd9f068426e9aed5c1e9dd75fb78f3cd976f1",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c7bd9f068426e9aed5c1e9dd75fb78f3cd976f1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/tolist--890c771f15be9ed67dc52d5c.md) | 41 | `declaration-track:890c771f15be9ed67dc52d5c8b7bb6f6e42b97f2a2803e895e4ae2c9c7ba350b` |
| 2 | `theorem` | [coe_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/coe-tolist--bd78cb54ec12415fc57dac27.md) | 45 | `result-track:bd78cb54ec12415fc57dac27a98e426f6f467f20ace8044f836b8c4148d79618` |
| 3 | `theorem` | [toList_eq_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/tolist-eq-nil--38bbe0631b25a35ea815d236.md) | 49 | `result-track:38bbe0631b25a35ea815d236fa2f6cd50d2b225e30a262da71f20e6d0a6fd802` |
| 4 | `theorem` | [empty_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/empty-tolist--7938e59bbff8d6ec73bbe9b8.md) | 52 | `result-track:7938e59bbff8d6ec73bbe9b8f7dc4c487d77684ed7f59474f0f912f77845b7b7` |
| 5 | `theorem` | [toList_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/tolist-zero--411abadfcaaf1183a594097e.md) | 55 | `result-track:411abadfcaaf1183a594097ef433e82a3bef20c2c25df7ceb555ac88b696e972` |
| 6 | `theorem` | [mem_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/mem-tolist--9ab70cbbebe4aca20f46a9b6.md) | 59 | `result-track:9ab70cbbebe4aca20f46a9b693ca33dcc0dadc0955893cdcdcbf9e35e24b3b2d` |
| 7 | `theorem` | [toList_eq_singleton_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/tolist-eq-singleton-iff--deb38597bb1e4ea7d79f6708.md) | 63 | `result-track:deb38597bb1e4ea7d79f670886e418965463db2b029b14edb37555a33ea54182` |
| 8 | `theorem` | [toList_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/tolist-singleton--5d1e53505622205f9596010e.md) | 67 | `result-track:5d1e53505622205f9596010ed4ade91085ff19f77b73e5fbeaa05ea7bf86a59c` |
| 9 | `theorem` | [length_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/length-tolist--2fb8e1f7a35226c507d60a3b.md) | 71 | `result-track:2fb8e1f7a35226c507d60a3b2587c2dcdcc7d13df16c80713381a099740bb897` |
| 10 | `def` | [strongInductionOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/stronginductionon--ad3944c71a6af8aadc8738a0.md) | 80 | `declaration-track:ad3944c71a6af8aadc8738a09230e457cc3a259219bf40d96c4f29039aa60259` |
| 11 | `theorem` | [strongInductionOn_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/stronginductionon-eq--9f345805958068fdc1dd2282.md) | 87 | `result-track:9f345805958068fdc1dd2282ffcc7e260b9530c02bff7ceecd1453eb40eb6900` |
| 12 | `theorem` | [case_strongInductionOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/case-stronginductionon--fb6541867e6e861ec7d8e7ab.md) | 92 | `result-track:fb6541867e6e861ec7d8e7abda1e1fa004b3fd3f83942a85886a53ae60bd9585` |
| 13 | `def` | [strongDownwardInduction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/strongdownwardinduction--00482f7c76a3cabe4508d82e.md) | 102 | `declaration-track:00482f7c76a3cabe4508d82e6c9775b50cdfba3a55d4a761fd74f9f49607a825` |
| 14 | `theorem` | [strongDownwardInduction_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/strongdownwardinduction-eq--7144b4f6816fd1b6b2beba41.md) | 111 | `result-track:7144b4f6816fd1b6b2beba41080651bf2333d132fba58a520469dd7e90455e82` |
| 15 | `def` | [strongDownwardInductionOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/strongdownwardinductionon--13092d826355705a16f3e004.md) | 119 | `declaration-track:13092d826355705a16f3e0042d27d849efeb0b649293f2d1ade165321dbe34d2` |
| 16 | `theorem` | [strongDownwardInductionOn_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/strongdownwardinductionon-eq--b9aca5a125517fb341a0eb24.md) | 125 | `result-track:b9aca5a125517fb341a0eb24afed1134e18fbd55d4bcc882dbfdfd46e976a9a8` |
| 17 | `def` | [chooseX](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/choosex--05a5f21834ba79a808794568.md) | 137 | `declaration-track:05a5f21834ba79a80879456807e8bfa7f8d568e3e88c91990b3589c15f04a739` |
| 18 | `def` | [choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/choose--6ee26ad300873ca69f76ca91.md) | 153 | `declaration-track:6ee26ad300873ca69f76ca917ad170d4be7c5b841ca8feb160ecdd3ab58a1f93` |
| 19 | `theorem` | [choose_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/choose-spec--8db3a845833b751876562c0c.md) | 156 | `result-track:8db3a845833b751876562c0c9d7a50e9414f1e1a49706ee351cc53213f5e820f` |
| 20 | `theorem` | [choose_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/choose-mem--c2019a93e2f49aabe1675663.md) | 159 | `result-track:c2019a93e2f49aabe16756636bc4413c321b64f5fd46129160cf86dbf24e8714` |
| 21 | `theorem` | [choose_property](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/choose-property--7296a50ed88c58cebf623183.md) | 162 | `result-track:7296a50ed88c58cebf623183d5028e173e20d106d57de9b5919406f4a5de9702` |
| 22 | `theorem` | [choose_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/choose-eq-iff--5c4da95c3d0bd570d8839f55.md) | 165 | `result-track:5c4da95c3d0bd570d8839f55c61ad17030e57c649618803c355761d8b4ed07da` |
| 23 | `def` | [subsingletonEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/subsingletonequiv--9eb6486ad0fcbd6fc2a6db43.md) | 172 | `declaration-track:9eb6486ad0fcbd6fc2a6db433fce0daa48ac4a3e9fc9ecb03de664843e416db7` |
| 24 | `theorem` | [coe_subsingletonEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantd2cc264ca60c3accfecc93176ff2df3f9ebcfdb81f04e2263cdf10480dacf9b0.lean/declarations/coe-subsingletonequiv--5f3b8ea918ea9762b39b3b80.md) | 180 | `result-track:5f3b8ea918ea9762b39b3b80eb864d6e9b80e1cdac95db0b08a01307d9f0f0c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
