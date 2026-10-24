# Verification target: GRWTSK.Algebra.GeometricPathBound.Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "523922de7558f3efe98092259698a06b7ff1c891",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GeometricPathBound/Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GeometricPathBound/Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean/index.md) · [Full source](../../../../mathematics/Algebra/GeometricPathBound/Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `523922de7558f3efe98092259698a06b7ff1c891`.

Source path: `GRWTSK/Algebra/GeometricPathBound/Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GeometricPathBound/Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.ResidueDeflection.Trace.WeightedPathBudget` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.GeomSum` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [geometricCompensationFactor](../../../../mathematics/Algebra/GeometricPathBound/Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean/declarations/geometriccompensationfactor--760c5693ffa6a77158858373.md) | 20 | `declaration-track:760c5693ffa6a77158858373b112cbf275dd13a77309e3a753dfaba21bf23188` |
| 2 | `theorem` | [geometricCompensationFactor_nonnegative](../../../../mathematics/Algebra/GeometricPathBound/Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean/declarations/geometriccompensationfactor-nonnegative--0220c2012af9966d15c5bde7.md) | 28 | `result-track:0220c2012af9966d15c5bde795fbb6c07d642505ea94571160bd339203384e64` |
| 3 | `theorem` | [geometricCompensationFactor_eq_sum](../../../../mathematics/Algebra/GeometricPathBound/Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean/declarations/geometriccompensationfactor-eq-sum--7196d135f9003ba9b4292e3f.md) | 40 | `result-track:7196d135f9003ba9b4292e3fcc0b484a08626dd59cc045261ab762883152d92b` |
| 4 | `theorem` | [geometricCompensationFactor_closedForm](../../../../mathematics/Algebra/GeometricPathBound/Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean/declarations/geometriccompensationfactor-closedform--38d1a6d884b5eecdaa69c734.md) | 55 | `result-track:38d1a6d884b5eecdaa69c734bd9e29e5a2c3c22aac1d52eb11c85f5629f4ee52` |
| 5 | `theorem` | [weightedBudget_geometric_bound](../../../../mathematics/Algebra/GeometricPathBound/Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean/declarations/weightedbudget-geometric-bound--c2c5d11c5ee29b9739b1b45e.md) | 67 | `result-track:c2c5d11c5ee29b9739b1b45e5e91600ad87dc461a40305b163305dfbb0f82f0b` |
| 6 | `theorem` | [pathEnergy_geometric_bound](../../../../mathematics/Algebra/GeometricPathBound/Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean/declarations/pathenergy-geometric-bound--3e6ea9fb29dd4e0e767fc1a7.md) | 161 | `result-track:3e6ea9fb29dd4e0e767fc1a780a294d8234d8142d6a0e47bbff93d066ddca2cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
