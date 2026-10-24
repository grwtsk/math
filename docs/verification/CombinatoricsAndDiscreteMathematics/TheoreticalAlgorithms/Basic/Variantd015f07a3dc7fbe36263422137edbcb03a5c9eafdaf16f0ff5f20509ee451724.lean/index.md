# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c3c9e60a5045ca0553361be03fc613a037b5170",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c3c9e60a5045ca0553361be03fc613a037b5170`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.String.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Lex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Char` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [endPos_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/endpos-empty--f935f3556bffbf064bd6f7e1.md) | 27 | `result-track:f935f3556bffbf064bd6f7e1ce6d55473d2834a0abb9050429dee59666fff8d7` |
| 2 | `def` | [ltb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/ltb--c2ebc6842e5cf2b2e2c1c850.md) | 30 | `declaration-track:c2ebc6842e5cf2b2e2c1c850178f2112991f3fd59f47c55f8bdeefe4f917d3c9` |
| 3 | `instance` | [LT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/lt--6bd9e4623ebea4ad79c867b5.md) | 40 | `declaration-track:6bd9e4623ebea4ad79c867b51b5ca6e4d7c59a9c2c125e2d243b49a4643f731e` |
| 4 | `instance` | [decidableLT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/decidablelt--18319d3ee9480eb4d767f4dd.md) | 44 | `declaration-track:18319d3ee9480eb4d767f4ddbf3730fad10b1cb7e0313d8d0753a7b84d275fa5` |
| 5 | `def` | [ltb.inductionOn.](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/ltb-inductionon--bff236df76fc78810d8e781c.md) | 49 | `declaration-track:bff236df76fc78810d8e781cb1784c04399b1d71b80bb3b596982ff5725f2841` |
| 6 | `theorem` | [ltb_cons_addChar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/ltb-cons-addchar--7c9a2de1a935f92633853380.md) | 67 | `result-track:7c9a2de1a935f92633853380f01b6e387f8180c26c4a8b5c388535209f01d295` |
| 7 | `theorem` | [lt_iff_toList_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/lt-iff-tolist-lt--d152b5b8ac570c11e1e69cc1.md) | 84 | `result-track:d152b5b8ac570c11e1e69cc14f403d882ef1046f1cff9aef889a515fe77f5c32` |
| 8 | `instance` | [LE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/le--ea33d59ff4a6d8b9ebc77ee0.md) | 110 | `declaration-track:ea33d59ff4a6d8b9ebc77ee0c2a223eee49e02a9cdf138ced97defad3cd3f504` |
| 9 | `instance` | [decidableLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/decidablele--1eb2d8e0751193df5c9bed31.md) | 113 | `declaration-track:1eb2d8e0751193df5c9bed313863a6d3582bdd7d3cda592b44e2a2b4144c52b9` |
| 10 | `theorem` | [le_iff_toList_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/le-iff-tolist-le--008b3899cda8f0e496899061.md) | 118 | `result-track:008b3899cda8f0e4968990616998b9d578775f232a7019d04b2f4940927c6a16` |
| 11 | `theorem` | [toList_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/tolist-inj--7d0b10f60189dd1bd5020a7c.md) | 121 | `result-track:7d0b10f60189dd1bd5020a7c43d18d1f5fb715e6a507e7912bb068d990a88d00` |
| 12 | `theorem` | [asString_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/asstring-nil--871a8d7ae80723c67e96c23f.md) | 124 | `result-track:871a8d7ae80723c67e96c23f14cf3ee5f5c7cd8728aaae604888c29ae6d1af56` |
| 13 | `theorem` | [toList_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/tolist-empty--f96937252c35edd631010dd2.md) | 128 | `result-track:f96937252c35edd631010dd2da4bb205209e8b6fc1751e1dad08e90d8bf3579f` |
| 14 | `theorem` | [asString_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/asstring-tolist--ba2e60c2a328cb7fd9b765c3.md) | 131 | `result-track:ba2e60c2a328cb7fd9b765c382aa97e0d569f6d271eff6f1229ffa8b36dfea62` |
| 15 | `theorem` | [toList_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/tolist-nonempty--b87612e522ffaea6653c9d45.md) | 134 | `result-track:b87612e522ffaea6653c9d45b240b0ffd5007508e1752e6db7e772aba4361c00` |
| 16 | `theorem` | [head_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/head-empty--81820a7de694ba19ecb2a6d9.md) | 143 | `result-track:81820a7de694ba19ecb2a6d9f8342abc585d2f1625e05e7374b4fca988509c13` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/instance--26c668330c8384e0e61ef2c1.md) | 146 | `declaration-track:26c668330c8384e0e61ef2c19337f65af39d58d7971629275c3851d264a3ff0f` |
| 18 | `theorem` | [toList_asString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/tolist-asstring--ac79c73fae11224cbd3dd803.md) | 173 | `result-track:ac79c73fae11224cbd3dd80395aed01e543746b6291b11e4998ce5f3383846ba` |
| 19 | `theorem` | [length_asString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/length-asstring--97cc4638629e5060a936ef3c.md) | 177 | `result-track:97cc4638629e5060a936ef3c6750a82c423c78f2f05d3ae000ec4ff6df494d64` |
| 20 | `theorem` | [asString_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/asstring-inj--e9747603a4bd54a7de7ec98d.md) | 181 | `result-track:e9747603a4bd54a7de7ec98d4c230629c1006f8736658256a3b7515d7a337526` |
| 21 | `theorem` | [asString_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/asstring-eq--7fd485aa813b1ea644677f35.md) | 185 | `result-track:7fd485aa813b1ea644677f35c9618b660fc4b176ccaf77d37ce64745313a4470` |
| 22 | `theorem` | [String.length_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd015f07a3dc7fbe36263422137edbcb03a5c9eafdaf16f0ff5f20509ee451724.lean/declarations/string-length-data--c45605a7ce0301598fcf1369.md) | 191 | `result-track:c45605a7ce0301598fcf136938b18fa6a74262eecda044bec00826834ee284ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
