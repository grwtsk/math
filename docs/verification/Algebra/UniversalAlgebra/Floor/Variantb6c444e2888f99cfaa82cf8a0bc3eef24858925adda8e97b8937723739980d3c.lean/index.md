# Verification target: GRWTSK.Algebra.UniversalAlgebra.Floor.Variantb6c444e2888f99cfaa82cf8a0bc3eef24858925adda8e97b8937723739980d3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3fa4bf2ded538eebd3735d01648dc77f51ef5ec",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Floor/Variantb6c444e2888f99cfaa82cf8a0bc3eef24858925adda8e97b8937723739980d3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variantb6c444e2888f99cfaa82cf8a0bc3eef24858925adda8e97b8937723739980d3c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variantb6c444e2888f99cfaa82cf8a0bc3eef24858925adda8e97b8937723739980d3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3fa4bf2ded538eebd3735d01648dc77f51ef5ec`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Floor/Variantb6c444e2888f99cfaa82cf8a0bc3eef24858925adda8e97b8937723739980d3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Floor/Variantb6c444e2888f99cfaa82cf8a0bc3eef24858925adda8e97b8937723739980d3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Nonneg.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [floorSemiring](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variantb6c444e2888f99cfaa82cf8a0bc3eef24858925adda8e97b8937723739980d3c.lean/declarations/floorsemiring--ff2d926495504650a7675d00.md) | 28 | `declaration-track:ff2d926495504650a7675d00a7bed4e3ce098c3f448863b03892f84bc0ee889d` |
| 2 | `theorem` | [nat_floor_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variantb6c444e2888f99cfaa82cf8a0bc3eef24858925adda8e97b8937723739980d3c.lean/declarations/nat-floor-coe--df37e9c3049c21ac65689087.md) | 37 | `result-track:df37e9c3049c21ac65689087e2e722f27e3a74438ed52d035aeafe79c1c5cba5` |
| 3 | `theorem` | [nat_ceil_coe](../../../../../mathematics/Algebra/UniversalAlgebra/Floor/Variantb6c444e2888f99cfaa82cf8a0bc3eef24858925adda8e97b8937723739980d3c.lean/declarations/nat-ceil-coe--586a0a705df92c6070886dfc.md) | 43 | `result-track:586a0a705df92c6070886dfc01bf0993cc3febe1e5add3b89fe3b7dd6341c27b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
