# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Flatten.Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14c7e2fef9f6e70f95219932bd2fed8267d8613c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14c7e2fef9f6e70f95219932bd2fed8267d8613c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean.json)

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
| 1 | `inductive` | [FlattenOperation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean/declarations/flattenoperation--1b6222a12c5631daf95c0be5.md) | 3 | `declaration-track:1b6222a12c5631daf95c0be5b87538aabf198b3d4578355927eb078d0b3bb3bd` |
| 2 | `structure` | [LocalOverwrite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean/declarations/localoverwrite--461f8e2f576816dd6628bb4f.md) | 18 | `declaration-track:461f8e2f576816dd6628bb4ff0569469fd4b25cb0cf55e414d2245b3b652713c` |
| 3 | `def` | [flattenValue](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean/declarations/flattenvalue--113e718704414d1143b31fa3.md) | 21 | `declaration-track:113e718704414d1143b31fa396539adaf381a312e7dcf44e0dbe255186ea1f87` |
| 4 | `theorem` | [localOverwriteFlatten_replace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean/declarations/localoverwriteflatten-replace--16571accdda68c4efe698aca.md) | 39 | `result-track:16571accdda68c4efe698aca8f7463c5525c9849287ae2e080ba8d5d7617e5bd` |
| 5 | `theorem` | [localOverwriteFlatten_restrict](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean/declarations/localoverwriteflatten-restrict--ea1ea62fc05ab1b035a3304e.md) | 45 | `result-track:ea1ea62fc05ab1b035a3304e707d397d04a31933a2cbf2d30e3e30fc4b33c312` |
| 6 | `theorem` | [localOverwriteFlatten_excise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean/declarations/localoverwriteflatten-excise--d909c824d7b9aaf3830fe74c.md) | 51 | `result-track:d909c824d7b9aaf3830fe74cf1f440216efabf1616cc06cec4038daca4360006` |
| 7 | `theorem` | [localOverwriteFlatten_collar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean/declarations/localoverwriteflatten-collar--359821cb935cef23d4a829bb.md) | 57 | `result-track:359821cb935cef23d4a829bbed1615b7c58c0e3e5cf07c604a98d0364c44c034` |
| 8 | `theorem` | [localOverwriteFlatten_cap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean/declarations/localoverwriteflatten-cap--d73e69e34c92598377552e38.md) | 63 | `result-track:d73e69e34c92598377552e38382b695fe0dde77c45cb901d613f57a3e7e994c0` |
| 9 | `theorem` | [localOverwriteFlatten_graft](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean/declarations/localoverwriteflatten-graft--1f861cbec514141429cb6424.md) | 69 | `result-track:1f861cbec514141429cb642469ffa6c1765e65ccf4e71928040d9498d18f7033` |
| 10 | `theorem` | [localOverwriteFlatten_flow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean/declarations/localoverwriteflatten-flow--c0c6d56ab65b0913736ef07c.md) | 75 | `result-track:c0c6d56ab65b0913736ef07cf0bf2f391a4f8c294afa32234eb667a1f87574de` |
| 11 | `theorem` | [localOverwriteFlatten_surgeryCut](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean/declarations/localoverwriteflatten-surgerycut--e0ba271d7ffcab2347315bf6.md) | 81 | `result-track:e0ba271d7ffcab2347315bf6adb281b90335638bfedf95ba1c3f2c156d403d0a` |
| 12 | `theorem` | [localOverwriteFlatten_surgeryPaste](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean/declarations/localoverwriteflatten-surgerypaste--28e2ce43ce51c858a67efd98.md) | 87 | `result-track:28e2ce43ce51c858a67efd98541fd510ee8ae1c83ec9578c0f719c8fc192073a` |
| 13 | `theorem` | [localOverwriteFlatten_rollback](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean/declarations/localoverwriteflatten-rollback--df60dfa90a8eaf0feadf1119.md) | 93 | `result-track:df60dfa90a8eaf0feadf1119c63bc504991a4a41ad7225576550d74e79ef688c` |
| 14 | `theorem` | [localOverwriteFlatten_merge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean/declarations/localoverwriteflatten-merge--b6924ff54f6e611f92e77a94.md) | 99 | `result-track:b6924ff54f6e611f92e77a946de88dda425c564706e320e83da089e9b813e8bb` |
| 15 | `theorem` | [localOverwriteFlatten_replaceDefault](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean/declarations/localoverwriteflatten-replacedefault--60f4a2a156e2ecf61ef47b4d.md) | 105 | `result-track:60f4a2a156e2ecf61ef47b4d07f9e8f9191b921c7b367101094b9fcac6ad81aa` |
| 16 | `def` | [repertoire](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean/declarations/repertoire--d2b39225e60604ea41412787.md) | 111 | `declaration-track:d2b39225e60604ea414127873c0e16068116f6deb942f80c51ca4df36f4c1183` |
| 17 | `theorem` | [replace_is_default](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Flatten/Variantc19080c94c5587b20495c088aef70d99036e3655a10a73a477cd0c9a057b59bf.lean/declarations/replace-is-default--532a6f1a40f33f5ba0635a8f.md) | 126 | `result-track:532a6f1a40f33f5ba0635a8f94a7c17d756c1e8bd778f294d3cdf06ba1deb605` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
