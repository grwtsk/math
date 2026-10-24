# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Grid.Variant3260e8deaefb10a318d670ae801a90b4c6eecc6ce5bdc9e9d3e2578804955802

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efc8b8140d04178688f3d666f76e3c2f0af234c7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant3260e8deaefb10a318d670ae801a90b4c6eecc6ce5bdc9e9d3e2578804955802.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant3260e8deaefb10a318d670ae801a90b4c6eecc6ce5bdc9e9d3e2578804955802.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant3260e8deaefb10a318d670ae801a90b4c6eecc6ce5bdc9e9d3e2578804955802.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efc8b8140d04178688f3d666f76e3c2f0af234c7`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant3260e8deaefb10a318d670ae801a90b4c6eecc6ce5bdc9e9d3e2578804955802.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant3260e8deaefb10a318d670ae801a90b4c6eecc6ce5bdc9e9d3e2578804955802.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Tail.Basic` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [inv_pow_four_step](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant3260e8deaefb10a318d670ae801a90b4c6eecc6ce5bdc9e9d3e2578804955802.lean/declarations/inv-pow-four-step--8063de9e81db3ae33a47590f.md) | 37 | `result-track:8063de9e81db3ae33a47590f98f6aa7180ea9e5b9b3ee209a97a5830dbf24d79` |
| 2 | `lemma` | [sum_inv_pow_four_le_telescope](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant3260e8deaefb10a318d670ae801a90b4c6eecc6ce5bdc9e9d3e2578804955802.lean/declarations/sum-inv-pow-four-le-telescope--c0f5781638ea7d6e0040dcb3.md) | 49 | `result-track:c0f5781638ea7d6e0040dcb36bb1531026a40adea0a3332c0cd16b16410fec07` |
| 3 | `lemma` | [sum_inv_pow_four_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant3260e8deaefb10a318d670ae801a90b4c6eecc6ce5bdc9e9d3e2578804955802.lean/declarations/sum-inv-pow-four-le--80da2f2c0a60d4d973cc9fa4.md) | 71 | `result-track:80da2f2c0a60d4d973cc9fa43502164bcc2ce6330bbbaf0f1b934db3f88ef00f` |
| 4 | `lemma` | [grid_const_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant3260e8deaefb10a318d670ae801a90b4c6eecc6ce5bdc9e9d3e2578804955802.lean/declarations/grid-const-bound--a0aea1c2ce1bea07daed76a3.md) | 83 | `result-track:a0aea1c2ce1bea07daed76a30ac2de282c6deb06abfe2e537d288d87995bbc26` |
| 5 | `theorem` | [grid_sum_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Grid/Variant3260e8deaefb10a318d670ae801a90b4c6eecc6ce5bdc9e9d3e2578804955802.lean/declarations/grid-sum-le--83a13986a01e073bea28d695.md) | 103 | `result-track:83a13986a01e073bea28d695f8b420a230b1f81fad1d7834d78b5bb03db10d7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
