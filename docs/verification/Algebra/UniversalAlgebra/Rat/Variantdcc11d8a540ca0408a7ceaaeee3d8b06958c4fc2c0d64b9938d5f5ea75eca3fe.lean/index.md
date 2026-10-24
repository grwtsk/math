# Verification target: GRWTSK.Algebra.UniversalAlgebra.Rat.Variantdcc11d8a540ca0408a7ceaaeee3d8b06958c4fc2c0d64b9938d5f5ea75eca3fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff95f6f6ff394604666216c0539a8d39ac4eea88",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variantdcc11d8a540ca0408a7ceaaeee3d8b06958c4fc2c0d64b9938d5f5ea75eca3fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantdcc11d8a540ca0408a7ceaaeee3d8b06958c4fc2c0d64b9938d5f5ea75eca3fe.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantdcc11d8a540ca0408a7ceaaeee3d8b06958c4fc2c0d64b9938d5f5ea75eca3fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff95f6f6ff394604666216c0539a8d39ac4eea88`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Rat/Variantdcc11d8a540ca0408a7ceaaeee3d8b06958c4fc2c0d64b9938d5f5ea75eca3fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Rat/Variantdcc11d8a540ca0408a7ceaaeee3d8b06958c4fc2c0d64b9938d5f5ea75eca3fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Unbundled.Rat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instIsOrderedAddMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantdcc11d8a540ca0408a7ceaaeee3d8b06958c4fc2c0d64b9938d5f5ea75eca3fe.lean/declarations/instisorderedaddmonoid--8d7beb06eadcc086a248609c.md) | 35 | `declaration-track:8d7beb06eadcc086a248609ccbddcd1c33c976bfc88b784fc1d7bb68a57a9549` |
| 2 | `instance` | [instZeroLEOneClass](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantdcc11d8a540ca0408a7ceaaeee3d8b06958c4fc2c0d64b9938d5f5ea75eca3fe.lean/declarations/instzeroleoneclass--2344d35f21400109f17ff3e1.md) | 38 | `declaration-track:2344d35f21400109f17ff3e17291a2f8877dbfac76ed735e11d81e572616d3a9` |
| 3 | `instance` | [instIsStrictOrderedRing](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variantdcc11d8a540ca0408a7ceaaeee3d8b06958c4fc2c0d64b9938d5f5ea75eca3fe.lean/declarations/instisstrictorderedring--ef2e64324960a7295316669e.md) | 41 | `declaration-track:ef2e64324960a7295316669eeddabe81a9d282046adceb70a4e8ee6d08a4303d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
