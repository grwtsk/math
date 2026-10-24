# Verification target: GRWTSK.Algebra.UniversalAlgebra.OrderDual.Variantc945afeaa478e98835eb5c5dc24921129fe638451bc05686a07ca8b02a1ba98f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a50f4351f5f58085433d8d2a08696b761545f019",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/OrderDual/Variantc945afeaa478e98835eb5c5dc24921129fe638451bc05686a07ca8b02a1ba98f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Variantc945afeaa478e98835eb5c5dc24921129fe638451bc05686a07ca8b02a1ba98f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Variantc945afeaa478e98835eb5c5dc24921129fe638451bc05686a07ca8b02a1ba98f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a50f4351f5f58085433d8d2a08696b761545f019`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/OrderDual/Variantc945afeaa478e98835eb5c5dc24921129fe638451bc05686a07ca8b02a1ba98f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/OrderDual/Variantc945afeaa478e98835eb5c5dc24921129fe638451bc05686a07ca8b02a1ba98f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Synonym` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.OrderDual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [isOrderedMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Variantc945afeaa478e98835eb5c5dc24921129fe638451bc05686a07ca8b02a1ba98f.lean/declarations/isorderedmonoid--c585cf26261677d4d5fa51d6.md) | 21 | `declaration-track:c585cf26261677d4d5fa51d67e33bbdb5aae0f7918e1005d95ae2a98f0128eb6` |
| 2 | `instance` | [isOrderedCancelMonoid](../../../../../mathematics/Algebra/UniversalAlgebra/OrderDual/Variantc945afeaa478e98835eb5c5dc24921129fe638451bc05686a07ca8b02a1ba98f.lean/declarations/isorderedcancelmonoid--df1e661403037376a70be2e8.md) | 26 | `declaration-track:df1e661403037376a70be2e8dd7454dea8eded51d983275a67f1cdef7b0c84f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
