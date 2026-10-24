# Verification target: GRWTSK.Algebra.CommutativeAlgebra.DenomsClearable.Variant26c845c9bff98948e1ee2c445b85a2d7d68a911a4cd125f76d4d8304d5833e01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63e5810cb06c451bae685bc7174b3b3d1f1e68b4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/DenomsClearable/Variant26c845c9bff98948e1ee2c445b85a2d7d68a911a4cd125f76d4d8304d5833e01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/DenomsClearable/Variant26c845c9bff98948e1ee2c445b85a2d7d68a911a4cd125f76d4d8304d5833e01.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/DenomsClearable/Variant26c845c9bff98948e1ee2c445b85a2d7d68a911a4cd125f76d4d8304d5833e01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63e5810cb06c451bae685bc7174b3b3d1f1e68b4`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/DenomsClearable/Variant26c845c9bff98948e1ee2c445b85a2d7d68a911a4cd125f76d4d8304d5833e01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/DenomsClearable/Variant26c845c9bff98948e1ee2c445b85a2d7d68a911a4cd125f76d4d8304d5833e01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Abs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.EraseLead` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DenomsClearable](../../../../../mathematics/Algebra/CommutativeAlgebra/DenomsClearable/Variant26c845c9bff98948e1ee2c445b85a2d7d68a911a4cd125f76d4d8304d5833e01.lean/declarations/denomsclearable--ee6e7ff91ac67702766f6e76.md) | 45 | `declaration-track:ee6e7ff91ac67702766f6e762fa2534767fe050c0f8cee7a658fd5ce43704cae` |
| 2 | `theorem` | [denomsClearable_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/DenomsClearable/Variant26c845c9bff98948e1ee2c445b85a2d7d68a911a4cd125f76d4d8304d5833e01.lean/declarations/denomsclearable-zero--037b7ce1025f9812d4fd581c.md) | 48 | `result-track:037b7ce1025f9812d4fd581c59386b829ff87de5e9baef35c7863ee31029d342` |
| 3 | `theorem` | [denomsClearable_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/DenomsClearable/Variant26c845c9bff98948e1ee2c445b85a2d7d68a911a4cd125f76d4d8304d5833e01.lean/declarations/denomsclearable-c-mul-x-pow--76892df7b923dbd4beeb1c97.md) | 52 | `result-track:76892df7b923dbd4beeb1c97441ff9cad6ad58f3cd825d99a4a383e0a291cde5` |
| 4 | `theorem` | [DenomsClearable.add](../../../../../mathematics/Algebra/CommutativeAlgebra/DenomsClearable/Variant26c845c9bff98948e1ee2c445b85a2d7d68a911a4cd125f76d4d8304d5833e01.lean/declarations/denomsclearable-add--ee3c95917406c09b5b0241de.md) | 61 | `result-track:ee3c95917406c09b5b0241de62d0fd97e17fd15b773b605d2369b89b0fcc0b34` |
| 5 | `theorem` | [denomsClearable_of_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/DenomsClearable/Variant26c845c9bff98948e1ee2c445b85a2d7d68a911a4cd125f76d4d8304d5833e01.lean/declarations/denomsclearable-of-natdegree-le--9fa85a82c66597990dacd615.md) | 69 | `result-track:9fa85a82c66597990dacd615c9b8e7d46816220c9897c2ac3339498e3b5dcb15` |
| 6 | `theorem` | [denomsClearable_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/DenomsClearable/Variant26c845c9bff98948e1ee2c445b85a2d7d68a911a4cd125f76d4d8304d5833e01.lean/declarations/denomsclearable-natdegree--a5eb1bfc10aced4adb3c7326.md) | 77 | `result-track:a5eb1bfc10aced4adb3c7326ac67aa6b47cd546e48c8537fcddc6adcb1f3921f` |
| 7 | `theorem` | [one_le_pow_mul_abs_eval_div](../../../../../mathematics/Algebra/CommutativeAlgebra/DenomsClearable/Variant26c845c9bff98948e1ee2c445b85a2d7d68a911a4cd125f76d4d8304d5833e01.lean/declarations/one-le-pow-mul-abs-eval-div--c7ed99c45b4df3e3ae6a0a68.md) | 90 | `result-track:c7ed99c45b4df3e3ae6a0a6815616ccaadf186888c8beba225d64831bc8583c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
