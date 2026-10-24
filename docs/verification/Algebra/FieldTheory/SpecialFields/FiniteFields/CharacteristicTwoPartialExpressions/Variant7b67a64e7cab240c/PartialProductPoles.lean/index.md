# Verification target: GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.CharacteristicTwoPartialExpressions.Variant7b67a64e7cab240c.PartialProductPoles

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b94905b1cf8f20d3208a366acb6739f4bc0ece43",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/CharacteristicTwoPartialExpressions/Variant7b67a64e7cab240c/PartialProductPoles.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/CharacteristicTwoPartialExpressions/Variant7b67a64e7cab240c/PartialProductPoles.lean/index.md) · [Full source](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/CharacteristicTwoPartialExpressions/Variant7b67a64e7cab240c/PartialProductPoles.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b94905b1cf8f20d3208a366acb6739f4bc0ece43`.

Source path: `GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/CharacteristicTwoPartialExpressions/Variant7b67a64e7cab240c/PartialProductPoles.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/SpecialFields/FiniteFields/CharacteristicTwoPartialExpressions/Variant7b67a64e7cab240c/PartialProductPoles.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Dynamics.Avalanche` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Two` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Equiv` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Fintype` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [digammaDenominator](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/CharacteristicTwoPartialExpressions/Variant7b67a64e7cab240c/PartialProductPoles.lean/declarations/digammadenominator--1b2339d59f68f19daaf84e6d.md) | 67 | `declaration-track:1b2339d59f68f19daaf84e6dcbb30bff5ed09e97d327254d8a8480bad56d1509` |
| 2 | `def` | [finiteDigamma?](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/CharacteristicTwoPartialExpressions/Variant7b67a64e7cab240c/PartialProductPoles.lean/declarations/finitedigamma--a92228a6d924d6c8abfd120f.md) | 71 | `declaration-track:a92228a6d924d6c8abfd120f6a5bd82cd7ece0eac644041f9212442580561a39` |
| 3 | `theorem` | [digammaDenominator_eq_zero_of_mem](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/CharacteristicTwoPartialExpressions/Variant7b67a64e7cab240c/PartialProductPoles.lean/declarations/digammadenominator-eq-zero-of-mem--f091c5018b7c112d8c8e62d5.md) | 80 | `result-track:f091c5018b7c112d8c8e62d5f574b7f65cad5a3c2cd64070aa213420663641d2` |
| 4 | `theorem` | [finiteDigamma_none_of_mem](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/CharacteristicTwoPartialExpressions/Variant7b67a64e7cab240c/PartialProductPoles.lean/declarations/finitedigamma-none-of-mem--5015f0c74c2d16ed7c207ffb.md) | 87 | `result-track:5015f0c74c2d16ed7c207ffb7a5dc9d47b03ac2a5f24c3db6eb12affd726bf08` |
| 5 | `def` | [allNonzeroRoots](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/CharacteristicTwoPartialExpressions/Variant7b67a64e7cab240c/PartialProductPoles.lean/declarations/allnonzeroroots--d0dc21985f711a093731e8c0.md) | 99 | `declaration-track:d0dc21985f711a093731e8c053b17ffa6c487f75ce12fbea38f5e1ba875dab6c` |
| 6 | `theorem` | [finiteDigamma_allNonzero_none](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/CharacteristicTwoPartialExpressions/Variant7b67a64e7cab240c/PartialProductPoles.lean/declarations/finitedigamma-allnonzero-none--1cf6fa5a439e9c5f886e37aa.md) | 105 | `result-track:1cf6fa5a439e9c5f886e37aabd7e0bf6dd9e9f75f2d52cb817bd1a89b0bdba2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
