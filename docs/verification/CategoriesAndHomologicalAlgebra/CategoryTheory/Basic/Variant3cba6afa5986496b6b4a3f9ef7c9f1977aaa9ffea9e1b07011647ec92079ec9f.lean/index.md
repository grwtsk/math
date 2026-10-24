# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c92e5ded37d7e57c289746f56bf39ca5023fbb3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c92e5ded37d7e57c289746f56bf39ca5023fbb3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.ContainsZero` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.EpiMono` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.Extensions` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ShortExact` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSerreClass](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f.lean/declarations/isserreclass--b5e1900810e6749ae756f92a.md) | 43 | `declaration-track:b5e1900810e6749ae756f92ad6cd83438455fa2c589737ec73a8abe320648ec9` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f.lean/declarations/example--20610a41d25a48d0f75c34b7.md) | 49 | `declaration-track:20610a41d25a48d0f75c34b7964a9058d91097810b946b4161c875243f9f5777` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f.lean/declarations/instance--9f264d7a65d19506a06c41ec.md) | 51 | `declaration-track:9f264d7a65d19506a06c41ec90d550e3f8ec4a77ee5dfddc776ecc4db62b35a5` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f.lean/declarations/instance--1aa338f8f3db44aa111c4b37.md) | 53 | `declaration-track:1aa338f8f3db44aa111c4b3784b6e0c1c3fdf48b81e892d8d27fbba193cbc7a3` |
| 5 | `lemma` | [prop_iff_of_shortExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f.lean/declarations/prop-iff-of-shortexact--15eca3ca1c580a14aef83465.md) | 55 | `result-track:15eca3ca1c580a14aef8346595007dd84abb41976632de372672aefa32926d60` |
| 6 | `lemma` | [prop_X₂_of_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f.lean/declarations/prop-x-of-exact--976c497ebcd44f027e099250.md) | 60 | `result-track:976c497ebcd44f027e09925048bfde8c8f25ff0ce6b3dd3d07441eb9437e9747` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f.lean/declarations/instance--a5f239ef50d4e17a1802fe3b.md) | 68 | `declaration-track:a5f239ef50d4e17a1802fe3bdefd1d29b53d4e29f27080f749f8d293bca4205c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
