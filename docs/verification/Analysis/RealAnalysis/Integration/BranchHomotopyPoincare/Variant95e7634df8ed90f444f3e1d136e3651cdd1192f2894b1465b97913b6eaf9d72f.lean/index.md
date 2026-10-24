# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.BranchHomotopyPoincare.Variant95e7634df8ed90f444f3e1d136e3651cdd1192f2894b1465b97913b6eaf9d72f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61434889f3ac6c9dd0cad384b233f63a412cb6ca",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variant95e7634df8ed90f444f3e1d136e3651cdd1192f2894b1465b97913b6eaf9d72f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variant95e7634df8ed90f444f3e1d136e3651cdd1192f2894b1465b97913b6eaf9d72f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variant95e7634df8ed90f444f3e1d136e3651cdd1192f2894b1465b97913b6eaf9d72f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61434889f3ac6c9dd0cad384b233f63a412cb6ca`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variant95e7634df8ed90f444f3e1d136e3651cdd1192f2894b1465b97913b6eaf9d72f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variant95e7634df8ed90f444f3e1d136e3651cdd1192f2894b1465b97913b6eaf9d72f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.ComplexAnalysis.FiniteHoleGeometry` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.CurveIntegral.Poincare` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexOneForm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variant95e7634df8ed90f444f3e1d136e3651cdd1192f2894b1465b97913b6eaf9d72f.lean/declarations/complexoneform--f662ff32af65a530305a89cc.md) | 38 | `declaration-track:f662ff32af65a530305a89cc57ccd58a066606828e06d4e6e5ff679c83ec9aeb` |
| 2 | `theorem` | [complexOneForm_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variant95e7634df8ed90f444f3e1d136e3651cdd1192f2894b1465b97913b6eaf9d72f.lean/declarations/complexoneform-apply--951bd81e63a1a14c8970bc11.md) | 42 | `result-track:951bd81e63a1a14c8970bc11cce6a7bc3b3419b9d017d36475ad76f703e5227b` |
| 3 | `theorem` | [curveIntegral_segment_complexOneForm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchHomotopyPoincare/Variant95e7634df8ed90f444f3e1d136e3651cdd1192f2894b1465b97913b6eaf9d72f.lean/declarations/curveintegral-segment-complexoneform--701998190d7f3ca70b04ee28.md) | 48 | `result-track:701998190d7f3ca70b04ee28c21c20cb959f730dc8297b99ba43410e8011cad7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
