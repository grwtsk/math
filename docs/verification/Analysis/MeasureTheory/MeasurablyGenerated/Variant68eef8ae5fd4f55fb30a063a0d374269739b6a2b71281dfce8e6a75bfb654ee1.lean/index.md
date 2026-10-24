# Verification target: GRWTSK.Analysis.MeasureTheory.MeasurablyGenerated.Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57c7bacebff4687650d740c6ed5f23ed2648f5e3",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57c7bacebff4687650d740c6ed5f23ed2648f5e3`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.CompleteLattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.CountablyGenerated` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.SmallSets` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.LiminfLimsup` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [generateFrom_singleton](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/generatefrom-singleton--1006e64d29a963cd0166d3e5.md) | 37 | `result-track:1006e64d29a963cd0166d3e5ae361b8ce5fb274ab3a0a36361f1f4ceefa4bc5f` |
| 2 | `lemma` | [generateFrom_singleton_le](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/generatefrom-singleton-le--074df06e9b7cc0e60bd744d6.md) | 45 | `result-track:074df06e9b7cc0e60bd744d698de29b6066a7ca5225dc45347ed1b9e476a7b80` |
| 3 | `theorem` | [measurableSet_generateFrom_singleton_iff](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/measurableset-generatefrom-singleton-iff--c9e22f8b30fd4a0fd2082024.md) | 53 | `result-track:c9e22f8b30fd4a0fd208202468740a870e1e8e369cc947d54a05f8f1cac20bf4` |
| 4 | `class` | [IsMeasurablyGenerated](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/ismeasurablygenerated--c2637ad1188970eae38c070b.md) | 110 | `declaration-track:c2637ad1188970eae38c070bc6062a482193b097597fc0d4a3c1ecd40b846bbf` |
| 5 | `instance` | [isMeasurablyGenerated_bot](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/ismeasurablygenerated-bot--78df7a5399b44813f04951d9.md) | 113 | `declaration-track:78df7a5399b44813f04951d96a2a489b67bdeba821577fda3f5be54a80a77d92` |
| 6 | `instance` | [isMeasurablyGenerated_top](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/ismeasurablygenerated-top--81128532316914cd91addbaf.md) | 116 | `declaration-track:81128532316914cd91addbafa873c4d3e1f6f809be421719168cf65e55f71256` |
| 7 | `theorem` | [Eventually.exists_measurable_mem](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/eventually-exists-measurable-mem--955c6025be25c07db9381106.md) | 119 | `result-track:955c6025be25c07db9381106523192b6e54f228b07fffc1ecd185a44b89d87e3` |
| 8 | `theorem` | [Eventually.exists_measurable_mem_of_smallSets](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/eventually-exists-measurable-mem-of-smallsets--00f669e1d3325f94a18c16e4.md) | 123 | `result-track:00f669e1d3325f94a18c16e47d7da05dfd7af85c5a952318a123fb93282b1567` |
| 9 | `instance` | [inf_isMeasurablyGenerated](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/inf-ismeasurablygenerated--ad9f3dd81691007b89f86ab1.md) | 129 | `declaration-track:ad9f3dd81691007b89f86ab14718f1be6c64dee90a3cd694472aa6ea73777753` |
| 10 | `theorem` | [principal_isMeasurablyGenerated_iff](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/principal-ismeasurablygenerated-iff--f138c793779dfd7fb922d71e.md) | 138 | `result-track:f138c793779dfd7fb922d71efb55c7d0417a4fdab59ee4f8dc3784b716ed8b32` |
| 11 | `instance` | [iInf_isMeasurablyGenerated](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/iinf-ismeasurablygenerated--7ff1f4eb4e1316a5e1c42061.md) | 149 | `declaration-track:7ff1f4eb4e1316a5e1c42061b52d801536e139d270238d654b46981d71b9c2cc` |
| 12 | `lemma` | [measurableSet_tendsto](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/measurableset-tendsto--760b2dbfb40cd39f1165f93b.md) | 167 | `result-track:760b2dbfb40cd39f1165f93be3eed26da6be60f31a135d5b21af82d1a3e9f153` |
| 13 | `theorem` | [iUnion_of_monotone_of_frequently](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/iunion-of-monotone-of-frequently--b83db5b30bf85007e5db5882.md) | 183 | `result-track:b83db5b30bf85007e5db5882e4e0c4ad65a4354ebe4f5ecfa32c49239e79e00e` |
| 14 | `theorem` | [iInter_of_antitone_of_frequently](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/iinter-of-antitone-of-frequently--caff817364923ba411cd9f83.md) | 190 | `result-track:caff817364923ba411cd9f8392ea8b34eef43881f6f0374cdc7986654f545efb` |
| 15 | `theorem` | [iUnion_of_monotone](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/iunion-of-monotone--6dacc25565cbb8c4b3009144.md) | 196 | `result-track:6dacc25565cbb8c4b30091441cc50a0be3818b370d1b7c9ebe15939ce944084d` |
| 16 | `theorem` | [iInter_of_antitone](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/iinter-of-antitone--a5e9153d28cc6f4a6ef3a1df.md) | 203 | `result-track:a5e9153d28cc6f4a6ef3a1df069eba0fedc45e0c7c32c2091cb5c44e92ba765e` |
| 17 | `instance` | [Subtype.instMembership](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/subtype-instmembership--bc3fda7eeb08e8d643626738.md) | 213 | `declaration-track:bc3fda7eeb08e8d643626738f6a4acf86b61b20f175aa864635c97f60ce7dbb5` |
| 18 | `theorem` | [mem_coe](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/mem-coe--ff9b7c94c9bba77546afd1d6.md) | 217 | `result-track:ff9b7c94c9bba77546afd1d6901c8240bde97fb72d3f2c88198242791d8f0008` |
| 19 | `instance` | [Subtype.instEmptyCollection](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/subtype-instemptycollection--0d61fa8afa9064bd8450053b.md) | 220 | `declaration-track:0d61fa8afa9064bd8450053b06787a3ee50c214ef7a15de02ce9111a8aeee212` |
| 20 | `theorem` | [coe_empty](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/coe-empty--e94c9a804dc1de0a8f0d160b.md) | 224 | `result-track:e94c9a804dc1de0a8f0d160bfa5df9c4fe80ed685f64ab04fa0f2cbb69ee70a4` |
| 21 | `instance` | [Subtype.instInsert](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/subtype-instinsert--ab928b794255f9f926e502d8.md) | 227 | `declaration-track:ab928b794255f9f926e502d86ecf1672a029044104dd4def013a22c8e484770d` |
| 22 | `theorem` | [coe_insert](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/coe-insert--e7c7c3dceb09385307670b0f.md) | 232 | `result-track:e7c7c3dceb09385307670b0f859cdbf68dee7d4c72661539402b3cd97e9161e1` |
| 23 | `instance` | [Subtype.instSingleton](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/subtype-instsingleton--976f3720c408ba1a1a43afe3.md) | 237 | `declaration-track:976f3720c408ba1a1a43afe3c411f0795faae37b4098d3bdcc4f61e5b32c2c5d` |
| 24 | `theorem` | [coe_singleton](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/coe-singleton--c10752bb9c9038cb2aea65be.md) | 241 | `result-track:c10752bb9c9038cb2aea65be12a232798ef6c80ebc366ed188b5f6c5caf71faf` |
| 25 | `instance` | [Subtype.instLawfulSingleton](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/subtype-instlawfulsingleton--e66514cdb1511f2cc7cc2899.md) | 245 | `declaration-track:e66514cdb1511f2cc7cc289923dd58313cf49eaec7147beeb383455d0a0f1524` |
| 26 | `instance` | [Subtype.instHasCompl](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/subtype-insthascompl--a7c999f5834ff9f65de98944.md) | 249 | `declaration-track:a7c999f5834ff9f65de9894450bf982e2367415920bdd146fae16a459b90366f` |
| 27 | `theorem` | [coe_compl](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/coe-compl--5f134d0cecbf2ba87ba9dd32.md) | 253 | `result-track:5f134d0cecbf2ba87ba9dd327b14481025c1a8ef4ab3b4e9f1f30abc46010273` |
| 28 | `instance` | [Subtype.instUnion](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/subtype-instunion--4299a487e5af8c71800fa667.md) | 256 | `declaration-track:4299a487e5af8c71800fa66721d4ee0ff9f898f24c7f849acdd20e2b812f5b4a` |
| 29 | `theorem` | [coe_union](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/coe-union--fe65f8c091fea8f56ceaa8d2.md) | 260 | `result-track:fe65f8c091fea8f56ceaa8d2577cf60951e8c51b89a49086b17116e23ad2731a` |
| 30 | `instance` | [Subtype.instSup](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/subtype-instsup--2fd513bf94fd2d6fc909c65a.md) | 263 | `declaration-track:2fd513bf94fd2d6fc909c65a635a18a1343cd01364d8de96bfac02b9b89f4937` |
| 31 | `theorem` | [sup_eq_union](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/sup-eq-union--d735926038284893492b2487.md) | 267 | `result-track:d735926038284893492b24874bd866dce410c5cf36aa2653f6fd16512a94bab4` |
| 32 | `instance` | [Subtype.instInter](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/subtype-instinter--cd42f3513c350d3d30b1cc89.md) | 269 | `declaration-track:cd42f3513c350d3d30b1cc899d2ea43ed6f753b61723f5d743ea6ed2302b4848` |
| 33 | `theorem` | [coe_inter](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/coe-inter--c4ceb3126fd0a1d756e2c85f.md) | 273 | `result-track:c4ceb3126fd0a1d756e2c85f0cae8dc06eb3108f84c14bd74d702bf6c1a383ae` |
| 34 | `instance` | [Subtype.instInf](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/subtype-instinf--aa0fd2fe85f8935627dbbc7e.md) | 276 | `declaration-track:aa0fd2fe85f8935627dbbc7e70aaafda1c2310b673ef044533e1d904f2a37578` |
| 35 | `theorem` | [inf_eq_inter](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/inf-eq-inter--0eda6364d20604f516fa4426.md) | 280 | `result-track:0eda6364d20604f516fa4426b78df2a1f38a3db91f784acdad3aa69d741da031` |
| 36 | `instance` | [Subtype.instSDiff](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/subtype-instsdiff--3dd6d5875209b9d30e9cd63e.md) | 282 | `declaration-track:3dd6d5875209b9d30e9cd63e0e9967f0cef284eb07d867c7803b1f7bbf7f5435` |
| 37 | `instance` | [Subtype.instHImp](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/subtype-insthimp--76c7d09f2bfb90fc3249a21d.md) | 286 | `declaration-track:76c7d09f2bfb90fc3249a21d89182af2eb918c06fa84f304230c85bb9b8d449d` |
| 38 | `theorem` | [coe_sdiff](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/coe-sdiff--18fbe73a0fa4b7a62fa720b8.md) | 290 | `result-track:18fbe73a0fa4b7a62fa720b802181855075549761db0a4a690501f0225332197` |
| 39 | `lemma` | [coe_himp](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/coe-himp--362e97ca0140b3dd0a4e3b6e.md) | 294 | `result-track:362e97ca0140b3dd0a4e3b6eb2bcccf63052f936bbdb64a1cd40e0007e069102` |
| 40 | `instance` | [Subtype.instBot](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/subtype-instbot--9c514115894c5c6afb57f3db.md) | 296 | `declaration-track:9c514115894c5c6afb57f3db475b039fa9591e45f01d6c69f0cb7f054e0d97af` |
| 41 | `theorem` | [coe_bot](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/coe-bot--1103dab90a7bebc23eaaf3c3.md) | 299 | `result-track:1103dab90a7bebc23eaaf3c3b1b373a3461c9e0bfb615be7e62d2b02c780da23` |
| 42 | `instance` | [Subtype.instTop](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/subtype-insttop--c56496bf47436649158739c7.md) | 302 | `declaration-track:c56496bf47436649158739c71d11270a6fd50f5c3e3873c0cf3446cdb7daab16` |
| 43 | `theorem` | [coe_top](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/coe-top--427de2c11b437fb1b0eef213.md) | 306 | `result-track:427de2c11b437fb1b0eef213406ddec3c72c5e19ddb42682e3d4b0d0904f9d05` |
| 44 | `instance` | [Subtype.instBooleanAlgebra](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/subtype-instbooleanalgebra--3c072bca92c0827bce00c942.md) | 309 | `declaration-track:3c072bca92c0827bce00c9423f32459ef7710662e9a80f031b6bb30a99e43234` |
| 45 | `theorem` | [measurableSet_blimsup](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/measurableset-blimsup--d74ed414fa4966f3f85ea848.md) | 315 | `result-track:d74ed414fa4966f3f85ea8487c1a5b5c4f4c9138d1fb3428b0dc1f48fab19933` |
| 46 | `theorem` | [measurableSet_bliminf](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/measurableset-bliminf--952b5d6e247f0b6095128b04.md) | 321 | `result-track:952b5d6e247f0b6095128b04a879876fe9fe5f11f1065def2de28dce04073eef` |
| 47 | `theorem` | [measurableSet_limsup](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/measurableset-limsup--ac1d801bb50e302ca0d329cc.md) | 327 | `result-track:ac1d801bb50e302ca0d329cc58a9595f88d5d407b9af666d406a0d2a6d48bf50` |
| 48 | `theorem` | [measurableSet_liminf](../../../../../mathematics/Analysis/MeasureTheory/MeasurablyGenerated/Variant68eef8ae5fd4f55fb30a063a0d374269739b6a2b71281dfce8e6a75bfb654ee1.lean/declarations/measurableset-liminf--a41a400d8dcbe2102bf0c138.md) | 332 | `result-track:a41a400d8dcbe2102bf0c138fde990ab5d86db0ceec3def1212d7d0ec430145d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
