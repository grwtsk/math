# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Gen.Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64214d33bca395dcc73ebe0b9a55f762537c64eb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64214d33bca395dcc73ebe0b9a55f762537c64eb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Random` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Control.ULiftable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Perm` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Subtype` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Gen](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be.lean/declarations/gen--1c062c7caa668fd0c22a8ae7.md) | 43 | `declaration-track:1c062c7caa668fd0c22a8ae706234a6451977ecea593dd534c359762de0aa42d` |
| 2 | `def` | [chooseAny](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be.lean/declarations/chooseany--3d4a3136ddab566cef1bb427.md) | 48 | `declaration-track:3d4a3136ddab566cef1bb42704cc3769be8fdb7aa7d8281ec984b3576bc07aee` |
| 3 | `def` | [choose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be.lean/declarations/choose--9e043c1df4ac5c2f29c6cf25.md) | 52 | `declaration-track:9e043c1df4ac5c2f29c6cf257b227b8c52e6d7bd100eb7d12eda4f00383b041a` |
| 4 | `lemma` | [chooseNatLt_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be.lean/declarations/choosenatlt-aux--67dacdfb0b351357b466c558.md) | 56 | `result-track:67dacdfb0b351357b466c558134cdc9dc4889ca082c92b3a1fc5f07ec7619ca2` |
| 5 | `def` | [chooseNatLt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be.lean/declarations/choosenatlt--7381b9ced15f3bec0a6b55e2.md) | 65 | `declaration-track:7381b9ced15f3bec0a6b55e23521764c514a1afeef9290d20329d87f73cdf7f8` |
| 6 | `def` | [getSize](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be.lean/declarations/getsize--0a98aabce6f5ede1fda5025d.md) | 69 | `declaration-track:0a98aabce6f5ede1fda5025d3b24c7ea7e2d3dffa0aa3d442c69e9edad3e39ee` |
| 7 | `def` | [resize](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be.lean/declarations/resize--4c93cb3a21579b1567f0aae8.md) | 73 | `declaration-track:4c93cb3a21579b1567f0aae8b6a5264df647bf238d69294dbf40fbb45ded2361` |
| 8 | `def` | [arrayOf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be.lean/declarations/arrayof--e56ea29c956340cdd7423837.md) | 80 | `declaration-track:e56ea29c956340cdd74238370e8e150a6c46006b8d753642d4d792d1a07b943e` |
| 9 | `def` | [listOf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be.lean/declarations/listof--ac81a928e2e20a9940b55d68.md) | 89 | `declaration-track:ac81a928e2e20a9940b55d6843327cd26303be4c320ea96c142d44624e746b46` |
| 10 | `def` | [oneOf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be.lean/declarations/oneof--9379b4f399d5eb3400645ba2.md) | 93 | `declaration-track:9379b4f399d5eb3400645ba23b60953884f060f0111b8598bb0dd2a0b335640a` |
| 11 | `def` | [elements](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be.lean/declarations/elements--9828c3772d920f0b90f2896f.md) | 98 | `declaration-track:9828c3772d920f0b90f2896fdd29aea6adc75a28f0d11ee85b0210c79b060703` |
| 12 | `def` | [permutationOf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be.lean/declarations/permutationof--7dfe56c1c31a592e25346d13.md) | 104 | `declaration-track:7dfe56c1c31a592e25346d13df1d90cb0b779a535b4f23f34763726fc07adcd3` |
| 13 | `def` | [prodOf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be.lean/declarations/prodof--45f9877a8f7570d81c404bd0.md) | 112 | `declaration-track:45f9877a8f7570d81c404bd09a5c806c9130b81b9d209601358b08524562b24f` |
| 14 | `def` | [Gen.run](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant2160cf5bf52ac0713c4839f5d1131f9fcb27a0c95e12233d0bf8c51ecdcda7be.lean/declarations/gen-run--9e893826250d9604abb8ed88.md) | 120 | `declaration-track:9e893826250d9604abb8ed88c9ff2de1bbb47a1db356859118fdd43c248db19c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
