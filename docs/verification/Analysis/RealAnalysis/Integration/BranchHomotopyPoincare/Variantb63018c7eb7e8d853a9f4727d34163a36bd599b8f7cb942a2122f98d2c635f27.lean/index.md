# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.BranchHomotopyPoincare.Variantb63018c7eb7e8d853a9f4727d34163a36bd599b8f7cb942a2122f98d2c635f27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8211c3365d6a2ef133791d1a6219a2b7179afa9",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variantb63018c7eb7e8d853a9f4727d34163a36bd599b8f7cb942a2122f98d2c635f27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variantb63018c7eb7e8d853a9f4727d34163a36bd599b8f7cb942a2122f98d2c635f27.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variantb63018c7eb7e8d853a9f4727d34163a36bd599b8f7cb942a2122f98d2c635f27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8211c3365d6a2ef133791d1a6219a2b7179afa9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variantb63018c7eb7e8d853a9f4727d34163a36bd599b8f7cb942a2122f98d2c635f27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variantb63018c7eb7e8d853a9f4727d34163a36bd599b8f7cb942a2122f98d2c635f27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.ComplexAnalysis.FiniteHoleGeometry` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.CurveIntegral.Poincare` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexOneForm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variantb63018c7eb7e8d853a9f4727d34163a36bd599b8f7cb942a2122f98d2c635f27.lean/declarations/complexoneform--f0aac9926535f9d967b43dbc.md) | 30 | `declaration-track:f0aac9926535f9d967b43dbcc13f12a3d2a3fba66abc983bf4d49ca8a083ba22` |
| 2 | `theorem` | [complexOneForm_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variantb63018c7eb7e8d853a9f4727d34163a36bd599b8f7cb942a2122f98d2c635f27.lean/declarations/complexoneform-apply--25d5dfe699715d0e21d15748.md) | 34 | `result-track:25d5dfe699715d0e21d15748fc748aa5dddf5a1f61107c600f7533dee3539b7e` |
| 3 | `theorem` | [curveIntegral_segment_complexOneForm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variantb63018c7eb7e8d853a9f4727d34163a36bd599b8f7cb942a2122f98d2c635f27.lean/declarations/curveintegral-segment-complexoneform--a344ae25ce6b5864fb223f52.md) | 40 | `result-track:a344ae25ce6b5864fb223f526a448938cc059ed02ed313fbb66672670956a27c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
