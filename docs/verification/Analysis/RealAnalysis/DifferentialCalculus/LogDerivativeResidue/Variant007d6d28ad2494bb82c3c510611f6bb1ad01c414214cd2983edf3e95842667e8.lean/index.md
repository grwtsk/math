# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LogDerivativeResidue.Variant007d6d28ad2494bb82c3c510611f6bb1ad01c414214cd2983edf3e95842667e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a07957dc4b7a575c6e62abbd8e66516ec50b45c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant007d6d28ad2494bb82c3c510611f6bb1ad01c414214cd2983edf3e95842667e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant007d6d28ad2494bb82c3c510611f6bb1ad01c414214cd2983edf3e95842667e8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant007d6d28ad2494bb82c3c510611f6bb1ad01c414214cd2983edf3e95842667e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a07957dc4b7a575c6e62abbd8e66516ec50b45c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant007d6d28ad2494bb82c3c510611f6bb1ad01c414214cd2983edf3e95842667e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant007d6d28ad2494bb82c3c510611f6bb1ad01c414214cd2983edf3e95842667e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasSimplePoleResidueAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant007d6d28ad2494bb82c3c510611f6bb1ad01c414214cd2983edf3e95842667e8.lean/declarations/hassimplepoleresidueat--f465d28933529e8b6fb0e631.md) | 40 | `declaration-track:f465d28933529e8b6fb0e6311ed5c8508c3ed6f5c07a3848a1a788aa4077de49` |
| 2 | `theorem` | [logDeriv_eventuallyEq_principalPart](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant007d6d28ad2494bb82c3c510611f6bb1ad01c414214cd2983edf3e95842667e8.lean/declarations/logderiv-eventuallyeq-principalpart--196b677f43f855181f4b202f.md) | 49 | `result-track:196b677f43f855181f4b202f99ec6f6bbb4fa655814d2e12e947cfdea868bcb3` |
| 3 | `theorem` | [hasSimplePoleResidueAt_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant007d6d28ad2494bb82c3c510611f6bb1ad01c414214cd2983edf3e95842667e8.lean/declarations/hassimplepoleresidueat-logderiv--b914ef23b2c4ffb5de3a8262.md) | 106 | `result-track:b914ef23b2c4ffb5de3a8262ce2e7edc0a4c27e53e4e99bc10621125a00f1c30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
