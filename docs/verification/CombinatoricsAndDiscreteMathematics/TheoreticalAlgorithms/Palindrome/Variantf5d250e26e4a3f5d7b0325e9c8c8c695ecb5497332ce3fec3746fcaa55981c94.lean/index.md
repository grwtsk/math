# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Palindrome.Variantf5d250e26e4a3f5d7b0325e9c8c8c695ecb5497332ce3fec3746fcaa55981c94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4177cd795aaee8c033b4f1c1b25c376e6c8f8cc2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantf5d250e26e4a3f5d7b0325e9c8c8c695ecb5497332ce3fec3746fcaa55981c94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantf5d250e26e4a3f5d7b0325e9c8c8c695ecb5497332ce3fec3746fcaa55981c94.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantf5d250e26e4a3f5d7b0325e9c8c8c695ecb5497332ce3fec3746fcaa55981c94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4177cd795aaee8c033b4f1c1b25c376e6c8f8cc2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantf5d250e26e4a3f5d7b0325e9c8c8c695ecb5497332ce3fec3746fcaa55981c94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantf5d250e26e4a3f5d7b0325e9c8c8c695ecb5497332ce3fec3746fcaa55981c94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Induction` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Palindrome](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantf5d250e26e4a3f5d7b0325e9c8c8c695ecb5497332ce3fec3746fcaa55981c94.lean/declarations/palindrome--ec90e1c084e5a2c4a6cc9021.md) | 46 | `declaration-track:ec90e1c084e5a2c4a6cc9021ca048054cb5a37559800b059b47770562a792655` |
| 2 | `theorem` | [reverse_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantf5d250e26e4a3f5d7b0325e9c8c8c695ecb5497332ce3fec3746fcaa55981c94.lean/declarations/reverse-eq--1c0962ccbcb17335d8a8f605.md) | 55 | `result-track:1c0962ccbcb17335d8a8f605add2188d3ec3a0a2d7fdb1991cf9f2e462faf704` |
| 3 | `theorem` | [of_reverse_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantf5d250e26e4a3f5d7b0325e9c8c8c695ecb5497332ce3fec3746fcaa55981c94.lean/declarations/of-reverse-eq--b4803b820f6a5faf521bb1da.md) | 59 | `result-track:b4803b820f6a5faf521bb1daad7c39b2c9e27fd166bdb4ec0ebe69cdd22bfebe` |
| 4 | `theorem` | [iff_reverse_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantf5d250e26e4a3f5d7b0325e9c8c8c695ecb5497332ce3fec3746fcaa55981c94.lean/declarations/iff-reverse-eq--d70ca2bf1b83852b99be0933.md) | 67 | `result-track:d70ca2bf1b83852b99be09331d3c1b58b84cb6bb39c3669d881715266fc627d6` |
| 5 | `theorem` | [append_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantf5d250e26e4a3f5d7b0325e9c8c8c695ecb5497332ce3fec3746fcaa55981c94.lean/declarations/append-reverse--4e024c4b05c0e9c399a8f2cc.md) | 70 | `result-track:4e024c4b05c0e9c399a8f2cc8f5105ae38434b8b3b8033442ce745690e6acfa3` |
| 6 | `theorem` | [map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantf5d250e26e4a3f5d7b0325e9c8c8c695ecb5497332ce3fec3746fcaa55981c94.lean/declarations/map--117af3a884aab306203b13bf.md) | 74 | `result-track:117af3a884aab306203b13bff490c5f185230c3b48d8b3d93f383136b2bf1b9f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Palindrome/Variantf5d250e26e4a3f5d7b0325e9c8c8c695ecb5497332ce3fec3746fcaa55981c94.lean/declarations/instance--e1850681d50328fda167edac.md) | 77 | `declaration-track:e1850681d50328fda167edace1dc312a40b0c2b7c6a8471b473f0d8bc1711a41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
