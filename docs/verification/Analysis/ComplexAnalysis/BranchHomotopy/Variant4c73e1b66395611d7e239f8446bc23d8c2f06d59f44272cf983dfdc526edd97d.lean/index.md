# Verification target: GRWTSK.Analysis.ComplexAnalysis.BranchHomotopy.Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08e965617d8be3bf6e1f5d46487ac998d403a42b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/BranchHomotopy/Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/BranchHomotopy/Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/BranchHomotopy/Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08e965617d8be3bf6e1f5d46487ac998d403a42b`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/BranchHomotopy/Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/BranchHomotopy/Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.ComplexAnalysis.FiniteHoleGeometry` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.CurveIntegral.Poincare` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientOneForm](../../../../../mathematics/Analysis/ComplexAnalysis/BranchHomotopy/Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean/declarations/coefficientoneform--cbca9d22f93bef353e15f92c.md) | 48 | `declaration-track:cbca9d22f93bef353e15f92c065e9e005dd7c89e6b3b4fe60bc75b447f5bf40a` |
| 2 | `theorem` | [curveIntegral_coefficientOneForm_homotopy](../../../../../mathematics/Analysis/ComplexAnalysis/BranchHomotopy/Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean/declarations/curveintegral-coefficientoneform-homotopy--50405450786a23586dfd4557.md) | 57 | `result-track:50405450786a23586dfd4557323a9fb62afc49907118a90c17da6125d74b9d40` |
| 3 | `def` | [HasSimplePoleCoefficientAt](../../../../../mathematics/Analysis/ComplexAnalysis/BranchHomotopy/Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean/declarations/hassimplepolecoefficientat--1b7acb8271b50380663a85ce.md) | 88 | `declaration-track:1b7acb8271b50380663a85ce081435d9f0bee99ca2cf901fc437097bcac4eb82` |
| 4 | `theorem` | [circleIntegral_eq_two_pi_I_mul_of_simplePoleCoefficient](../../../../../mathematics/Analysis/ComplexAnalysis/BranchHomotopy/Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean/declarations/circleintegral-eq-two-pi-i-mul-of-simplepolecoefficient--c873f7764d4429beae7f14e6.md) | 93 | `result-track:c873f7764d4429beae7f14e68667db6cf62b8c7b394c4d8c1ae14f651ed1acac` |
| 5 | `theorem` | [circleIntegral_eq_of_singleHole_annulus](../../../../../mathematics/Analysis/ComplexAnalysis/BranchHomotopy/Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean/declarations/circleintegral-eq-of-singlehole-annulus--01512c3d6414ee2f9862d040.md) | 129 | `result-track:01512c3d6414ee2f9862d04002bedec7d62beed7757d67634c782a5dcded1c2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
