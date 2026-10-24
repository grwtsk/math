# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant87597e49d4ec1e7f0d4c5b38b8d978ba6dccb80e3b901ff208468f02e8b2da04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7426c0aacce497a475b07de3144e01cfbd3530f0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant87597e49d4ec1e7f0d4c5b38b8d978ba6dccb80e3b901ff208468f02e8b2da04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant87597e49d4ec1e7f0d4c5b38b8d978ba6dccb80e3b901ff208468f02e8b2da04.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant87597e49d4ec1e7f0d4c5b38b8d978ba6dccb80e3b901ff208468f02e8b2da04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7426c0aacce497a475b07de3144e01cfbd3530f0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant87597e49d4ec1e7f0d4c5b38b8d978ba6dccb80e3b901ff208468f02e8b2da04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant87597e49d4ec1e7f0d4c5b38b8d978ba6dccb80e3b901ff208468f02e8b2da04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mul_zero_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant87597e49d4ec1e7f0d4c5b38b8d978ba6dccb80e3b901ff208468f02e8b2da04.lean/declarations/mul-zero-subset--16009a23bea8e1a409116e85.md) | 27 | `result-track:16009a23bea8e1a409116e851dcee9647c6dd034aee0d6cb84ba157a38fcf2d9` |
| 2 | `lemma` | [zero_mul_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant87597e49d4ec1e7f0d4c5b38b8d978ba6dccb80e3b901ff208468f02e8b2da04.lean/declarations/zero-mul-subset--71dec20b9a650bd8fecfa4d5.md) | 28 | `result-track:71dec20b9a650bd8fecfa4d5aee065ebd90a41d9c654f3ac2f8bbc624c7341ff` |
| 3 | `lemma` | [Nonempty.mul_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant87597e49d4ec1e7f0d4c5b38b8d978ba6dccb80e3b901ff208468f02e8b2da04.lean/declarations/nonempty-mul-zero--dc5e3ecfec7e58e9caca2697.md) | 30 | `result-track:dc5e3ecfec7e58e9caca2697b85d78a1481d04f02a1ee25e966ee32eae8eba52` |
| 4 | `lemma` | [Nonempty.zero_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant87597e49d4ec1e7f0d4c5b38b8d978ba6dccb80e3b901ff208468f02e8b2da04.lean/declarations/nonempty-zero-mul--94579e393345ff245f603814.md) | 33 | `result-track:94579e393345ff245f6038148b2a71addc5e154cb7bb1ab3d70467e97d66a876` |
| 5 | `lemma` | [div_zero_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant87597e49d4ec1e7f0d4c5b38b8d978ba6dccb80e3b901ff208468f02e8b2da04.lean/declarations/div-zero-subset--f25f5ea2026cb0831cdc9482.md) | 41 | `result-track:f25f5ea2026cb0831cdc9482ac64b314d058b9bd7f81d3b455ddc2dd4ac44b98` |
| 6 | `lemma` | [zero_div_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant87597e49d4ec1e7f0d4c5b38b8d978ba6dccb80e3b901ff208468f02e8b2da04.lean/declarations/zero-div-subset--b4913868736011c1783360c3.md) | 43 | `result-track:b4913868736011c1783360c386f1b949d6cbf4e24b0c770d958802d5aff4c4b5` |
| 7 | `lemma` | [Nonempty.div_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant87597e49d4ec1e7f0d4c5b38b8d978ba6dccb80e3b901ff208468f02e8b2da04.lean/declarations/nonempty-div-zero--006e691d9bf432ca4cce36cb.md) | 45 | `result-track:006e691d9bf432ca4cce36cbac4b9bcef85434f03c7dccba86d63e39344158b8` |
| 8 | `lemma` | [Nonempty.zero_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant87597e49d4ec1e7f0d4c5b38b8d978ba6dccb80e3b901ff208468f02e8b2da04.lean/declarations/nonempty-zero-div--4801095089cd45424cb8adb4.md) | 48 | `result-track:4801095089cd45424cb8adb48e9e9c93d33e498ff33bf59fed815b04bf96819f` |
| 9 | `lemma` | [inv_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant87597e49d4ec1e7f0d4c5b38b8d978ba6dccb80e3b901ff208468f02e8b2da04.lean/declarations/inv-zero--a86af08654e505b4e3efbe5c.md) | 51 | `result-track:a86af08654e505b4e3efbe5c3db7d434980e135214fe4ca95e8633ad6c0b5b60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
