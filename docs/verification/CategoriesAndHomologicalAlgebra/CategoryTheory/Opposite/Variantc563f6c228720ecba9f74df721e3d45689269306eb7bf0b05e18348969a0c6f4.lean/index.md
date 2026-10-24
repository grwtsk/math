# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aab55ef6b27a1b5b2de280eb6ef14ccd76c9c71b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aab55ef6b27a1b5b2de280eb6ef14ccd76c9c71b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Homology` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Additive` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [imageToKernel_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/imagetokernel-op--3554396671edf0b6963542e5.md) | 39 | `result-track:3554396671edf0b6963542e5866eed63484928b092e808125dd2f96649c58934` |
| 2 | `theorem` | [imageToKernel_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/imagetokernel-unop--7304557f4e1a4fb0c6a1f93c.md) | 52 | `result-track:7304557f4e1a4fb0c6a1f93ce7dbbc60f3f05e3725967a2a2c55aeb96dafdc47` |
| 3 | `def` | [homologyOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/homologyop--862c52f4df2a1a3c83106539.md) | 67 | `declaration-track:862c52f4df2a1a3c83106539dd3ee5804e0c2832d9e05b731dfd3c8b383d4d77` |
| 4 | `def` | [homologyUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/homologyunop--1bbba1119df489e0b400b3a9.md) | 77 | `declaration-track:1bbba1119df489e0b400b3a9ed858a78692b1119fcd8cf7d55565a30b9454ae0` |
| 5 | `def` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/op--e465143f919cbb2b61663e29.md) | 97 | `declaration-track:e465143f919cbb2b61663e29dd261f02f696e5a674b3051e7e4fcafb9af98fb3` |
| 6 | `def` | [opSymm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/opsymm--553c31397aed7482480c632e.md) | 106 | `declaration-track:553c31397aed7482480c632ef596a74f876f7464630746e143f6de870214ecd0` |
| 7 | `def` | [unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/unop--923b5378564ca0f2a5bb8240.md) | 115 | `declaration-track:923b5378564ca0f2a5bb8240f76bd007b3968a358ee0f079eb37e4f3e82777c9` |
| 8 | `def` | [unopSymm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/unopsymm--fd935e8109034bbc638055f8.md) | 124 | `declaration-track:fd935e8109034bbc638055f820614c516883034eb39b3804c3ca07a7a83806fe` |
| 9 | `def` | [opFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/opfunctor--d94faf00a0420db64190963a.md) | 135 | `declaration-track:d94faf00a0420db64190963a10668697169233091b1aee46e1206505ac4bcea8` |
| 10 | `def` | [opInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/opinverse--6d9b9106715fc16c7d57b7ce.md) | 144 | `declaration-track:6d9b9106715fc16c7d57b7ceb88f9bf34f397e612b64853a361487fcabe4fda0` |
| 11 | `def` | [opUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/opunitiso--1c321b91cf3399612da5f638.md) | 152 | `declaration-track:1c321b91cf3399612da5f6384415a5187a4694701765b59c080c79cf6c2a4cec` |
| 12 | `def` | [opCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/opcounitiso--1995cfcf7212b9cbe8f33932.md) | 169 | `declaration-track:1995cfcf7212b9cbe8f33932f7f77835164f4b2e5727f829a09f6251a1e99e58` |
| 13 | `def` | [opEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/opequivalence--dc46966ebc17479ff1c4cfe4.md) | 177 | `declaration-track:dc46966ebc17479ff1c4cfe4d7c8c20b27fb27186a311700c37a981c0fe22baf` |
| 14 | `def` | [unopFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/unopfunctor--67964fb72ac07f8b66879bfd.md) | 191 | `declaration-track:67964fb72ac07f8b66879bfd1dcaa9836c68766b7c6f6d6256926eff85246a59` |
| 15 | `def` | [unopInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/unopinverse--343b32e38c923ed047f72057.md) | 200 | `declaration-track:343b32e38c923ed047f720575cc7117df8624718ed91e8d3f554db194f42d0ae` |
| 16 | `def` | [unopUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/unopunitiso--e0aaa47ae3a15da153b2d6fa.md) | 208 | `declaration-track:e0aaa47ae3a15da153b2d6fa8d06ae566add8a11e04cefdad9692cc728752a6c` |
| 17 | `def` | [unopCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/unopcounitiso--83815339e7e64d51caed0dfc.md) | 225 | `declaration-track:83815339e7e64d51caed0dfc85c8b8a219d797c9b52f6c041bc924cb3b34f20d` |
| 18 | `def` | [unopEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/unopequivalence--28cd1e2de50ba3d67e78c683.md) | 233 | `declaration-track:28cd1e2de50ba3d67e78c68304d6eb2156942ad85b9bde08154e005e5b0a69f7` |
| 19 | `instance` | [opFunctor_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/opfunctor-additive--33ecff35814a70a320e18485.md) | 247 | `declaration-track:33ecff35814a70a320e184851758824c3623497c5d82bf0b8c2b984af54c6aa3` |
| 20 | `instance` | [unopFunctor_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/unopfunctor-additive--8ac541285dee43b7efd2b39b.md) | 250 | `declaration-track:8ac541285dee43b7efd2b39bb485fe9996115b7653a2ec993de9fb065487ad55` |
| 21 | `def` | [homologyOpDef](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/homologyopdef--2c33abaf39e8af5ae95bf356.md) | 258 | `declaration-track:2c33abaf39e8af5ae95bf356fa43da832c72f3568815042384b5250002a00be7` |
| 22 | `def` | [homologyOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/homologyop--dd55f08eace3b41634e81386.md) | 265 | `declaration-track:dd55f08eace3b41634e813864fa071145d2762a3f63db8046fe51a1abcd60c6d` |
| 23 | `def` | [homologyUnopDef](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/homologyunopdef--62004d51d90539e8c678a221.md) | 270 | `declaration-track:62004d51d90539e8c678a221c6b0d2fe48d73b12b8b68cedf020d4a9d1a4ee5c` |
| 24 | `def` | [homologyUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/declarations/homologyunop--baa7e75704a89b98cc493219.md) | 279 | `declaration-track:baa7e75704a89b98cc493219d538da6306df7fbd6f4885ad5c161b0045804779` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
