# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c459b572c1568f12512a4ffc0d555d6c2762d1e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c459b572c1568f12512a4ffc0d555d6c2762d1e`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.InjSurj` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Function.Injective.isOrderedMonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba.lean/declarations/function-injective-isorderedmonoid--568284467161d3d947668488.md) | 25 | `result-track:568284467161d3d947668488bcb7e85b050d14e169ffa6619ef6f5aa15f3ead7` |
| 2 | `lemma` | [Function.Injective.isOrderedCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba.lean/declarations/function-injective-isorderedcancelmonoid--64d606c5dc6aa2a0c059a26a.md) | 39 | `result-track:64d606c5dc6aa2a0c059a26aea4bb8cf89add0e9677838a617aa3cbef35a63a5` |
| 3 | `def` | [OrderEmbedding.mulLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba.lean/declarations/orderembedding-mulleft--79686b32bb7e54ece9f6f3af.md) | 83 | `declaration-track:79686b32bb7e54ece9f6f3af6cb6eb224bedcaf62853cd1669cb8527641967b8` |
| 4 | `def` | [OrderEmbedding.mulRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba.lean/declarations/orderembedding-mulright--21fa9ed0f8c2c3187e9952f4.md) | 92 | `declaration-track:21fa9ed0f8c2c3187e9952f4cf3fcc5d4af160ba15ab23e154a1af84e1a74d42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
