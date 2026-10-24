# Verification target: GRWTSK.Algebra.GroupTheory.ArithmeticSubgroups.Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ad57a877256f4ef21aa996394fdd345a7b57e7a",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ad57a877256f4ef21aa996394fdd345a7b57e7a`.

Source path: `GRWTSK/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean.json)

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
| 1 | `class` | [HasDetPlusMinusOne](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/hasdetplusminusone--ddde37cb6605cf2f0b8a88e3.md) | 37 | `declaration-track:ddde37cb6605cf2f0b8a88e36c39bd44df65baf950e990089a8a167f9ff2df7b` |
| 2 | `lemma` | [HasDetPlusMinusOne.abs_det](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/hasdetplusminusone-abs-det--f4c76561d0f0a05cb200fee8.md) | 41 | `result-track:f4c76561d0f0a05cb200fee83ec71085d3416fd587bc2bb4eec60b6abb13384b` |
| 3 | `lemma` | [hasDetPlusMinusOne_iff_abs_det](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/hasdetplusminusone-iff-abs-det--7a74c57be03208b5faa02b03.md) | 45 | `result-track:7a74c57be03208b5faa02b039c3472abf270639eabb089cc0bcc22a9c1391ba0` |
| 4 | `class` | [HasDetOne](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/hasdetone--bd2ebf5205c68c2b7db89d0f.md) | 52 | `declaration-track:bd2ebf5205c68c2b7db89d0f6d3f9cfc837a7b61ca7b777fc3d534d8f8723339` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/instance--18b5ad9b5903a4bfb15c1050.md) | 55 | `declaration-track:18b5ad9b5903a4bfb15c1050d48abc16d0a14119f155846cb03cc594e996a8c3` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/instance--78166545b23f177e26931b06.md) | 58 | `declaration-track:78166545b23f177e26931b066eed3ff3949083d24eeab108943856acf9a2e79b` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/instance--69a56510ed684ca13d3cca61.md) | 62 | `declaration-track:69a56510ed684ca13d3cca61f4bfd099fda9828913c44fd1f4f38479d703239a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/instance--bccf4de0041fa66e07e5167f.md) | 66 | `declaration-track:bccf4de0041fa66e07e5167f2de585e2aa761785b310d6ca3d6fe373146fb900` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/instance--41ac44ad95f7dcc8d001f94b.md) | 68 | `declaration-track:41ac44ad95f7dcc8d001f94b602360d1fd93e11345f7361681ba9f1a096575de` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/instance--4aa8a5134888ae4f50185498.md) | 71 | `declaration-track:4aa8a5134888ae4f501854985f525f606744e38742be1ae855be217a265c4f66` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/instance--b9c60c9d2d516a6b2a19fde4.md) | 75 | `declaration-track:b9c60c9d2d516a6b2a19fde42a606023574e699c50ed1fcb601f74bd0b54bceb` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/instance--d499b96d3fc544f029859bd4.md) | 82 | `declaration-track:d499b96d3fc544f029859bd428d2b4fc864361cb21cd5bfa0a0a16f23dfec8cf` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/instance--1dd5c6bdfc39d13665b39d41.md) | 97 | `declaration-track:1dd5c6bdfc39d13665b39d41442a6e7342e3f90e7386e23048f2944280878ea8` |
| 14 | `class` | [IsArithmetic](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/isarithmetic--b2c43a816975768858fb16dc.md) | 102 | `declaration-track:b2c43a816975768858fb16dc02eaf08bcd7a4e6ad82ae4175a1f0d8666ca0de7` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/instance--fe1dc94a7d228cc9e2f3185c.md) | 106 | `declaration-track:fe1dc94a7d228cc9e2f3185c7e21cdfb335e8d65cd038a9fdb024651079522b2` |
| 16 | `lemma` | [isArithmetic_iff_finiteIndex](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/isarithmetic-iff-finiteindex--864bb7b2c62904af4512cd98.md) | 108 | `result-track:864bb7b2c62904af4512cd98b6137b922765bcec62181048ea1a77bb4dbc958b` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/instance--fafd133baa782aa38fb136aa.md) | 113 | `declaration-track:fafd133baa782aa38fb136aa5c711f31204f948f5dba5d6738312d83844f9ec4` |
| 18 | `instance` | [IsArithmetic.finiteIndex_comap](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/isarithmetic-finiteindex-comap--78464df88f98090e99523977.md) | 117 | `declaration-track:78464df88f98090e995239779897d32e44c7d9693b59bc9a27e9790f6d545d18` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/instance--878c9740bdeaffb4a686e167.md) | 121 | `declaration-track:878c9740bdeaffb4a686e1677bddf3ceab67104234143dd3b1051389d16c07ec` |
| 20 | `instance` | [IsArithmetic.isFiniteRelIndexSL](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/isarithmetic-isfiniterelindexsl--0634e9b011def87ab6d6bf19.md) | 132 | `declaration-track:0634e9b011def87ab6d6bf19c40ec919e4e44505913a872ed68e50192bf92f22` |
| 21 | `instance` | [IsArithmetic.inter](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/isarithmetic-inter--de8e8a60fb3680b8728aee62.md) | 136 | `declaration-track:de8e8a60fb3680b8728aee6268ff7caf0785c4eea7d9a505c3e6248d526dec8f` |
| 22 | `instance` | [discreteSpecialLinearGroupIntRange](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/discretespeciallineargroupintrange--6e503789123e7662e38251b1.md) | 146 | `declaration-track:6e503789123e7662e38251b17e6a7816e47adf27dcf50b1e384aeabff9763639` |
| 23 | `instance` | [discreteSpecialLinearGroupIntRangeSL](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/discretespeciallineargroupintrangesl--0caaf692493155fe9d4d446d.md) | 150 | `declaration-track:0caaf692493155fe9d4d446da8f02c77796963765c6cee6370c94bc366cdea3c` |
| 24 | `lemma` | [isClosedEmbedding_mapGLInt](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/isclosedembedding-mapglint--83db1d20616d744a4fc39a7e.md) | 155 | `result-track:83db1d20616d744a4fc39a7e99157b7f0f6e0aa92403d6264e23f0f8e816febe` |
| 25 | `instance` | [Subgroup.IsArithmetic.discreteTopology](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/subgroup-isarithmetic-discretetopology--8e8c3f7435eada3a282c758b.md) | 161 | `declaration-track:8e8c3f7435eada3a282c758b8810474ef9062ea80d4dada743f5a3d2388fbae0` |
| 26 | `def` | [Subgroup.adjoinNegOne](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/subgroup-adjoinnegone--99819caa91a93d26ea27b380.md) | 171 | `declaration-track:99819caa91a93d26ea27b380aee55e90988ac5ae55ba0750ed568204dce529c6` |
| 27 | `lemma` | [Subgroup.mem_adjoinNegOne_iff](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/subgroup-mem-adjoinnegone-iff--6cfa48f40ab0f660d212145e.md) | 184 | `result-track:6cfa48f40ab0f660d212145e11e3277b2dc83c090d467914eef6fd7674aa0395` |
| 28 | `lemma` | [Subgroup.le_adjoinNegOne](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/subgroup-le-adjoinnegone--71d4f0d020ea7ca9a19c2fed.md) | 188 | `result-track:71d4f0d020ea7ca9a19c2fedaa27d17482cf231663752472e7c4f98a85b0061b` |
| 29 | `lemma` | [Subgroup.negOne_mem_adjoinNegOne](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/subgroup-negone-mem-adjoinnegone--bc67c5d39599a3d4fae2c9b4.md) | 191 | `result-track:bc67c5d39599a3d4fae2c9b490f75547dede9ef7c545d0374b42d58e0f71eef2` |
| 30 | `lemma` | [Subgroup.adjoinNegOne_eq_self_iff](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/subgroup-adjoinnegone-eq-self-iff--ba7af769d8e226b76ef8b850.md) | 193 | `result-track:ba7af769d8e226b76ef8b850fa9cb3dd64fa25daf9d465c5c213f37c9d532899` |
| 31 | `lemma` | [Subgroup.relindex_adjoinNegOne_eq_two](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/subgroup-relindex-adjoinnegone-eq-two--be82ef2d5095e3dde21ca541.md) | 198 | `result-track:be82ef2d5095e3dde21ca5418d2df6c3b082f68383e0a67a299e120e27341ddd` |
| 32 | `lemma` | [Subgroup.relIndex_adjoinNegOne_ne_zero](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/subgroup-relindex-adjoinnegone-ne-zero--268a9ca5a39c8de1283c0db7.md) | 203 | `result-track:268a9ca5a39c8de1283c0db76144acb895b2ac54bb950ec28c6470ddff902970` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/instance--3b9a231296fde3e8beed2e50.md) | 209 | `declaration-track:3b9a231296fde3e8beed2e50063859f24d16c99d0680bca67700419020103089` |
| 34 | `lemma` | [Subgroup.commensurable_adjoinNegOne_self](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/subgroup-commensurable-adjoinnegone-self--ab7e090eae42c2233a666423.md) | 212 | `result-track:ab7e090eae42c2233a66642368b840f71c070b29dcc5fb89e0808db228a61275` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/instance--9d97eb1da6ca71b48fc538a5.md) | 216 | `declaration-track:9d97eb1da6ca71b48fc538a5967b102a85d9b63aa5e910f1f4e0529f2b1e1e7d` |
| 36 | `lemma` | [Subgroup.hasDetPlusMinusOne_adjoinNegOne_iff](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/subgroup-hasdetplusminusone-adjoinnegone-iff--762ca7ce17d65a6b0eab2b22.md) | 225 | `result-track:762ca7ce17d65a6b0eab2b222f8f39c1e0c8e2b062c1f2f840aba19512d694a5` |
| 37 | `lemma` | [Subgroup.hasDetOne_adjoinNegOne_iff](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/subgroup-hasdetone-adjoinnegone-iff--a18ba4cf332f8a5fd5a5d748.md) | 236 | `result-track:a18ba4cf332f8a5fd5a5d748d898454b5b6ea98af7bed310e97bfff17b820cba` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/instance--f868446d5344ea2c05811370.md) | 243 | `declaration-track:f868446d5344ea2c058113707e0295f1f915d3e5aa2a7bd6df15a9e6040f1423` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/instance--28413ddc81e076de6a1ea5b2.md) | 247 | `declaration-track:28413ddc81e076de6a1ea5b27e07d959415fc6cbf195ffb3573611fa2eb3dbe7` |
| 40 | `instance` | [Subgroup.instIsArithmeticAdjoinNegOne](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variant0b5b54651fa2cb845d977df9d5cfeb5a2f25e6d7b434dd2ff658efe2d38b5db1.lean/declarations/subgroup-instisarithmeticadjoinnegone--edf5f8edfb490062d563d9bb.md) | 253 | `declaration-track:edf5f8edfb490062d563d9bb2bbb53a29ed6100eca2a4dc532b8ede56534a934` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
