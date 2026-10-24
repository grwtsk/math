# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LogDerivativeResidue.Variant642909dd2363d023ed628b5a933f5a2981c545118865b17e1863e1f08042a994

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "610ce8d65107e434aeb95a9318450637be3b6324",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant642909dd2363d023ed628b5a933f5a2981c545118865b17e1863e1f08042a994.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant642909dd2363d023ed628b5a933f5a2981c545118865b17e1863e1f08042a994.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant642909dd2363d023ed628b5a933f5a2981c545118865b17e1863e1f08042a994.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `610ce8d65107e434aeb95a9318450637be3b6324`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant642909dd2363d023ed628b5a933f5a2981c545118865b17e1863e1f08042a994.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant642909dd2363d023ed628b5a933f5a2981c545118865b17e1863e1f08042a994.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasSimplePoleResidueAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant642909dd2363d023ed628b5a933f5a2981c545118865b17e1863e1f08042a994.lean/declarations/hassimplepoleresidueat--ac2ed6a8813a9a85e6c0fdc9.md) | 42 | `declaration-track:ac2ed6a8813a9a85e6c0fdc96ffd472cf3ecfe5c60ad6af0d787b3fc764c164a` |
| 2 | `theorem` | [logDeriv_eventuallyEq_principalPart](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant642909dd2363d023ed628b5a933f5a2981c545118865b17e1863e1f08042a994.lean/declarations/logderiv-eventuallyeq-principalpart--a2c5380a7f339e87f78bfbd3.md) | 52 | `result-track:a2c5380a7f339e87f78bfbd37340aed8da73413d26c83d840f849397bb4f605e` |
| 3 | `theorem` | [hasSimplePoleResidueAt_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDerivativeResidue/Variant642909dd2363d023ed628b5a933f5a2981c545118865b17e1863e1f08042a994.lean/declarations/hassimplepoleresidueat-logderiv--788b5ee0de67bae42291bd6d.md) | 110 | `result-track:788b5ee0de67bae42291bd6dff40c1cb7c4d579080e640b67a8dd23dae112a7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
