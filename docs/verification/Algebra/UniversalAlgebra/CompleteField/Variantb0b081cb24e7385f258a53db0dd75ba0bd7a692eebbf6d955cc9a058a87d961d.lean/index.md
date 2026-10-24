# Verification target: GRWTSK.Algebra.UniversalAlgebra.CompleteField.Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a61553b1647d62ed3851ec8a2143a7af262ac4f",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a61553b1647d62ed3851ec8a2143a7af262ac4f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Pointwise.CompleteLattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ConditionallyCompleteLinearOrderedField](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/conditionallycompletelinearorderedfield--ffb5f0f1c8b5ce49c01f963b.md) | 63 | `declaration-track:ffb5f0f1c8b5ce49c01f963bcec8d89a961e60131ba8bd47a00cc9680ceab008` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/instance--d886cf1f99beb027e23061e6.md) | 74 | `declaration-track:d886cf1f99beb027e23061e6992b1a424335c8449236d6ddc7f6346581b34d68` |
| 3 | `def` | [cutMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/cutmap--c622e6fc0070bd61bf6fc4a8.md) | 106 | `declaration-track:c622e6fc0070bd61bf6fc4a8b11184fec0f9b53978872adbf1c9e84ac7a84e77` |
| 4 | `theorem` | [cutMap_mono](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/cutmap-mono--d44d324b736b6bd9cf8bbd9f.md) | 109 | `result-track:d44d324b736b6bd9cf8bbd9f6859463add26153f1220fa55e7028e613b0ca27b` |
| 5 | `theorem` | [mem_cutMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/mem-cutmap-iff--b64cacc0646bcd82705437e3.md) | 114 | `result-track:b64cacc0646bcd82705437e346752ac3bba7e2a1c8e9e106d44654a47e9db086` |
| 6 | `theorem` | [coe_mem_cutMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/coe-mem-cutmap-iff--3c802bffae616d5b649a8366.md) | 116 | `result-track:3c802bffae616d5b649a83661d1d39143e1a4cb3810a7c1584acab6a60a8a1a0` |
| 7 | `theorem` | [cutMap_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/cutmap-self--8a7cec30e46b8ec4f780ca89.md) | 119 | `result-track:8a7cec30e46b8ec4f780ca89898929236e910084c34a04b01d6660772003e60b` |
| 8 | `theorem` | [cutMap_coe](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/cutmap-coe--5305cd0af8d728b23d904fc0.md) | 132 | `result-track:5305cd0af8d728b23d904fc043ed9a81217000e9cd3858e70c0a85afa82fee06` |
| 9 | `theorem` | [cutMap_nonempty](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/cutmap-nonempty--539c09438f6c03d7b1ab9bc4.md) | 138 | `result-track:539c09438f6c03d7b1ab9bc4679e433873a0c54e32a32514a3b236d65f8a7b41` |
| 10 | `theorem` | [cutMap_bddAbove](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/cutmap-bddabove--4b624e5afd7ebf6e0265efaa.md) | 141 | `result-track:4b624e5afd7ebf6e0265efaab195714800266bca09891b187f36b1eff3742b46` |
| 11 | `theorem` | [cutMap_add](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/cutmap-add--b8f7faff90d72e215ad14be0.md) | 145 | `result-track:b8f7faff90d72e215ad14be0d1b097233488495df911e4804556b2ceb873ad05` |
| 12 | `def` | [inducedMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/inducedmap--4500b1f4635c42117283b334.md) | 176 | `declaration-track:4500b1f4635c42117283b334ceb13b29a3422be6989d66f6ae68a626a6135376` |
| 13 | `theorem` | [inducedMap_mono](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/inducedmap-mono--26b0b70e60b9d99a28885142.md) | 181 | `result-track:26b0b70e60b9d99a28885142ca756fd84195a8004010b9cac2cf8db8162367be` |
| 14 | `theorem` | [inducedMap_rat](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/inducedmap-rat--3accc6dda06ba97c81f88e37.md) | 184 | `result-track:3accc6dda06ba97c81f88e37d14daa41484af6a4f74479902083ca2d1f79b9b6` |
| 15 | `theorem` | [inducedMap_zero](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/inducedmap-zero--2cd48e69c871d152a72cd002.md) | 195 | `result-track:2cd48e69c871d152a72cd00202ac8d61eca501656327bda572abc679b9cce4b7` |
| 16 | `theorem` | [inducedMap_one](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/inducedmap-one--9c203708fc7edea230ac09c4.md) | 198 | `result-track:9c203708fc7edea230ac09c46029ad71a34976dd033020e6581d538b4a42a640` |
| 17 | `theorem` | [inducedMap_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/inducedmap-nonneg--23bee4efb0b9ed943c95330c.md) | 202 | `result-track:23bee4efb0b9ed943c95330caa0799aeb9833a2f68ef126784ccde6428442cbd` |
| 18 | `theorem` | [coe_lt_inducedMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/coe-lt-inducedmap-iff--27467e3eedc009f96a3fc821.md) | 205 | `result-track:27467e3eedc009f96a3fc821aba10fb27d6c09706d7e9d365b6bd063de965ba8` |
| 19 | `theorem` | [lt_inducedMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/lt-inducedmap-iff--6a9a95e7736bd01f173d0480.md) | 213 | `result-track:6a9a95e7736bd01f173d04801a4dfd8ab9f2534274c8e389eda4f40281d60a9d` |
| 20 | `theorem` | [inducedMap_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/inducedmap-self--d24a9219e34bebe50ea9d72c.md) | 218 | `result-track:d24a9219e34bebe50ea9d72c1278406242ef0b3ce1fd3a318c9d0651884aa50a` |
| 21 | `theorem` | [inducedMap_inducedMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/inducedmap-inducedmap--544634af86ca54b81e7be51d.md) | 224 | `result-track:544634af86ca54b81e7be51d99cf042f59c3cce061fea1a402b1a746028eee77` |
| 22 | `theorem` | [inducedMap_inv_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/inducedmap-inv-self--1d4dbe77c76418e3b3c35fac.md) | 228 | `result-track:1d4dbe77c76418e3b3c35fac6b3369f9c0d5e05cadc2ee66efc152b1e6395448` |
| 23 | `theorem` | [inducedMap_add](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/inducedmap-add--81fec7adf945dd70fd65fda1.md) | 231 | `result-track:81fec7adf945dd70fd65fda1e751fec6e3ee77d2668737f6be1e06423a4f8f22` |
| 24 | `theorem` | [le_inducedMap_mul_self_of_mem_cutMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/le-inducedmap-mul-self-of-mem-cutmap--a13ea88e8ed4f066b3155d24.md) | 240 | `result-track:a13ea88e8ed4f066b3155d244e15f5eade312e08284edc12360c513fd825c52c` |
| 25 | `theorem` | [exists_mem_cutMap_mul_self_of_lt_inducedMap_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/exists-mem-cutmap-mul-self-of-lt-inducedmap-mul-self--bf396845b355a4215a2fd970.md) | 252 | `result-track:bf396845b355a4215a2fd970254ee4ef29067588361e39f2669b9b2dfaddb0be` |
| 26 | `def` | [inducedAddHom](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/inducedaddhom--14b66518f0caaa13653773bb.md) | 270 | `declaration-track:14b66518f0caaa13653773bb06b3a6708bf8114d2b26e629452002d0086794ad` |
| 27 | `def` | [inducedOrderRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/inducedorderringhom--0cbec92ede7214ca8ea51106.md) | 275 | `declaration-track:0cbec92ede7214ca8ea51106dd97259714d19d87c84b5664b9740ed26f578d9e` |
| 28 | `def` | [inducedOrderRingIso](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/inducedorderringiso--ac8231e4131052b16827220f.md) | 294 | `declaration-track:ac8231e4131052b16827220f56c9b4a155970f4194cd81c9fa78dac19ffec9f2` |
| 29 | `theorem` | [coe_inducedOrderRingIso](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/coe-inducedorderringiso--98d680ded8ca044508d14ccf.md) | 308 | `result-track:98d680ded8ca044508d14ccfec41f2064abc006d3823ed593696dc23b8130f6b` |
| 30 | `theorem` | [inducedOrderRingIso_symm](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/inducedorderringiso-symm--d9eae252384a0c6e828cd0be.md) | 311 | `result-track:d9eae252384a0c6e828cd0be2102e6ca44d6d0bf4953d0ce5ac354ad00d7345d` |
| 31 | `theorem` | [inducedOrderRingIso_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/inducedorderringiso-self--bc7868079cc61f543845eec6.md) | 314 | `result-track:bc7868079cc61f543845eec6f956283c351c2b50bed0b7ced4d0c1a49cae2eec` |
| 32 | `instance` | [uniqueOrderRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/uniqueorderringhom--e9f85e4b88ad11ff7d64f0ea.md) | 321 | `declaration-track:e9f85e4b88ad11ff7d64f0ea035e6348c5dfe68435f27d67366ad1de24759c15` |
| 33 | `instance` | [uniqueOrderRingIso](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/uniqueorderringiso--13881368ee35c40170179e4c.md) | 326 | `declaration-track:13881368ee35c40170179e4c90d3af93c4472a5a56c6b0445b6eea75b130d7b2` |
| 34 | `theorem` | [ringHom_monotone](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/declarations/ringhom-monotone--0abcfe23fae71692e2d8412e.md) | 338 | `result-track:0abcfe23fae71692e2d8412e835c654011812c7ee39eae891b30a0867f853b7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
