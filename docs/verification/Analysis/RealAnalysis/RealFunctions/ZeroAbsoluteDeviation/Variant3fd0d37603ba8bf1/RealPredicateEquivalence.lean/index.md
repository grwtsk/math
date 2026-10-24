# Verification target: GRWTSK.Analysis.RealAnalysis.RealFunctions.ZeroAbsoluteDeviation.Variant3fd0d37603ba8bf1.RealPredicateEquivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33d078d0ad23dac0c63f9f5edbc81d69d7d2bff3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/RealFunctions/ZeroAbsoluteDeviation/Variant3fd0d37603ba8bf1/RealPredicateEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ZeroAbsoluteDeviation/Variant3fd0d37603ba8bf1/RealPredicateEquivalence.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ZeroAbsoluteDeviation/Variant3fd0d37603ba8bf1/RealPredicateEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33d078d0ad23dac0c63f9f5edbc81d69d7d2bff3`.

Source path: `GRWTSK/Analysis/RealAnalysis/RealFunctions/ZeroAbsoluteDeviation/Variant3fd0d37603ba8bf1/RealPredicateEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/RealFunctions/ZeroAbsoluteDeviation/Variant3fd0d37603ba8bf1/RealPredicateEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Core.DualPivot` — import line 17; external provider; requires a separately pinned dependency.
- `Folder.Harmonic.AnalyticPivot` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCriticalLineRealPart](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ZeroAbsoluteDeviation/Variant3fd0d37603ba8bf1/RealPredicateEquivalence.lean/declarations/iscriticallinerealpart--de06d34f4a75e9c04d2efad3.md) | 37 | `declaration-track:de06d34f4a75e9c04d2efad3f0f2c4341802cefb2816a0f28ee9460733bd88ce` |
| 2 | `def` | [CenteredWithZeroVariance](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ZeroAbsoluteDeviation/Variant3fd0d37603ba8bf1/RealPredicateEquivalence.lean/declarations/centeredwithzerovariance--b50c719d666583e9924fd6d4.md) | 40 | `declaration-track:b50c719d666583e9924fd6d496e106c1c47203c34f0ef4bc272cf2eb3d777c21` |
| 3 | `theorem` | [criticalLine_of_centered_zero](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ZeroAbsoluteDeviation/Variant3fd0d37603ba8bf1/RealPredicateEquivalence.lean/declarations/criticalline-of-centered-zero--5482e820c9c28159354d607d.md) | 43 | `result-track:5482e820c9c28159354d607def13ee312752c5727d59d49eb683c13fc7196424` |
| 4 | `theorem` | [centered_zero_of_criticalLine](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ZeroAbsoluteDeviation/Variant3fd0d37603ba8bf1/RealPredicateEquivalence.lean/declarations/centered-zero-of-criticalline--e6f8e11bef57592e057517cd.md) | 56 | `result-track:e6f8e11bef57592e057517cd82457646b3c0424855e73d85c204b17e5e5a2860` |
| 5 | `theorem` | [criticalLine_iff_centered_zero](../../../../../../../mathematics/Analysis/RealAnalysis/RealFunctions/ZeroAbsoluteDeviation/Variant3fd0d37603ba8bf1/RealPredicateEquivalence.lean/declarations/criticalline-iff-centered-zero--20a482e393ad014882e5d52b.md) | 66 | `result-track:20a482e393ad014882e5d52b2d4ccdc5e2501b34f2fa2ae5be8ed265c378f294` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
