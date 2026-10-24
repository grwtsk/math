# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afd115ff9ad53e976d69c17fd3042d2c4b982da2",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afd115ff9ad53e976d69c17fd3042d2c4b982da2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Lex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Char` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ltb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/ltb--95043f9ef3bf30a3123c7942.md) | 20 | `declaration-track:95043f9ef3bf30a3123c7942af536cff810e0427fff304115aae1a908cbeb6fa` |
| 2 | `instance` | [LT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/lt--a175f7e5c8d54826e16574cf.md) | 30 | `declaration-track:a175f7e5c8d54826e16574cfe97c721725894a42c5b652414b5df4d77fe8c816` |
| 3 | `instance` | [decidableLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/decidablelt--a2d0946124b002b60b6414bf.md) | 34 | `declaration-track:a2d0946124b002b60b6414bfa3d83bc14ac4c933a6a638b923021f329748d511` |
| 4 | `def` | [ltb.inductionOn.](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/ltb-inductionon--db32c377621fac57963c807c.md) | 40 | `declaration-track:db32c377621fac57963c807cfcb76012778b6f215ee3db2396fa0db353d9b517` |
| 5 | `theorem` | [ltb_cons_addChar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/ltb-cons-addchar--833d5f0c88af7d9b7d327023.md) | 58 | `result-track:833d5f0c88af7d9b7d327023668314a4a33227efff4042165b86484287eeb2c0` |
| 6 | `theorem` | [lt_iff_toList_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/lt-iff-tolist-lt--3d2a4ebdb8a703d689d5e913.md) | 75 | `result-track:3d2a4ebdb8a703d689d5e9134247c8e1ff1c62246dce6872f79b83bc1b1a411e` |
| 7 | `instance` | [LE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/le--f67195095257e0fa3e90319b.md) | 101 | `declaration-track:f67195095257e0fa3e90319bc67e4ae7738d7671618ee070dd0414ceca6e086d` |
| 8 | `instance` | [decidableLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/decidablele--885dfce6d4677ef362087e9c.md) | 105 | `declaration-track:885dfce6d4677ef362087e9c8da4f4888995f49f2f08b1c154ab81e77e96a96e` |
| 9 | `theorem` | [le_iff_toList_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/le-iff-tolist-le--d55df7d9b5c77fc559033daa.md) | 111 | `result-track:d55df7d9b5c77fc559033daac81bc0c7b7c5dbe58a4a93dabd344edf5a6bdc43` |
| 10 | `theorem` | [toList_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/tolist-inj--af3269c3a0cd72544eb5b345.md) | 115 | `result-track:af3269c3a0cd72544eb5b34568cb508e19b6c18c42926e7d24ecaaab817f85db` |
| 11 | `theorem` | [nil_asString_eq_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/nil-asstring-eq-empty--be05dec177f8a3445990878d.md) | 119 | `result-track:be05dec177f8a3445990878dde2c518244709e558c496d226f9bf3441961a780` |
| 12 | `theorem` | [toList_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/tolist-empty--120537ec780dea685770a3a4.md) | 124 | `result-track:120537ec780dea685770a3a4add87463f0d120f497c60133356a7d832b9730e0` |
| 13 | `theorem` | [asString_inv_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/asstring-inv-tolist--b43666d5b3d7bd0792d9631e.md) | 128 | `result-track:b43666d5b3d7bd0792d9631eacfd94ef9f581eee20745d196992d086adc1d889` |
| 14 | `theorem` | [toList_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/tolist-nonempty--b6d2d19893267dc7fe9b668d.md) | 134 | `result-track:b6d2d19893267dc7fe9b668d645e717ec8b6f63c60f069a3d38121561b8ab99a` |
| 15 | `theorem` | [head_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/head-empty--c1ef123bbb4cabfee15a9c1a.md) | 144 | `result-track:c1ef123bbb4cabfee15a9c1a8c0021243e4ecddd38bb6d3c091d3018d5101c9d` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/instance--f06c544069a39040245a3737.md) | 150 | `declaration-track:f06c544069a39040245a3737fff2c170ff00f31f84f8ea02e73039d7f2e213df` |
| 17 | `theorem` | [List.toList_inv_asString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/list-tolist-inv-asstring--0cdb97690c73f34b5cd4253f.md) | 174 | `result-track:0cdb97690c73f34b5cd4253f06f59e6fa639001e627b41a9d720a36257a8cdd6` |
| 18 | `theorem` | [List.length_asString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/list-length-asstring--4a2588754208eb73a11fc30f.md) | 179 | `result-track:4a2588754208eb73a11fc30f99694999db2d754f8d524d26149074f32157cb02` |
| 19 | `theorem` | [List.asString_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/list-asstring-inj--b65c280489b81f78dff7b542.md) | 184 | `result-track:b65c280489b81f78dff7b5425bbdf447bcd5141f11a300cfa9a9b3d27a3ee4f1` |
| 20 | `theorem` | [String.length_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/string-length-data--c16be739a8d722111095856e.md) | 190 | `result-track:c16be739a8d722111095856ebf2972ef2c84ec8832b8e9f59c4bfdf5dec06600` |
| 21 | `theorem` | [List.asString_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant03de274799c104c4bb559f1c60b43ed0f5c78beb994f842fe0721e235481abcd.lean/declarations/list-asstring-eq--a9d998fd3e01472191cbcd2a.md) | 194 | `result-track:a9d998fd3e01472191cbcd2aff5331af498f31654dc5e6feb669ba98cfc5d476` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
