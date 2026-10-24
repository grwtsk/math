# Verification target: GRWTSK.Topology.GeneralTopology.CountableInter.Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1601a0e3596de19745e9424ad0ca967ae7d9c502",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1601a0e3596de19745e9424ad0ca967ae7d9c502`.

Source path: `GRWTSK/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Countable` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CountableInterFilter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/countableinterfilter--c2f5c1c815e9c800cc6cb1e1.md) | 38 | `declaration-track:c2f5c1c815e9c800cc6cb1e13332c1380ee215b76455d8430116bb274e49bcbe` |
| 2 | `theorem` | [countable_sInter_mem](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/countable-sinter-mem--19a7fff4cf7a2010267861da.md) | 45 | `result-track:19a7fff4cf7a2010267861da0f339734d434690e1d0e24249ea8ed9ead71ab90` |
| 3 | `theorem` | [countable_iInter_mem](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/countable-iinter-mem--9f26f2aaaed5aeaef01fa25e.md) | 50 | `result-track:9f26f2aaaed5aeaef01fa25e7924b0ddf5a335d89f054bd80020e23eefd0432a` |
| 4 | `theorem` | [countable_bInter_mem](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/countable-binter-mem--009ef91a7b7019c5e25a7d1f.md) | 54 | `result-track:009ef91a7b7019c5e25a7d1f01f5a422a65b4f76c0f5323c013dab224aa229ce` |
| 5 | `theorem` | [eventually_countable_forall](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/eventually-countable-forall--70fcbd85ef362ecf8618f62c.md) | 61 | `result-track:70fcbd85ef362ecf8618f62c4d21a6fbbb5d933d79258b1bce07acc0e36dd8d3` |
| 6 | `theorem` | [eventually_countable_ball](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/eventually-countable-ball--48ed6a2cf18c27aee34ec136.md) | 67 | `result-track:48ed6a2cf18c27aee34ec1368f2e98bd5d55cdd76c4ff86c987078d94c09a73b` |
| 7 | `theorem` | [EventuallyLE.countable_iUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/eventuallyle-countable-iunion--d4e502d7b9728bf5440d0e16.md) | 74 | `result-track:d4e502d7b9728bf5440d0e16adce9398b90678feaed9372e46d939123be550d7` |
| 8 | `theorem` | [EventuallyEq.countable_iUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/eventuallyeq-countable-iunion--e285c2d5bce2b417edd7ddce.md) | 79 | `result-track:e285c2d5bce2b417edd7ddcea220890c197e7326b784eb8ffb7b25f0e9076228` |
| 9 | `theorem` | [EventuallyLE.countable_bUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/eventuallyle-countable-bunion--25bd7004fde1cf727512efdb.md) | 85 | `result-track:25bd7004fde1cf727512efdb5cd99819ba0622926e48ba32a36d12e7d908d34f` |
| 10 | `theorem` | [EventuallyEq.countable_bUnion](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/eventuallyeq-countable-bunion--e1ce026d309b77e60ef7f10d.md) | 93 | `result-track:e1ce026d309b77e60ef7f10db6ad807d4208e0bb94200be3258e1b007857b0a4` |
| 11 | `theorem` | [EventuallyLE.countable_iInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/eventuallyle-countable-iinter--7a14e8d8e8e6bb07cbddc71c.md) | 100 | `result-track:7a14e8d8e8e6bb07cbddc71c0ba407b30138ffc7c4d0b4254347309495eb133d` |
| 12 | `theorem` | [EventuallyEq.countable_iInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/eventuallyeq-countable-iinter--92e6db25b71e71e2392760a1.md) | 106 | `result-track:92e6db25b71e71e2392760a11591d7d9da238adf77543d4201b55c82589682fd` |
| 13 | `theorem` | [EventuallyLE.countable_bInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/eventuallyle-countable-binter--815871103e29d834cc2ab7fe.md) | 112 | `result-track:815871103e29d834cc2ab7fe9d481408c0654e7bd2264f56a4f240c77483ebb9` |
| 14 | `theorem` | [EventuallyEq.countable_bInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/eventuallyeq-countable-binter--0a6b9f671397d84c80d84012.md) | 120 | `result-track:0a6b9f671397d84c80d840129c18b8ccce0bfb7e66b039b555562f2defd44e95` |
| 15 | `def` | [Filter.ofCountableInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/filter-ofcountableinter--eaa6d5c4260d95f77f591742.md) | 129 | `declaration-track:eaa6d5c4260d95f77f59174248b72a93559740e5d1fad56657a4420fb5bf2669` |
| 16 | `instance` | [Filter.countable_Inter_ofCountableInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/filter-countable-inter-ofcountableinter--d2b5f9eac9497576708e42e7.md) | 139 | `declaration-track:d2b5f9eac9497576708e42e7b5b1ac916596544a8e9c385247d73d158fb1f54a` |
| 17 | `theorem` | [Filter.mem_ofCountableInter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/filter-mem-ofcountableinter--a82f2e80d5e72c8f300820ab.md) | 147 | `result-track:a82f2e80d5e72c8f300820ab64aa763d756b9a7807b7d5c9f5556ec1241ca476` |
| 18 | `instance` | [countableInterFilter_principal](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/countableinterfilter-principal--8ccd6ab8dfd7c8619ccb37b2.md) | 153 | `declaration-track:8ccd6ab8dfd7c8619ccb37b2a1c68c0c3dfb671f8df955c37d860633284215aa` |
| 19 | `instance` | [countableInterFilter_bot](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/countableinterfilter-bot--08f93cd719c3bd6b8c2b6b76.md) | 157 | `declaration-track:08f93cd719c3bd6b8c2b6b76f4e2b0684a36ba5f1619c203c1cc3e5a8159efda` |
| 20 | `instance` | [countableInterFilter_top](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/countableinterfilter-top--1496183216c9b3b137167991.md) | 162 | `declaration-track:1496183216c9b3b137167991a17e863a3ce7885d0ab60aeb66c4231527f7b81b` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/instance--6c168ec0b0b6e9c8e074ee6a.md) | 167 | `declaration-track:6c168ec0b0b6e9c8e074ee6a944c9af69dac602740867046198de072b4b43c6d` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/instance--52ec99c1684096a768d826f0.md) | 175 | `declaration-track:52ec99c1684096a768d826f01cebc5b443329e8fb23e1a81642a4690539e5ba6` |
| 23 | `instance` | [countableInterFilter_inf](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/countableinterfilter-inf--baf49926920c4d8e500fdd11.md) | 182 | `declaration-track:baf49926920c4d8e500fdd11d98578b9275ce495eb988f762b2f5b0421e4dd0a` |
| 24 | `instance` | [countableInterFilter_sup](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/countableinterfilter-sup--fdcb7a1bae3aee5f93e406cc.md) | 194 | `declaration-track:fdcb7a1bae3aee5f93e406cce831a73967d9461bde38eecee2d782fa2bc57f28` |
| 25 | `inductive` | [CountableGenerateSets](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/countablegeneratesets--231a0f69156fb0301014d8b6.md) | 206 | `declaration-track:231a0f69156fb0301014d8b64f3f750efdd9d0cd61d3d78e6bd7b2af16299c63` |
| 26 | `def` | [countableGenerate](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/countablegenerate--33b04c3d246875818224d333.md) | 215 | `declaration-track:33b04c3d246875818224d333e05b851c454d32628ddeed53879c71239878cab3` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/instance--5357f9e08fea10af1cd81789.md) | 222 | `declaration-track:5357f9e08fea10af1cd81789a7ee4ec4f38d9abcebe205384a23d8dae8bdce96` |
| 28 | `theorem` | [mem_countableGenerate_iff](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/mem-countablegenerate-iff--4cf2189760c76d0dbc5f8fe1.md) | 229 | `result-track:4cf2189760c76d0dbc5f8fe19109c00829fe1386f239788a3047925ccda93b7e` |
| 29 | `theorem` | [le_countableGenerate_iff_of_countableInterFilter](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/le-countablegenerate-iff-of-countableinterfilter--185423566d5b8d6dfce50605.md) | 248 | `result-track:185423566d5b8d6dfce50605c4d89ff1230748a25c9861fc3830597f77dce9b8` |
| 30 | `theorem` | [countableGenerate_isGreatest](../../../../../mathematics/Topology/GeneralTopology/CountableInter/Variantcd4c5e6429e11262d43054082e4255269df9feb8b64d656acf2d41f82ad31cc1.lean/declarations/countablegenerate-isgreatest--3004d3aaaba7fc3ef5d8461e.md) | 263 | `result-track:3004d3aaaba7fc3ef5d8461e0be68d8ab1815db268e76fbf8080c262decaabab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
