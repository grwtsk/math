# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Groupoid.Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49d19f155db785680352b29acb70eea99c6a9e90",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49d19f155db785680352b29acb70eea99c6a9e90`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ObjectProperty.FullSubcategory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Pi.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Symmetric` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Groupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/groupoid--ae31c8ff8512d11b3c033b24.md) | 40 | `declaration-track:ae31c8ff8512d11b3c033b24d56ff32131713b280085767826517d9a2b6cff6c` |
| 2 | `abbrev` | [LargeGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/largegroupoid--fbe74d4f8543c94be065a10e.md) | 53 | `declaration-track:fbe74d4f8543c94be065a10ee96324cf095f73a366755cf8e47cb8e20c2c3529` |
| 3 | `abbrev` | [SmallGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/smallgroupoid--0ef58f207830b2de14f9d1b0.md) | 59 | `declaration-track:0ef58f207830b2de14f9d1b0dff4e6caca123de8d1fad4c40ced74c0851e5edc` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/instance--c4d01193ec7d2f5bdc4af12d.md) | 67 | `declaration-track:c4d01193ec7d2f5bdc4af12d0667617b76c87a654ade3610e2fb29257f2ea028` |
| 5 | `theorem` | [Groupoid.inv_eq_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/groupoid-inv-eq-inv--c0f2c488793ac63adb70e9f3.md) | 71 | `result-track:c0f2c488793ac63adb70e9f34bfed7f230815fdce59749b551ab50bdc007f54e` |
| 6 | `def` | [Groupoid.invEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/groupoid-invequiv--3a57cf55589680c344637c47.md) | 76 | `declaration-track:3a57cf55589680c344637c476ebc61bfb6f3da15aa56bf782ce3d8d430c85ebf` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/instance--ac18b9152e5ea03ec0952119.md) | 79 | `declaration-track:ac18b9152e5ea03ec0952119a92c9ef7578fbaa57842841d7bc0547db6e27d0e` |
| 8 | `theorem` | [Groupoid.reverse_eq_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/groupoid-reverse-eq-inv--104c8aad28dc2ea06787b08a.md) | 86 | `result-track:104c8aad28dc2ea06787b08a446cbcf23fc859d1e98d29e1e9c6376fbdf90df0` |
| 9 | `instance` | [functorMapReverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/functormapreverse--55a5fc4b9db80cda0002c9dc.md) | 89 | `declaration-track:55a5fc4b9db80cda0002c9dc642ce8a055cfa3a3ee98f68c02a374a0be5b9a72` |
| 10 | `def` | [Groupoid.isoEquivHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/groupoid-isoequivhom--b160e2d9980fb91fef5d7dbf.md) | 98 | `declaration-track:b160e2d9980fb91fef5d7dbfc47c6ce0141f0ad24e49350d9a1d1075a1fa8ec6` |
| 11 | `def` | [Groupoid.invFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/groupoid-invfunctor--3f4b8762474b6ef408aef781.md) | 108 | `declaration-track:3f4b8762474b6ef408aef781bb0c14b71ae633fc4c6d40d7915a9b3a0dc9726f` |
| 12 | `class` | [IsGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/isgroupoid--37c2f2781c9f2cf917444664.md) | 117 | `declaration-track:37c2f2781c9f2cf9174446648cda90f50925ebaeb196a17377e225f6d7a878ac` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/instance--8c66c26201f8b96f5bb52d5c.md) | 122 | `declaration-track:8c66c26201f8b96f5bb52d5cc8434dbb888b8f47937d1cc85a5d13d5487f49f2` |
| 14 | `def` | [Groupoid.ofIsGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/groupoid-ofisgroupoid--3f68e2df93b2e8afba86d0fa.md) | 127 | `declaration-track:3f68e2df93b2e8afba86d0fa15f53a9511e227c2e6ed1a23b69e28f28280087c` |
| 15 | `def` | [Groupoid.ofIsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/groupoid-ofisiso--876fbb4b20ea2625457cec78.md) | 132 | `declaration-track:876fbb4b20ea2625457cec78701ff5ec2e345ec3b8833e1c4cdfc6e3601c63a1` |
| 16 | `def` | [Groupoid.ofHomUnique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/groupoid-ofhomunique--1f930d4c7c678628dc520a27.md) | 138 | `declaration-track:1f930d4c7c678628dc520a2799b507ea535d9a3e00f31411e894e32fc3c8d6e4` |
| 17 | `lemma` | [isGroupoid_of_reflects_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/isgroupoid-of-reflects-iso--d0e549b386ae04abe3d10321.md) | 143 | `result-track:d0e549b386ae04abe3d10321226750f9b50f5032c4cadb70f4b1c8fe97a308ea` |
| 18 | `def` | [Groupoid.ofFullyFaithfulToGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/groupoid-offullyfaithfultogroupoid--66ab07fc105a2041344c1aab.md) | 149 | `declaration-track:66ab07fc105a2041344c1aab659459848d0838952acab94401b478864c92fc98` |
| 19 | `instance` | [InducedCategory.groupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/inducedcategory-groupoid--5c0887fb3e6b1d62ac685b92.md) | 160 | `declaration-track:5c0887fb3e6b1d62ac685b92c0630aeb10409476f7ddc62d4b987c9367f76c0f` |
| 20 | `instance` | [InducedCategory.isGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/inducedcategory-isgroupoid--c344345f481ce4b9a4bef106.md) | 164 | `declaration-track:c344345f481ce4b9a4bef1063ba85e499b55b8acfbd48d0be0b3d4a3a8230cf7` |
| 21 | `instance` | [groupoidPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/groupoidpi--84fbc268f82823931d69e113.md) | 171 | `declaration-track:84fbc268f82823931d69e1136e70c5795ef5af95281ceee527f651a27d9fe61c` |
| 22 | `instance` | [groupoidProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/groupoidprod--059b677b33df3ed008235254.md) | 177 | `declaration-track:059b677b33df3ed0082352549b1365a32e3f29f004ffba465d3ed03e2883244c` |
| 23 | `instance` | [isGroupoidPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/isgroupoidpi--5e4b66156a51feee9fc955f3.md) | 181 | `declaration-track:5e4b66156a51feee9fc955f3bd99fd9a50477081d3894e6448924b9bca59287d` |
| 24 | `instance` | [isGroupoidProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variantd76ff1c9dbd3c7d17f21e9611fa27e64fde66ed80ee42c05be2d698873d0f8f8.lean/declarations/isgroupoidprod--683cc469db723a4bae95e143.md) | 186 | `declaration-track:683cc469db723a4bae95e14388f2fb93c591751c8868b3f48d4dbd003269026a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
