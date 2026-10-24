# Verification target: GRWTSK.Algebra.GroupTheory.MaximalSubgroups.Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5bb0abfa730ea97d964e278137622d7277bf6d0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5bb0abfa730ea97d964e278137622d7277bf6d0`.

Source path: `GRWTSK/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean.json)

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
| 1 | `theorem` | [isPreprimitive_stabilizer_of_surjective](../../../../../mathematics/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/declarations/ispreprimitive-stabilizer-of-surjective--630c92acbb632625af8a46a4.md) | 52 | `result-track:630c92acbb632625af8a46a471c2e39c2b6cdd0a4af81c034564657e1f19d4ca` |
| 2 | `theorem` | [isPreprimitive_stabilizer_subgroup](../../../../../mathematics/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/declarations/ispreprimitive-stabilizer-subgroup--2566d2578f75a1c8f483735c.md) | 64 | `result-track:2566d2578f75a1c8f483735cdeea8ab6ef952a5cd44284a765be888f3a87059d` |
| 3 | `theorem` | [IsPretransitive.of_partition](../../../../../mathematics/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/declarations/ispretransitive-of-partition--ed45500ea724dd6ed2efb3df.md) | 74 | `result-track:ed45500ea724dd6ed2efb3df0e96bf0b833ea735445a08fe7b57acb071c260df` |
| 4 | `theorem` | [ofSubtype_mem_stabilizer](../../../../../mathematics/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/declarations/ofsubtype-mem-stabilizer--163e86edea49564266156609.md) | 101 | `result-track:163e86edea49564266156609167aba9322548ab560844d9558fec475e01cb2c7` |
| 5 | `theorem` | [swap_mem_stabilizer](../../../../../mathematics/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/declarations/swap-mem-stabilizer--442e719b9180dbe03abc08d3.md) | 112 | `result-track:442e719b9180dbe03abc08d3e924ae45cbe52f1d4805f962edcbc2d679c3dbc1` |
| 6 | `theorem` | [exists_mem_stabilizer_smul_eq](../../../../../mathematics/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/declarations/exists-mem-stabilizer-smul-eq--78eb9fac2d1e9f4cf2dae739.md) | 125 | `result-track:78eb9fac2d1e9f4cf2dae739a49baef6023e60b3d8e23b7b2b66f10b1c963bbe` |
| 7 | `theorem` | [stabilizer.surjective_toPerm](../../../../../mathematics/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/declarations/stabilizer-surjective-toperm--dddf7878aebd48e2659ef319.md) | 131 | `result-track:dddf7878aebd48e2659ef3192e2c91090dd11353cb6591c17c762cc3c8ee8602` |
| 8 | `instance` | [stabilizer_isPreprimitive](../../../../../mathematics/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/declarations/stabilizer-ispreprimitive--1b229fb06b2f342eca59ab71.md) | 139 | `declaration-track:1b229fb06b2f342eca59ab711d680c6b585cebcffd2063b4bb81c3284e3db19e` |
| 9 | `theorem` | [stabilizer_ne_top_of_nonempty_of_nonempty_compl](../../../../../mathematics/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/declarations/stabilizer-ne-top-of-nonempty-of-nonempty-compl--6f8d8131cff119c5b9def220.md) | 143 | `result-track:6f8d8131cff119c5b9def220238b20e76e74ba3e2f1c39077ad166a2e8567853` |
| 10 | `theorem` | [has_swap_mem_of_lt_stabilizer](../../../../../mathematics/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/declarations/has-swap-mem-of-lt-stabilizer--2b68a0214287df0b309f5554.md) | 156 | `result-track:2b68a0214287df0b309f5554c3bdfdf31d98e6afca6248710f020488ab24af72` |
| 11 | `lemma` | [_root_.Subgroup.isPretransitive_of_stabilizer_lt](../../../../../mathematics/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/declarations/root-subgroup-ispretransitive-of-stabilizer-lt--a1de50728d423cf0e9a8d235.md) | 201 | `result-track:a1de50728d423cf0e9a8d235adeaf8040b7e7c1c54be7d25ab247e8736fd200f` |
| 12 | `lemma` | [subsingleton_of_ssubset_of_stabilizer_le](../../../../../mathematics/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/declarations/subsingleton-of-ssubset-of-stabilizer-le--4a29da3b7f6e2bf4adaf8a80.md) | 227 | `result-track:4a29da3b7f6e2bf4adaf8a802bc6faee9ea83b00072574e003c311b699d13c67` |
| 13 | `lemma` | [subsingleton_of_ssubset_of_stabilizer_Perm_le](../../../../../mathematics/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/declarations/subsingleton-of-ssubset-of-stabilizer-perm-le--e32cb67dbfeaf1efa7a6b243.md) | 247 | `result-track:e32cb67dbfeaf1efa7a6b243a8deac0d2a2d891112e827731582a50ba1e145f1` |
| 14 | `lemma` | [subsingleton_of_stabilizer_lt_of_subset](../../../../../mathematics/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/declarations/subsingleton-of-stabilizer-lt-of-subset--616c501989e06055efa27777.md) | 258 | `result-track:616c501989e06055efa27777282dd76628a3b29f55b465a9955583826e97193a` |
| 15 | `lemma` | [compl_subset_of_stabilizer_le_of_not_subset_of_not_subset_compl](../../../../../mathematics/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/declarations/compl-subset-of-stabilizer-le-of-not-subset-of-not-subset-compl--d14fa758fb82c3b58e3eae35.md) | 291 | `result-track:d14fa758fb82c3b58e3eae35d47654f17d392fc76c17c2fa9cd328c89542efe8` |
| 16 | `theorem` | [isCoatom_stabilizer_of_ncard_lt_ncard_compl](../../../../../mathematics/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/declarations/iscoatom-stabilizer-of-ncard-lt-ncard-compl--6b62d25b89f544465d46da79.md) | 331 | `result-track:6b62d25b89f544465d46da79fbe69e8d81a270cc14d3f50a2f99b8914e649bce` |
| 17 | `theorem` | [isCoatom_stabilizer](../../../../../mathematics/Algebra/GroupTheory/MaximalSubgroups/Variant40250e52c05f75339324720b21bbecba88690cd1b44f18363656e007eb229cf7.lean/declarations/iscoatom-stabilizer--01c38d4a6cee43a063b1971a.md) | 395 | `result-track:01c38d4a6cee43a063b1971a08698a7d28ea0502fd50505c154b60890a828924` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
