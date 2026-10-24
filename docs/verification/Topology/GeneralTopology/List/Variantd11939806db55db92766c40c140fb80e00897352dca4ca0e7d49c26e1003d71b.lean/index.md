# Verification target: GRWTSK.Topology.GeneralTopology.List.Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e0deaa8c636f490f5dfff8961a2d5697b777876",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e0deaa8c636f490f5dfff8961a2d5697b777876`.

Source path: `GRWTSK/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Monoid` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/instance--55ec6d876659ce37f6bb29ae.md) | 31 | `declaration-track:55ec6d876659ce37f6bb29aee4a937ff79c9c5b49db1a3c4d8ab25fa5b20102a` |
| 2 | `theorem` | [nhds_list](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/nhds-list--718c4983c3a998876fd055ac.md) | 34 | `result-track:718c4983c3a998876fd055aca86edc2cbfcfce7e4203e7a2b4b257d31714405c` |
| 3 | `theorem` | [nhds_nil](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/nhds-nil--60618328383923251af6bccd.md) | 74 | `result-track:60618328383923251af6bccd5a9edd61970c549e0aa8948c71a0d543e67d212d` |
| 4 | `theorem` | [nhds_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/nhds-cons--25006ab863dfcb94553d7009.md) | 78 | `result-track:25006ab863dfcb94553d70098f20c873cc51bc391a930a78cffd325d8decbf07` |
| 5 | `theorem` | [List.tendsto_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/list-tendsto-cons--f5514bc02f2e9462836c06fe.md) | 82 | `result-track:f5514bc02f2e9462836c06fe9b10591d429efdd633d6a7739a90fc070c35fa31` |
| 6 | `theorem` | [Filter.Tendsto.cons](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/filter-tendsto-cons--d645e4e3b442b01a7fab56f3.md) | 87 | `result-track:d645e4e3b442b01a7fab56f337641f185ecf6cdead607f0deee41ba1eb090faf` |
| 7 | `theorem` | [tendsto_cons_iff](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/tendsto-cons-iff--1c549ea7aacdfe1a6eed304f.md) | 95 | `result-track:1c549ea7aacdfe1a6eed304f652abe6581f54a3eb69131a01b177a371d129470` |
| 8 | `theorem` | [continuous_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/continuous-cons--e6caee574bfdadd4aaa412f3.md) | 104 | `result-track:e6caee574bfdadd4aaa412f32f8f38d99649e5e497e03caaa185fb27e3c171fe` |
| 9 | `theorem` | [tendsto_nhds](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/tendsto-nhds--9c1a86ec3d03ea14734d4de3.md) | 108 | `result-track:9c1a86ec3d03ea14734d4de3e2b21e440202065091806cea6de6768919e01d08` |
| 10 | `theorem` | [continuousAt_length](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/continuousat-length--7a281aa5e0e961186189c9e8.md) | 120 | `result-track:7a281aa5e0e961186189c9e83a3b9207cf82cda6871bed4651854ae1d9b5147e` |
| 11 | `theorem` | [tendsto_insertNth'](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/tendsto-insertnth--97f4dc2472b532ccbfe5dd07.md) | 130 | `result-track:97f4dc2472b532ccbfe5dd07da9b86ca6ac86b188241127d6163b422fd516c63` |
| 12 | `theorem` | [tendsto_insertNth](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/tendsto-insertnth--5c6a5091af9beaf43c777db0.md) | 146 | `result-track:5c6a5091af9beaf43c777db04c706140ae95e5cfea7e06cba241765627073386` |
| 13 | `theorem` | [continuous_insertNth](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/continuous-insertnth--3ca6880a9f774cd190b327f8.md) | 152 | `result-track:3ca6880a9f774cd190b327f89a80f9e22e3b96fea97ba6cd08a7bc24e116d982` |
| 14 | `theorem` | [tendsto_removeNth](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/tendsto-removenth--3b08a82a16288ddd78d80312.md) | 157 | `result-track:3b08a82a16288ddd78d803124790ae3e7dc22864ad9069fbca74e61b4f685e83` |
| 15 | `theorem` | [continuous_removeNth](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/continuous-removenth--9037dae23cd58ad46dae12ae.md) | 167 | `result-track:9037dae23cd58ad46dae12ae797dac0412df05a115801350eb0bb36ac3cb7cac` |
| 16 | `theorem` | [tendsto_prod](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/tendsto-prod--e95c9766e268e2666a5d5fe2.md) | 172 | `result-track:e95c9766e268e2666a5d5fe2333b5dfda7cf72540a570feb34525f139cc1d0eb` |
| 17 | `theorem` | [continuous_prod](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/continuous-prod--b7bdf3b7fff35ce471788a53.md) | 184 | `result-track:b7bdf3b7fff35ce471788a537252201f13ee5489b4f49f9eb7ae5ef376659c52` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/instance--802d81c4fea7247c1d4204bc.md) | 195 | `declaration-track:802d81c4fea7247c1d4204bce426400e4f2b77bd5e1944d84a9514c0ffd3fa8f` |
| 19 | `theorem` | [tendsto_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/tendsto-cons--9026d1608a78362c2318fe09.md) | 197 | `result-track:9026d1608a78362c2318fe09d7305cc0e6057a976a48a4eabf05ab1b15d551d2` |
| 20 | `theorem` | [tendsto_insertNth](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/tendsto-insertnth--808c2dd42530325f5c6546c5.md) | 203 | `result-track:808c2dd42530325f5c6546c5a630a5c31967d8baca4f7d99bbb0aec8657c2c21` |
| 21 | `theorem` | [continuous_insertNth'](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/continuous-insertnth--e3572116bf0c32447d341059.md) | 212 | `result-track:e3572116bf0c32447d3410596c936d1a21a610972424a2e5a6bdeee3ee8db136` |
| 22 | `theorem` | [continuous_insertNth](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/continuous-insertnth--c838c64043e9dca65268e809.md) | 218 | `result-track:c838c64043e9dca65268e809144e10dcb17956bc650a700bbe17d043a5fcd448` |
| 23 | `theorem` | [continuousAt_removeNth](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/continuousat-removenth--aa5fac912785574a318ea6f1.md) | 223 | `result-track:aa5fac912785574a318ea6f1b649c15f5f36e511414546ff8f34e6d4debc7032` |
| 24 | `theorem` | [continuous_removeNth](../../../../../mathematics/Topology/GeneralTopology/List/Variantd11939806db55db92766c40c140fb80e00897352dca4ca0e7d49c26e1003d71b.lean/declarations/continuous-removenth--829b0f9c2908d2317ae6877b.md) | 231 | `result-track:829b0f9c2908d2317ae6877b027d4a801f377d6183d37d97842b94542f52e12b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
