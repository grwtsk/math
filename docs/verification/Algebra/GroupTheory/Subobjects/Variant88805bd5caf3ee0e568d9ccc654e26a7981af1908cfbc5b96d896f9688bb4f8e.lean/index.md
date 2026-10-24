# Verification target: GRWTSK.Algebra.GroupTheory.Subobjects.Variant88805bd5caf3ee0e568d9ccc654e26a7981af1908cfbc5b96d896f9688bb4f8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1dd644d49cf6ec25f39cf1fb3bfe3f11b7ecd06",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Subobjects/Variant88805bd5caf3ee0e568d9ccc654e26a7981af1908cfbc5b96d896f9688bb4f8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Subobjects/Variant88805bd5caf3ee0e568d9ccc654e26a7981af1908cfbc5b96d896f9688bb4f8e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Subobjects/Variant88805bd5caf3ee0e568d9ccc654e26a7981af1908cfbc5b96d896f9688bb4f8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1dd644d49cf6ec25f39cf1fb3bfe3f11b7ecd06`.

Source path: `GRWTSK/Algebra/GroupTheory/Subobjects/Variant88805bd5caf3ee0e568d9ccc654e26a7981af1908cfbc5b96d896f9688bb4f8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Subobjects/Variant88805bd5caf3ee0e568d9ccc654e26a7981af1908cfbc5b96d896f9688bb4f8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.DistribMulAction` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Action.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Subobjects/Variant88805bd5caf3ee0e568d9ccc654e26a7981af1908cfbc5b96d896f9688bb4f8e.lean/declarations/instance--64421ecf47aacb98092a9fb0.md) | 34 | `declaration-track:64421ecf47aacb98092a9fb0f3c5dadcc95a6a2123f3fe586b7e340b8a36e8b0` |
| 2 | `instance` | [Submonoid.mulSemiringAction](../../../../../mathematics/Algebra/GroupTheory/Subobjects/Variant88805bd5caf3ee0e568d9ccc654e26a7981af1908cfbc5b96d896f9688bb4f8e.lean/declarations/submonoid-mulsemiringaction--f2f2e0a37e19aa189cbad3b5.md) | 39 | `declaration-track:f2f2e0a37e19aa189cbad3b55165416c0f4e1d746e3846f20a8c5f6c33a9d023` |
| 3 | `instance` | [Subgroup.mulSemiringAction](../../../../../mathematics/Algebra/GroupTheory/Subobjects/Variant88805bd5caf3ee0e568d9ccc654e26a7981af1908cfbc5b96d896f9688bb4f8e.lean/declarations/subgroup-mulsemiringaction--fe77675201f68022470c59ed.md) | 44 | `declaration-track:fe77675201f68022470c59ede890282f656ccb19ca8eec09b2601971ea3cbfa8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
