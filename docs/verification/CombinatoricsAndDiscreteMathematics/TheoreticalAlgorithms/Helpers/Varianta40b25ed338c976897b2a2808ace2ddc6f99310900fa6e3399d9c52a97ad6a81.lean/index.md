# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Helpers.Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37eb39841ffb56c83a4346fe0641fc1c361456b4",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37eb39841ffb56c83a4346fe0641fc1c361456b4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Legacy` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TestHandler](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/testhandler--66bfbc6ee2cf82cfdfd86480.md) | 29 | `declaration-track:66bfbc6ee2cf82cfdfd86480d5415febead29b2c02d6e8998a5ebe725a469666` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/instance--2c0f118309cff206b3a793ab.md) | 31 | `declaration-track:2c0f118309cff206b3a793abfe21c13639cb8dcef31d2eb35331d7932fd646d2` |
| 3 | `def` | [defaultConfig](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/defaultconfig--e939717420d5e82e12a1a18e.md) | 37 | `declaration-track:e939717420d5e82e12a1a18eb12333efbf04c6e5109f48956c8f24fdcb7c6863` |
| 4 | `def` | [sendRaw](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/sendraw--ad845f2bf019275fb672ce30.md) | 40 | `declaration-track:ad845f2bf019275fb672ce30eff9f8caa020bd0ed5542ddda4a3113ec08f6fcc` |
| 5 | `def` | [sendClose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/sendclose--7353be23eaca0cc9649c867e.md) | 49 | `declaration-track:7353be23eaca0cc9649c867efd204f9aaf16510911d44e3957cd90178aafac83` |
| 6 | `def` | [withTimeout](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/withtimeout--88ad6e8fcec393851f5b8720.md) | 61 | `declaration-track:88ad6e8fcec393851f5b872093a2bd62279ae611a8539764b557f86ac06792e5` |
| 7 | `def` | [runGroup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/rungroup--6097b1fb8ffbbef374123146.md) | 80 | `declaration-track:6097b1fb8ffbbef3741231462bbcb08e8f3eaf107c5e28742a32a15e2f835ff9` |
| 8 | `def` | [check](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/check--77f0f3cb8638873c630f5a87.md) | 89 | `declaration-track:77f0f3cb8638873c630f5a87446cab4d0cd3442b3ebd4c472345ff39433797b8` |
| 9 | `def` | [checkClose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/checkclose--00cf5b87e21100af11f7ffc8.md) | 104 | `declaration-track:00cf5b87e21100af11f7ffc89a21405a937a4afdeca96fe1048323fd6e530929` |
| 10 | `def` | [checkTimed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/checktimed--153d991b04eff98c357b44c5.md) | 119 | `declaration-track:153d991b04eff98c357b44c50fe707513719d1b409d379b202ad2e3853dcc563` |
| 11 | `def` | [assertStatus](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/assertstatus--c7a3b3d52b71e0a4a709b464.md) | 133 | `declaration-track:c7a3b3d52b71e0a4a709b464dde95ed516ac6c4fe45cb3c5a01796ad330e080f` |
| 12 | `def` | [assertExact](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/assertexact--b2051140301f4a776837bf2f.md) | 142 | `declaration-track:b2051140301f4a776837bf2fef4b60860b6c2fe3795319bddf320c8fe689f3aa` |
| 13 | `def` | [assertContains](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/assertcontains--c4eaed52383e817c0a590484.md) | 150 | `declaration-track:c4eaed52383e817c0a590484024c593d63a6b80272aa4ea16069e597a75c1cdb` |
| 14 | `def` | [assertAbsent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/assertabsent--bc8f6feff55e8730146609ae.md) | 158 | `declaration-track:bc8f6feff55e8730146609aecf78d139b581ff759b3506befdfaffa5a05527db` |
| 15 | `def` | [assertResponseCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/assertresponsecount--5a5f53c5d33ae27e03d0f766.md) | 166 | `declaration-track:5a5f53c5d33ae27e03d0f766e276c14e811359393db2134287929e95b208bdeb` |
| 16 | `def` | [r400](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/r400--231575c2f9281f7fd0210f79.md) | 174 | `declaration-track:231575c2f9281f7fd0210f79aab1ec7833482422fa6d373bb291bd984a8b9614` |
| 17 | `def` | [r408](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/r408--be8b070284952735dd563ad2.md) | 177 | `declaration-track:be8b070284952735dd563ad284027a06d192a07d80c05da81aed102480a097ff` |
| 18 | `def` | [r413](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/r413--c2041a8c2c5f9a0b3d71f9f0.md) | 180 | `declaration-track:c2041a8c2c5f9a0b3d71f9f0f4c539d5a1370e695a3850ad8cbeaaca65731d4a` |
| 19 | `def` | [r417](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/r417--829a7a0835f25dc9a602051e.md) | 183 | `declaration-track:829a7a0835f25dc9a602051e64e74370b3bdb5495fc4a160b9fe85cce6650092` |
| 20 | `def` | [r431](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/r431--031047cfd6ded9b345609371.md) | 186 | `declaration-track:031047cfd6ded9b3456093717838187ba6a2b247638f946c82212e4e645cc5a0` |
| 21 | `def` | [r505](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/r505--8a3b75c85c12ad95110b182e.md) | 189 | `declaration-track:8a3b75c85c12ad95110b182e1856a824678aa42a6e6a07ed00d0e6883836bc5a` |
| 22 | `def` | [okHandler](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/okhandler--e8ba7373f3b01d7920340e6c.md) | 197 | `declaration-track:e8ba7373f3b01d7920340e6c78a2b5302bfd9e2480b026eb1037b5bfff1a04cc` |
| 23 | `def` | [echoHandler](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/echohandler--42ec8c52933c6ab0e5eebb0d.md) | 202 | `declaration-track:42ec8c52933c6ab0e5eebb0d0382401ec905f857f4dc70a4521beb9a55980a3f` |
| 24 | `def` | [uriHandler](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/urihandler--c57cd07c3f8af9c27dd0dd24.md) | 208 | `declaration-track:c57cd07c3f8af9c27dd0dd24fb8584f1d7f4559d33e05ceca15e129021a9ca92` |
| 25 | `def` | [mkGet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/mkget--cdafac9c76fe2e4873cc3a3a.md) | 217 | `declaration-track:cdafac9c76fe2e4873cc3a3ac5df5de7c6cc38a1afba7658358032f74f9158b2` |
| 26 | `def` | [mkGetClose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/mkgetclose--20e1d12709948037648cfb8e.md) | 223 | `declaration-track:20e1d12709948037648cfb8ece0d8d7335fe42feba5e2949836ed62f2550b550` |
| 27 | `def` | [mkPost](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/mkpost--e03685f7cd06eef23bf0f09e.md) | 229 | `declaration-track:e03685f7cd06eef23bf0f09e1daa32ee61ad8aac51decbb8203688445d81b174` |
| 28 | `def` | [mkChunked](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/mkchunked--ef83b9509e087b7f9ea1ab71.md) | 236 | `declaration-track:ef83b9509e087b7f9ea1ab71bf7003160af4697af9ac9abc92e59756df36bee0` |
| 29 | `def` | [chunk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/chunk--782d20a292869d2f8a9ca22e.md) | 242 | `declaration-track:782d20a292869d2f8a9ca22ef7a22272af23e2dfd4cfc4f5343802fe074ca35f` |
| 30 | `def` | [chunkEnd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Helpers/Varianta40b25ed338c976897b2a2808ace2ddc6f99310900fa6e3399d9c52a97ad6a81.lean/declarations/chunkend--ca3a4b555f62b0fb6988793c.md) | 249 | `declaration-track:ca3a4b555f62b0fb6988793cfdf6580ebe246d35b7b2b11dad75140f064dec98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
