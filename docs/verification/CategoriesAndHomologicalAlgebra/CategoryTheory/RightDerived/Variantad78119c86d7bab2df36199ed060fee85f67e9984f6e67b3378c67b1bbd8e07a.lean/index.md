# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RightDerived.Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1886f7421ca4de2239a0ea86b677d40f46b1aa31",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1886f7421ca4de2239a0ea86b677d40f46b1aa31`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.InjectiveResolution` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Additive` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Homology` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Exact` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Functor.rightDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/declarations/functor-rightderived--d83d812863c3577d53cc7a35.md) | 74 | `declaration-track:d83d812863c3577d53cc7a353c788a8eacc989d9f882dac98f37b0cf63b564df` |
| 2 | `def` | [Functor.rightDerivedObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/declarations/functor-rightderivedobjiso--350a9080bc307beb64b5a5f2.md) | 80 | `declaration-track:350a9080bc307beb64b5a5f2d0de128df5abe468a5c1fa6db5a4ce44fefcbab5` |
| 3 | `def` | [Functor.rightDerivedObjInjectiveZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/declarations/functor-rightderivedobjinjectivezero--ad90b946e135dda04d93f2c0.md) | 92 | `declaration-track:ad90b946e135dda04d93f2c0da79edda5244353255eb119ee40fc031656e3d60` |
| 4 | `def` | [Functor.rightDerivedObjInjectiveSucc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/declarations/functor-rightderivedobjinjectivesucc--0be9395de7302275e5a66d5e.md) | 103 | `declaration-track:0be9395de7302275e5a66d5e617bed137a3d41883057489fe5f6534d4332942e` |
| 5 | `theorem` | [Functor.rightDerived_map_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/declarations/functor-rightderived-map-eq--ddcc6b29ed4c3dd3e498bfc0.md) | 113 | `result-track:ddcc6b29ed4c3dd3e498bfc005280d92177827c9a2c6026ba994f350deaf2320` |
| 6 | `def` | [NatTrans.rightDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/declarations/nattrans-rightderived--a81482998135434daa419bcc.md) | 137 | `declaration-track:a81482998135434daa419bcc76fe62400de401ed78300e9fb666064b0126d296` |
| 7 | `theorem` | [NatTrans.rightDerived_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/declarations/nattrans-rightderived-id--8e9ff6ee2b41b8f6e670a63f.md) | 144 | `result-track:8e9ff6ee2b41b8f6e670a63fb2eda932fc96c51be290a6e4dc2cd697bfaa4c08` |
| 8 | `theorem` | [NatTrans.rightDerived_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/declarations/nattrans-rightderived-comp--607f9f00e129ccefdad6b946.md) | 151 | `result-track:607f9f00e129ccefdad6b946af10df4f5c82751e2afbbe5f93f63b13b468170c` |
| 9 | `theorem` | [NatTrans.rightDerived_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/declarations/nattrans-rightderived-eq--c3e81010c116a85ba061f1d9.md) | 160 | `result-track:c3e81010c116a85ba061f1d908eb81c003a795f74b36085db7ed9eea27a46dc3` |
| 10 | `theorem` | [preserves_exact_of_preservesFiniteLimits_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/declarations/preserves-exact-of-preservesfinitelimits-of-mono--1d6b63a299203fcba363f79a.md) | 200 | `result-track:1d6b63a299203fcba363f79ae8256bfd5a38ecaa25b7aba9178b78483fe8e1ae` |
| 11 | `theorem` | [exact_of_map_injectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/declarations/exact-of-map-injectiveresolution--3613d5184d8c168992476828.md) | 206 | `result-track:3613d5184d8c1689924768289f1d5b0958135a151b55e0d23a39a9eb7e26ea15` |
| 12 | `def` | [rightDerivedZeroToSelfApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/declarations/rightderivedzerotoselfapp--76b5055c1f3f16d14c41fb13.md) | 218 | `declaration-track:76b5055c1f3f16d14c41fb13ca4da69fdfac0044937273ac59b65fff001995fd` |
| 13 | `def` | [rightDerivedZeroToSelfAppInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/declarations/rightderivedzerotoselfappinv--5aabc0057418168f685b4764.md) | 237 | `declaration-track:5aabc0057418168f685b4764b1db892fd1aac97b7db6adca1b01938bd12f8d24` |
| 14 | `theorem` | [rightDerivedZeroToSelfApp_comp_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/declarations/rightderivedzerotoselfapp-comp-inv--ea6d0c776e5188fba49704e4.md) | 248 | `result-track:ea6d0c776e5188fba49704e422d29299277de697f19729a94efd8765dc736769` |
| 15 | `theorem` | [rightDerivedZeroToSelfAppInv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/declarations/rightderivedzerotoselfappinv-comp--de29d10528738917255f9a39.md) | 272 | `result-track:de29d10528738917255f9a39eba81690be6cee47fdb285b87fd57df98463fc88` |
| 16 | `def` | [rightDerivedZeroToSelfAppIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/declarations/rightderivedzerotoselfappiso--7fb488d20a045c6dedce2ff5.md) | 294 | `declaration-track:7fb488d20a045c6dedce2ff59f12eb0f9ad83ab412ce01c40bbf5435f164c42b` |
| 17 | `theorem` | [rightDerivedZeroToSelf_natural](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/declarations/rightderivedzerotoself-natural--05cd3491a7a65e75e94e64c6.md) | 304 | `result-track:05cd3491a7a65e75e94e64c6ca9dc489c8b57492af7c80abef6c76d49f8af106` |
| 18 | `def` | [rightDerivedZeroIsoSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/declarations/rightderivedzeroisoself--235991221b252ca69bc608a0.md) | 331 | `declaration-track:235991221b252ca69bc608a0bd763809d1b1eda6cc43963ede9cd8ea555173c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
