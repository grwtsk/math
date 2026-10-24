# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Triangulated.Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bad4c932f178de6a78390d0a5143f2720993078b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bad4c932f178de6a78390d0a5143f2720993078b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.CalculusOfFractions.ComposableArrows` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.CalculusOfFractions.Preadditive` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Functor` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Localization` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCompatibleWithTriangulation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/declarations/iscompatiblewithtriangulation--5a3da4e5254016f71eae5fbf.md) | 38 | `declaration-track:5a3da4e5254016f71eae5fbfc1e8a1cf0507efed93a3b7b218df170c41c24a1e` |
| 2 | `def` | [essImageDistTriang](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/declarations/essimagedisttriang--0ffe4913242ed4467e14c4f2.md) | 55 | `declaration-track:0ffe4913242ed4467e14c4f2938114314b83689cce5afc6167f500790515997f` |
| 3 | `lemma` | [essImageDistTriang_mem_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/declarations/essimagedisttriang-mem-of-iso--28f92a2e4dc86e51c299091c.md) | 58 | `result-track:28f92a2e4dc86e51c299091c57e56eb600e33a3552c15e774dde3385efb8cad8` |
| 4 | `lemma` | [contractible_mem_essImageDistTriang](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/declarations/contractible-mem-essimagedisttriang--9bdd90c44accf8f15acfc87b.md) | 63 | `result-track:9bdd90c44accf8f15acfc87b431120b6b4cdb00029c096f7f3d76792d607f707` |
| 5 | `lemma` | [rotate_essImageDistTriang](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/declarations/rotate-essimagedisttriang--d0471465193ce5227c67119a.md) | 70 | `result-track:d0471465193ce5227c67119a395c64ca9bdbe56efc5b964c1d97accedb2afbf1` |
| 6 | `lemma` | [complete_distinguished_essImageDistTriang_morphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/declarations/complete-distinguished-essimagedisttriang-morphism--5d72541f171a94a09a63e05c.md) | 81 | `result-track:5d72541f171a94a09a63e05cfb184370dde9bb6048b57c39a9f89119536de08a` |
| 7 | `lemma` | [distinguished_cocone_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/declarations/distinguished-cocone-triangle--95904cdeddae3176618ce585.md) | 126 | `result-track:95904cdeddae3176618ce58514d7d47c01857a82699103e411f78d2093b74bef` |
| 8 | `lemma` | [complete_distinguished_triangle_morphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/declarations/complete-distinguished-triangle-morphism--95623fc4f92b121888c057b1.md) | 145 | `result-track:95623fc4f92b121888c057b1474933a483be0bb1b4dbe23ac91feea0075be46d` |
| 9 | `def` | [pretriangulated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/declarations/pretriangulated--c970094542e4ef88a6bf08a8.md) | 189 | `declaration-track:c970094542e4ef88a6bf08a87360794304a3e2e28137a3a25ee1daccf8a80f0d` |
| 10 | `instance` | [isTriangulated_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/declarations/istriangulated-functor--4f51759af1ad92fb8a963728.md) | 198 | `declaration-track:4f51759af1ad92fb8a9637287069f38c64b8bb43904f119ea3430d10b4c95529` |
| 11 | `lemma` | [isTriangulated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/declarations/istriangulated--9303d28b7a80cdf49f958d8f.md) | 208 | `result-track:9303d28b7a80cdf49f958d8f91f515f819ce82368c72f779103fe2928b5d1167` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/declarations/instance--23a082e940f3544718aa5399.md) | 215 | `declaration-track:23a082e940f3544718aa5399a2cb574f67798fab49aca30bf7fbd1fb25f9b1e2` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/declarations/instance--3a948ba714765deca57470aa.md) | 219 | `declaration-track:3a948ba714765deca57470aaeb139506db393c571ccaaad12f41d80a8f823414` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/declarations/instance--00200cfcb5453988087eb524.md) | 221 | `declaration-track:00200cfcb5453988087eb5247b6f15a0213aefb12eeb136d73bd5d4456462d40` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/declarations/instance--854e1fe15b0be1d0a1ad1000.md) | 227 | `declaration-track:854e1fe15b0be1d0a1ad1000ce1b6ddaaa64945369c6f9f5d63bf459c01f5223` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/declarations/instance--a552432fffbe4044f6a11f03.md) | 231 | `declaration-track:a552432fffbe4044f6a11f037c65c91310f5df9cd79d8870d8c7ee0afb3ac75f` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/declarations/instance--35735462f19bf28eabecf51a.md) | 233 | `declaration-track:35735462f19bf28eabecf51a42b73e6b2e19ba1c4cc19446f3f27c7046753628` |
| 18 | `lemma` | [distTriang_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant7de04541095bf54ff33fbf5e4f80b994cb7d3772eb92df2a0788b8e9a2fdd3e0.lean/declarations/disttriang-iff--fceb8083dfb1d07c8fdb8b5b.md) | 246 | `result-track:fceb8083dfb1d07c8fdb8b5ba72a33a4524453aa7964cce22141383ac11e3888` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
