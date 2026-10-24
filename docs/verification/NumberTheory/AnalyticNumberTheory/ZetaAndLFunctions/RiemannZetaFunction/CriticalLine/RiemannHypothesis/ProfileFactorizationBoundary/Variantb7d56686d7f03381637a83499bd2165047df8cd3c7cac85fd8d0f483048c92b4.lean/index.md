# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProfileFactorizationBoundary.Variantb7d56686d7f03381637a83499bd2165047df8cd3c7cac85fd8d0f483048c92b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56ec1e794d347bea09d773f658bd6099da1fcb18",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProfileFactorizationBoundary/Variantb7d56686d7f03381637a83499bd2165047df8cd3c7cac85fd8d0f483048c92b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProfileFactorizationBoundary/Variantb7d56686d7f03381637a83499bd2165047df8cd3c7cac85fd8d0f483048c92b4.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProfileFactorizationBoundary/Variantb7d56686d7f03381637a83499bd2165047df8cd3c7cac85fd8d0f483048c92b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56ec1e794d347bea09d773f658bd6099da1fcb18`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProfileFactorizationBoundary/Variantb7d56686d7f03381637a83499bd2165047df8cd3c7cac85fd8d0f483048c92b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProfileFactorizationBoundary/Variantb7d56686d7f03381637a83499bd2165047df8cd3c7cac85fd8d0f483048c92b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diagonalProfile](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProfileFactorizationBoundary/Variantb7d56686d7f03381637a83499bd2165047df8cd3c7cac85fd8d0f483048c92b4.lean/declarations/diagonalprofile--cf36b3ec6af87328dd8776cc.md) | 21 | `declaration-track:cf36b3ec6af87328dd8776ccf65ce6f3150da99887119538478bcb18acfc3400` |
| 2 | `theorem` | [two_diagonal_corners](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProfileFactorizationBoundary/Variantb7d56686d7f03381637a83499bd2165047df8cd3c7cac85fd8d0f483048c92b4.lean/declarations/two-diagonal-corners--f5ccda8065ba28900bf35f91.md) | 23 | `result-track:f5ccda8065ba28900bf35f91a7ac3ed3cb155de3823fcc4f944d06da7e7ad4a2` |
| 3 | `theorem` | [mixed_corner_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProfileFactorizationBoundary/Variantb7d56686d7f03381637a83499bd2165047df8cd3c7cac85fd8d0f483048c92b4.lean/declarations/mixed-corner-zero--e37b28cab3a44ad532647833.md) | 26 | `result-track:e37b28cab3a44ad532647833a934bc612a799382749a31f42464d1a0fa249614` |
| 4 | `theorem` | [profile_has_no_single_three_factor_separation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProfileFactorizationBoundary/Variantb7d56686d7f03381637a83499bd2165047df8cd3c7cac85fd8d0f483048c92b4.lean/declarations/profile-has-no-single-three-factor-separation--e39b031159b3a251faa3b301.md) | 29 | `result-track:e39b031159b3a251faa3b301bc1d72c3a0188c1269ac949e13421d7dc91a1d38` |
| 5 | `theorem` | [full_two_mode_separation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ProfileFactorizationBoundary/Variantb7d56686d7f03381637a83499bd2165047df8cd3c7cac85fd8d0f483048c92b4.lean/declarations/full-two-mode-separation--37314d8d68c5932a811570e6.md) | 44 | `result-track:37314d8d68c5932a811570e6968391939de09a50ac973cd59a509b5b4bddd5cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
