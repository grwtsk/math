# Verification target: GRWTSK.Algebra.UniversalAlgebra.Ring.Variantdb1472a864d61cbd7579c4ff103d1786af40b36574dfcbbeb5868a01270d3a67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e129dfc0cc55f07e71df0c289dd057958e5afd6",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Ring/Variantdb1472a864d61cbd7579c4ff103d1786af40b36574dfcbbeb5868a01270d3a67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantdb1472a864d61cbd7579c4ff103d1786af40b36574dfcbbeb5868a01270d3a67.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantdb1472a864d61cbd7579c4ff103d1786af40b36574dfcbbeb5868a01270d3a67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e129dfc0cc55f07e71df0c289dd057958e5afd6`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Ring/Variantdb1472a864d61cbd7579c4ff103d1786af40b36574dfcbbeb5868a01270d3a67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Ring/Variantdb1472a864d61cbd7579c4ff103d1786af40b36574dfcbbeb5868a01270d3a67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [NonUnitalNonAssocSemiring.toDistribSMul](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantdb1472a864d61cbd7579c4ff103d1786af40b36574dfcbbeb5868a01270d3a67.lean/declarations/nonunitalnonassocsemiring-todistribsmul--6e6ff2cb0fbb23c9ab353c3b.md) | 24 | `declaration-track:6e6ff2cb0fbb23c9ab353c3b6c3639aa81cd7bb41c1c8af9e4fbd7b3ecb10c6a` |
| 2 | `instance` | [NonUnitalNonAssocSemiring.nat_isScalarTower](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantdb1472a864d61cbd7579c4ff103d1786af40b36574dfcbbeb5868a01270d3a67.lean/declarations/nonunitalnonassocsemiring-nat-isscalartower--f3d2210ac8423315e1c56e83.md) | 28 | `declaration-track:f3d2210ac8423315e1c56e83a72dcc5fe491e7e19d85c2a83c352e23a06a6cc6` |
| 3 | `instance` | [NonUnitalNonAssocRing.int_isScalarTower](../../../../../mathematics/Algebra/UniversalAlgebra/Ring/Variantdb1472a864d61cbd7579c4ff103d1786af40b36574dfcbbeb5868a01270d3a67.lean/declarations/nonunitalnonassocring-int-isscalartower--2ec21c3723f45d94a95b267a.md) | 36 | `declaration-track:2ec21c3723f45d94a95b267a832dd217a39db28f66f9ebb8ab8b2b4209984772` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
