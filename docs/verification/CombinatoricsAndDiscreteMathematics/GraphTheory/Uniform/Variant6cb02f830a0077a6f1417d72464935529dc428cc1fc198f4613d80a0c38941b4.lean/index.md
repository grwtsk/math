# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Uniform.Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ea99a3dd6edf4e87dcd9010dc7bf9c3a09f16dd",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ea99a3dd6edf4e87dcd9010dc7bf9c3a09f16dd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean.json)

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
| 1 | `def` | [IsUniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/isuniform--9f46b9ed0cd8c270305e4396.md) | 61 | `declaration-track:9f46b9ed0cd8c270305e439657dd7b916b0ddb0d0ef875a04f6a5580cf57c81c` |
| 2 | `theorem` | [IsUniform.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/isuniform-mono--7faf56bf8b376d33255ac64f.md) | 68 | `result-track:7faf56bf8b376d33255ac64fa4da111c33307140294d3ff18e5cc9985fdbf78a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/instance--7eccc01f2c0b56eb3b40dab2.md) | 73 | `declaration-track:7eccc01f2c0b56eb3b40dab21085f833a81cacc38f34206208444e37e4fe5cc5` |
| 4 | `theorem` | [IsUniform.symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/isuniform-symm--f7d44f89d74e24396e595ab3.md) | 79 | `result-track:f7d44f89d74e24396e595ab350f3c9062eb912d83fb9c80eee7de37dc403e14e` |
| 5 | `theorem` | [isUniform_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/isuniform-comm--460a365ea84ec9cec3ec18d4.md) | 85 | `result-track:460a365ea84ec9cec3ec18d41e727dd0694ff6d28a55dd44235c4e74ef97ab39` |
| 6 | `lemma` | [isUniform_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/isuniform-one--083e22cebca3fefdb5befb6b.md) | 88 | `result-track:083e22cebca3fefdb5befb6b0f3993e63cf61a7c31a3ab69509667cbaa35cdaf` |
| 7 | `lemma` | [IsUniform.pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/isuniform-pos--f4996e85cf8092207e145602.md) | 97 | `result-track:f4996e85cf8092207e145602a51905024ef91f02b3030f9a065214d426f3eebf` |
| 8 | `lemma` | [isUniform_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/isuniform-singleton--0ebcc0e364e53987fba7fc6d.md) | 102 | `result-track:0ebcc0e364e53987fba7fc6d9ef06e70dce286fa9d00cdae611b579d9352d566` |
| 9 | `theorem` | [not_isUniform_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/not-isuniform-zero--80539f889b184bdc543c844e.md) | 113 | `result-track:80539f889b184bdc543c844e4381296e8cc0284a9167b7fe9dd3e409874436fe` |
| 10 | `theorem` | [not_isUniform_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/not-isuniform-iff--d877ba0f458ab7ce8f133593.md) | 116 | `result-track:d877ba0f458ab7ce8f133593272e8d9f7c8e0c6935edcf3b8c5fe0dd65560faf` |
| 11 | `def` | [nonuniformWitnesses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/nonuniformwitnesses--f3ee3e084cc82d6bde9778dd.md) | 127 | `declaration-track:f3ee3e084cc82d6bde9778dd2ab2e49194f874cc77c803ca956a027d9106aea0` |
| 12 | `theorem` | [left_nonuniformWitnesses_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/left-nonuniformwitnesses-subset--5b790544631040d0020fa55a.md) | 132 | `result-track:5b790544631040d0020fa55a538c5318f1c5e5935664b69d0ab76c9be111aabb` |
| 13 | `theorem` | [left_nonuniformWitnesses_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/left-nonuniformwitnesses-card--4d272fc45aa4ff806cdaaef5.md) | 137 | `result-track:4d272fc45aa4ff806cdaaef5a63148fca643c060fb7117d6278411111ab82dcc` |
| 14 | `theorem` | [right_nonuniformWitnesses_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/right-nonuniformwitnesses-subset--be60b5cb3129838ff965712d.md) | 142 | `result-track:be60b5cb3129838ff965712d1b9e1a9c9ae7e0460aee13c4cb433d7c0659ef64` |
| 15 | `theorem` | [right_nonuniformWitnesses_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/right-nonuniformwitnesses-card--d45b6a9fc12565d6292b2134.md) | 147 | `result-track:d45b6a9fc12565d6292b213466ed949cea459f49a48b78964bd593823e297651` |
| 16 | `theorem` | [nonuniformWitnesses_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/nonuniformwitnesses-spec--12c4720052a94fa2e90a72e5.md) | 152 | `result-track:12c4720052a94fa2e90a72e5e92255a3f1fef756437df30b593dc62f0dc840df` |
| 17 | `def` | [nonuniformWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/nonuniformwitness--9dc9941c79ed37141a5923df.md) | 163 | `declaration-track:9dc9941c79ed37141a5923dff5b989e6869e8b427bf51cd419903ef2a30ae83d` |
| 18 | `theorem` | [nonuniformWitness_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/nonuniformwitness-subset--cad39ac6f06620290ba39ca3.md) | 166 | `result-track:cad39ac6f06620290ba39ca3b3574983903672a14fcb97882fda30f2fc6f3be6` |
| 19 | `theorem` | [le_card_nonuniformWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/le-card-nonuniformwitness--4603da9a257a7d015ec25619.md) | 172 | `result-track:4603da9a257a7d015ec25619f1dd6e8057bbbb76c75ffccf08ba3418d232901b` |
| 20 | `theorem` | [nonuniformWitness_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/nonuniformwitness-spec--3356ff624519fac1edff0594.md) | 179 | `result-track:3356ff624519fac1edff05948735160783bf5196b0da010be25952964660f4c5` |
| 21 | `def` | [sparsePairs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/sparsepairs--54cc9ada86ab11c035f658cf.md) | 201 | `declaration-track:54cc9ada86ab11c035f658cfd4450e4f5f74a30f998a953f4fb733e07ba0b6fe` |
| 22 | `lemma` | [mk_mem_sparsePairs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/mk-mem-sparsepairs--05268717a2c1009fe579dc47.md) | 206 | `result-track:05268717a2c1009fe579dc47d79f6f97ffc659a5a13fc244d8cdafed7a31ef0c` |
| 23 | `lemma` | [sparsePairs_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/sparsepairs-mono--dfb383eb919d5eb63ab2cec5.md) | 211 | `result-track:dfb383eb919d5eb63ab2cec537a0c3de209e4beb53ae7069421c8db8627a671a` |
| 24 | `def` | [nonUniforms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/nonuniforms--4ae7df48543218b30fbf4a84.md) | 216 | `declaration-track:4ae7df48543218b30fbf4a843d9b447ef7adb9cdcf633d3bf5547f7faf1db22f` |
| 25 | `lemma` | [mk_mem_nonUniforms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/mk-mem-nonuniforms--e9524104ed8ca6d6a0bc9352.md) | 220 | `result-track:e9524104ed8ca6d6a0bc935231781ddd6366f58e853a0c1f415532f92f30205f` |
| 26 | `theorem` | [nonUniforms_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/nonuniforms-mono--ca0f4a662c6ceecf3e0f3004.md) | 224 | `result-track:ca0f4a662c6ceecf3e0f3004ec4d0ba09d6dcafea6371be8c0cc3d40196fe0a5` |
| 27 | `theorem` | [nonUniforms_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/nonuniforms-bot--e4a7de3fed9178abc76fc6a6.md) | 227 | `result-track:e4a7de3fed9178abc76fc6a6b484fe92b8217886dcbbcea5a21e10412f7fd398` |
| 28 | `def` | [IsUniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/isuniform--5983611f1dc7d7435a44f9d6.md) | 237 | `declaration-track:5983611f1dc7d7435a44f9d637316d3e7e71276c7e111391cf79c2ddeeb6c899` |
| 29 | `lemma` | [bot_isUniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/bot-isuniform--cff89e8ead1b2578e590498e.md) | 240 | `result-track:cff89e8ead1b2578e590498eaf44e1adfd7b9c01c0a77275c6758dc3051973bc` |
| 30 | `lemma` | [isUniform_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/isuniform-one--e8e71c3d4f7ca6cab842260a.md) | 245 | `result-track:e8e71c3d4f7ca6cab842260a2018ad33d8479c0313fa32766dffe7fbc056c308` |
| 31 | `theorem` | [IsUniform.mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/isuniform-mono--1fe07683f7835533bd79cdbb.md) | 253 | `result-track:1fe07683f7835533bd79cdbb890a16c858bf92409c614ba145de8750499a41a8` |
| 32 | `theorem` | [isUniformOfEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/isuniformofempty--84f6ef539e8435c91b3fcdd5.md) | 257 | `result-track:84f6ef539e8435c91b3fcdd524b7bc33f5904e42d45bf18c797a0518678aebf3` |
| 33 | `theorem` | [nonempty_of_not_uniform](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/nonempty-of-not-uniform--61a5ed398dd505704cec7824.md) | 261 | `result-track:61a5ed398dd505704cec78246653023f6236003cd1b647ee22d2385a60baf4d2` |
| 34 | `def` | [nonuniformWitnesses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/nonuniformwitnesses--0c2a56101402ad0e4d9fbe78.md) | 267 | `declaration-track:0c2a56101402ad0e4d9fbe78a8721155215a3684bea628165d4782fcf7a6889d` |
| 35 | `lemma` | [card_nonuniformWitnesses_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/card-nonuniformwitnesses-le--65117c405af7d55b2878b493.md) | 272 | `result-track:65117c405af7d55b2878b493c4b7a17e375fb80d5cb58d09b5f8f2fc24dfb384` |
| 36 | `theorem` | [nonuniformWitness_mem_nonuniformWitnesses](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/nonuniformwitness-mem-nonuniformwitnesses--3963cb02d2b44a5b7c696648.md) | 275 | `result-track:3963cb02d2b44a5b7c696648987cf1e29624488385d38c626bb090d67fa5d5b4` |
| 37 | `lemma` | [IsEquipartition.card_interedges_sparsePairs_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/isequipartition-card-interedges-sparsepairs-le--a9affcafecbb90347f60f639.md) | 282 | `result-track:a9affcafecbb90347f60f6396dc5057f66be5d932d2b56d89b5149dfbd8dc65a` |
| 38 | `lemma` | [IsEquipartition.card_interedges_sparsePairs_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/isequipartition-card-interedges-sparsepairs-le--724cc59e2844644bb875e156.md) | 311 | `result-track:724cc59e2844644bb875e15651c883251d1d1190f8c96c82d99fbee3b8dc6fb3` |
| 39 | `lemma` | [aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/aux--04bba75612cfc04580ead312.md) | 318 | `result-track:04bba75612cfc04580ead312dfbb5d1f83f83c422639cc0e93cba37f840d8bee` |
| 40 | `lemma` | [IsEquipartition.card_biUnion_offDiag_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/isequipartition-card-biunion-offdiag-le--4dc727ffcf924457f4639f07.md) | 326 | `result-track:4dc727ffcf924457f4639f07256dfbdb04d49d8e7aed6ca4cb8bdf4741ed34b9` |
| 41 | `lemma` | [IsEquipartition.card_biUnion_offDiag_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/isequipartition-card-biunion-offdiag-le--23032bd8d3cc70f5073fa904.md) | 344 | `result-track:23032bd8d3cc70f5073fa9040d17bf9dd0088f6ac6c6c081a2e2657f1d106e21` |
| 42 | `lemma` | [IsEquipartition.sum_nonUniforms_lt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/isequipartition-sum-nonuniforms-lt--0f14bd9bf3978ad2187c2c3c.md) | 360 | `result-track:0f14bd9bf3978ad2187c2c3c0c44303faf0081cef020e54123c309f06f4175fa` |
| 43 | `lemma` | [IsEquipartition.sum_nonUniforms_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/isequipartition-sum-nonuniforms-lt--ca2c3ed8d02663d68abb0872.md) | 379 | `result-track:ca2c3ed8d02663d68abb08726510d6678e6c6ce7f4885dd11bebdd18ea45234e` |
| 44 | `def` | [regularityReduced](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/regularityreduced--72411d03a9357991b38ea21f.md) | 397 | `declaration-track:72411d03a9357991b38ea21f3f438a4f9a68f246745104c754ad5f120292a98c` |
| 45 | `instance` | [regularityReduced.instDecidableRel_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/regularityreduced-instdecidablerel-adj--9504eba1c38ef140b15ead7d.md) | 405 | `declaration-track:9504eba1c38ef140b15ead7df77573284749f207c68149aac386a00470e9b4d3` |
| 46 | `lemma` | [regularityReduced_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/regularityreduced-le--b55cdd8be0b9908062d70fe3.md) | 411 | `result-track:b55cdd8be0b9908062d70fe3a39f1fc7650728f4d5c2d5be042c7efdf8b6f17d` |
| 47 | `lemma` | [regularityReduced_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/regularityreduced-mono--0f44906ee0d99737ad62c73d.md) | 413 | `result-track:0f44906ee0d99737ad62c73dc2050eb5a2985c91ed8156b88f88cacd7f34d6e3` |
| 48 | `lemma` | [regularityReduced_anti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/regularityreduced-anti--8f90c0edbad1e0bc921cc6f6.md) | 419 | `result-track:8f90c0edbad1e0bc921cc6f6c74a1ade0ac246ef06c4f85859a603e057413aac` |
| 49 | `lemma` | [unreduced_edges_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant6cb02f830a0077a6f1417d72464935529dc428cc1fc198f4613d80a0c38941b4.lean/declarations/unreduced-edges-subset--a04fd2c689066bfad1da2a98.md) | 425 | `result-track:a04fd2c689066bfad1da2a98ac899dfcde7dd1a46dbdfa27efeaab1372706d05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
