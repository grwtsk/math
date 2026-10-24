# Verification target: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.PrefixTableState

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15ddb30db958044de25e4a32529f69da8fc13aba",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableState.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15ddb30db958044de25e4a32529f69da8fc13aba`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableState.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableState.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableState`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [loopVertexDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/loopvertexdecidableeq--58e7ae4b183081e15251199e.md) | 15 | `declaration-track:58e7ae4b183081e15251199ee53720156a46b809703041a06157c077a22ba0c6` |
| 2 | `instance` | [loopTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/looptagdecidableeq--64475c114a970558fcd92c9d.md) | 18 | `declaration-track:64475c114a970558fcd92c9d61be9b9dac5359201e86305ed2022e8ec1d0806d` |
| 3 | `def` | [falseTag](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/falsetag--2483987cacb60f4ebaf4421d.md) | 21 | `declaration-track:2483987cacb60f4ebaf4421d6f37c04f4685d12ca7df97b2586b827a489906da` |
| 4 | `def` | [trueTag](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/truetag--fa5dc1039ee02f2924726c32.md) | 24 | `declaration-track:fa5dc1039ee02f2924726c3284570e0cccf8f40c7db9ef99d20869fd0dba16b8` |
| 5 | `theorem` | [tags_distinct](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/tags-distinct--11f036e42050c9bf98b6336f.md) | 27 | `result-track:11f036e42050c9bf98b6336fbb4918bec53bbffe01dd93e2c27b5649f1729aec` |
| 6 | `def` | [falseOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/falseoccurrence--d4716f4e2d83298354c44eb5.md) | 33 | `declaration-track:d4716f4e2d83298354c44eb5158fc78232964be9c52985733128e74246fafa21` |
| 7 | `def` | [trueOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/trueoccurrence--d00e4bf18d04dfd4685d9308.md) | 36 | `declaration-track:d00e4bf18d04dfd4685d9308ce21789f7f3a1abffdb630e29f2981b719a415a9` |
| 8 | `def` | [firstRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/firstrows--32ee59eea4a7bed461cdad54.md) | 39 | `declaration-track:32ee59eea4a7bed461cdad546079644f42c2440252d859b3ac53d13efcfaf1ec` |
| 9 | `def` | [secondRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/secondrows--543f0add12d015abe8ee567e.md) | 42 | `declaration-track:543f0add12d015abe8ee567e3c980d2b5fa466175636babdc9752479ecd410d0` |
| 10 | `def` | [initial](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/initial--b2d3e7762add39ad5890d4a1.md) | 45 | `declaration-track:b2d3e7762add39ad5890d4a1dd05902183c99f40453beb0fa31ffd988c243e7b` |
| 11 | `def` | [sequential](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/sequential--816ad605df238ed06b8081b3.md) | 46 | `declaration-track:816ad605df238ed06b8081b30bb6e1fabd8ded56ac6f017f0718c3ac2d50571f` |
| 12 | `def` | [combined](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/combined--b228dcfb103a60cea5232420.md) | 48 | `declaration-track:b228dcfb103a60cea52324201499c29a7ab8067240ee19a74d535b42192d64d3` |
| 13 | `theorem` | [first_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/first-inventory--19896fc04c53ba8a38e5acad.md) | 51 | `result-track:19896fc04c53ba8a38e5acad1da932e5dfe0bf7c7aadd8161e17d70612ae3fe1` |
| 14 | `theorem` | [second_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/second-inventory--31e092aa9767291d9ff27505.md) | 56 | `result-track:31e092aa9767291d9ff2750528c50aed647e1d6a653aab4c36102019db93aca2` |
| 15 | `theorem` | [combined_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/combined-inventory--cf55c69c2887e6372063f216.md) | 60 | `result-track:cf55c69c2887e6372063f216b6214be715c32c4422413d9ea68ed47162a5bb29` |
| 16 | `theorem` | [first_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/first-dictionary--1fbff3b539f1ad4dcdef9e04.md) | 66 | `result-track:1fbff3b539f1ad4dcdef9e042b2de6739180873d56da13402b1baacdd3840778` |
| 17 | `theorem` | [sequential_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/sequential-dictionary--67902acdc2db073193fe912f.md) | 72 | `result-track:67902acdc2db073193fe912f41775bcf9a7878e82067b132d9859f5f2fda035c` |
| 18 | `theorem` | [combined_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/combined-dictionary--d20ef178a6d1b054f46e5d8a.md) | 78 | `result-track:d20ef178a6d1b054f46e5d8a4f5b2d393b91febe108c067567ba011d441e20f7` |
| 19 | `theorem` | [sequential_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/sequential-wellformed--1aba21a4883529867be97e39.md) | 84 | `result-track:1aba21a4883529867be97e393c9109cc57bbeb040f97559f02372869aa01b806` |
| 20 | `theorem` | [combined_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/combined-wellformed--e9e2560e82503b46908ec27f.md) | 87 | `result-track:e9e2560e82503b46908ec27fbd6af565fbfe2a3c075b1b7b190f33e86b28af23` |
| 21 | `theorem` | [sequential_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/sequential-actual-decode--c484bad6dbefe540b02745f3.md) | 90 | `result-track:c484bad6dbefe540b02745f3b3eb75be5e006ed47a22564d8f1687f91fb94fd2` |
| 22 | `theorem` | [combined_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/combined-actual-decode--01b9da0ee43e93cee3c8b5b7.md) | 95 | `result-track:01b9da0ee43e93cee3c8b5b7c19d0250a866e3aeb78c6161696dc9c77bf39ec9` |
| 23 | `theorem` | [actual_grouping_counterexample](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/actual-grouping-counterexample--4cd42830896c15c3402a7e43.md) | 101 | `result-track:4cd42830896c15c3402a7e43860efbb133835754886efc9252d6c183ecce9d0d` |
| 24 | `theorem` | [sequential_old_slots_retained](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/sequential-old-slots-retained--01e553b61b181dfc96f4743d.md) | 109 | `result-track:01e553b61b181dfc96f4743d72b6d61ddff3a61fc00447a957739f64e89c2b00` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/example--dba110425495bfac77d50da6.md) | 115 | `declaration-track:dba110425495bfac77d50da66d09a3cea484e8d57e8d1e8690f5f6e1d3ba8905` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/example--ccd791e050aa8218ebb645f0.md) | 118 | `declaration-track:ccd791e050aa8218ebb645f058f8011bb3d324f77baf47ef76ce5db6f022902b` |
| 27 | `def` | [seeded](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/seeded--d2b83d0f9ae835165f403409.md) | 127 | `declaration-track:d2b83d0f9ae835165f403409de6729328f317c93aecd8792739fbd08f17bd8ef` |
| 28 | `theorem` | [seeded_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/seeded-dictionary--dba08bf8ab6b024926fd4dbd.md) | 131 | `result-track:dba08bf8ab6b024926fd4dbd86fbedb40d395fa3f44f33e7adb1355c07e1355f` |
| 29 | `theorem` | [seeded_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/seeded-wellformed--970cdd7a0bcdbb1cf336cda4.md) | 140 | `result-track:970cdd7a0bcdbb1cf336cda4bcc09c9ffc10805bb406ecda66b5b15d9426cbdd` |
| 30 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/example--0bd29df49371da4ca912a93b.md) | 142 | `declaration-track:0bd29df49371da4ca912a93b29ae7ee323220ed63f2d0722a936d736a5824571` |
| 31 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/example--1034c7220e62391f396938ac.md) | 147 | `declaration-track:1034c7220e62391f396938ac442c1f4ff3a4190b108c986fdc082251f1700fee` |
| 32 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/example--b8bb6ce2b27ccca50e66d172.md) | 149 | `declaration-track:b8bb6ce2b27ccca50e66d17297be32698ade6c636559e91899a37b897afb12ef` |
| 33 | `def` | [missingParent](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/missingparent--da6811ec1ee17ce7ee798543.md) | 154 | `declaration-track:da6811ec1ee17ce7ee798543643a5b3ac676edc919071c7e9edf6923129673ee` |
| 34 | `theorem` | [missingParent_nodup](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/missingparent-nodup--dc514d40da05b2e44ad386c9.md) | 157 | `result-track:dc514d40da05b2e44ad386c9e077e77682857d04c57e03856e8441d482430209` |
| 35 | `theorem` | [missingParent_rooted](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/missingparent-rooted--9c54ff9b4ad6936c7b5de668.md) | 160 | `result-track:9c54ff9b4ad6936c7b5de6681747868597e9c3812fc7065641d5969d550970b1` |
| 36 | `theorem` | [missingParent_cells](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/missingparent-cells--1aba395c58480bda1ffe8595.md) | 167 | `result-track:1aba395c58480bda1ffe85953c91acf729a4c862f16ceb95f15e0d4dd00ad1f6` |
| 37 | `theorem` | [missingParent_references](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/missingparent-references--298af2ff4d373f2cff71a7d7.md) | 171 | `result-track:298af2ff4d373f2cff71a7d75ed2d6ddd191bee50bd62ab6315bfe72700a618e` |
| 38 | `theorem` | [missingParent_not_closed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/missingparent-not-closed--c9b79c0925441933228a5b59.md) | 177 | `result-track:c9b79c0925441933228a5b59e210a5fc85d9d60aa64f03cb82b06ac704dba382` |
| 39 | `theorem` | [missingParent_not_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/missingparent-not-wellformed--c0af8363c29beb112993f767.md) | 184 | `result-track:c0af8363c29beb112993f7670b656a0fc89f916f05a336d1bed52dd55d6fe0bf` |
| 40 | `theorem` | [actual_missing_parent_failure](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/actual-missing-parent-failure--b00d6d07dac9676dee819abd.md) | 189 | `result-track:b00d6d07dac9676dee819abd4ec6e7f38c225095d40d3d146ddf8c2e760534cc` |
| 41 | `instance` | [boolQuiver](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/boolquiver--1ede4a013e144505b9dea80c.md) | 193 | `declaration-track:1ede4a013e144505b9dea80c999a092cfe006d827addce719ab09116591631f5` |
| 42 | `instance` | [boolTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/booltagdecidableeq--0c16f51d132a87c87cad9c57.md) | 195 | `declaration-track:0c16f51d132a87c87cad9c57c7ab0e4ad1c406c7aa8dd5e89e037159eed16758` |
| 43 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence6305c7297d5f28bd606195c3.lean/declarations/example--f10cbce95a4ec2a3dc615a06.md) | 198 | `declaration-track:f10cbce95a4ec2a3dc615a0673e6bf40311e260b82facb66ffa1fb76eca93036` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
