# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ConcreteCategory.Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cba0cfe271fef79fcd3aff0edf9f0376dc4a46d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cba0cfe271fef79fcd3aff0edf9f0376dc4a46d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Ab` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ExactFunctor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.SnakeLemma` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ConcreteCategory` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ShortComplex.zero_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean/declarations/shortcomplex-zero-apply--93164eb0a6bd92060e15fa23.md) | 40 | `result-track:93164eb0a6bd92060e15fa237e079623c76d2bd0d82d0fa984bd295ccffece5c` |
| 2 | `lemma` | [Preadditive.mono_iff_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean/declarations/preadditive-mono-iff-injective--da7a4ca41df5d73d6053c2d1.md) | 55 | `result-track:da7a4ca41df5d73d6053c2d1e9930b02ee774c6c8cf769e4a4fdf5af4297e09f` |
| 3 | `lemma` | [Preadditive.mono_iff_injective'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean/declarations/preadditive-mono-iff-injective--9f086234c0e2d831b1ffa382.md) | 63 | `result-track:9f086234c0e2d831b1ffa382f7e3aada2038587c6bbd6b447ba0fed13ba848c5` |
| 4 | `lemma` | [Preadditive.epi_iff_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean/declarations/preadditive-epi-iff-surjective--42673ef9ed220ae702570849.md) | 70 | `result-track:42673ef9ed220ae70257084997f76166255115515063442fda9fc0b1d66f5838` |
| 5 | `lemma` | [Preadditive.epi_iff_surjective'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean/declarations/preadditive-epi-iff-surjective--25e3fa89fba1eb1b6b9a0dba.md) | 78 | `result-track:25e3fa89fba1eb1b6b9a0dbaead209dc6f130cf13ffd600d7bff397efe397fff` |
| 6 | `lemma` | [exact_iff_exact_map_forget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean/declarations/exact-iff-exact-map-forget--652cf0aec2399d40e382c8d5.md) | 89 | `result-track:652cf0aec2399d40e382c8d5ef340d2fcfcaf663d18e9d0574297e2b80e3c94f` |
| 7 | `lemma` | [exact_iff_of_hasForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean/declarations/exact-iff-of-hasforget--534dc6ec27917e1563b4ffdc.md) | 93 | `result-track:534dc6ec27917e1563b4ffdcac07302a908c862b558fdeae49b7166988992d13` |
| 8 | `lemma` | [ShortExact.injective_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean/declarations/shortexact-injective-f--cc2cbf0c407b5bb00dd6d71b.md) | 101 | `result-track:cc2cbf0c407b5bb00dd6d71bcd5cfe5896f47bb130a84537eddc677d75c58480` |
| 9 | `lemma` | [ShortExact.surjective_g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean/declarations/shortexact-surjective-g--4ce025f93dddf0344ea4bf78.md) | 106 | `result-track:4ce025f93dddf0344ea4bf78b6340755f28219ed307eaa9e83c2e1a949aae368` |
| 10 | `def` | [cyclesMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean/declarations/cyclesmk--882c3f64fb758139b03b1147.md) | 114 | `declaration-track:882c3f64fb758139b03b11473646dccffc5b86230a72f3055dbd6a10158cd90b` |
| 11 | `lemma` | [i_cyclesMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean/declarations/i-cyclesmk--d40df24151d719d3c7bc95a3.md) | 120 | `result-track:d40df24151d719d3c7bc95a37d51410240a4311abb51d343dc38f52c942ef267` |
| 12 | `lemma` | [δ_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean/declarations/apply--73af5f9ba4fd73702882d3a5.md) | 150 | `result-track:73af5f9ba4fd73702882d3a54a86f534c28d6c5ff08903b9fb19ed39e4400a5a` |
| 13 | `lemma` | [δ_apply'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant8d9547189f334ba05d328a9ca8c4534ccca65fb7cf5f45adb66bbcfa24fb79e7.lean/declarations/apply--decb9ced5858e5fc79ec1afb.md) | 172 | `result-track:decb9ced5858e5fc79ec1afb8a4b3b579661c18b182566b93d0de084fe443548` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
