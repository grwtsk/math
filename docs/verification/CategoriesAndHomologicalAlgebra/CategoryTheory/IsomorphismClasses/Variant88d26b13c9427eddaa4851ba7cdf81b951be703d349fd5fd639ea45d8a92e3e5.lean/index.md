# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsomorphismClasses.Variant88d26b13c9427eddaa4851ba7cdf81b951be703d349fd5fd639ea45d8a92e3e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45bfa6d6adcf7ea0289c020874083ed3e0b08a67",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsomorphismClasses/Variant88d26b13c9427eddaa4851ba7cdf81b951be703d349fd5fd639ea45d8a92e3e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsomorphismClasses/Variant88d26b13c9427eddaa4851ba7cdf81b951be703d349fd5fd639ea45d8a92e3e5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsomorphismClasses/Variant88d26b13c9427eddaa4851ba7cdf81b951be703d349fd5fd639ea45d8a92e3e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45bfa6d6adcf7ea0289c020874083ed3e0b08a67`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsomorphismClasses/Variant88d26b13c9427eddaa4851ba7cdf81b951be703d349fd5fd639ea45d8a92e3e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsomorphismClasses/Variant88d26b13c9427eddaa4851ba7cdf81b951be703d349fd5fd639ea45d8a92e3e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Cat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsIsomorphic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsomorphismClasses/Variant88d26b13c9427eddaa4851ba7cdf81b951be703d349fd5fd639ea45d8a92e3e5.lean/declarations/isisomorphic--c81152bd2208f736e0c7ca44.md) | 35 | `declaration-track:c81152bd2208f736e0c7ca444749f1334f9622dc63573c73d8e82557eaa1840b` |
| 2 | `def` | [isIsomorphicSetoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsomorphismClasses/Variant88d26b13c9427eddaa4851ba7cdf81b951be703d349fd5fd639ea45d8a92e3e5.lean/declarations/isisomorphicsetoid--506d211b096084b53f0bff18.md) | 40 | `declaration-track:506d211b096084b53f0bff18e479b956fadfc5d0d45b94d850eb72182a4b1d9f` |
| 3 | `def` | [isomorphismClasses](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsomorphismClasses/Variant88d26b13c9427eddaa4851ba7cdf81b951be703d349fd5fd639ea45d8a92e3e5.lean/declarations/isomorphismclasses--ef12a3e16bd5dd8c8e65b77e.md) | 48 | `declaration-track:ef12a3e16bd5dd8c8e65b77e20041270c310d71fef82d0d6925e223ee3730b47` |
| 4 | `theorem` | [Groupoid.isIsomorphic_iff_nonempty_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsomorphismClasses/Variant88d26b13c9427eddaa4851ba7cdf81b951be703d349fd5fd639ea45d8a92e3e5.lean/declarations/groupoid-isisomorphic-iff-nonempty-hom--ff11b42df104ca6a8cf8a002.md) | 66 | `result-track:ff11b42df104ca6a8cf8a00230131c027e34d372f7adb0b026ffa021539914c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
