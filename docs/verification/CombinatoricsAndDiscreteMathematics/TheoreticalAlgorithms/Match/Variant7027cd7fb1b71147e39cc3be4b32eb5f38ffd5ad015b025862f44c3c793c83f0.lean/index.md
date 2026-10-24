# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Match.Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24fa4b5b4287d7f93ce6eb59b8251c4a2af37cd5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24fa4b5b4287d7f93ce6eb59b8251c4a2af37cd5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Array.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Data.Array.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrefixTable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0.lean/declarations/prefixtable--a1d27452abbad7c134dc75ea.md) | 16 | `declaration-track:a1d27452abbad7c134dc75ea456dfd4e34ed02c18eb1b1324e6b273ebbe951d4` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0.lean/declarations/instance--e082395760c9f44350f45ad1.md) | 20 | `declaration-track:e082395760c9f44350f45ad1668ce67082672da43324045ca19f2528e3e4c7ca` |
| 3 | `abbrev` | [PrefixTable.size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0.lean/declarations/prefixtable-size--f3d4d4812b220e4f355e75d9.md) | 24 | `declaration-track:f3d4d4812b220e4f355e75d94f36c05a42928ef0c7ec50cf2523f10d54743718` |
| 4 | `def` | [PrefixTable.step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0.lean/declarations/prefixtable-step--d4b18ab84ebd8bb8ed0a2ebc.md) | 33 | `declaration-track:d4b18ab84ebd8bb8ed0a2ebcf4824b2f9aab15faeb5d5d2ef2da5a4c3b8d6e1a` |
| 5 | `def` | [PrefixTable.extend](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0.lean/declarations/prefixtable-extend--e53757275b27b4df5a93fa51.md) | 54 | `declaration-track:e53757275b27b4df5a93fa511c27cbdcb3ca2e7c0249c7a58cde5f1b81c943b4` |
| 6 | `def` | [mkPrefixTable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0.lean/declarations/mkprefixtable--57f7c76d438081260cec7a06.md) | 63 | `declaration-track:57f7c76d438081260cec7a0638bea479bd5e2e77fd200e2900f1e6b8a933bdd5` |
| 7 | `def` | [mkPrefixTableOfStream](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0.lean/declarations/mkprefixtableofstream--d70d252bd659c0dcf3917e29.md) | 66 | `declaration-track:d70d252bd659c0dcf3917e299123afbd3a5d1a36607dd67c4dd4d0e266b6f6af` |
| 8 | `structure` | [Matcher](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0.lean/declarations/matcher--9ac9ffbd552f6bb8a0c921fa.md) | 76 | `declaration-track:9ac9ffbd552f6bb8a0c921fa5bde03bbe269b78aa6bf208e7ed3811a56e083ab` |
| 9 | `def` | [Matcher.ofArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0.lean/declarations/matcher-ofarray--8b05a8e368e43350e698f6cb.md) | 83 | `declaration-track:8b05a8e368e43350e698f6cb28e3b99ba471190fd05453120edc778dc29bd2d2` |
| 10 | `def` | [Matcher.ofStream](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0.lean/declarations/matcher-ofstream--6c0048628de360717465c057.md) | 87 | `declaration-track:6c0048628de360717465c057b9eabaca96a7ff8a1c4411f1e6ae560a3f8f64e2` |
| 11 | `def` | [Matcher.next?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Match/Variant7027cd7fb1b71147e39cc3be4b32eb5f38ffd5ad015b025862f44c3c793c83f0.lean/declarations/matcher-next--be358f5fadf586fb4700cee4.md) | 95 | `declaration-track:be358f5fadf586fb4700cee4974e82a3a5a0db2314ffcc7f5cda7283197d09f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
