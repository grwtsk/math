# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bifunctor.Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "842c976d6369b4680a0008dd849962836c4a692c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `842c976d6369b4680a0008dd849962836c4a692c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Functor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/bifunctor--aacd2bac598fed647da0c070.md) | 31 | `declaration-track:aacd2bac598fed647da0c0702fb3b7c56de01fa0b906769075194443ba8d2612` |
| 2 | `class` | [LawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/lawfulbifunctor--03f4cfd1551b4af00534326c.md) | 37 | `declaration-track:03f4cfd1551b4af00534326cd66f5afad624afbbbcac604561d0ede8edf37de4` |
| 3 | `abbrev` | [fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/fst--a7ade9fae2462d4988be51c3.md) | 56 | `declaration-track:a7ade9fae2462d4988be51c3d8d9be2d9b9f0912c5923f8b0d47961029a991e1` |
| 4 | `abbrev` | [snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/snd--c1e5eb750097ff56162c5aa7.md) | 60 | `declaration-track:c1e5eb750097ff56162c5aa73931073aef06a80839cfbfaaf1d393aa730e8767` |
| 5 | `theorem` | [id_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/id-fst--48a10228a5bdd7b6453dc64c.md) | 66 | `result-track:48a10228a5bdd7b6453dc64cec605c2fe2eea42e2a389df6a51cf4e27e8581da` |
| 6 | `theorem` | [id_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/id-snd--bbc91d0995c792b935ed42ed.md) | 70 | `result-track:bbc91d0995c792b935ed42edbf10079b86cd205db78473f3adde8353e965dfb4` |
| 7 | `theorem` | [comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/comp-fst--ea906054fd824ec95472a35c.md) | 74 | `result-track:ea906054fd824ec95472a35ca64e1330724c2196462b5eb4cf385ad1094c5b8a` |
| 8 | `theorem` | [fst_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/fst-snd--21a6b4c9690c52023bc3d746.md) | 78 | `result-track:21a6b4c9690c52023bc3d74699d692dbf96cce27878c0baa0ac8d5e33177b6f7` |
| 9 | `theorem` | [snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/snd-fst--01db2aa81e0b593b72b83c6a.md) | 82 | `result-track:01db2aa81e0b593b72b83c6afea8cc6224f9c4327546434141be35fc5bca2bdd` |
| 10 | `theorem` | [comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/comp-snd--b8abfc0759266e7aff3ee087.md) | 86 | `result-track:b8abfc0759266e7aff3ee08762bd0a1105bdfdfc88450b14c8607661cc52248f` |
| 11 | `instance` | [Prod.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/prod-bifunctor--a8638090fab7eced5059a316.md) | 97 | `declaration-track:a8638090fab7eced5059a316f1fd98c28240ce2de91d2a7335b54714fc111234` |
| 12 | `instance` | [Prod.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/prod-lawfulbifunctor--d74ef41e7ecbbfc71d0f6563.md) | 99 | `declaration-track:d74ef41e7ecbbfc71d0f65631db5bac3a68365fec4466bef91e985e59bc89946` |
| 13 | `instance` | [Bifunctor.const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/bifunctor-const--a214759be179901ce24f90c2.md) | 103 | `declaration-track:a214759be179901ce24f90c2870ff53721830243108a687e6043df8fe06604a2` |
| 14 | `instance` | [LawfulBifunctor.const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/lawfulbifunctor-const--ff1eebc678002a87b56c4ed1.md) | 105 | `declaration-track:ff1eebc678002a87b56c4ed172637b51907bfa5279c7af068fa73c9e334214e2` |
| 15 | `instance` | [Bifunctor.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/bifunctor-flip--bda9ae074c3e2b1ab0dd756d.md) | 109 | `declaration-track:bda9ae074c3e2b1ab0dd756db167de0023c534cbcb4d111cf93bb0b2b3ff6e2c` |
| 16 | `instance` | [LawfulBifunctor.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/lawfulbifunctor-flip--ff9ef531c6fcce2a708d8274.md) | 112 | `declaration-track:ff9ef531c6fcce2a708d827479b4a00b83cde9954b6fc42d2706cec7a30d9b7f` |
| 17 | `instance` | [Sum.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/sum-bifunctor--4ddbaa8cb394a391f330165c.md) | 116 | `declaration-track:4ddbaa8cb394a391f330165c5edd06839b76247dbe23947486acea396d899098` |
| 18 | `instance` | [Sum.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/sum-lawfulbifunctor--9ab4144d447669bff524dff4.md) | 118 | `declaration-track:9ab4144d447669bff524dff42f441a16e15517ef49b42663604cb5ad9498d21e` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/instance--a08a9199ccc5af93d3e5c035.md) | 124 | `declaration-track:a08a9199ccc5af93d3e5c03588dd0456e99538aaf032c5bdda0164d6f6720a1e` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/instance--0de194542b3daad158cbe399.md) | 126 | `declaration-track:0de194542b3daad158cbe39945e2cceca5fa4710f50278e9a49c27a384f62715` |
| 21 | `instance` | [Function.bicompl.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/function-bicompl-bifunctor--d3a86e5c6527329332d72c75.md) | 137 | `declaration-track:d3a86e5c6527329332d72c755ced2d1fdebf9e959e19ec3960353c2c92419542` |
| 22 | `instance` | [Function.bicompl.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/function-bicompl-lawfulbifunctor--2a6063da21b3765cacb2f4ce.md) | 140 | `declaration-track:2a6063da21b3765cacb2f4ceaca1bd20d64c71bb3a55f8c9dc4619e9b902d4b3` |
| 23 | `instance` | [Function.bicompr.bifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/function-bicompr-bifunctor--b1ead5b0d93439291bc2fc05.md) | 150 | `declaration-track:b1ead5b0d93439291bc2fc05c0323ce4cbb5a685ee467252c5e1e452dac42ca9` |
| 24 | `instance` | [Function.bicompr.lawfulBifunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantb782d6831f3a772830281fe87fe6e51e85d80812b02f8d645dccb43b617d85af.lean/declarations/function-bicompr-lawfulbifunctor--83ff77261d6be0aa8f9cb0f3.md) | 153 | `declaration-track:83ff77261d6be0aa8f9cb0f347d86d3fc243f328759f40079624dc4e865572e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
