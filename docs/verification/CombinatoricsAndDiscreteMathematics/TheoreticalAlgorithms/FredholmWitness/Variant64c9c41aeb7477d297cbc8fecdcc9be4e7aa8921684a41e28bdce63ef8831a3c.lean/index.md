# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FredholmWitness.Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15ed073b8f8459a0f93aba4bd1cbdb7fcc1518b9",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15ed073b8f8459a0f93aba4bd1cbdb7fcc1518b9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kernel.Checked` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatrixWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/matrixwitness--7fb718c8a9226e349f63cb5b.md) | 21 | `declaration-track:7fb718c8a9226e349f63cb5b98ddb5a97ecfce817a8fcc46393c9f2fc6ac493c` |
| 2 | `def` | [finiteDeterminantRedundancyClaim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/finitedeterminantredundancyclaim--b305d547e797369b7cfe6e30.md) | 27 | `declaration-track:b305d547e797369b7cfe6e3096da1fe9b2b5f971f01c5a886ef38cdd901550ea` |
| 3 | `def` | [finiteDeterminantRedundancyWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/finitedeterminantredundancywitness--ba3263ad53f65d649f94e7a8.md) | 30 | `declaration-track:ba3263ad53f65d649f94e7a82f19871d93eaa429d9c6ee6ac21fa8386249e99f` |
| 4 | `theorem` | [finiteDeterminantRedundancyWitness_isProved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/finitedeterminantredundancywitness-isproved--d06e0c8ad47d0b573238b2a7.md) | 35 | `result-track:d06e0c8ad47d0b573238b2a7ff278db6c4827792fa727d24a777192de3c6ceb6` |
| 5 | `structure` | [AnalyticOverclaimContext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/analyticoverclaimcontext--28632d51007e50d43d7c772e.md) | 40 | `declaration-track:28632d51007e50d43d7c772eaf88336bec47f661d61f5ca9a8cc2635fb5bef78` |
| 6 | `def` | [analyticOverclaim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/analyticoverclaim--f8da7a4ba31a9da81772c007.md) | 44 | `declaration-track:f8da7a4ba31a9da81772c007dd999a28dd74d776bcb5a970af30d40881c00ed2` |
| 7 | `inductive` | [OverclaimAtom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/overclaimatom--6fcffe7499dbc0091e1860db.md) | 47 | `declaration-track:6fcffe7499dbc0091e1860dbdca70e4ba8a6de4410a09148232930a6b72741e2` |
| 8 | `def` | [overclaimAtomResidue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/overclaimatomresidue--dfc563c09bcc3256cdfaff79.md) | 52 | `declaration-track:dfc563c09bcc3256cdfaff795f7be52cb64799c888619982a948d2e48ade623d` |
| 9 | `def` | [overclaimAtoms](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/overclaimatoms--9df4b7ec614678e0d368a5ee.md) | 66 | `declaration-track:9df4b7ec614678e0d368a5ee94a6690dd92c4db144f7b3e70986634bb03665dc` |
| 10 | `def` | [analyticOverclaimResidues](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/analyticoverclaimresidues--9afc3e803166f0d45ca51801.md) | 71 | `declaration-track:9afc3e803166f0d45ca51801ddc6ff6b6ad7556765715b97d7c1cc9e37476142` |
| 11 | `def` | [analyticOverclaimWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/analyticoverclaimwitness--cb61475832a6d8c641d7f0a5.md) | 74 | `declaration-track:cb61475832a6d8c641d7f0a5e286ba46218a410058ddbc4161d9fe025c017a80` |
| 12 | `theorem` | [analyticOverclaimWitness_hasResidue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/analyticoverclaimwitness-hasresidue--bc4864d259ba8856d5f6975d.md) | 78 | `result-track:bc4864d259ba8856d5f6975de402c3d4e1c5fdca887511b23cece0621a1eb1b1` |
| 13 | `theorem` | [analyticOverclaimResidue_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/analyticoverclaimresidue-count--2d9dec021e3afe7b59b05a3a.md) | 83 | `result-track:2d9dec021e3afe7b59b05a3aeb31bd42b4629a0d439a4694ac1affa838905e27` |
| 14 | `theorem` | [analyticOverclaimResidues_targets_correct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/analyticoverclaimresidues-targets-correct--472f769e410500ba2bcdb40d.md) | 87 | `result-track:472f769e410500ba2bcdb40d51f3e6690a6497f514e1e353fbb94b80944f5c2b` |
| 15 | `theorem` | [overclaimAtoms_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/overclaimatoms-nodup--48576443903999ae39771834.md) | 95 | `result-track:48576443903999ae397718343efe905bc96660d13adbbbd5157e9e62ae5748e1` |
| 16 | `inductive` | [Channel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/channel--3b47a84e6284f92083d8d25e.md) | 101 | `declaration-track:3b47a84e6284f92083d8d25e0a0a1496083b46fd1d7339aebe6a23658272c6be` |
| 17 | `def` | [channels](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/channels--efadfca75b969d992004c7fb.md) | 108 | `declaration-track:efadfca75b969d992004c7fb87c667cb644ac619e7fa5f20d1ae265d5ee6ec5a` |
| 18 | `def` | [pointCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/pointcount--cb2a072a6e1f5781f33cf3bc.md) | 115 | `declaration-track:cb2a072a6e1f5781f33cf3bc7719e161fca6c317219b122976c8c819c604b427` |
| 19 | `def` | [rotate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/rotate--3aceb8e42de34e2aca4197a4.md) | 118 | `declaration-track:3aceb8e42de34e2aca4197a493d83c7951c4c1d7f1f6cd1f1f6849bd99f16c88` |
| 20 | `def` | [actionPower](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/actionpower--60e07ebfa8ff5e801c94db80.md) | 124 | `declaration-track:60e07ebfa8ff5e801c94db80ae309d627ea0a02d28c9616f7b902633ea40ebae` |
| 21 | `def` | [spectralCoverCondition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/spectralcovercondition--a8ca6e25bf74a99b0b29144a.md) | 128 | `declaration-track:a8ca6e25bf74a99b0b29144a9e8cd02bd2a50e6e49f6d84df4fb4686c470f104` |
| 22 | `theorem` | [x1_has_sixteen_points](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/x1-has-sixteen-points--1efea464782512bf52dc50ed.md) | 131 | `result-track:1efea464782512bf52dc50ed9b2fcf96d5b0b36f5ef633f456f6662639a39fdd` |
| 23 | `theorem` | [channels_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/channels-count--120e6161413f3de5b8db4d28.md) | 135 | `result-track:120e6161413f3de5b8db4d28ca4a7c0806258bbb3f7c512d3f9c5bed508cadd3` |
| 24 | `theorem` | [rotate_four_identity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/rotate-four-identity--481d421a4094826cd6f4b8fa.md) | 139 | `result-track:481d421a4094826cd6f4b8faead13b6584385af4c2862f9a7c81ecc51076bf2c` |
| 25 | `theorem` | [every_channel_has_level_one_spectral_cover](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/every-channel-has-level-one-spectral-cover--d54d61cafb2f3bb6b4b8a89b.md) | 143 | `result-track:d54d61cafb2f3bb6b4b8a89bd96bcc8c3d5ee6108099f54089bd3935cfc64b59` |
| 26 | `def` | [finiteSpectralWitnessResidue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/finitespectralwitnessresidue--e52af05a0aaf7358b55c7f09.md) | 148 | `declaration-track:e52af05a0aaf7358b55c7f097e7f3b9ba32374c6cb8443d4213e01acf865ee75` |
| 27 | `def` | [finiteSpectralWitnessClaim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/finitespectralwitnessclaim--0d378cdd92d20e74db284f55.md) | 155 | `declaration-track:0d378cdd92d20e74db284f550db19337961b08b8b597462cf869e5d3eb3e01a6` |
| 28 | `def` | [finiteSpectralWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/finitespectralwitness--82a9ab05acc4fbcf25775bf2.md) | 158 | `declaration-track:82a9ab05acc4fbcf25775bf2249d5335dfaba2afe08c22dbaed8e36f1a29e434` |
| 29 | `theorem` | [finiteSpectralWitness_isProved](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/finitespectralwitness-isproved--a977be78d3e67a17a9b8e72b.md) | 162 | `result-track:a977be78d3e67a17a9b8e72b2ad583217f4229e7f181eed39d552406b286fcbf` |
| 30 | `def` | [spectralAuthorityOverclaimWitness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/spectralauthorityoverclaimwitness--8e5273a49bba30397bfe9cb7.md) | 166 | `declaration-track:8e5273a49bba30397bfe9cb7338903533d680b2d2ce520da606d1419848f5638` |
| 31 | `theorem` | [spectralAuthorityOverclaimWitness_hasResidue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean/declarations/spectralauthorityoverclaimwitness-hasresidue--cee3e4733ad9f9676a70c1db.md) | 170 | `result-track:cee3e4733ad9f9676a70c1db38516a0f2533ade9a10e77ff4438a96bba5961f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
