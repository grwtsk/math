# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Action.Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "125b9f587029c6c264ffbc877119749d2efc63c9",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `125b9f587029c6c264ffbc877119749d2efc63c9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Elements` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsConnected` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.SingleObj` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SemidirectProduct` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actionAsFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/actionasfunctor--a80290ab4e687843ae955316.md) | 35 | `declaration-track:a80290ab4e687843ae95531673b27cd0e03c9f11f048a9c31246da574a872068` |
| 2 | `def` | [ActionCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/actioncategory--a1eac5d131e1953b66764539.md) | 44 | `declaration-track:a1eac5d131e1953b66764539e19a0f45add0d955e2ce75d704932e2d0e928766` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/instance--da399111c342cb6e3290c19f.md) | 47 | `declaration-track:da399111c342cb6e3290c19f52cbf7d611f6208b33c2b47be1e202eabc85ecdd` |
| 4 | `def` | [π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/anonymous--ca3f25ba98fb918730a5f808.md) | 55 | `declaration-track:ca3f25ba98fb918730a5f8089a0be42c2e9c42f20e20abeb9ef20d7883b9702d` |
| 5 | `theorem` | [π_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/map--68c5b08a7628d8a87050fb48.md) | 59 | `result-track:68c5b08a7628d8a87050fb4852695ef6bbb39db29ef78c7ea83988320d97ae8e` |
| 6 | `theorem` | [π_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/obj--a03158626c328621deaeaab6.md) | 63 | `result-track:a03158626c328621deaeaab6a8dfc16e25a914ebd5b7528d732452c40abfccab` |
| 7 | `def` | [back](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/back--db44733a3fa4ae25096302ce.md) | 70 | `declaration-track:db44733a3fa4ae25096302cea85497878abf5ac87f74cbba7223134b06df801a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/instance--e7fff923ed0c3745ff719915.md) | 72 | `declaration-track:e7fff923ed0c3745ff719915263b036d6ccce3aecd3396659a7f8764bc2bf6af` |
| 9 | `theorem` | [coe_back](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/coe-back--d19c31bbe089bb9f8bb15729.md) | 76 | `result-track:d19c31bbe089bb9f8bb157295aa73110d4c105e91f73970660df3f03d6ba040d` |
| 10 | `theorem` | [back_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/back-coe--2d3013da8ab3bf336403db27.md) | 80 | `result-track:2d3013da8ab3bf336403db27d96c1b3372dcc538ff49c6f32278f1e42a533b04` |
| 11 | `def` | [objEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/objequiv--d654030504b2d19ea9ee8e60.md) | 85 | `declaration-track:d654030504b2d19ea9ee8e60b9bacad2167f5a7e399c1edf7ba3e3161535f129` |
| 12 | `theorem` | [hom_as_subtype](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/hom-as-subtype--46259acf61834fd679163ad7.md) | 91 | `result-track:46259acf61834fd679163ad7c6c87907ff16beef50640a08ecd26e7558b8ee22` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/instance--10085bb52370dfe7a10fcbc5.md) | 94 | `declaration-track:10085bb52370dfe7a10fcbc5e675e5ee550d4e2cd83fc792fee3d0bf69fc4c28` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/instance--4dac449d0ccb3c32960a4eda.md) | 97 | `declaration-track:4dac449d0ccb3c32960a4eda9554f4d27d859fb85a03a34161b11bcafbe03fb5` |
| 15 | `def` | [stabilizerIsoEnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/stabilizerisoend--ef0cfcfd14a9903e897d112f.md) | 104 | `declaration-track:ef0cfcfd14a9903e897d112f31202050eefae7147469046bd7d9866e283edd39` |
| 16 | `theorem` | [stabilizerIsoEnd_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/stabilizerisoend-apply--9b9d85e91832437bdcd7fbab.md) | 108 | `result-track:9b9d85e91832437bdcd7fbab5f9fe4a3226c17f3854733655639fd4406a2a8f7` |
| 17 | `theorem` | [stabilizerIsoEnd_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/stabilizerisoend-symm-apply--6faa17cfcc6a4430e0d1e3ee.md) | 113 | `result-track:6faa17cfcc6a4430e0d1e3ee6fca3b724aecb6e662e7239db8eb7277cb7848f8` |
| 18 | `theorem` | [id_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/id-val--2ebf6d772af2b137a87174b9.md) | 119 | `result-track:2ebf6d772af2b137a87174b98b47e54fb898c90b1ae74e0460c26d3181d22a57` |
| 19 | `theorem` | [comp_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/comp-val--3614cf29c6a15286ad90eb4c.md) | 123 | `result-track:3614cf29c6a15286ad90eb4cebf308cf25cfd90915d70d28c382a9b3a8b27d74` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/instance--cd23effdaf8d8ef52a4f27f2.md) | 127 | `declaration-track:cd23effdaf8d8ef52a4f27f2e33a9055572ff2f2db353a1fd8d913dff227be68` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/instance--ff84e9af7f53f4d042e903ee.md) | 136 | `declaration-track:ff84e9af7f53f4d042e903ee90c37a1db516c914ef2c75ad2fe0160d223450a0` |
| 22 | `def` | [endMulEquivSubgroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/endmulequivsubgroup--e3feec04f7617e39d67c6478.md) | 140 | `declaration-track:e3feec04f7617e39d67c6478b5059a4f28a5187bfe2e7a05070326cd1d5ce8e9` |
| 23 | `def` | [homOfPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/homofpair--0395158606aea6f6390ffd10.md) | 145 | `declaration-track:0395158606aea6f6390ffd10e68c6b3fcc8870357d77111f43271ffe6ebd9187` |
| 24 | `theorem` | [homOfPair.val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/homofpair-val--2745d55492761464f7a8a1ff.md) | 149 | `result-track:2745d55492761464f7a8a1ffb71c21b2f8fbab6d5e204345a69cd675692f4077` |
| 25 | `def` | [cases](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/cases--b982ce2faf96346d5de4482d.md) | 153 | `declaration-track:b982ce2faf96346d5de4482d910c52cf5997830a38b6af1f7c539ba98f1fc00b` |
| 26 | `lemma` | [cases'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/cases--ea41070d46eba0c626bb5f14.md) | 163 | `result-track:ea41070d46eba0c626bb5f14dda7376191a63d0fa80930b588ee95869d306b7c` |
| 27 | `def` | [curry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/curry--8bd4a9197c2467076dfa2b72.md) | 174 | `declaration-track:8bd4a9197c2467076dfa2b72cb88dca65520bff0c9f84ae1c753855739c5becb` |
| 28 | `def` | [uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Action/Variante53249ca9dabe4383b40dd6ab5c8299ef45cce9f72d8f6cfb8f998710cdb75f0.lean/declarations/uncurry--1dc47abe7c23beaa5706c746.md) | 195 | `declaration-track:1dc47abe7c23beaa5706c7462e8021303a35d30d90e4b73152c8208637bb45b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
