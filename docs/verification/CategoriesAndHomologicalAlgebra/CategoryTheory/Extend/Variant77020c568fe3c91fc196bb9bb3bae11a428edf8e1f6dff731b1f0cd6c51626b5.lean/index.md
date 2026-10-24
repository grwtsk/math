# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Extend.Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d0d9a9eb10c6ecef6ea19785f9bd2b8ed49eb46",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d0d9a9eb10c6ecef6ea19785f9bd2b8ed49eb46`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.LightProfinite.AsLimit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Extend` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/declarations/functor--62eb3cd6ca51cebc3c926df7.md) | 44 | `declaration-track:62eb3cd6ca51cebc3c926df7e9c440f25735c328aca10b3c9a18a22319161b78` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/declarations/example--daa40c931cd77c2888be2572.md) | 49 | `declaration-track:daa40c931cd77c2888be2572b1f415c8de16a41d8b424bad91af9628d66f3d83` |
| 3 | `def` | [functorOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/declarations/functorop--a876879e05362564ced7236e.md) | 57 | `declaration-track:a876879e05362564ced7236eb4786644252997b7094faabb11398108a54f27bf` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/declarations/example--a8eae7e5f2cd3d6cbf6ac1f5.md) | 61 | `declaration-track:a8eae7e5f2cd3d6cbf6ac1f5658274dba40c296c3f98bf13b7efeea4fa4158fe` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/declarations/example--a0bc3fbcd8a6d632d7ca8c31.md) | 65 | `declaration-track:a0bc3fbcd8a6d632d7ca8c3185a6f381712a10fe7019b262708d1902b3e73fb6` |
| 6 | `theorem` | [functor_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/declarations/functor-initial--c23c39ef7ed2fa5a9e4bf0db.md) | 72 | `result-track:c23c39ef7ed2fa5a9e4bf0dbd3cbcbf54c043e3259800ba5a9e66be843778846` |
| 7 | `theorem` | [functorOp_final](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/declarations/functorop-final--94ebc1b93e193a32b23a3594.md) | 82 | `result-track:94ebc1b93e193a32b23a3594e88195c680e623e2c6372c531ea74b10f730dac9` |
| 8 | `def` | [cone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/declarations/cone--51b32f663a9d355a5960450c.md) | 101 | `declaration-track:51b32f663a9d355a5960450c871cba1de6b0bb42a84cde9818e9e0e4598cd8d2` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/declarations/example--39c4a438a2f21e50ea5024f3.md) | 113 | `declaration-track:39c4a438a2f21e50ea5024f32d5a6aee856d680f6b1b39d5f43962472be1fdec` |
| 10 | `def` | [isLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/declarations/islimitcone--3aa548bbaf4fcbb71550526a.md) | 120 | `declaration-track:3aa548bbaf4fcbb71550526aaac7295bf5c9bc0641c8fe97841bd90a260bad1f` |
| 11 | `def` | [cocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/declarations/cocone--5d0024317bb325a67465e85f.md) | 138 | `declaration-track:5d0024317bb325a67465e85fcf725a24685b5e01d1b71420282a11c61b26a517` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/declarations/example--6f9b49aac45e27de9a6a84ed.md) | 150 | `declaration-track:6f9b49aac45e27de9a6a84ed156cc8a43987d69076970b6275adae5141a4b4c2` |
| 13 | `def` | [isColimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/declarations/iscolimitcocone--b9831eab79c42246561e2854.md) | 158 | `declaration-track:b9831eab79c42246561e28549450f43481176a73b271c890aefd8acc33e045fe` |
| 14 | `abbrev` | [fintypeDiagram'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/declarations/fintypediagram--b3e03bfb5094f517027ab27f.md) | 177 | `declaration-track:b3e03bfb5094f517027ab27fa686ecf936e7c62c21b1367886e65271334ef628` |
| 15 | `abbrev` | [diagram'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/declarations/diagram--28c45e5ac221db4121707ae5.md) | 181 | `declaration-track:28c45e5ac221db4121707ae573a57842f2419d2b1ff2c3afe35ad7743302db4d` |
| 16 | `def` | [asLimitCone'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/declarations/aslimitcone--6a40b3d01c965e9ccb1d9bb0.md) | 185 | `declaration-track:6a40b3d01c965e9ccb1d9bb0e14f5720c47f0683f43d213460fd2ea01d60772a` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/declarations/instance--9b24953eb5408df28ad0ba8c.md) | 187 | `declaration-track:9b24953eb5408df28ad0ba8cd44f956dc60e2a31698cdf1981176997db8e63c0` |
| 18 | `def` | [asLimit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/declarations/aslimit--16cc3c19ac719aa6052565b8.md) | 191 | `declaration-track:16cc3c19ac719aa6052565b813b640c08003a2d308e6340db38d4414b85d15ab` |
| 19 | `def` | [lim'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant77020c568fe3c91fc196bb9bb3bae11a428edf8e1f6dff731b1f0cd6c51626b5.lean/declarations/lim--16832b0e87fe3650d80162bc.md) | 194 | `declaration-track:16832b0e87fe3650d80162bcd2cb411b49f4d121c9f1b9ec23283a12fa6bd1e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
