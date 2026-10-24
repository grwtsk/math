# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Restriction.Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a4475ec577d0f43a3c6d3ba7b138138e80d7905",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a4475ec577d0f43a3c6d3ba7b138138e80d7905`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Typing` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/mapsort--25588b806fef974dcfe73525.md) | 36 | `declaration-track:25588b806fef974dcfe7352579f0afc6d5d1da11770fb65b0a59b04b107059d3` |
| 2 | `theorem` | [mapSort_id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/mapsort-id--7ead89000766a2af374564c0.md) | 43 | `result-track:7ead89000766a2af374564c002425855d9db7edbdf2beafa85672bef925affbf` |
| 3 | `theorem` | [mapSort_comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/mapsort-comp--758fe26933d4697645d66107.md) | 46 | `result-track:758fe26933d4697645d661079a8946a6c9d7e7d1339e07ea26780a63d8b2ee66` |
| 4 | `theorem` | [mapSort_rename](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/mapsort-rename--32c7c2cd5048b7ee0570fac3.md) | 50 | `result-track:32c7c2cd5048b7ee0570fac363178286d94a04bc93c957cd99df6d919e50c14e` |
| 5 | `theorem` | [mapSort_liftSub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/mapsort-liftsub--645086a8ceaa560d3a50dd51.md) | 54 | `result-track:645086a8ceaa560d3a50dd51c8d279337fb4379d9b781ccf1d84e1497716990f` |
| 6 | `theorem` | [mapSort_subst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/mapsort-subst--b2b79e448a43cbd688743334.md) | 59 | `result-track:b2b79e448a43cbd68874333469eecd3197b9a05528e83d40aa32dab51babe480` |
| 7 | `theorem` | [mapSort_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/mapsort-single--0da904822837bd00d9bd422b.md) | 64 | `result-track:0da904822837bd00d9bd422b7b44fc44d8aafd0ef39c45896c0ace8222a58664` |
| 8 | `theorem` | [mapSort_instantiate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/mapsort-instantiate--40aa77e9ec5c52c340543905.md) | 69 | `result-track:40aa77e9ec5c52c340543905f71a61e5450308f31f875614da9a11f84d0b45b9` |
| 9 | `theorem` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/mapsort--3b0710882f14b80940345799.md) | 79 | `result-track:3b0710882f14b8094034579912f8e351f01941ed505f6ec2d76d9877228eba0c` |
| 10 | `theorem` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/mapsort--b6c433e863391c639a39cf94.md) | 97 | `result-track:b6c433e863391c639a39cf94b1fc432bf75d1056e9c870ff0d7d1435f3deecd8` |
| 11 | `theorem` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/mapsort--0dab537eade7085882f20ecb.md) | 106 | `result-track:0dab537eade7085882f20ecbadaf0e1c6608484bd8a8fd8ef73ca7260218673c` |
| 12 | `theorem` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/mapsort--26553c7681ef9f76ef412071.md) | 119 | `result-track:26553c7681ef9f76ef412071395073be1779b3dd46438e827659106de162d40d` |
| 13 | `theorem` | [of_mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/of-mapsort--72b7a4914d8e2e6f8c2c4f07.md) | 142 | `result-track:72b7a4914d8e2e6f8c2c4f070e5e250b0169fa0a0ad5df8514885d3d9548578f` |
| 14 | `theorem` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/mapsort--08211d5aa86768dd7e70e4d3.md) | 162 | `result-track:08211d5aa86768dd7e70e4d3c160d4e4b555f10e4f40af233220e51fe00d0141` |
| 15 | `theorem` | [of_retraction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/of-retraction--8fecc76c979ed938b30d55ee.md) | 167 | `result-track:8fecc76c979ed938b30d55ee069647d0cb4b476f4c4f33b66993e733dd1335cb` |
| 16 | `theorem` | [monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/monotone--89fed6339fc6c92c80bcbcfa.md) | 178 | `result-track:89fed6339fc6c92c80bcbcfaf49ffad5e42852f6fc95f4b8165ec76a26c3c810` |
| 17 | `theorem` | [mapSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/mapsort--70b1f52144d9bcce632b2bf5.md) | 190 | `result-track:70b1f52144d9bcce632b2bf59187bf07e0150b3d89695b4bd978c1f64b89b96a` |
| 18 | `theorem` | [has_axiom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/has-axiom--f2075ecfec9674219733c5b4.md) | 206 | `result-track:f2075ecfec9674219733c5b456e4d3716b6bdfc84bbc9159ad8a4f0954d7ea05` |
| 19 | `def` | [restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/restrict--7be757c13758e92e70f5db51.md) | 224 | `declaration-track:7be757c13758e92e70f5db519079b75087eb5d2a16ee3d7014a6ecf59d5cc56c` |
| 20 | `axioms` | [s](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/s--7551a5578fd1e1aea87b1be0.md) | 226 | `declaration-track:7551a5578fd1e1aea87b1be0047031181c93368591fc5e43a093564a130198db` |
| 21 | `def` | [on](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/on--b6dbbfd7a3a12b4762d9fccd.md) | 230 | `declaration-track:b6dbbfd7a3a12b4762d9fccd9d4d16ef340b5c86a43c3b5e7bde6eec7a9440a9` |
| 22 | `axioms` | [s](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/s--b08fcc22267f3c18877ec81d.md) | 231 | `declaration-track:b08fcc22267f3c18877ec81d6e1d9ffa9cac98c2f67dbd4420c900624099a1a9` |
| 23 | `theorem` | [restrict_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/restrict-mono--77131ca63013fda1eb82c758.md) | 240 | `result-track:77131ca63013fda1eb82c7581c69d4d61246a695ef2e12f325e98e31c5834b88` |
| 24 | `theorem` | [finite_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/finite-support--53e7cbea396ce175047ac12c.md) | 245 | `result-track:53e7cbea396ce175047ac12c1f7075d4ce63706f4feeeea446c722f4a80ad858` |
| 25 | `theorem` | [on](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/on--0ad459ea093d61e9f27c4191.md) | 293 | `result-track:0ad459ea093d61e9f27c419105686165a562f36f6805846148ea9877d666d3c3` |
| 26 | `theorem` | [finite_counterexample](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variantb722ce6e647a15a59e90136df3f4cc09dd3eefce40473a52ccf5703b2a95b05e.lean/declarations/finite-counterexample--60c8a94fccc0c84262e470c4.md) | 318 | `result-track:60c8a94fccc0c84262e470c43c6cd35501fb6240231292b8afdf4021bd04e97d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
