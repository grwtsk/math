# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Trifunctor.Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "782b08c753808783d23dc27ffd4bd5b1f6deeb1b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `782b08c753808783d23dc27ffd4bd5b1f6deeb1b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.Bifunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.CurryingThree` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Associator` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInvertedBy₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/declarations/isinvertedby--b04c1b9fef07deceb2c4de94.md) | 34 | `declaration-track:b04c1b9fef07deceb2c4de9485870a99e791af21b9ae57b7191c9402e64384ed` |
| 2 | `class` | [Lifting₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/declarations/lifting--f9630dc4296e35577318fd33.md) | 50 | `declaration-track:f9630dc4296e35577318fd33062ef9c70d6b533c9b6e6d57f1ae2a113cabe9ec` |
| 3 | `def` | [Lifting₃.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/declarations/lifting-iso--1f5063b5b8ca36cc1b2ab144.md) | 62 | `declaration-track:1f5063b5b8ca36cc1b2ab14438e43961f8a7ff7ae5f489ae5ab24393d35b497e` |
| 4 | `instance` | [Lifting₃.uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/declarations/lifting-uncurry--f32a71ad1be7bed3169d4c6b.md) | 68 | `declaration-track:f32a71ad1be7bed3169d4c6bfef669f8e44db9678278ce7baf4a9174d00fd269` |
| 5 | `def` | [lift₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/declarations/lift--b0f0a16a07e12e02ad283ea1.md) | 89 | `declaration-track:b0f0a16a07e12e02ad283ea11bc2f8e380d8f1d9ee33f3d6c6754cde5d5be2fd` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/declarations/instance--dbbaa0ea84a6bec17353d7b8.md) | 92 | `declaration-track:dbbaa0ea84a6bec17353d7b861c4c4bef341fcbd133b49b81f07a000f4cc8b50` |
| 7 | `def` | [lift₃NatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/declarations/lift-nattrans--302568cc5b280a8a530fde10.md) | 113 | `declaration-track:302568cc5b280a8a530fde107b919e81a64ea8b71f4cb70f363eb6b98c5bfc3a` |
| 8 | `theorem` | [lift₃NatTrans_app_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/declarations/lift-nattrans-app-app-app--9da348908a454daf74ff6a17.md) | 119 | `result-track:9da348908a454daf74ff6a176947ba4477f42969111be1e64cdaa31310d34a44` |
| 9 | `theorem` | [natTrans₃_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/declarations/nattrans-ext--9583e45c25c4da9eb64a23b5.md) | 133 | `result-track:9583e45c25c4da9eb64a23b522b521db943305a29fd896857b87a907e59bfb05` |
| 10 | `def` | [lift₃NatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/declarations/lift-natiso--2351f20f4c01776e78b757ad.md) | 143 | `declaration-track:2351f20f4c01776e78b757adb8eedc25accddb6099644e1bfdede302cb35b930` |
| 11 | `def` | [Lifting₃.bifunctorComp₁₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/declarations/lifting-bifunctorcomp--38b5c60c905465f4736a7d7f.md) | 171 | `declaration-track:38b5c60c905465f4736a7d7f558343de83899eb539988d3c785a675548e9c248` |
| 12 | `def` | [Lifting₃.bifunctorComp₂₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/declarations/lifting-bifunctorcomp--f29233a686b5edd40b45f934.md) | 185 | `declaration-track:f29233a686b5edd40b45f934e656065ba2afc5584ddf51bb11ac7dcde9efcae5` |
| 13 | `def` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/declarations/associator--108df13cf305b58a887011fb.md) | 198 | `declaration-track:108df13cf305b58a887011fb659d6d2b7596891f7fbc236c1e14cda878f3a009` |
| 14 | `lemma` | [associator_hom_app_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/declarations/associator-hom-app-app-app--74830255535642697a9627e5.md) | 203 | `result-track:74830255535642697a9627e5b04919aa7dc22e69f8b290a0096211b147f1a4b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
