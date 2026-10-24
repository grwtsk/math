# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorMainComparison.Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73602439ab76828833767a504e04f3f8ac0643fe",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73602439ab76828833767a504e04f3f8ac0643fe`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorRemainderNorm` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorMainResidual](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean/declarations/divisormainresidual--086ae6a614d93fd05fd26ad2.md) | 26 | `declaration-track:086ae6a614d93fd05fd26ad20e8bebd398b49fe7e9edc234e1548756dc08572d` |
| 2 | `theorem` | [arithmeticResidual_eq_main_sub_remainder](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean/declarations/arithmeticresidual-eq-main-sub-remainder--993162bf576e91d51ada343c.md) | 36 | `result-track:993162bf576e91d51ada343c91d6b5f007ab1a7853f3b7cd4180745091e2c424` |
| 3 | `def` | [divisorMainCore](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean/declarations/divisormaincore--be9c84cc68723d2d89da49b0.md) | 47 | `declaration-track:be9c84cc68723d2d89da49b08a0d4eb1f5527ea057e00933b1ad6c87083d0853` |
| 4 | `theorem` | [mainCore_eq_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean/declarations/maincore-eq-add--ccba1dd8812ebfba04e5869e.md) | 51 | `result-track:ccba1dd8812ebfba04e5869eb11bb039913695a86324c957820cf77216c532b2` |
| 5 | `theorem` | [divisorMainCore_memLp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean/declarations/divisormaincore-memlp--e91bece785db18b682ad01ca.md) | 66 | `result-track:e91bece785db18b682ad01cabe78f320a86c69e5233e243a2e3eba287dd9bcd2` |
| 6 | `def` | [divisorMainVector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean/declarations/divisormainvector--1a16c85b8b070d043b3c993f.md) | 74 | `declaration-track:1a16c85b8b070d043b3c993f141914c7eb5a34523ee46e72fc63321c6bdb5fb6` |
| 7 | `theorem` | [mainVector_eq_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean/declarations/mainvector-eq-add--38a4a0a39c07e5afc14eada2.md) | 78 | `result-track:38a4a0a39c07e5afc14eada265907ac2dcb975bf8bd40c47d9c5184b37c280bb` |
| 8 | `theorem` | [filtered_core_main_norm_difference_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainComparison/Variantaf348301f7dc3c42182c6d35564f7e9e705282d5f6a422f31d7de27cc21d03bb.lean/declarations/filtered-core-main-norm-difference-le--ed755a815ff6c48c57cf1249.md) | 96 | `result-track:ed755a815ff6c48c57cf124933008dd93180cb9a60647abf95007a1ad6192b7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
