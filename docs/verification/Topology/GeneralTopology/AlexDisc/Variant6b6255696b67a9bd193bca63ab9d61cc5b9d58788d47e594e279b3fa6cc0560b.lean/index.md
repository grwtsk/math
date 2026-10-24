# Verification target: GRWTSK.Topology.GeneralTopology.AlexDisc.Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb12603e8f0aa55c3fca6f75da277b289617fe4a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AlexDisc/Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/AlexDisc/Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/AlexDisc/Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb12603e8f0aa55c3fca6f75da277b289617fe4a`.

Source path: `GRWTSK/Topology/GeneralTopology/AlexDisc/Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AlexDisc/Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Specialization` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AlexDisc](../../../../../mathematics/Topology/GeneralTopology/AlexDisc/Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b.lean/declarations/alexdisc--b07cf1d3566e80a733d28774.md) | 26 | `declaration-track:b07cf1d3566e80a733d287741ee39267fcf8213ca8bb6322485500c1001b5194` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/AlexDisc/Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b.lean/declarations/instance--9107631307674ad271a5ba57.md) | 33 | `declaration-track:9107631307674ad271a5ba57453c02101c0005c1da2caaa69e4515311f8f0f89` |
| 3 | `instance` | [category](../../../../../mathematics/Topology/GeneralTopology/AlexDisc/Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b.lean/declarations/category--7009eec58f96986c4b0c0a4a.md) | 36 | `declaration-track:7009eec58f96986c4b0c0a4a910caa0fffd139acddc0d89be14292a733bf9f90` |
| 4 | `instance` | [concreteCategory](../../../../../mathematics/Topology/GeneralTopology/AlexDisc/Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b.lean/declarations/concretecategory--c129a6941ac4c8dfa87b84bc.md) | 39 | `declaration-track:c129a6941ac4c8dfa87b84bcf4fb9611c7370a0dc65dccbaf8a926bc6fe6daca` |
| 5 | `instance` | [instHasForgetToTop](../../../../../mathematics/Topology/GeneralTopology/AlexDisc/Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b.lean/declarations/insthasforgettotop--e8762bbbe8f9ead3998fa8f9.md) | 42 | `declaration-track:e8762bbbe8f9ead3998fa8f9d0ec3d9cfca3c0fdd6c12ea7dde0f5184b1bddb7` |
| 6 | `instance` | [forgetToTop_full](../../../../../mathematics/Topology/GeneralTopology/AlexDisc/Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b.lean/declarations/forgettotop-full--be7b459d187ab20393b065be.md) | 45 | `declaration-track:be7b459d187ab20393b065bedd09e5f9e570b30372191af6d1be63740b92c5ad` |
| 7 | `instance` | [forgetToTop_faithful](../../../../../mathematics/Topology/GeneralTopology/AlexDisc/Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b.lean/declarations/forgettotop-faithful--fb497c3131f3cfce626bfe40.md) | 48 | `declaration-track:fb497c3131f3cfce626bfe40ad9edffe56111d9aef25608e268a1cd1dc6d511d` |
| 8 | `abbrev` | [of](../../../../../mathematics/Topology/GeneralTopology/AlexDisc/Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b.lean/declarations/of--a897ecccf1af4db81f9c840c.md) | 51 | `declaration-track:a897ecccf1af4db81f9c840cceae8924c142d9927ea4ad1f6ab623018af2c16d` |
| 9 | `lemma` | [coe_of](../../../../../mathematics/Topology/GeneralTopology/AlexDisc/Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b.lean/declarations/coe-of--601c8dd261cd353d36a63648.md) | 54 | `result-track:601c8dd261cd353d36a63648938cb322e9597602b9928e23babd78880bc1816a` |
| 10 | `lemma` | [forgetToTop_of](../../../../../mathematics/Topology/GeneralTopology/AlexDisc/Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b.lean/declarations/forgettotop-of--13372556d19a44858d36aafe.md) | 56 | `result-track:13372556d19a44858d36aafe3495bfd8068d6e706cc7d6fd2b8d5b8309ec9a72` |
| 11 | `lemma` | [coe_forgetToTop](../../../../../mathematics/Topology/GeneralTopology/AlexDisc/Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b.lean/declarations/coe-forgettotop--d5b297b354a0c5ba38f12261.md) | 59 | `result-track:d5b297b354a0c5ba38f12261e5baf8d3ad62d6ec557b3e17ae71ef27f6ab095d` |
| 12 | `def` | [Iso.mk](../../../../../mathematics/Topology/GeneralTopology/AlexDisc/Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b.lean/declarations/iso-mk--04242e7ff7491ccb7ea6c597.md) | 63 | `declaration-track:04242e7ff7491ccb7ea6c5979e9919df2528577e23591f0e4f85f437cfbf96d7` |
| 13 | `def` | [alexDiscEquivPreord](../../../../../mathematics/Topology/GeneralTopology/AlexDisc/Variant6b6255696b67a9bd193bca63ab9d61cc5b9d58788d47e594e279b3fa6cc0560b.lean/declarations/alexdiscequivpreord--2555e20caa9c110786cf12bd.md) | 73 | `declaration-track:2555e20caa9c110786cf12bd8f5cee4f3415e329a879b79ddaf27dd51daa3fae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
