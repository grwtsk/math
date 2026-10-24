# Verification target: GRWTSK.Topology.GeneralTopology.AbsolutelyContinuous.Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3403fb5738c0bcee2c8a0e9eda236acf69620a52",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3403fb5738c0bcee2c8a0e9eda236acf69620a52`.

Source path: `GRWTSK/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean.json)

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
| 1 | `def` | [totalLengthFilter](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/totallengthfilter--24b9ad7ada7abe8c393ff152.md) | 86 | `declaration-track:24b9ad7ada7abe8c393ff1525b0e97a3da4bc8bb6edbcc2646130f5a0a097379` |
| 2 | `lemma` | [hasBasis_totalLengthFilter](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/hasbasis-totallengthfilter--7ed8e81d0de9e751eed5a1bb.md) | 89 | `result-track:7ed8e81d0de9e751eed5a1bbf3f6dcdb28cccdb9c350a4372fa930042c07d0c4` |
| 3 | `def` | [disjWithin](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/disjwithin--481def5690ebe9a88b6d855f.md) | 103 | `declaration-track:481def5690ebe9a88b6d855fd339fae6d86dd6fe94576721de21353cb6b83c3e` |
| 4 | `lemma` | [disjWithin_comm](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/disjwithin-comm--151b5510f99c52273836c4ea.md) | 107 | `result-track:151b5510f99c52273836c4ea75d3134cfddfb6d705cce3053b962aebbd0e65ff` |
| 5 | `lemma` | [disjWithin_mono](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/disjwithin-mono--631c56c5ae092553a4791e1b.md) | 110 | `result-track:631c56c5ae092553a4791e1b5dac26820f0bc260df250a4ff0259507abf63d01` |
| 6 | `lemma` | [uIoc_subset_of_mem_disjWithin](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/uioc-subset-of-mem-disjwithin--89a643f73431dda1f3382138.md) | 114 | `result-track:89a643f73431dda1f33821382252211f42483914fec40a9737e7d6addf1c6365` |
| 7 | `lemma` | [biUnion_uIoc_subset_of_mem_disjWithin](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/biunion-uioc-subset-of-mem-disjwithin--4bfd397dd94878738c90810d.md) | 119 | `result-track:4bfd397dd94878738c90810dc91893480a114316d9b4426e33f3df3d57e1b8ab` |
| 8 | `lemma` | [tendsto_volume_totalLengthFilter_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/tendsto-volume-totallengthfilter-nhds-zero--ef604c0daaf849dae18ef539.md) | 125 | `result-track:ef604c0daaf849dae18ef539a2f14f896b541f394c66f5cc9a27af19729dc02e` |
| 9 | `lemma` | [tendsto_volume_restrict_totalLengthFilter_disjWithin_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/tendsto-volume-restrict-totallengthfilter-disjwithin-nhds-zero--67fc0f37787262e4016f82e9.md) | 141 | `result-track:67fc0f37787262e4016f82e90b4ac8becb37df693c69d1e2d599daf578924a9e` |
| 10 | `def` | [_root_.GRWTSK.Topology.GeneralTopology.TotalLengthFilter.Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.AbsolutelyContinuousOnInterval](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/root-grwtsk-topology-generaltopology-totallengthfilter-variante70ff0aea2--da63c0c2ef1ed3a6e9a44c38.md) | 162 | `declaration-track:da63c0c2ef1ed3a6e9a44c38074cfb55c6771dc16fb374b924b096bafa4e451f` |
| 11 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.TotalLengthFilter.Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.absolutelyContinuousOnInterval_iff](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/root-grwtsk-topology-generaltopology-totallengthfilter-variante70ff0aea2--e5c1acb55f56c0184a37f346.md) | 171 | `result-track:e5c1acb55f56c0184a37f3463e9de0a66407c448fb3f6288076bf08d94a143e3` |
| 12 | `theorem` | [symm](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/symm--7ab187779391a90b6a8c73db.md) | 182 | `result-track:7ab187779391a90b6a8c73db51f3e2bd804979704f38b4124e163982f67fc28e` |
| 13 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/mono--b25ae4ec338af6960d63ef8e.md) | 186 | `result-track:b25ae4ec338af6960d63ef8e5cac4fdbff886fa98ebee00b52b5707bf2e6170d` |
| 14 | `theorem` | [congr](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/congr--61fdc2a44d69441f68ba25d2.md) | 192 | `result-track:61fdc2a44d69441f68ba25d2e169b6d5067fd2697507886f3289ecf990efa589` |
| 15 | `theorem` | [refl](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/refl--020b0ad325165960659bcf1b.md) | 200 | `result-track:020b0ad325165960659bcf1b0937af90604698cbdf8ca20f224364207fdca7d2` |
| 16 | `theorem` | [rfl](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/rfl--63224faa0b512b29851ed6fd.md) | 208 | `result-track:63224faa0b512b29851ed6fdfd60082a56cc4d7bf8905f909f09645ec18ef4be` |
| 17 | `theorem` | [add](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/add--f4cc9c18f3fd3fc16c347391.md) | 213 | `result-track:f4cc9c18f3fd3fc16c347391dfab9d34a959f77be394437b585f889b4e274f77` |
| 18 | `theorem` | [neg](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/neg--e22440b768258a1a6e810fbc.md) | 223 | `result-track:e22440b768258a1a6e810fbc5b82ef2f49beccf1d7641eeeab36eff401721c20` |
| 19 | `theorem` | [sub](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/sub--a07dc47f4c5fb0ca2365ed09.md) | 230 | `result-track:a07dc47f4c5fb0ca2365ed094f3aeb29553496e21b91e978cdd36ca0d1ea3304` |
| 20 | `theorem` | [const_smul](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/const-smul--f571af36407a6bd2d0e137c5.md) | 235 | `result-track:f571af36407a6bd2d0e137c57a916a2368d159beaf19d28dc51f7d7db85d6a94` |
| 21 | `theorem` | [const_mul](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/const-mul--cbdce9af08ad9af142534ae1.md) | 242 | `result-track:cbdce9af08ad9af142534ae14dfc622fe09799d49c5a20731bfa394fdb119ea5` |
| 22 | `lemma` | [uniformity_eq_comap_totalLengthFilter](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/uniformity-eq-comap-totallengthfilter--8929f48e37debe71b42f1144.md) | 246 | `result-track:8929f48e37debe71b42f1144fd4a9c771c3583ae267cb29568dc4f92a491358a` |
| 23 | `theorem` | [uniformContinuousOn](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/uniformcontinuouson--0ffc125c7e6b4fa1291b0d1c.md) | 254 | `result-track:0ffc125c7e6b4fa1291b0d1c59918fece550995ffa0c24809989ed385ec4bdcc` |
| 24 | `theorem` | [continuousOn](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/continuouson--7f9ad7db3c49f73659c6d141.md) | 268 | `result-track:7f9ad7db3c49f73659c6d1418a79f3ffcf02895c30c8a56592b9942a5038967d` |
| 25 | `theorem` | [exists_bound](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/exists-bound--8a4aa5cc4c2ea1999feadca6.md) | 273 | `result-track:8a4aa5cc4c2ea1999feadca61bfe0aa4fc06491adf353797dabb7191fcbdc642` |
| 26 | `theorem` | [smul](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/smul--759751fe1461772fe39238d4.md) | 280 | `result-track:759751fe1461772fe39238d4cc77fa84913234d03677654072646d345083738f` |
| 27 | `theorem` | [mul](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/mul--ae2fbc3a2dbf1eff2388d79e.md) | 311 | `result-track:ae2fbc3a2dbf1eff2388d79ea5f0ece518c1f2c7684d218ab40aafb872a27b98` |
| 28 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.TotalLengthFilter.Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.LipschitzOnWith.absolutelyContinuousOnInterval](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/root-grwtsk-topology-generaltopology-totallengthfilter-variante70ff0aea2--d3ec5c91f2c1b404c052e785.md) | 317 | `result-track:d3ec5c91f2c1b404c052e785b42ec9f4b63b1b89c53cd97f3a5f9f530fe2f9d1` |
| 29 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.TotalLengthFilter.Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.LipschitzOnWith.comp_absolutelyContinuousOnInterval](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/root-grwtsk-topology-generaltopology-totallengthfilter-variante70ff0aea2--6d0f84e56168cad5d37fb236.md) | 336 | `result-track:6d0f84e56168cad5d37fb23672faa405fdeee577f4839c7f5e2b2656d68a5a3b` |
| 30 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.TotalLengthFilter.Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.LipschitzWith.comp_absolutelyContinuousOnInterval](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/root-grwtsk-topology-generaltopology-totallengthfilter-variante70ff0aea2--9799b4484eb79c42a2bbbfab.md) | 351 | `result-track:9799b4484eb79c42a2bbbfab372d2ed04f8f70dd71887ad659e035b6d7d35862` |
| 31 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.TotalLengthFilter.Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.ContDiffOn.absolutelyContinuousOnInterval](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/root-grwtsk-topology-generaltopology-totallengthfilter-variante70ff0aea2--7a8e040f7649f79177140797.md) | 358 | `result-track:7a8e040f7649f791771407979d72be6885799ec5f533907744f10295b04cbdf2` |
| 32 | `theorem` | [boundedVariationOn](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/boundedvariationon--eec62da3f979129efeb7b0db.md) | 365 | `result-track:eec62da3f979129efeb7b0db6725b695e5427da6dc3aaadc1b02b6d933893697` |
| 33 | `theorem` | [ae_differentiableAt](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/ae-differentiableat--bac3f4d450a18f8c53cf8edd.md) | 451 | `result-track:bac3f4d450a18f8c53cf8edd587ef69ee84768316eb0699181579d6ff411f54b` |
| 34 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.TotalLengthFilter.Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.IntervalIntegrable.absolutelyContinuousOnInterval_intervalIntegral](../../../../../mathematics/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/declarations/root-grwtsk-topology-generaltopology-totallengthfilter-variante70ff0aea2--fd258bbcc665026a50b98894.md) | 458 | `result-track:fd258bbcc665026a50b988940234d506c3396b49c913fb37d0689538e1cfab6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
