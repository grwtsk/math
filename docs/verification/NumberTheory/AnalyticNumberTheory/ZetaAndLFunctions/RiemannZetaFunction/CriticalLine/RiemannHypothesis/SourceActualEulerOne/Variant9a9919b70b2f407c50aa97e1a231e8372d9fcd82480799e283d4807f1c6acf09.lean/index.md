# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualEulerOne.Variant9a9919b70b2f407c50aa97e1a231e8372d9fcd82480799e283d4807f1c6acf09

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7507e9dd80905d67cf7d9b41f39051e1020550fb",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant9a9919b70b2f407c50aa97e1a231e8372d9fcd82480799e283d4807f1c6acf09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant9a9919b70b2f407c50aa97e1a231e8372d9fcd82480799e283d4807f1c6acf09.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant9a9919b70b2f407c50aa97e1a231e8372d9fcd82480799e283d4807f1c6acf09.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7507e9dd80905d67cf7d9b41f39051e1020550fb`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant9a9919b70b2f407c50aa97e1a231e8372d9fcd82480799e283d4807f1c6acf09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant9a9919b70b2f407c50aa97e1a231e8372d9fcd82480799e283d4807f1c6acf09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ZetaBounds` — import line 1; external provider; requires a separately pinned dependency.
- `Zeta23.Statement.SeamClosed` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [periodicB1](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant9a9919b70b2f407c50aa97e1a231e8372d9fcd82480799e283d4807f1c6acf09.lean/declarations/periodicb1--404e3d57b39e7067442eda7f.md) | 19 | `declaration-track:404e3d57b39e7067442eda7fc767fe0c2a6b106610cb1736f62ae5fd8d86a35b` |
| 2 | `def` | [periodicB2](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant9a9919b70b2f407c50aa97e1a231e8372d9fcd82480799e283d4807f1c6acf09.lean/declarations/periodicb2--677699157222cc13b74ab681.md) | 21 | `declaration-track:677699157222cc13b74ab681f1268acc050d661b9bb14274eada18c185a42c92` |
| 3 | `theorem` | [sourceFloorWeight_eq_neg_periodicB1](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant9a9919b70b2f407c50aa97e1a231e8372d9fcd82480799e283d4807f1c6acf09.lean/declarations/sourcefloorweight-eq-neg-periodicb1--bf8f51d810e941aa498a906f.md) | 24 | `result-track:bf8f51d810e941aa498a906f2bc0bb0172c73f1f2f81c16d2734feb39c804663` |
| 4 | `theorem` | [periodicB2_bounds](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant9a9919b70b2f407c50aa97e1a231e8372d9fcd82480799e283d4807f1c6acf09.lean/declarations/periodicb2-bounds--c231625e8b4790d69bce8d10.md) | 29 | `result-track:c231625e8b4790d69bce8d10d3b4d75a99574e35f049fa3da8826b41014bb2aa` |
| 5 | `theorem` | [periodicB2_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant9a9919b70b2f407c50aa97e1a231e8372d9fcd82480799e283d4807f1c6acf09.lean/declarations/periodicb2-abs-le--1122d9024fbaab3b8880fd54.md) | 39 | `result-track:1122d9024fbaab3b8880fd54b7a692d81e89a3ff8c207856cebf13fe6f76115b` |
| 6 | `theorem` | [periodicB2_at_integer](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant9a9919b70b2f407c50aa97e1a231e8372d9fcd82480799e283d4807f1c6acf09.lean/declarations/periodicb2-at-integer--ece55e49f035145f01eca02a.md) | 43 | `result-track:ece55e49f035145f01eca02a4b3f3d03e6d09fd658645b68201bc089febeb840` |
| 7 | `theorem` | [actual_zeta_euler_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerOne/Variant9a9919b70b2f407c50aa97e1a231e8372d9fcd82480799e283d4807f1c6acf09.lean/declarations/actual-zeta-euler-one--70a99f101b5fa35d24abc37f.md) | 47 | `result-track:70a99f101b5fa35d24abc37f5618819b9ec183d2242540822822dc98e0f6cfc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
