# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SharpTriangleMeanBudget.Variantc61f3f1d068ed71591537197c9cb3ca1c49fc81ef23f6f06f62058ac6bca46bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45b4fb611ded0ce10d8e9eabe5288592f6102da8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variantc61f3f1d068ed71591537197c9cb3ca1c49fc81ef23f6f06f62058ac6bca46bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variantc61f3f1d068ed71591537197c9cb3ca1c49fc81ef23f6f06f62058ac6bca46bb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variantc61f3f1d068ed71591537197c9cb3ca1c49fc81ef23f6f06f62058ac6bca46bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45b4fb611ded0ce10d8e9eabe5288592f6102da8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variantc61f3f1d068ed71591537197c9cb3ca1c49fc81ef23f6f06f62058ac6bca46bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variantc61f3f1d068ed71591537197c9cb3ca1c49fc81ef23f6f06f62058ac6bca46bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variantc61f3f1d068ed71591537197c9cb3ca1c49fc81ef23f6f06f62058ac6bca46bb.lean/declarations/cumulative--f198f3487570d9e6768d656d.md) | 16 | `declaration-track:f198f3487570d9e6768d656d13bb22247fba036bc5e13c4b822c803e6eab8750` |
| 2 | `theorem` | [cumulative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variantc61f3f1d068ed71591537197c9cb3ca1c49fc81ef23f6f06f62058ac6bca46bb.lean/declarations/cumulative-hasderivat--ee2c8f24f17b0c8a4960111f.md) | 18 | `result-track:ee2c8f24f17b0c8a4960111fea87b1ecd895db438841ded8ab937e0c0f5154f2` |
| 3 | `theorem` | [cumulative_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variantc61f3f1d068ed71591537197c9cb3ca1c49fc81ef23f6f06f62058ac6bca46bb.lean/declarations/cumulative-continuous--25633dcc2960c5d04c483c30.md) | 23 | `result-track:25633dcc2960c5d04c483c30891ae8a95876337bf9e0cc7721ff722872426e8d` |
| 4 | `theorem` | [triangle_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variantc61f3f1d068ed71591537197c9cb3ca1c49fc81ef23f6f06f62058ac6bca46bb.lean/declarations/triangle-integral-eq--9a527d8df30b4dc37371eac1.md) | 27 | `result-track:9a527d8df30b4dc37371eac1cb419a5728beae58e66b30253e112a327e89ecbc` |
| 5 | `theorem` | [triangle_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SharpTriangleMeanBudget/Variantc61f3f1d068ed71591537197c9cb3ca1c49fc81ef23f6f06f62058ac6bca46bb.lean/declarations/triangle-integral-le--40de75643d3cb17c2c7ec970.md) | 81 | `result-track:40de75643d3cb17c2c7ec970d4198b17cda6c1af3d5b9927f3ac3ae51f6f15cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
