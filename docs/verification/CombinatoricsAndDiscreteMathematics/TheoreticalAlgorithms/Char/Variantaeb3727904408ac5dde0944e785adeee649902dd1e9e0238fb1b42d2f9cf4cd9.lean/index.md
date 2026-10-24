# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Char.Variantaeb3727904408ac5dde0944e785adeee649902dd1e9e0238fb1b42d2f9cf4cd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93f5545cfeb2ef935f4f24ce6a80ed3c4bb51e8b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantaeb3727904408ac5dde0944e785adeee649902dd1e9e0238fb1b42d2f9cf4cd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantaeb3727904408ac5dde0944e785adeee649902dd1e9e0238fb1b42d2f9cf4cd9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantaeb3727904408ac5dde0944e785adeee649902dd1e9e0238fb1b42d2f9cf4cd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93f5545cfeb2ef935f4f24ce6a80ed3c4bb51e8b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantaeb3727904408ac5dde0944e785adeee649902dd1e9e0238fb1b42d2f9cf4cd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantaeb3727904408ac5dde0944e785adeee649902dd1e9e0238fb1b42d2f9cf4cd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.UInt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Algebra.Order` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Char.toUInt8](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantaeb3727904408ac5dde0944e785adeee649902dd1e9e0238fb1b42d2f9cf4cd9.lean/declarations/char-touint8--af9fbe8395cbb2fd2fedaeb3.md) | 20 | `declaration-track:af9fbe8395cbb2fd2fedaeb3384494b7ef2c5f4ff549ebbc525e5bc165436c9a` |
| 2 | `theorem` | [Char.utf8Size_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantaeb3727904408ac5dde0944e785adeee649902dd1e9e0238fb1b42d2f9cf4cd9.lean/declarations/char-utf8size-pos--a829d3b3364a91df6f6b5f6b.md) | 22 | `result-track:a829d3b3364a91df6f6b5f6b636be2085470bbc49fd1f0d58131e97a8fc58144` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantaeb3727904408ac5dde0944e785adeee649902dd1e9e0238fb1b42d2f9cf4cd9.lean/declarations/instance--739453b6793ae909cbaaafab.md) | 30 | `declaration-track:739453b6793ae909cbaaafab349264abcd7d92384179f904cd55420fbcd9c661` |
| 4 | `theorem` | [Char.ofNat_toNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantaeb3727904408ac5dde0944e785adeee649902dd1e9e0238fb1b42d2f9cf4cd9.lean/declarations/char-ofnat-tonat--ce2f6d7c2239bba9e41f3554.md) | 41 | `result-track:ce2f6d7c2239bba9e41f35548f4cc1d9628c2dbb4b51951a4f22b7e60b809853` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
