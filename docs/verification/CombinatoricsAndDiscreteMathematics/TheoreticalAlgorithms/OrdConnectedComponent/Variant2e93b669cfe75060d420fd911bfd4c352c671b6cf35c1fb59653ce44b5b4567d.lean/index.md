# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrdConnectedComponent.Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58140e3ec5b3e8501e2ee1a4fd9003c6844bca3f",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58140e3ec5b3e8501e2ee1a4fd9003c6844bca3f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Intervals.OrdConnected` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/ordconnectedcomponent--c8e3c1112694092b662a242a.md) | 36 | `declaration-track:c8e3c1112694092b662a242a51f635f7a8703087d92d72a88155adc9e367e3b5` |
| 2 | `theorem` | [mem_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/mem-ordconnectedcomponent--4b71ee64a9a777d54eeddd84.md) | 40 | `result-track:4b71ee64a9a777d54eeddd84ab5600f5d52c5cfa4c841caf8e34742b7ce956b7` |
| 3 | `theorem` | [dual_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/dual-ordconnectedcomponent--f7a8c4801ca3b4c4f352244d.md) | 44 | `result-track:f7a8c4801ca3b4c4f352244d98a1f4e32107179a3b5e7696937293b566b75581` |
| 4 | `theorem` | [ordConnectedComponent_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/ordconnectedcomponent-subset--87ff9757e0decffdc0debbb2.md) | 51 | `result-track:87ff9757e0decffdc0debbb2fed616d82305db2dc217aa0f13f970b4c1e9d312` |
| 5 | `theorem` | [subset_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/subset-ordconnectedcomponent--bb3237a072763afb75b56a25.md) | 55 | `result-track:bb3237a072763afb75b56a25983a7e79222362978691997b8286d9e4729d4482` |
| 6 | `theorem` | [self_mem_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/self-mem-ordconnectedcomponent--159cfc6e3bfadb753173e251.md) | 60 | `result-track:159cfc6e3bfadb753173e251089e23ae8208ce01ed884e34920ac5c75d0cbb2c` |
| 7 | `theorem` | [nonempty_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/nonempty-ordconnectedcomponent--556816f178d74d02c4c31527.md) | 65 | `result-track:556816f178d74d02c4c3152738e940a55d05aad8ca7cca585e36ab9bbdc9e55b` |
| 8 | `theorem` | [ordConnectedComponent_eq_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/ordconnectedcomponent-eq-empty--d9fbc82f527ce34ca5176331.md) | 70 | `result-track:d9fbc82f527ce34ca51763311a8f8d54c103550e7938abbfbd5ba1c9edab103a` |
| 9 | `theorem` | [ordConnectedComponent_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/ordconnectedcomponent-empty--2f8429ec3bb0b03a3e5a9787.md) | 75 | `result-track:2f8429ec3bb0b03a3e5a978752e9531962f43a065fb3e2063aa329555eac5e1a` |
| 10 | `theorem` | [ordConnectedComponent_univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/ordconnectedcomponent-univ--87585aeeb9e081dbfb32b884.md) | 80 | `result-track:87585aeeb9e081dbfb32b8841224349a8ef0972e664c1ca9ab608571ae4b1505` |
| 11 | `theorem` | [ordConnectedComponent_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/ordconnectedcomponent-inter--8f0fc15f95468ae40f64fb6a.md) | 84 | `result-track:8f0fc15f95468ae40f64fb6a1b670d64cd5e174a0284b9f680c5d0ea4246877b` |
| 12 | `theorem` | [mem_ordConnectedComponent_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/mem-ordconnectedcomponent-comm--358e1a02d365884c8688521a.md) | 89 | `result-track:358e1a02d365884c8688521a96e86026d18e80de56426d032997da51bbcf45b7` |
| 13 | `theorem` | [mem_ordConnectedComponent_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/mem-ordconnectedcomponent-trans--8bdc3da09988ddb3952b526d.md) | 94 | `result-track:8bdc3da09988ddb3952b526d91d394e0d370c9c642f466cda4f358eabd93006e` |
| 14 | `theorem` | [ordConnectedComponent_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/ordconnectedcomponent-eq--1a8707874d2e5d5d964ed3f9.md) | 101 | `result-track:1a8707874d2e5d5d964ed3f93e3f7f6744181358c304d437edaed1548c3a203a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/instance--73b94bbeebc2c1cc6ebd1089.md) | 108 | `declaration-track:73b94bbeebc2c1cc6ebd108912c9de8b90c227a32f1d4b8f8f21d08969104c6d` |
| 16 | `def` | [ordConnectedProj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/ordconnectedproj--8f887a460458b711ea8b64c6.md) | 113 | `declaration-track:8f887a460458b711ea8b64c6085a983cb4212ae9c48c19d1da1f4e61cab09994` |
| 17 | `theorem` | [ordConnectedProj_mem_ordConnectedComponent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/ordconnectedproj-mem-ordconnectedcomponent--712ecb78bc62cd6d615edc0f.md) | 117 | `result-track:712ecb78bc62cd6d615edc0f0624d5a09c454c3a0b07dca33789d3af1d08b9f9` |
| 18 | `theorem` | [mem_ordConnectedComponent_ordConnectedProj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/mem-ordconnectedcomponent-ordconnectedproj--dc1f6b103921d0c4c77e6bf8.md) | 122 | `result-track:dc1f6b103921d0c4c77e6bf809ae13542b198678e947298c9083fa1352e86a2e` |
| 19 | `theorem` | [ordConnectedComponent_ordConnectedProj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/ordconnectedcomponent-ordconnectedproj--c7dd92060e4ee917d224a5c5.md) | 128 | `result-track:c7dd92060e4ee917d224a5c59d25ec75d872308060410c4e581387122fc449d7` |
| 20 | `theorem` | [ordConnectedProj_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/ordconnectedproj-eq--40437a387b0ea1c53c1849f1.md) | 134 | `result-track:40437a387b0ea1c53c1849f1a57e9c41d81990b21837991ea00ed80eebd8ddb8` |
| 21 | `def` | [ordConnectedSection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/ordconnectedsection--16c41903a87f03329d58aae1.md) | 145 | `declaration-track:16c41903a87f03329d58aae1b4a155aaa6b1fe957fc3c2aefe6c69847a7054f2` |
| 22 | `theorem` | [dual_ordConnectedSection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/dual-ordconnectedsection--395e27765c32519af0e75cc3.md) | 149 | `result-track:395e27765c32519af0e75cc3a097a3152ba93a24d9f29db4c110be5a3f13d81f` |
| 23 | `theorem` | [ordConnectedSection_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/ordconnectedsection-subset--2b018b12c426b696f61b7a9e.md) | 157 | `result-track:2b018b12c426b696f61b7a9ea46bbb791841c119b023adf3d72f5c4a7e5a6336` |
| 24 | `theorem` | [eq_of_mem_ordConnectedSection_of_uIcc_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/eq-of-mem-ordconnectedsection-of-uicc-subset--376835c12c46cdc3311873bc.md) | 161 | `result-track:376835c12c46cdc3311873bc9ae49d6e43e112f2469d7d8b2233679884b9e5cf` |
| 25 | `def` | [ordSeparatingSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/ordseparatingset--b7e67cd290c9cfca5c8ab2fd.md) | 175 | `declaration-track:b7e67cd290c9cfca5c8ab2fdc553b7938aa04bf11df10bd16963627475bfab91` |
| 26 | `theorem` | [ordSeparatingSet_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/ordseparatingset-comm--719ccbd0fe1783c9cd8299c3.md) | 179 | `result-track:719ccbd0fe1783c9cd8299c39e4f8326d9f9596df9c2f4f9929829b0d64ae63c` |
| 27 | `theorem` | [disjoint_left_ordSeparatingSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/disjoint-left-ordseparatingset--8d1ce65f72513f9226e87714.md) | 183 | `result-track:8d1ce65f72513f9226e87714288509cfb747642e533482c729be98a5928003fe` |
| 28 | `theorem` | [disjoint_right_ordSeparatingSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/disjoint-right-ordseparatingset--3c4e97a3d0f90a125dc1dd2c.md) | 189 | `result-track:3c4e97a3d0f90a125dc1dd2c093a354728a6ee990123f684ffa49badbbfa9ede` |
| 29 | `theorem` | [dual_ordSeparatingSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/dual-ordseparatingset--0430faeee74aeb8c8c7689e9.md) | 193 | `result-track:0430faeee74aeb8c8c7689e9463ab5e15b7d292a0a7bd01262aad6512abda7d4` |
| 30 | `def` | [ordT5Nhd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/ordt5nhd--dad3d310c18573e09ae6cda0.md) | 200 | `declaration-track:dad3d310c18573e09ae6cda0c973ec3011989fb63966934b3c9fd2933adb1433` |
| 31 | `theorem` | [disjoint_ordT5Nhd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrdConnectedComponent/Variant2e93b669cfe75060d420fd911bfd4c352c671b6cf35c1fb59653ce44b5b4567d.lean/declarations/disjoint-ordt5nhd--ccce91eddba892d2f601fad0.md) | 204 | `result-track:ccce91eddba892d2f601fad0b4353278b27a82c5d99eeb98115b2f6753077a0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
