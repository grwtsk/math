# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualFirstDerivativeRegularityAttempt01.Variantf4297fdffad821fe11b8e4cfb9e205062ed86f4f9c43bbbd65035df02bebdf34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6baaa9f4bb1626baf9c62e7f98966252151e5d66",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantf4297fdffad821fe11b8e4cfb9e205062ed86f4f9c43bbbd65035df02bebdf34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantf4297fdffad821fe11b8e4cfb9e205062ed86f4f9c43bbbd65035df02bebdf34.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantf4297fdffad821fe11b8e4cfb9e205062ed86f4f9c43bbbd65035df02bebdf34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6baaa9f4bb1626baf9c62e7f98966252151e5d66`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantf4297fdffad821fe11b8e4cfb9e205062ed86f4f9c43bbbd65035df02bebdf34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantf4297fdffad821fe11b8e4cfb9e205062ed86f4f9c43bbbd65035df02bebdf34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualSourceWeakSecondDerivative` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.RCLike` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_first_derivative_eq_projection](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantf4297fdffad821fe11b8e4cfb9e205062ed86f4f9c43bbbd65035df02bebdf34.lean/declarations/actual-first-derivative-eq-projection--0a4dd7e2f3445161134680ba.md) | 26 | `result-track:0a4dd7e2f3445161134680baa48a85343f4bfa0bbb925160eff93b466d485f87` |
| 2 | `theorem` | [actual_first_derivative_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantf4297fdffad821fe11b8e4cfb9e205062ed86f4f9c43bbbd65035df02bebdf34.lean/declarations/actual-first-derivative-lipschitz--6827afbfd7545bb47591a9b3.md) | 44 | `result-track:6827afbfd7545bb47591a9b3437ba59145a97fcfb794bab51fda5267d30b2dcd` |
| 3 | `theorem` | [actual_first_derivative_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantf4297fdffad821fe11b8e4cfb9e205062ed86f4f9c43bbbd65035df02bebdf34.lean/declarations/actual-first-derivative-absolutelycontinuous--b1c9c09e91c536408f2aa414.md) | 58 | `result-track:b1c9c09e91c536408f2aa414d595c814a2072925f474cfe374c68ab9eb6a905d` |
| 4 | `theorem` | [actual_first_derivative_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantf4297fdffad821fe11b8e4cfb9e205062ed86f4f9c43bbbd65035df02bebdf34.lean/declarations/actual-first-derivative-ae-hasderivat--b680e73e9faba27cd5d547ab.md) | 64 | `result-track:b680e73e9faba27cd5d547ab4d19b9db18590a6a283bdcb191ead6ca9b35931b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
