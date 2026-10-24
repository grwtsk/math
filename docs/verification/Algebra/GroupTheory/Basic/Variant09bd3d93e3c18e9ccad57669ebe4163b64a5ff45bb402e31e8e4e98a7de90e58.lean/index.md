# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant09bd3d93e3c18e9ccad57669ebe4163b64a5ff45bb402e31e8e4e98a7de90e58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "659ce55a13c88a72c8e17c5d8db2f55bb5e2e68a",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant09bd3d93e3c18e9ccad57669ebe4163b64a5ff45bb402e31e8e4e98a7de90e58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant09bd3d93e3c18e9ccad57669ebe4163b64a5ff45bb402e31e8e4e98a7de90e58.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant09bd3d93e3c18e9ccad57669ebe4163b64a5ff45bb402e31e8e4e98a7de90e58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `659ce55a13c88a72c8e17c5d8db2f55bb5e2e68a`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant09bd3d93e3c18e9ccad57669ebe4163b64a5ff45bb402e31e8e4e98a7de90e58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant09bd3d93e3c18e9ccad57669ebe4163b64a5ff45bb402e31e8e4e98a7de90e58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Cancel.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Function.Injective.orderedCancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant09bd3d93e3c18e9ccad57669ebe4163b64a5ff45bb402e31e8e4e98a7de90e58.lean/declarations/function-injective-orderedcancelcommmonoid--c2d76cb0e820501342fc8723.md) | 40 | `declaration-track:c2d76cb0e820501342fc8723abfdc3c0beb7c8e9ec7241cf60c80796fdb1fbee` |
| 2 | `def` | [Function.Injective.linearOrderedCancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant09bd3d93e3c18e9ccad57669ebe4163b64a5ff45bb402e31e8e4e98a7de90e58.lean/declarations/function-injective-linearorderedcancelcommmonoid--080f77c9fa7b7c3738616911.md) | 59 | `declaration-track:080f77c9fa7b7c3738616911a924a393a5790dc3050f4b93faa3bac0dfdcfa19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
