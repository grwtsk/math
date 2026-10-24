# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantacac0a7ff80921bbc986d55971d2cfce21f3a3e1328eeb8f7b3cc821c18fb0d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ea692eb9edd0c972f646612464b3aa128641a44",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantacac0a7ff80921bbc986d55971d2cfce21f3a3e1328eeb8f7b3cc821c18fb0d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantacac0a7ff80921bbc986d55971d2cfce21f3a3e1328eeb8f7b3cc821c18fb0d9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantacac0a7ff80921bbc986d55971d2cfce21f3a3e1328eeb8f7b3cc821c18fb0d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ea692eb9edd0c972f646612464b3aa128641a44`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantacac0a7ff80921bbc986d55971d2cfce21f3a3e1328eeb8f7b3cc821c18fb0d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantacac0a7ff80921bbc986d55971d2cfce21f3a3e1328eeb8f7b3cc821c18fb0d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Adjunctions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.DerivedCategory.Ext.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Abelian` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.ConstantSheaf` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [H](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantacac0a7ff80921bbc986d55971d2cfce21f3a3e1328eeb8f7b3cc821c18fb0d9.lean/declarations/h--213317a8d31ef6aa599d2977.md) | 60 | `declaration-track:213317a8d31ef6aa599d2977f4dfbec33cca5cc245da6f5e5a61fe7d80d268c2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantacac0a7ff80921bbc986d55971d2cfce21f3a3e1328eeb8f7b3cc821c18fb0d9.lean/declarations/instance--fe87fddf7012298624fd1da8.md) | 63 | `declaration-track:fe87fddf7012298624fd1da8dd8b0f216dfe99f9dabee919f8a020ad99d4acd6` |
| 3 | `def` | [cohomologyPresheafFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantacac0a7ff80921bbc986d55971d2cfce21f3a3e1328eeb8f7b3cc821c18fb0d9.lean/declarations/cohomologypresheaffunctor--c85ae49903e09fdf493b4732.md) | 77 | `declaration-track:c85ae49903e09fdf493b4732d07e57caf734693649ad7a9613a65997c9219c65` |
| 4 | `abbrev` | [cohomologyPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantacac0a7ff80921bbc986d55971d2cfce21f3a3e1328eeb8f7b3cc821c18fb0d9.lean/declarations/cohomologypresheaf--42dae3ac3c2eb5609c0870a5.md) | 86 | `declaration-track:42dae3ac3c2eb5609c0870a59990e8ff55459b931c8ca0fc86743bdc6b391f7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
