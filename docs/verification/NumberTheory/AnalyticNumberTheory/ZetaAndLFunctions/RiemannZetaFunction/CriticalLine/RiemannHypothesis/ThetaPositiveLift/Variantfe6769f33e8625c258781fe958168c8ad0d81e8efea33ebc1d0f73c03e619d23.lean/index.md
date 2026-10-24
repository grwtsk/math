# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variantfe6769f33e8625c258781fe958168c8ad0d81e8efea33ebc1d0f73c03e619d23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05e689e42438231e7c54fc20e76d4af109294f7c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantfe6769f33e8625c258781fe958168c8ad0d81e8efea33ebc1d0f73c03e619d23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantfe6769f33e8625c258781fe958168c8ad0d81e8efea33ebc1d0f73c03e619d23.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantfe6769f33e8625c258781fe958168c8ad0d81e8efea33ebc1d0f73c03e619d23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05e689e42438231e7c54fc20e76d4af109294f7c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantfe6769f33e8625c258781fe958168c8ad0d81e8efea33ebc1d0f73c03e619d23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantfe6769f33e8625c258781fe958168c8ad0d81e8efea33ebc1d0f73c03e619d23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiJetPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantfe6769f33e8625c258781fe958168c8ad0d81e8efea33ebc1d0f73c03e619d23.lean/declarations/thetaphijetpolynomial--4fa24c8581e88ad62852bb5a.md) | 25 | `declaration-track:4fa24c8581e88ad62852bb5a583a974f46153dd4108237936f2e96afc791e29e` |
| 2 | `theorem` | [thetaPhiJetPolynomial_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantfe6769f33e8625c258781fe958168c8ad0d81e8efea33ebc1d0f73c03e619d23.lean/declarations/thetaphijetpolynomial-abs-le--2bdec8dd1ad34ab6a3562b59.md) | 34 | `result-track:2bdec8dd1ad34ab6a3562b593cea9048178d75cb526aae8811f3de8822ef6598` |
| 3 | `def` | [thetaPhiJetDet](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantfe6769f33e8625c258781fe958168c8ad0d81e8efea33ebc1d0f73c03e619d23.lean/declarations/thetaphijetdet--68278999cf59061c32e8dbaf.md) | 51 | `declaration-track:68278999cf59061c32e8dbaf4e091ff758ad2d37e00c6977e18e81b789a8fe80` |
| 4 | `theorem` | [thetaPhiJetDet_eq_matrix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantfe6769f33e8625c258781fe958168c8ad0d81e8efea33ebc1d0f73c03e619d23.lean/declarations/thetaphijetdet-eq-matrix--18649b9c56eb7e5ed0b56147.md) | 56 | `result-track:18649b9c56eb7e5ed0b56147f40bca2873fc7714d0238acbfb6b044c276dc819` |
| 5 | `theorem` | [thetaPhiJetDet_two_modes_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantfe6769f33e8625c258781fe958168c8ad0d81e8efea33ebc1d0f73c03e619d23.lean/declarations/thetaphijetdet-two-modes-le--582540911df6faf084355606.md) | 64 | `result-track:582540911df6faf0843556069a2e470d0f17c8584b34c318ce0da10f1e94936f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
