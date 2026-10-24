# Verification target: GRWTSK.Topology.GeneralTopology.LocallyFinite.Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e42360a4fc044a5334a3c51083cbafd27ab75c4",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e42360a4fc044a5334a3c51083cbafd27ab75c4`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.SmallSets` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousOn` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LocallyFinite](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/locallyfinite--04b23cc48b89719a536d519d.md) | 33 | `declaration-track:04b23cc48b89719a536d519d63f98fc769d4aa18d6943bd8b0049af6ef30adab` |
| 2 | `theorem` | [locallyFinite_of_finite](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/locallyfinite-of-finite--66e5711185b5d076eb1ae77b.md) | 36 | `result-track:66e5711185b5d076eb1ae77b8b0332b211f6455e392ef3016597e7139c97bc01` |
| 3 | `theorem` | [point_finite](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/point-finite--2a0c4408b8243da7afbc5840.md) | 41 | `result-track:2a0c4408b8243da7afbc5840aa8c5ee9683c7797647262132576b0e3fa851acc` |
| 4 | `theorem` | [subset](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/subset--870ecbc3272cbb99fde0de91.md) | 45 | `result-track:870ecbc3272cbb99fde0de91a7289916e84694c86dc36d06408060e5ea38e1ca` |
| 5 | `theorem` | [comp_injOn](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/comp-injon--9ccd221fdb4e30d2ce0708ca.md) | 49 | `result-track:9ccd221fdb4e30d2ce0708ca56640c1dec265c3dcb46e12aad10ac49a7f08abb` |
| 6 | `theorem` | [comp_injective](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/comp-injective--29c6a7c3a9349629ac6bf63c.md) | 55 | `result-track:29c6a7c3a9349629ac6bf63c275c4ea9a68d3faec3b6ab13e838777b02a4a59c` |
| 7 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.LocallyFinite.Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.locallyFinite_iff_smallSets](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/root-grwtsk-topology-generaltopology-locallyfinite-variant70c3caf86205ff--3d42fe2e009372bd144ed4a2.md) | 59 | `result-track:3d42fe2e009372bd144ed4a2a2973497c6c4a9e0294a73b31bcd21326eb1719c` |
| 8 | `theorem` | [eventually_smallSets](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/eventually-smallsets--265a8fe32ca4d6ad01bd8532.md) | 65 | `result-track:265a8fe32ca4d6ad01bd8532108b863746c9cf0848cb9da40e7bc648a71437a2` |
| 9 | `theorem` | [exists_mem_basis](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/exists-mem-basis--383cad576e183c4125ad1f2e.md) | 69 | `result-track:383cad576e183c4125ad1f2ea6b46003ae3f3f69c4cd26b782ba82b49697e2af` |
| 10 | `theorem` | [nhdsWithin_iUnion](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/nhdswithin-iunion--afaecda9c57122c5db748fb2.md) | 74 | `result-track:afaecda9c57122c5db748fb2459062cbef993064de615424fd7c6a08ee634dce` |
| 11 | `theorem` | [continuousOn_iUnion'](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/continuouson-iunion--43772e86b667fd489793c59d.md) | 87 | `result-track:43772e86b667fd489793c59d6c73b029f0faf32e2a60a16df304fba75d1d024d` |
| 12 | `theorem` | [continuousOn_iUnion](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/continuouson-iunion--79b27c46c0afbb4937c405bb.md) | 99 | `result-track:79b27c46c0afbb4937c405bbbe92eab86d12cb5570ce1b409a499f3cfac4d562` |
| 13 | `theorem` | [continuous'](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/continuous--4484ee5ab3d9d709590e9663.md) | 103 | `result-track:4484ee5ab3d9d709590e96630331db895c8394f8e0146eb1aca588d600120693` |
| 14 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/continuous--e4d15926605f60941345bbf1.md) | 108 | `result-track:e4d15926605f60941345bbf19dff8e381093b011bcf9d4443f449538bc250964` |
| 15 | `theorem` | [closure](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/closure--2801a5ca827981680fcc06a2.md) | 113 | `result-track:2801a5ca827981680fcc06a237e5f2aa64390c23154cb6f17a5290c0270a5156` |
| 16 | `theorem` | [closure_iUnion](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/closure-iunion--6efd6aeae8962400585a1548.md) | 120 | `result-track:6efd6aeae8962400585a1548cc5ef0c573f56c7cab7fe8fdda35f0ae379966f2` |
| 17 | `theorem` | [isClosed_iUnion](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/isclosed-iunion--974e45982c406bee22247962.md) | 124 | `result-track:974e45982c406bee222479623bee0103aeffa2e519fd730678a3d592464d8a74` |
| 18 | `theorem` | [iInter_compl_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/iinter-compl-mem-nhds--587c71b4c4e2429b75053796.md) | 130 | `result-track:587c71b4c4e2429b75053796403d802a2e56926b3a9f2a318c621cd0965dc970` |
| 19 | `theorem` | [exists_forall_eventually_eq_prod](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/exists-forall-eventually-eq-prod--16d621bec4dc6b0a90ad0e1d.md) | 143 | `result-track:16d621bec4dc6b0a90ad0e1d18d59adaca3223ad5c333a19895ded0f72144550` |
| 20 | `theorem` | [exists_forall_eventually_atTop_eventually_eq'](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/exists-forall-eventually-attop-eventually-eq--ed18c2d7451e01bdb5eb3a6d.md) | 164 | `result-track:ed18c2d7451e01bdb5eb3a6dc9d32c3f2d51948b378dc11177c46511a14e89a9` |
| 21 | `theorem` | [exists_forall_eventually_atTop_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/exists-forall-eventually-attop-eventuallyeq--c1d60d61a9106ccffb31181f.md) | 173 | `result-track:c1d60d61a9106ccffb31181f3e07a8fe3cdf22c2c7952a0d264bfbb30ba62786` |
| 22 | `theorem` | [preimage_continuous](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/preimage-continuous--6780ef4c44a5272c3e13651c.md) | 178 | `result-track:6780ef4c44a5272c3e13651c50012d46209a210ac9d80117ab2631f42d85bff0` |
| 23 | `theorem` | [prod_right](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/prod-right--10619f138ccd8362f22b62d2.md) | 183 | `result-track:10619f138ccd8362f22b62d25360e647bbfa83907dbf575d14f8bf09ae3576c6` |
| 24 | `theorem` | [prod_left](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/prod-left--690e4d2ef16244d217f9acfe.md) | 186 | `result-track:690e4d2ef16244d217f9acfe3500f10dcf81f7010385d97fa25ad4aa5c482eea` |
| 25 | `theorem` | [Equiv.locallyFinite_comp_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/equiv-locallyfinite-comp-iff--7768c3686f0c4b7c4b15397f.md) | 193 | `result-track:7768c3686f0c4b7c4b15397f2002b109b3d58111637d1b9a3a5f037e704047de` |
| 26 | `theorem` | [locallyFinite_sum](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/locallyfinite-sum--0d5ff578e5c3c9ae63dba22c.md) | 197 | `result-track:0d5ff578e5c3c9ae63dba22cf7c625b0258d95e47aaf15deabc774b87f906046` |
| 27 | `theorem` | [LocallyFinite.sumElim](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/locallyfinite-sumelim--5aa2841c4bddd59f482cb9a1.md) | 202 | `result-track:5aa2841c4bddd59f482cb9a11f100fe4686f23b06f74a8fd938b565a2a817f90` |
| 28 | `theorem` | [locallyFinite_option](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/locallyfinite-option--59ef1374a81c42a2b199cb38.md) | 208 | `result-track:59ef1374a81c42a2b199cb38d0b6a841c98fdc4f9c81b1e83fc6626e0f7bc663` |
| 29 | `theorem` | [LocallyFinite.option_elim'](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/locallyfinite-option-elim--110214cfeda2a7a13d7e421f.md) | 214 | `result-track:110214cfeda2a7a13d7e421f2878fccac334fd9d7934bf2ced190c97bf9747a1` |
| 30 | `theorem` | [LocallyFinite.eventually_subset](../../../../../mathematics/Topology/GeneralTopology/LocallyFinite/Variant08747346d439006444bc932215051b75ed44473867d1724e92f12a2f615c1f1b.lean/declarations/locallyfinite-eventually-subset--e1d23cd5e6c582affd0be275.md) | 218 | `result-track:e1d23cd5e6c582affd0be275e3f77413cc8ac1cc45e2eac2c3faa29c14d6af54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
