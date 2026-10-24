# Verification target: GRWTSK.Algebra.LinearAlgebra.RingHom.Variant6a5f585274189c71af1959700a67056298abf6dc3c87725390b07cdc0f36c7c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4b098423224ceac329912e1a409c6bdbe7c42b2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RingHom/Variant6a5f585274189c71af1959700a67056298abf6dc3c87725390b07cdc0f36c7c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variant6a5f585274189c71af1959700a67056298abf6dc3c87725390b07cdc0f36c7c8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variant6a5f585274189c71af1959700a67056298abf6dc3c87725390b07cdc0f36c7c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4b098423224ceac329912e1a409c6bdbe7c42b2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RingHom/Variant6a5f585274189c71af1959700a67056298abf6dc3c87725390b07cdc0f36c7c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RingHom/Variant6a5f585274189c71af1959700a67056298abf6dc3c87725390b07cdc0f36c7c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Function.Surjective.moduleLeft](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variant6a5f585274189c71af1959700a67056298abf6dc3c87725390b07cdc0f36c7c8.lean/declarations/function-surjective-moduleleft--c9aa74f6ce8804e11a1c2223.md) | 49 | `declaration-track:c9aa74f6ce8804e11a1c2223761be2dee4206324eaafcd6c059e4e7b67a9d5d6` |
| 2 | `abbrev` | [Module.compHom](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variant6a5f585274189c71af1959700a67056298abf6dc3c87725390b07cdc0f36c7c8.lean/declarations/module-comphom--ee0d10bea6303fd9814ee59c.md) | 61 | `declaration-track:ee0d10bea6303fd9814ee59c4561601b39744e052d92e68bbeca8f36820e54f1` |
| 3 | `abbrev` | [RingHom.toModule](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variant6a5f585274189c71af1959700a67056298abf6dc3c87725390b07cdc0f36c7c8.lean/declarations/ringhom-tomodule--df6a221ac8d44b062d3d72c3.md) | 76 | `declaration-track:df6a221ac8d44b062d3d72c3306f681d0bc35d983e55aa933d85e5aa8ded384f` |
| 4 | `def` | [RingHom.smulOneHom](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variant6a5f585274189c71af1959700a67056298abf6dc3c87725390b07cdc0f36c7c8.lean/declarations/ringhom-smulonehom--4c9ad1e1134665041265ffc7.md) | 85 | `declaration-track:4c9ad1e1134665041265ffc7ced179fc26cce8b282d91726a569f8dd6f64b5a9` |
| 5 | `def` | [ringHomEquivModuleIsScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/RingHom/Variant6a5f585274189c71af1959700a67056298abf6dc3c87725390b07cdc0f36c7c8.lean/declarations/ringhomequivmoduleisscalartower--64fbf45b23b7651126e93029.md) | 93 | `declaration-track:64fbf45b23b7651126e930295d8dc8b8b57410db3851a3491caa31f5efa73241` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
