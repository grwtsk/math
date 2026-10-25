# Verification target: GRWTSK.Logic.Counterexamples.Checks.Positive.ComplexSymmetryAndPositivity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad48868260eb2d32cb0550b13c0da60266c9646d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/Counterexamples/Checks/Positive/ComplexSymmetryAndPositivity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counterexamples/Checks/Positive/ComplexSymmetryAndPositivity__SourceOccurrence8da7280a8d4d5e0c72038070.lean/index.md) · [Full source](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counterexamples/Checks/Positive/ComplexSymmetryAndPositivity__SourceOccurrence8da7280a8d4d5e0c72038070.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad48868260eb2d32cb0550b13c0da60266c9646d`.

Source path: `GRWTSK/Logic/Counterexamples/Checks/Positive/ComplexSymmetryAndPositivity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/Counterexamples/Checks/Positive/ComplexSymmetryAndPositivity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry`](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroExclusions`](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroExclusions.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.Analysis.Complex.ReflectionCounterexamples`](../../../../../../../mathematics/Analysis/ComplexAnalysis/ReflectionCounterexamples__SourceOccurrenceb3b197fc49650dec6e46dd35.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Matrix.HermitianCounterexamples`](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/HermitianCounterexamples__SourceOccurrence65393a074e14bd487433a8b9.lean/index.md) — import line 4; pinned internal source present.
- `Lean` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [use_trivial_zero_is_excluded](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counterexamples/Checks/Positive/ComplexSymmetryAndPositivity__SourceOccurrence8da7280a8d4d5e0c72038070.lean/declarations/use-trivial-zero-is-excluded--b17a92511c6c22392e031618.md) | 8 | `result-track:b17a92511c6c22392e031618548e3b993d6bab1f582bf28a4097873adffecbdc` |
| 2 | `theorem` | [use_pole_is_excluded](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counterexamples/Checks/Positive/ComplexSymmetryAndPositivity__SourceOccurrence8da7280a8d4d5e0c72038070.lean/declarations/use-pole-is-excluded--67a65817f0567deca33ca782.md) | 9 | `result-track:67a65817f0567deca33ca78242343edec81c65964448d2bfd29f48fe76876330` |
| 3 | `theorem` | [use_critical_reflection_is_not_gaussian_rotation](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counterexamples/Checks/Positive/ComplexSymmetryAndPositivity__SourceOccurrence8da7280a8d4d5e0c72038070.lean/declarations/use-critical-reflection-is-not-gaussian-rotation--3adcee272e93cd1d39067306.md) | 10 | `result-track:3adcee272e93cd1d390673069476abb0bca6fe9746ae2214b264fe441b8b8bbd` |
| 4 | `theorem` | [use_hermitian_does_not_imply_positive_semidefinite](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counterexamples/Checks/Positive/ComplexSymmetryAndPositivity__SourceOccurrence8da7280a8d4d5e0c72038070.lean/declarations/use-hermitian-does-not-imply-positive-semidefinite--7c285548dcd8d42c742bc11b.md) | 11 | `result-track:7c285548dcd8d42c742bc11bd3469aa672448f4c34792dc2a29c94fc6741d8f2` |
| 5 | `elab` | [(anonymous)](../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Counterexamples/Checks/Positive/ComplexSymmetryAndPositivity__SourceOccurrence8da7280a8d4d5e0c72038070.lean/declarations/elab--7092481d419491293d32ce31.md) | 13 | `declaration-track:7092481d419491293d32ce31a1449b5c03cdfd615e6344f46f8ff95be67095a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
