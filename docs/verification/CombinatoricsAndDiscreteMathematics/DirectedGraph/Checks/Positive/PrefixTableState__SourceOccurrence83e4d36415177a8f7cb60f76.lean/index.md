# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.Checks.Positive.PrefixTableState

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc6a510ee274a292716160c0f9869f7aef435637",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc6a510ee274a292716160c0f9869f7aef435637`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PrefixTableState`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrenced824f36fb36983caa6abc347.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [loopVertexDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/loopvertexdecidableeq--e0b144ed8bba65e1caf60100.md) | 15 | `declaration-track:e0b144ed8bba65e1caf60100d26a999ba527566dd18ea19d258ba3ea4b3b5d7f` |
| 2 | `instance` | [loopTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/looptagdecidableeq--03c27136ebc1e7c7e92104f4.md) | 18 | `declaration-track:03c27136ebc1e7c7e92104f45cb339e4087cdc38de41f4966dcc89939a33a038` |
| 3 | `def` | [falseTag](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/falsetag--2d967c974ad1cb695a73cdae.md) | 21 | `declaration-track:2d967c974ad1cb695a73cdaeaf02e9ebfcd17cc50ce6046428b70be078537f1b` |
| 4 | `def` | [trueTag](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/truetag--0251321e1c7a3a4e949b7779.md) | 24 | `declaration-track:0251321e1c7a3a4e949b777945aa7eb2596e0c0e5ebce27c4a8832bfc60721a5` |
| 5 | `theorem` | [tags_distinct](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/tags-distinct--91dceca921548356c39ff689.md) | 27 | `result-track:91dceca921548356c39ff68931526bb6eb197d7200074340a178d27f7f16849a` |
| 6 | `def` | [falseOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/falseoccurrence--cbceb70eb70362772fd90e88.md) | 33 | `declaration-track:cbceb70eb70362772fd90e88775657bd07b87a6cb624a4dc70db7b2dcb83cf0c` |
| 7 | `def` | [trueOccurrence](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/trueoccurrence--a6f158ec1a32aa8a7eb1dc57.md) | 36 | `declaration-track:a6f158ec1a32aa8a7eb1dc57e61d504cd9495cdd7887a38bdb0eaa2dd7d5d1e0` |
| 8 | `def` | [firstRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/firstrows--1743f989fc52b1e45fb5d792.md) | 39 | `declaration-track:1743f989fc52b1e45fb5d79245ebfaf1eaa825eab254852df4107d41773d859d` |
| 9 | `def` | [secondRows](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/secondrows--781e1d538bd519d21f011ef3.md) | 42 | `declaration-track:781e1d538bd519d21f011ef31bfcfe441718ebb9318ccd7a27b43b1e80223ec7` |
| 10 | `def` | [initial](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/initial--0efc63878e3a511ace9d40cc.md) | 45 | `declaration-track:0efc63878e3a511ace9d40cc7f1cf290e97f53e4f913037fe21fb7a22c2c17c8` |
| 11 | `def` | [sequential](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/sequential--5b412871a7239653555b8219.md) | 46 | `declaration-track:5b412871a7239653555b8219c3b829903880999f78eb42faff87c29f65054637` |
| 12 | `def` | [combined](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/combined--23d3e52bc3994b23f2d784b4.md) | 48 | `declaration-track:23d3e52bc3994b23f2d784b422f78c27d7600a5f3dc6648e3b6b152fb5f87666` |
| 13 | `theorem` | [first_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/first-inventory--f91089b8cec1fcb9921374dd.md) | 51 | `result-track:f91089b8cec1fcb9921374dd5696598f2772759e19a30f22941b039d6ad16bce` |
| 14 | `theorem` | [second_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/second-inventory--315d654f8c3e53a92fd42427.md) | 56 | `result-track:315d654f8c3e53a92fd4242735434ce138d5925c405b5590f04c0aebfb2c71d6` |
| 15 | `theorem` | [combined_inventory](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/combined-inventory--36a51ab9ec30a59ef31b6566.md) | 60 | `result-track:36a51ab9ec30a59ef31b6566c3783ee01e48fb5928a758c3a2d0ce4a3ced6704` |
| 16 | `theorem` | [first_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/first-dictionary--4b7040db014124e48e94cf07.md) | 66 | `result-track:4b7040db014124e48e94cf078436c1a5c3bc85b0834c4acd3aaaf0ba026616e9` |
| 17 | `theorem` | [sequential_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/sequential-dictionary--63711b735db6f94f62f0d955.md) | 72 | `result-track:63711b735db6f94f62f0d95540f14327522a83605dc56a0b2d06ffe6f4cc990a` |
| 18 | `theorem` | [combined_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/combined-dictionary--071d4b50ddd2700f0a681a0b.md) | 78 | `result-track:071d4b50ddd2700f0a681a0bf778b06019b5cc6ebc319add50025c1d5e24a9d1` |
| 19 | `theorem` | [sequential_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/sequential-wellformed--dc04fc80e4ee0ebd079103d2.md) | 84 | `result-track:dc04fc80e4ee0ebd079103d205d0cc304f006ef5c36795dd3f08ba14927ea485` |
| 20 | `theorem` | [combined_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/combined-wellformed--4af636edcc2308b7898899ad.md) | 87 | `result-track:4af636edcc2308b7898899ad86de961ce29109ddf31ed5ee325446107f510155` |
| 21 | `theorem` | [sequential_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/sequential-actual-decode--dfe903bfac0cfc67500c54bd.md) | 90 | `result-track:dfe903bfac0cfc67500c54bdc684e5b8bc686de63ac37effec078b6b65fff484` |
| 22 | `theorem` | [combined_actual_decode](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/combined-actual-decode--4fcb261dfcef330550587314.md) | 95 | `result-track:4fcb261dfcef33055058731430051137ef3a2a6c52d08432e80bcff222c181d1` |
| 23 | `theorem` | [actual_grouping_counterexample](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/actual-grouping-counterexample--e859b1b5293cc4fa9fe081ef.md) | 101 | `result-track:e859b1b5293cc4fa9fe081efeb436f62300a54f24071fbd47cfeed24ea88dc33` |
| 24 | `theorem` | [sequential_old_slots_retained](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/sequential-old-slots-retained--84bf28fc9135c3418d02f183.md) | 109 | `result-track:84bf28fc9135c3418d02f183987514f163f2cd51394b79dab3f8a2e10f47304d` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/example--eddeb4b9ae00d68641374948.md) | 115 | `declaration-track:eddeb4b9ae00d6864137494881ec6e0b47f456ddd78a927663df47d0b1ab4f1d` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/example--e73bae4d47fc22a913a394a3.md) | 118 | `declaration-track:e73bae4d47fc22a913a394a376a9f887a3160edf8d89b94b5fd0c28d4e7f7da5` |
| 27 | `def` | [seeded](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/seeded--9c55fba4dad8f7f154496303.md) | 127 | `declaration-track:9c55fba4dad8f7f154496303da78e9a42b457b0d59deaa2c579ef3e9401e4750` |
| 28 | `theorem` | [seeded_dictionary](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/seeded-dictionary--d725831635245c36ef652ab2.md) | 131 | `result-track:d725831635245c36ef652ab222d5aa796b457cd86b0a8b3f817e9cbcea7d240a` |
| 29 | `theorem` | [seeded_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/seeded-wellformed--f90e49330c674627f53f905f.md) | 140 | `result-track:f90e49330c674627f53f905f706adde097902a2da40bc41cb95472d5d1f067ac` |
| 30 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/example--94af99badb4d96095ef858df.md) | 142 | `declaration-track:94af99badb4d96095ef858df58f0413e9bcd11bfa689c72d2af916cbd9f5dcfc` |
| 31 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/example--eeacb4b2e800320cd7b4b920.md) | 147 | `declaration-track:eeacb4b2e800320cd7b4b920f181c7b9d28e38da04ad5d300238d80292b88ba5` |
| 32 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/example--309d9a94957cfc3bbb7b9d66.md) | 149 | `declaration-track:309d9a94957cfc3bbb7b9d6656fead1ccfd6360333c88baba84faa058fb77c56` |
| 33 | `def` | [missingParent](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/missingparent--d241400b4f584d196cf3b933.md) | 154 | `declaration-track:d241400b4f584d196cf3b9336bbe72761cef18071a46b8bd53e587aac1c343a3` |
| 34 | `theorem` | [missingParent_nodup](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/missingparent-nodup--fd11eb2fdbf6e05565f6c4ea.md) | 157 | `result-track:fd11eb2fdbf6e05565f6c4ea45c120af72802e0ffe9c2404ebad61296481c10b` |
| 35 | `theorem` | [missingParent_rooted](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/missingparent-rooted--596165b235bb6a4152280dce.md) | 160 | `result-track:596165b235bb6a4152280dce04591e69f1d4caea068066c9ef59a426bb912371` |
| 36 | `theorem` | [missingParent_cells](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/missingparent-cells--2f585254637b962ed3adf5f1.md) | 167 | `result-track:2f585254637b962ed3adf5f1fcdb10ec8c25e9853f45b972731cce7ca7507191` |
| 37 | `theorem` | [missingParent_references](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/missingparent-references--d01af86fc2fb084624752711.md) | 171 | `result-track:d01af86fc2fb0846247527111266bb5d0999bb0b24de58634007d89f90e9d09b` |
| 38 | `theorem` | [missingParent_not_closed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/missingparent-not-closed--2ae35d35a1b704473a4399d7.md) | 177 | `result-track:2ae35d35a1b704473a4399d79d3e37b7e9cf62e9a49166d538efe82548eb807f` |
| 39 | `theorem` | [missingParent_not_wellFormed](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/missingparent-not-wellformed--db691434d56c192a4a1bca0a.md) | 184 | `result-track:db691434d56c192a4a1bca0aa7c3dc14390829463efd0f9f05945e200f8e6c86` |
| 40 | `theorem` | [actual_missing_parent_failure](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/actual-missing-parent-failure--205ae87afce1b6ae3795d4d0.md) | 189 | `result-track:205ae87afce1b6ae3795d4d08e87e611ac6067c33d84055ff55c24c0d0f67670` |
| 41 | `instance` | [boolQuiver](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/boolquiver--7b3eec80a17ec52982c19249.md) | 193 | `declaration-track:7b3eec80a17ec52982c19249b905b124f296d5030520ca9cfcf8f9176b1f7873` |
| 42 | `instance` | [boolTagDecidableEq](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/booltagdecidableeq--51c37e02de2b395bb165bd25.md) | 195 | `declaration-track:51c37e02de2b395bb165bd25ac294a70b6ada1e82fdc15f588d164f324a8ce2e` |
| 43 | `example` | [(anonymous)](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableState__SourceOccurrence83e4d36415177a8f7cb60f76.lean/declarations/example--8e66757cd126ed7f2d01ce33.md) | 198 | `declaration-track:8e66757cd126ed7f2d01ce338e673aaa0083a8db3e9775af0cd5eab5ccbb206a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
