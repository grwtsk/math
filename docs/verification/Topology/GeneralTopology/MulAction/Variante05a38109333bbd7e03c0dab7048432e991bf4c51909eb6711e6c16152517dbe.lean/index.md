# Verification target: GRWTSK.Topology.GeneralTopology.MulAction.Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "134113ff690bb9685970d79c1bab63af9cecc7b7",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `134113ff690bb9685970d79c1bab63af9cecc7b7`.

Source path: `GRWTSK/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/continuoussmul--41ab087e0705b1e126ecf916.md) | 46 | `declaration-track:41ab087e0705b1e126ecf9168b0465d7b231f6fdd893adf81b3642c933696b64` |
| 2 | `class` | [ContinuousVAdd](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/continuousvadd--7ae75ab91c0817adbc134759.md) | 56 | `declaration-track:7ae75ab91c0817adbc1347590fdd1e4eeada42795a6ad16f4b2d5dc101225541` |
| 3 | `lemma` | [IsScalarTower.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/isscalartower-continuoussmul--78ba8a02de279b789bf923e6.md) | 75 | `result-track:78ba8a02de279b789bf923e63a0039bf619b1a82714170d63bfed58235f4f85f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/instance--dcf861fa6923285050636ee8.md) | 83 | `declaration-track:dcf861fa6923285050636ee87fac9c7b01883c2aa8cedae4a7d4d5aea16e6735` |
| 5 | `instance` | [OrderDual.instContinuousSMul_right](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/orderdual-instcontinuoussmul-right--b2e920b54a791b40c6b4ef84.md) | 87 | `declaration-track:b2e920b54a791b40c6b4ef841206f1eae060dff061e7753c05c17a677d9de6f6` |
| 6 | `instance` | [OrderDual.instContinuousSMul_left](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/orderdual-instcontinuoussmul-left--ce51ef599100bdb5b876e4f2.md) | 91 | `declaration-track:ce51ef599100bdb5b876e4f27043b7b7494c9c35d80284683eaa3bc601b65fa0` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/instance--595c28e231bdc77682638fa0.md) | 95 | `declaration-track:595c28e231bdc77682638fa0e1ea61382cf3f5249adbb44e8061745a6ea07b79` |
| 8 | `theorem` | [ContinuousSMul.induced](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/continuoussmul-induced--f8713a03fa51a7f567a0552e.md) | 98 | `result-track:f8713a03fa51a7f567a0552e258ec7e05436ca21979d5c2e73d3f4d267e0ec84` |
| 9 | `theorem` | [Filter.Tendsto.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/filter-tendsto-smul--fe61dc3e13471431e5f037b0.md) | 108 | `result-track:fe61dc3e13471431e5f037b05468bde74ff6bb55ff1a40ccabf94b5e8430858b` |
| 10 | `theorem` | [Filter.Tendsto.smul_const](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/filter-tendsto-smul-const--9a3a871bae407872dab7c073.md) | 114 | `result-track:9a3a871bae407872dab7c073ccddb64d903d09ccb3ce6373d30766b57d395554` |
| 11 | `theorem` | [ContinuousWithinAt.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/continuouswithinat-smul--1e22689b1292d51b2ee1769c.md) | 121 | `result-track:1e22689b1292d51b2ee1769c20cab2187f60cc7207e87cb7665ef4dd902dee63` |
| 12 | `theorem` | [ContinuousAt.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/continuousat-smul--a0e37b758771716f987001d2.md) | 126 | `result-track:a0e37b758771716f987001d290e2d7ab5951c2901e7accbe72668b117397ec63` |
| 13 | `theorem` | [ContinuousOn.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/continuouson-smul--5cc2607b42de465e43a80555.md) | 131 | `result-track:5cc2607b42de465e43a80555bf3a23ee0ccc5a283167fce659e5de2820cb9597` |
| 14 | `theorem` | [Continuous.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/continuous-smul--e7efee7b58b531bfe886d927.md) | 135 | `result-track:e7efee7b58b531bfe886d927aed5b9f8fe743cc7d6100d0f18537935b11cd1fd` |
| 15 | `instance` | [ContinuousSMul.op](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/continuoussmul-op--390b09343085dedb5facd592.md) | 141 | `declaration-track:390b09343085dedb5facd59253b551809fdfe701167f5c7a525f78de9c2ed684` |
| 16 | `instance` | [MulOpposite.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/mulopposite-continuoussmul--5e948baf4f4acb14bae9f413.md) | 148 | `declaration-track:5e948baf4f4acb14bae9f4139c31e49fbc4734609961a17ebafad2cab8f0207e` |
| 17 | `theorem` | [Specializes.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/specializes-smul--9273cbdabf9d4a8082249cba.md) | 153 | `result-track:9273cbdabf9d4a8082249cba7e8e8e7074e9a9b3db5dd4012016e7f519052be8` |
| 18 | `theorem` | [Inseparable.smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/inseparable-smul--92bd4f6846ada612af85f47d.md) | 158 | `result-track:92bd4f6846ada612af85f47d2ab1c18a31d71a3a6d28e2060c51dd0f9bdc3aa8` |
| 19 | `lemma` | [IsCompact.smul_set](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/iscompact-smul-set--9813d142a1f571609b76263e.md) | 163 | `result-track:9813d142a1f571609b76263e1b70ee9606e31359650026e2683e3312a3e1c7d2` |
| 20 | `lemma` | [smul_set_closure_subset](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/smul-set-closure-subset--a2e90296ea8c31f16db6c135.md) | 169 | `result-track:a2e90296ea8c31f16db6c1356cfa597ee4a667cafa3761b244443de3955493b1` |
| 21 | `lemma` | [Topology.IsInducing.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/topology-isinducing-continuoussmul--6c71beb13225d886892f918f.md) | 189 | `result-track:6c71beb13225d886892f918f0cfa140045c070b010c2e1b5e3b39f3f790ec74e` |
| 22 | `instance` | [SMulMemClass.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/smulmemclass-continuoussmul--46ee0b112fa685040f241c87.md) | 197 | `declaration-track:46ee0b112fa685040f241c8794be4bb09a04ce68ed2a2e3516a9dd5de3c8ca53` |
| 23 | `theorem` | [Filter.Tendsto.smul_zero](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/filter-tendsto-smul-zero--998c1783e94d93bc2bfd5e10.md) | 207 | `result-track:998c1783e94d93bc2bfd5e10628e0f7f3689b28eba4cb70d703954a35912a5c2` |
| 24 | `theorem` | [Filter.Tendsto.zero_smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/filter-tendsto-zero-smul--bcaa35d304d28724fc4e0995.md) | 218 | `result-track:bcaa35d304d28724fc4e0995d95fd3fdeef743f3663416ad07670dfbada064f7` |
| 25 | `theorem` | [Filter.Tendsto.zero_smul_const](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/filter-tendsto-zero-smul-const--9e51c4b5a3bc4cc4740a2eb1.md) | 223 | `result-track:9e51c4b5a3bc4cc4740a2eb1975eee88b4a32875e809cb9b12261c28866362aa` |
| 26 | `theorem` | [Filter.Tendsto.one_smul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/filter-tendsto-one-smul--a568bcbe8551ab4d96309298.md) | 235 | `result-track:a568bcbe8551ab4d9630929822bf29bee3a72aa5b5ecac2cd5e06eeb3e5d7fb0` |
| 27 | `theorem` | [Filter.Tendsto.one_smul_const](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/filter-tendsto-one-smul-const--089d3ffc47e419b7b54d98df.md) | 241 | `result-track:089d3ffc47e419b7b54d98dfcd783f7d81e42f55cfde587f5deed8002de9235d` |
| 28 | `instance` | [Units.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/units-continuoussmul--cc7016f1814007e77ff3342d.md) | 246 | `declaration-track:cc7016f1814007e77ff3342ddce7f2c30c33c7bb29b46857099e6a21d70b08d6` |
| 29 | `theorem` | [MulAction.continuousSMul_compHom](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/mulaction-continuoussmul-comphom--ea5d31b2d10cbc533c0125b8.md) | 253 | `result-track:ea5d31b2d10cbc533c0125b84dc5aed1009c722a697b20a55137c964d39f9a71` |
| 30 | `instance` | [Submonoid.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/submonoid-continuoussmul--3fef92df5fca61e2f99ad703.md) | 261 | `declaration-track:3fef92df5fca61e2f99ad703951e3fb7271a6188ba9056e1c56ab2161ed4bb73` |
| 31 | `instance` | [Subgroup.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/subgroup-continuoussmul--3adc1d9c6e04e3de26c8f496.md) | 271 | `declaration-track:3adc1d9c6e04e3de26c8f496ef04154661810896c14dae3ce0eb4b3bceb25795` |
| 32 | `lemma` | [stabilizer_isOpen](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/stabilizer-isopen--9f8a3bc3617f84139b516094.md) | 277 | `result-track:9f8a3bc3617f84139b5160947e96b250c5f6c3759753ab995b433472a08a99ef` |
| 33 | `theorem` | [continuousSMul_iff_stabilizer_isOpen](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/continuoussmul-iff-stabilizer-isopen--a73fefe20a3a12f82af78171.md) | 288 | `result-track:a73fefe20a3a12f82af78171a18bf2ba4ac0261651051c62b74d4390aeabf20d` |
| 34 | `theorem` | [Set.univ_smul_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/set-univ-smul-nhds-zero--5fe89a7a7e20abaa5487c05d.md) | 311 | `result-track:5fe89a7a7e20abaa5487c05d0a2ebb519e65705feb8668896da1090203e6c66c` |
| 35 | `theorem` | [Filter.top_smul_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/filter-top-smul-nhds-zero--a96b4bea2d53ccfa488f4f7e.md) | 322 | `result-track:a96b4bea2d53ccfa488f4f7e4a2b65e230018d70d1421c9ac8a63401d3238a47` |
| 36 | `instance` | [Prod.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/prod-continuoussmul--e7e29f2c4ace697a25cbf987.md) | 330 | `declaration-track:e7e29f2c4ace697a25cbf9876882400cecaaa45782601e6d0ba6f1f89205a1b0` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/instance--cddac70f464cfece5f3558e8.md) | 336 | `declaration-track:cddac70f464cfece5f3558e890c28080d37e5a31323233c6ef5c25b356933d1d` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/instance--d6936eb3a3c72acc194a8804.md) | 343 | `declaration-track:d6936eb3a3c72acc194a88046dbb27fa4188ce1dc70a918627527a305b7cc17e` |
| 39 | `theorem` | [continuousSMul_sInf](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/continuoussmul-sinf--fc953748c571f9c011439430.md) | 356 | `result-track:fc953748c571f9c0114394304ff8a42402dafba852b651c2270bb0a3f0912f36` |
| 40 | `theorem` | [continuousSMul_iInf](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/continuoussmul-iinf--f1ac8c485d568741208495fb.md) | 368 | `result-track:f1ac8c485d568741208495fb9cc20dadfab0b160604f8877f4c665e9937ac577` |
| 41 | `theorem` | [continuousSMul_inf](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/continuoussmul-inf--27c655686dd508190480faec.md) | 374 | `result-track:27c655686dd508190480faec1fc6806a8d491503687aafd1ba2cc2cdd43f1a74` |
| 42 | `theorem` | [AddTorsor.connectedSpace](../../../../../mathematics/Topology/GeneralTopology/MulAction/Variante05a38109333bbd7e03c0dab7048432e991bf4c51909eb6711e6c16152517dbe.lean/declarations/addtorsor-connectedspace--6c98ae0b6b134c2829a34c46.md) | 390 | `result-track:6c98ae0b6b134c2829a34c46e1b2181ee3f7ab06292f0e86db74ae1041add5fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
