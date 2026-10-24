# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Core.Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4ba7bc1ee1c6fa776c6ac4f262630a2fe1ac0e3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4ba7bc1ee1c6fa776c6ac4f262630a2fe1ac0e3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.AST.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Legacy.BinaryLogicMatrix.Core` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SomeBinaryLogicMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean/declarations/somebinarylogicmatrix--6e5f5e9af14cc55c68fd363e.md) | 18 | `declaration-track:6e5f5e9af14cc55c68fd363ed3647df32e6b4cc7219a7c0d31a9d481e36075ee` |
| 2 | `def` | [bitNot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean/declarations/bitnot--1b9542028369c23853f5e227.md) | 23 | `declaration-track:1b9542028369c23853f5e2278abdef224d94e95850992f6d4de943205f38e3a2` |
| 3 | `def` | [xorBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean/declarations/xorbit--b07cc282cedf59d7f12c22f4.md) | 26 | `declaration-track:b07cc282cedf59d7f12c22f48a9e9a05f754964e36ac38f94016174f9ab35659` |
| 4 | `def` | [xorWord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean/declarations/xorword--6cac8b0056e54d05755c5917.md) | 29 | `declaration-track:6cac8b0056e54d05755c5917ff6866a9435afcaaf837e6fb40ef255e575a7aaa` |
| 5 | `def` | [repeatWord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean/declarations/repeatword--4e4bf7d7393dd801dccbf3f2.md) | 34 | `declaration-track:4e4bf7d7393dd801dccbf3f2a09a3f3ae01850fb3b763416e884e04ef1a385dc` |
| 6 | `def` | [word010](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean/declarations/word010--67224bd7676b1c704f972e9b.md) | 39 | `declaration-track:67224bd7676b1c704f972e9b591f70ac83a8ee68086923b27c4cc51292e2b31a` |
| 7 | `def` | [word0110](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean/declarations/word0110--f78170b2a9ad70f9abef4791.md) | 42 | `declaration-track:f78170b2a9ad70f9abef479187e6b0806b4d0a9dc53386ce573b1c2515e4775c` |
| 8 | `def` | [word1001](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean/declarations/word1001--ff05d051a60176ce7f2ae7b3.md) | 45 | `declaration-track:ff05d051a60176ce7f2ae7b310a55310743ae6ca4558f04762d73de1122d6413` |
| 9 | `def` | [word01](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean/declarations/word01--998eda8d9aa6779cf61105e9.md) | 48 | `declaration-track:998eda8d9aa6779cf61105e926835dcee3403f294174fdd9d7d45ed4770e081a` |
| 10 | `def` | [word10](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean/declarations/word10--da8c2d5a684c5cb99f24a7eb.md) | 51 | `declaration-track:da8c2d5a684c5cb99f24a7ebc7ca362f77527b97e548eda2fee8d2a1cfabb2f1` |
| 11 | `theorem` | [split0110_reverse_symmetric](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean/declarations/split0110-reverse-symmetric--d1c8e5f2d89fce3cad048799.md) | 54 | `result-track:d1c8e5f2d89fce3cad048799228cbe27d3252a6c380bdcb1ea3ee595c37d1548` |
| 12 | `theorem` | [split0110_inverts_to_1001](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean/declarations/split0110-inverts-to-1001--645c36d892cc1f9632880825.md) | 58 | `result-track:645c36d892cc1f96328808251ef6043488b7aa586b32f7ec8444a6fd96d1caf5` |
| 13 | `theorem` | [originalWord_eq_010](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean/declarations/originalword-eq-010--7a8b9f764b9c8ff5dc81a713.md) | 62 | `result-track:7a8b9f764b9c8ff5dc81a71321a9e4595c760b491de48fd698147c238d8eb4b3` |
| 14 | `theorem` | [splitWord_eq_0110](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean/declarations/splitword-eq-0110--226ab202b60773b8f0341b16.md) | 66 | `result-track:226ab202b60773b8f0341b1656ae2857f871dbb6d41e08e6365557f0dd89cc67` |
| 15 | `theorem` | [someBinaryLogicMatrix_has_matrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant2dbbed6b1c33b40ac8157652fe8814244e9a4657cb37308f53dcdc9e06d4a0cb.lean/declarations/somebinarylogicmatrix-has-matrix--bb1a9af5c229bfa2c56655cb.md) | 70 | `result-track:bb1a9af5c229bfa2c56655cb0056f061c12d70418c3b4d38e18b0f2e514fa25d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
