# Verification target: GRWTSK.Algebra.GroupTheory.Solvable.Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74a7e7763b8847af8475a071c1b841860d49157d",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74a7e7763b8847af8475a071c1b841860d49157d`.

Source path: `GRWTSK/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean.json)

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
| 1 | `def` | [derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/derivedseries--32042a502f45b167622a8d6e.md) | 51 | `declaration-track:32042a502f45b167622a8d6e64b41f95b8986f1a88813f54d4c34e25134e0167` |
| 2 | `theorem` | [derivedSeries_zero](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/derivedseries-zero--b42c584450a80bd8844918dc.md) | 56 | `result-track:b42c584450a80bd8844918dc4ecf4dae2e13f9632633e7de1ab8b8811c57af86` |
| 3 | `theorem` | [derivedSeries_succ](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/derivedseries-succ--9a3686ecf4e2862904c5c32b.md) | 60 | `result-track:9a3686ecf4e2862904c5c32bfecfc09130a7544f42232135536938047c0dd83b` |
| 4 | `theorem` | [derivedSeries_normal](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/derivedseries-normal--161311ed7f48aca0fd02da68.md) | 64 | `result-track:161311ed7f48aca0fd02da685ea21e1df0d0e2373579d1cd392268a91c20edd9` |
| 5 | `theorem` | [derivedSeries_one](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/derivedseries-one--18a795e3a021ed70c8e94213.md) | 70 | `result-track:18a795e3a021ed70c8e94213e6210c645f2861be6063b1c937858316ae3fb122` |
| 6 | `theorem` | [derivedSeries_antitone](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/derivedseries-antitone--3705a6004cdbd4ee289b5896.md) | 73 | `result-track:3705a6004cdbd4ee289b58961490cce675056e67de2e7943b221cfa47569b7bb` |
| 7 | `instance` | [derivedSeries_characteristic](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/derivedseries-characteristic--6562a99b2a59fcce5b5566b3.md) | 76 | `declaration-track:6562a99b2a59fcce5b5566b3f4a4efeef6bd5f54abe170899f2e10846d1ca342` |
| 8 | `theorem` | [map_derivedSeries_le_derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/map-derivedseries-le-derivedseries--3a2fd429089a3cb00c9aa3bb.md) | 88 | `result-track:3a2fd429089a3cb00c9aa3bb6b175910c82901b784047cac4314e30863373623` |
| 9 | `theorem` | [derivedSeries_le_map_derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/derivedseries-le-map-derivedseries--42b636056f9fb036eaa5652c.md) | 94 | `result-track:42b636056f9fb036eaa5652cac428b87b5f56ea21bc704d60931fd8e67a882f8` |
| 10 | `theorem` | [map_derivedSeries_eq](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/map-derivedseries-eq--0403d39bcb7c67a2c6621126.md) | 100 | `result-track:0403d39bcb7c67a2c6621126bf259490f897a12340597ce989c6e76501ca5abf` |
| 11 | `class` | [IsSolvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/issolvable--b06a0c077113f2b773e6dc82.md) | 117 | `declaration-track:b06a0c077113f2b773e6dc82b0a73709378012d36e68a5fb659ec1c5d01c28ac` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/instance--f666e26de71bf932162aca15.md) | 127 | `declaration-track:f666e26de71bf932162aca157a32ea5168b5277ddeb2241f2934a194b7601524` |
| 13 | `theorem` | [isSolvable_of_comm](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/issolvable-of-comm--6fc37f7fb7dfb05685b2b9fa.md) | 130 | `result-track:6fc37f7fb7dfb05685b2b9fa6715c60d04a88c76cc2c9e02701d8f10bdf11b72` |
| 14 | `theorem` | [isSolvable_of_top_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/issolvable-of-top-eq-bot--26d61330ef465a827b799633.md) | 139 | `result-track:26d61330ef465a827b799633738caae6c6a6751de316ab3f57a15f4d2bda0189` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/instance--b0f8e7e869b8e5099398fc42.md) | 145 | `declaration-track:b0f8e7e869b8e5099398fc425c985a72fa4e952bcb49597158103e3399901a63` |
| 16 | `theorem` | [isSolvable_of_ker_le_range](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/issolvable-of-ker-le-range--426bf62d8a19a0d8ee312683.md) | 150 | `result-track:426bf62d8a19a0d8ee312683a85f66eb15c6be71b9712b5886fd5e6e156694ee` |
| 17 | `theorem` | [isSolvable_of_isSolvable_injective](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/issolvable-of-issolvable-injective--ebffc2a786b62315cb498c80.md) | 166 | `result-track:ebffc2a786b62315cb498c80e5ad5b747991126c66f67590a58d8425b7c44586` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/instance--4d5203d225f3c7a911fcb537.md) | 173 | `declaration-track:4d5203d225f3c7a911fcb537f5a44eda46dd4bce70c0c32cf770a5bfede72dbd` |
| 19 | `theorem` | [isSolvable_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/issolvable-of-surjective--eabdf78164dd37009a8777d2.md) | 176 | `result-track:eabdf78164dd37009a8777d24730c4fa5f90d050326bc71a50ceefb1a3d4d245` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/instance--c853035460951d8aa0c90a48.md) | 182 | `declaration-track:c853035460951d8aa0c90a489cbb760e492e6c2ba56447f3d238cde22c8f6f7a` |
| 21 | `theorem` | [isSolvable_iff_subgroup_quotient](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/issolvable-iff-subgroup-quotient--0249d039078ad68f82641eb6.md) | 186 | `result-track:0249d039078ad68f82641eb6345d8d6fe3a07184ccf0d7a5e47766eaa4c9bce4` |
| 22 | `theorem` | [isSolvable_of_subgroup_quotient](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/issolvable-of-subgroup-quotient--abc308610309e5a48dc7b1ed.md) | 191 | `result-track:abc308610309e5a48dc7b1ed16c04ee79a988ff478ac40f2b340c6c52d602b4a` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/instance--904f2864e5e2f76a7c9171d4.md) | 195 | `declaration-track:904f2864e5e2f76a7c9171d42ceaf4344bd4e969fe7ab62646ce7346e4e55c8d` |
| 24 | `theorem` | [IsSolvable.commutator_lt_top_of_nontrivial](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/issolvable-commutator-lt-top-of-nontrivial--d9dd928c6ce36f7c10a5e6ee.md) | 201 | `result-track:d9dd928c6ce36f7c10a5e6eebf53c9dd8fb6765e37c4c6c6a15133debd9fe984` |
| 25 | `theorem` | [IsSolvable.commutator_lt_of_ne_bot](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/issolvable-commutator-lt-of-ne-bot--f5205d8fa9c37356c9c8f525.md) | 215 | `result-track:f5205d8fa9c37356c9c8f525263cf4e072013f5a6e8a98ff3486c6bb1d41dfeb` |
| 26 | `theorem` | [isSolvable_iff_commutator_lt](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/issolvable-iff-commutator-lt--a300a4e2ce3850bb742c5d4f.md) | 224 | `result-track:a300a4e2ce3850bb742c5d4f6dc22c0ec32052ef354bc12f3b9ccd0b0f750172` |
| 27 | `theorem` | [isSolvable_commutator_iff](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/issolvable-commutator-iff--88cea1338d2e3a49a47c4c5d.md) | 246 | `result-track:88cea1338d2e3a49a47c4c5d7c0329c503e662576af9c28908f70c5aa1891e95` |
| 28 | `theorem` | [IsSimpleGroup.derivedSeries_succ](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/issimplegroup-derivedseries-succ--199c757eb8c4f3ebd02acb6b.md) | 257 | `result-track:199c757eb8c4f3ebd02acb6b41210462e90a3ffb5613d84ce6d95045a5063dd1` |
| 29 | `theorem` | [IsSimpleGroup.comm_iff_isSolvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/issimplegroup-comm-iff-issolvable--731703427be1814138d2bccc.md) | 266 | `result-track:731703427be1814138d2bccca4a5b080ffdd2ca538b0ec414026dc8a546ab54a` |
| 30 | `theorem` | [not_isSolvable_of_mem_derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/not-issolvable-of-mem-derivedseries--90f8d84afd366498ecdb1f5d.md) | 282 | `result-track:90f8d84afd366498ecdb1f5d6e65fd462ec1d54f992b222258f4819d90c7ee74` |
| 31 | `theorem` | [Equiv.Perm.not_isSolvable_fin_5](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/equiv-perm-not-issolvable-fin-5--7506f507413f8819796fada8.md) | 291 | `result-track:7506f507413f8819796fada8f6250edb2ccb74e33896e7e3305a4239e0687dec` |
| 32 | `theorem` | [Equiv.Perm.not_isSolvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant3ee484eeca31c7858e6f4530ed7e510753b80481112f95f950eebad15810d93d.lean/declarations/equiv-perm-not-issolvable--16a260cfff9402a76dd31194.md) | 306 | `result-track:16a260cfff9402a76dd31194f80432a63e0a66bc2f511e713a5d33647ba5dc1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
