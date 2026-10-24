# Verification target: GRWTSK.Algebra.GroupTheory.ClassEquation.Variant69dd51ecb4bb66b3c7ff59be70c274ead569a206d50b7e9c04165856c59fc501

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7ac63a409de6a94f9ca404b83bef6fd04e2452e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ClassEquation/Variant69dd51ecb4bb66b3c7ff59be70c274ead569a206d50b7e9c04165856c59fc501.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ClassEquation/Variant69dd51ecb4bb66b3c7ff59be70c274ead569a206d50b7e9c04165856c59fc501.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ClassEquation/Variant69dd51ecb4bb66b3c7ff59be70c274ead569a206d50b7e9c04165856c59fc501.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7ac63a409de6a94f9ca404b83bef6fd04e2452e`.

Source path: `GRWTSK/Algebra/GroupTheory/ClassEquation/Variant69dd51ecb4bb66b3c7ff59be70c274ead569a206d50b7e9c04165856c59fc501.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ClassEquation/Variant69dd51ecb4bb66b3c7ff59be70c274ead569a206d50b7e9c04165856c59fc501.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finprod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.ConjFinite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Finite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Center` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_conjClasses_card_eq_card](../../../../../mathematics/Algebra/GroupTheory/ClassEquation/Variant69dd51ecb4bb66b3c7ff59be70c274ead569a206d50b7e9c04165856c59fc501.lean/declarations/sum-conjclasses-card-eq-card--e2a0daa4d61feb298958a7a8.md) | 31 | `result-track:e2a0daa4d61feb298958a7a8e3bd0f9aa567e5f402d3a4cbfa0b969403cddc79` |
| 2 | `theorem` | [Group.sum_card_conj_classes_eq_card](../../../../../mathematics/Algebra/GroupTheory/ClassEquation/Variant69dd51ecb4bb66b3c7ff59be70c274ead569a206d50b7e9c04165856c59fc501.lean/declarations/group-sum-card-conj-classes-eq-card--ed7c70d7fab71509b605720c.md) | 38 | `result-track:ed7c70d7fab71509b605720c2eb0c0f913ab9f20fc370f5b8a1e402f20c716f0` |
| 3 | `theorem` | [Group.nat_card_center_add_sum_card_noncenter_eq_card](../../../../../mathematics/Algebra/GroupTheory/ClassEquation/Variant69dd51ecb4bb66b3c7ff59be70c274ead569a206d50b7e9c04165856c59fc501.lean/declarations/group-nat-card-center-add-sum-card-noncenter-eq-card--fd7e7879de7664b7ced2997c.md) | 47 | `result-track:fd7e7879de7664b7ced2997c543cf5aafc87d2ff4c71a3d4702900b071ace0db` |
| 4 | `theorem` | [Group.card_center_add_sum_card_noncenter_eq_card](../../../../../mathematics/Algebra/GroupTheory/ClassEquation/Variant69dd51ecb4bb66b3c7ff59be70c274ead569a206d50b7e9c04165856c59fc501.lean/declarations/group-card-center-add-sum-card-noncenter-eq-card--f09dd56d27f06aed55c3d553.md) | 72 | `result-track:f09dd56d27f06aed55c3d553f032b19eb05d11d8db8f6b9ed128f335568ae351` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
