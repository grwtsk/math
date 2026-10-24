# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SharpTriangleMeanBudget.Variant67b64d53b66adf35d23def3326ab0432d118be65e37d9d04d3c2e0c302f56f8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b07a6056ce5ef9cf9d7d778ca5f9cd9266b8e637",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant67b64d53b66adf35d23def3326ab0432d118be65e37d9d04d3c2e0c302f56f8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant67b64d53b66adf35d23def3326ab0432d118be65e37d9d04d3c2e0c302f56f8b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant67b64d53b66adf35d23def3326ab0432d118be65e37d9d04d3c2e0c302f56f8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b07a6056ce5ef9cf9d7d778ca5f9cd9266b8e637`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant67b64d53b66adf35d23def3326ab0432d118be65e37d9d04d3c2e0c302f56f8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant67b64d53b66adf35d23def3326ab0432d118be65e37d9d04d3c2e0c302f56f8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant67b64d53b66adf35d23def3326ab0432d118be65e37d9d04d3c2e0c302f56f8b.lean/declarations/cumulative--a71ebdfc746cd3d714ec4599.md) | 24 | `declaration-track:a71ebdfc746cd3d714ec459987c5b63085646d44ded86326583d33ac0c0452d7` |
| 2 | `theorem` | [cumulative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant67b64d53b66adf35d23def3326ab0432d118be65e37d9d04d3c2e0c302f56f8b.lean/declarations/cumulative-hasderivat--0a1ce308456186dc6b28c924.md) | 26 | `result-track:0a1ce308456186dc6b28c924b623c37497fb0e308d3b5aa49c493f118a86f559` |
| 3 | `theorem` | [cumulative_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant67b64d53b66adf35d23def3326ab0432d118be65e37d9d04d3c2e0c302f56f8b.lean/declarations/cumulative-continuous--3c8b553cd45b03805457192e.md) | 31 | `result-track:3c8b553cd45b03805457192e928e450a5b524e34b8935ecdc9eafa4f255be408` |
| 4 | `theorem` | [triangle_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant67b64d53b66adf35d23def3326ab0432d118be65e37d9d04d3c2e0c302f56f8b.lean/declarations/triangle-integral-eq--0eb64e33548829977633b559.md) | 35 | `result-track:0eb64e33548829977633b5592ddc0d69c34965335959183acf67012ce561fad6` |
| 5 | `theorem` | [triangle_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variant67b64d53b66adf35d23def3326ab0432d118be65e37d9d04d3c2e0c302f56f8b.lean/declarations/triangle-integral-le--931ad3045284df10068ca96a.md) | 87 | `result-track:931ad3045284df10068ca96ae50dce0338e1dea4248ef555937e322a54bf9974` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
