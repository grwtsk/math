# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Pi.Varianta584e867a5933fddf531cf664ec50c52538f76cbe3ff822733ea2877b8cce98d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdc2b96749939133da9f9caea9d1806a2336863d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pi/Varianta584e867a5933fddf531cf664ec50c52538f76cbe3ff822733ea2877b8cce98d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Varianta584e867a5933fddf531cf664ec50c52538f76cbe3ff822733ea2877b8cce98d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Varianta584e867a5933fddf531cf664ec50c52538f76cbe3ff822733ea2877b8cce98d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdc2b96749939133da9f9caea9d1806a2336863d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pi/Varianta584e867a5933fddf531cf664ec50c52538f76cbe3ff822733ea2877b8cce98d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Pi/Varianta584e867a5933fddf531cf664ec50c52538f76cbe3ff822733ea2877b8cce98d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFDerivAt_update](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Varianta584e867a5933fddf531cf664ec50c52538f76cbe3ff822733ea2877b8cce98d.lean/declarations/hasfderivat-update--e1a84b4cef7aa9eeb4d185b7.md) | 16 | `result-track:e1a84b4cef7aa9eeb4d185b7e7194c81f183d9d9df4ac93d7a23df1775572cf2` |
| 2 | `theorem` | [hasFDerivAt_single](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Varianta584e867a5933fddf531cf664ec50c52538f76cbe3ff822733ea2877b8cce98d.lean/declarations/hasfderivat-single--002d1b7f158f5531c43b799c.md) | 31 | `result-track:002d1b7f158f5531c43b799c879a23d685839e2574d2ea2f68f0e2902072b0bb` |
| 3 | `theorem` | [fderiv_update](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Varianta584e867a5933fddf531cf664ec50c52538f76cbe3ff822733ea2877b8cce98d.lean/declarations/fderiv-update--0ee3848c3d70aadd16e44eb6.md) | 35 | `result-track:0ee3848c3d70aadd16e44eb6bb492b898680b4f134d1753d23161cfe729de7e0` |
| 4 | `theorem` | [fderiv_single](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Pi/Varianta584e867a5933fddf531cf664ec50c52538f76cbe3ff822733ea2877b8cce98d.lean/declarations/fderiv-single--239fb26796fd129bf4bd1191.md) | 39 | `result-track:239fb26796fd129bf4bd1191c905313d6f3944c4cb75b4f17b19becc69bd5fbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
