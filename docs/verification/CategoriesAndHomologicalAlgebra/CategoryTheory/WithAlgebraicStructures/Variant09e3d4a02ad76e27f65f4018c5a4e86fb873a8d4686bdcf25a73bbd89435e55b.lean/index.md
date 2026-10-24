# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WithAlgebraicStructures.Variant09e3d4a02ad76e27f65f4018c5a4e86fb873a8d4686bdcf25a73bbd89435e55b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65f59c4a68887a7ae4a14bdeff82f393519b2107",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WithAlgebraicStructures/Variant09e3d4a02ad76e27f65f4018c5a4e86fb873a8d4686bdcf25a73bbd89435e55b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WithAlgebraicStructures/Variant09e3d4a02ad76e27f65f4018c5a4e86fb873a8d4686bdcf25a73bbd89435e55b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WithAlgebraicStructures/Variant09e3d4a02ad76e27f65f4018c5a4e86fb873a8d4686bdcf25a73bbd89435e55b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65f59c4a68887a7ae4a14bdeff82f393519b2107`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WithAlgebraicStructures/Variant09e3d4a02ad76e27f65f4018c5a4e86fb873a8d4686bdcf25a73bbd89435e55b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/WithAlgebraicStructures/Variant09e3d4a02ad76e27f65f4018c5a4e86fb873a8d4686bdcf25a73bbd89435e55b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.ConcreteCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [colimit_rep_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WithAlgebraicStructures/Variant09e3d4a02ad76e27f65f4018c5a4e86fb873a8d4686bdcf25a73bbd89435e55b.lean/declarations/colimit-rep-eq-zero--0fa256df8dedc84663577297.md) | 52 | `result-track:0fa256df8dedc8466357729774c4a16ae3c2d4d9167935a6213f21e5f57b4b59` |
| 2 | `lemma` | [colimit_no_zero_smul_divisor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WithAlgebraicStructures/Variant09e3d4a02ad76e27f65f4018c5a4e86fb873a8d4686bdcf25a73bbd89435e55b.lean/declarations/colimit-no-zero-smul-divisor--4199a34c2d588897273f82b6.md) | 68 | `result-track:4199a34c2d588897273f82b6c136208881e5470446f37f292673814ddc73867e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
