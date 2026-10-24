# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.VerticalComposition.Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6766c3a34cde2cf7d0be82de92e53978855a3821",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6766c3a34cde2cf7d0be82de92e53978855a3821`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.CatCommSq` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.GuitartExact.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [whiskerVertical](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean/declarations/whiskervertical--7a0eea44751a2da15a2622ae.md) | 34 | `declaration-track:7a0eea44751a2da15a2622ae5c3faebac087b3e0439598d90b2a6e78f50b52b7` |
| 2 | `lemma` | [whiskerVertical](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean/declarations/whiskervertical--f2bdb69e3d4949bb3589beaf.md) | 42 | `result-track:f2bdb69e3d4949bb3589beafa58fe55b4e28408e72adcd47c0637f5b6d5218c1` |
| 3 | `lemma` | [whiskerVertical_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean/declarations/whiskervertical-iff--3234460ceca7334d1c86d53e.md) | 58 | `result-track:3234460ceca7334d1c86d53e87ac769e73b2fdf8a416c4967c5e7a51d8ec9994` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean/declarations/instance--f02d74f76416d485bde7deb0.md) | 71 | `declaration-track:f02d74f76416d485bde7deb096bcb70c04d8e1baa68eec47bea000170fd39c41` |
| 5 | `def` | [structuredArrowDownwardsComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean/declarations/structuredarrowdownwardscomp--8a99109a3a8b479a5bc4c2dc.md) | 89 | `declaration-track:8a99109a3a8b479a5bc4c2dcc1a0e63f859b78d4a3b621df34953b0834dd9663` |
| 6 | `def` | [vComp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean/declarations/vcomp--51bf5b15dc91220b472fc145.md) | 97 | `declaration-track:51bf5b15dc91220b472fc145a9ac5354d69b3e998b378e85a4ca3a1b3cecc35b` |
| 7 | `instance` | [vComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean/declarations/vcomp--db21fd94d5b5dca98b5b0a54.md) | 103 | `declaration-track:db21fd94d5b5dca98b5b0a54f669b9e855f5d3f95be0e6435dfcfa8d413f881b` |
| 8 | `instance` | [vComp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean/declarations/vcomp--df7d6c106026c3ac669dcfc9.md) | 110 | `declaration-track:df7d6c106026c3ac669dcfc9339f3f46efd9a174d900e5f92f567c7a83dd2d83` |
| 9 | `lemma` | [vComp_iff_of_equivalences](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean/declarations/vcomp-iff-of-equivalences--90c172aaf379392f93386f5b.md) | 116 | `result-track:90c172aaf379392f93386f5b1daebcf2eb8d408fa9bc4ef4ab8c3a367faf3eb1` |
| 10 | `lemma` | [vComp'_iff_of_equivalences](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantc3bd01d46dc08387c9ee516492dfb4d3d20ffe936f206dce7342e14804700726.lean/declarations/vcomp-iff-of-equivalences--787e4499c6310b998e63917a.md) | 147 | `result-track:787e4499c6310b998e63917aa3c27694dc4d4c477b527f5abf80c30add79798c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
