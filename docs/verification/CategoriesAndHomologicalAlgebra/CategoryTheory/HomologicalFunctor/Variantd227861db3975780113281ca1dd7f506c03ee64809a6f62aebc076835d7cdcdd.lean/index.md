# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomologicalFunctor.Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dbc67a8b1a4bc4ef9928fe78e75720c5b32df5c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dbc67a8b1a4bc4ef9928fe78e75720c5b32df5c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Exact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.ShiftSequence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Functor` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Subcategory` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ExactSequence` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsHomological](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/ishomological--8bf52869e9d212fa8324c9ec.md) | 79 | `declaration-track:8bf52869e9d212fa8324c9ecb1f00be133ad01d5ede522debcf1b56b19151743` |
| 2 | `lemma` | [map_distinguished_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/map-distinguished-exact--5cb6e56b399127830c552348.md) | 83 | `result-track:5cb6e56b399127830c55234826b557272af44eea50c7ee31529d26f389fecc6f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/instance--3e905773c12ac5e1babcfa10.md) | 87 | `declaration-track:3e905773c12ac5e1babcfa108da0b4a170e3de584e80f0001a6816c9925ca613` |
| 4 | `lemma` | [IsHomological.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/ishomological-mk--4bef54f4183f4469a282237e.md) | 91 | `result-track:4bef54f4183f4469a282237ea7eac7734877756085620d52dd45ca092e075de0` |
| 5 | `lemma` | [IsHomological.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/ishomological-of-iso--43fcaa98543ac246f38d316a.md) | 101 | `result-track:43fcaa98543ac246f38d316a941262a50b39a17b9c1fa59ad66da7f60572c005` |
| 6 | `def` | [homologicalKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/homologicalkernel--999ec215e7240d73a694721b.md) | 110 | `declaration-track:999ec215e7240d73a694721bd80bafcf71aad58c8f01ddd90d2648cda874e078` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/instance--619b3b46db9f919ee80df433.md) | 121 | `declaration-track:619b3b46db9f919ee80df433ae5a00eea9fd145419772dfa30566966201a743f` |
| 8 | `lemma` | [mem_homologicalKernel_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/mem-homologicalkernel-iff--be95179fa6e9a8a8f3b9aa98.md) | 125 | `result-track:be95179fa6e9a8a8f3b9aa981073d5a282dcccb46db20856b304181885715470` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/instance--636d7cda7fcfeb03b53ac688.md) | 130 | `declaration-track:636d7cda7fcfeb03b53ac68848c9ab6e20aa4e5408167a0d868fe58b8410b8c3` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/instance--c606ba921bc00b0cf7bc8528.md) | 151 | `declaration-track:c606ba921bc00b0cf7bc8528e6051e35031b34ca18bba06d2bdaac204579fbc4` |
| 11 | `lemma` | [isHomological_of_localization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/ishomological-of-localization--ddb8b773339608a66a433daf.md) | 154 | `result-track:ddb8b773339608a66a433daf538a7c98d312f667ad10aeca6d77efd4c6041daa` |
| 12 | `def` | [homologySequenceδ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/homologysequence--27f2a8d147e74318c1053176.md) | 172 | `declaration-track:27f2a8d147e74318c1053176861c1e5d380b03d09b401238265f33f09ecb23e2` |
| 13 | `lemma` | [homologySequenceδ_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/homologysequence-naturality--a39133410508498767b26259.md) | 180 | `result-track:a39133410508498767b2625973a0581523686534ac879fae4e3fc7d27c628ebd` |
| 14 | `lemma` | [comp_homologySequenceδ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/comp-homologysequence--9a95cd259cd9218b277823ef.md) | 196 | `result-track:9a95cd259cd9218b277823efee85448cdc801f32db4ae3d1eca787c4d35c4661` |
| 15 | `lemma` | [homologySequenceδ_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/homologysequence-comp--84bd4f2ca9d322d484619602.md) | 202 | `result-track:84bd4f2ca9d322d484619602a48666c37ee1930d740183fa0ff5e91f6e8b3436` |
| 16 | `lemma` | [homologySequence_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/homologysequence-comp--f6a6932044022f92be45c64b.md) | 208 | `result-track:f6a6932044022f92be45c64b26ec6111ca2c6e45d3bf1370b452ab874c000a13` |
| 17 | `lemma` | [homologySequence_exact₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/homologysequence-exact--cb9465a5c631dbba58525018.md) | 214 | `result-track:cb9465a5c631dbba58525018f73981b91c257b39fa3e826d36220262fcc1323f` |
| 18 | `lemma` | [homologySequence_exact₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/homologysequence-exact--00af9eb2fb170c3ceee8042f.md) | 222 | `result-track:00af9eb2fb170c3ceee8042f94d0137e5f2ebbc547f804f361d92deee7096590` |
| 19 | `lemma` | [homologySequence_exact₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/homologysequence-exact--3abeb57bc1855d03642b5589.md) | 228 | `result-track:3abeb57bc1855d03642b5589287753ac9287cf94dd94a32af83b575568c9f21e` |
| 20 | `lemma` | [homologySequence_epi_shift_map_mor₁_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/homologysequence-epi-shift-map-mor-iff--9198ca2d1f087a1e99309218.md) | 237 | `result-track:9198ca2d1f087a1e993092182bf4a8da87a2fd7069bcbc3219eeb85acfc5fde5` |
| 21 | `lemma` | [homologySequence_mono_shift_map_mor₁_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/homologysequence-mono-shift-map-mor-iff--fd8278dfb768692976644c38.md) | 241 | `result-track:fd8278dfb768692976644c385bc104583e6121555040c05cd31b89550f7c063f` |
| 22 | `lemma` | [homologySequence_epi_shift_map_mor₂_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/homologysequence-epi-shift-map-mor-iff--3e107754e72df72689e3dc7a.md) | 245 | `result-track:3e107754e72df72689e3dc7afb04bd4e0c6d373e10e42f4caf4587d2cae6d3a4` |
| 23 | `lemma` | [homologySequence_mono_shift_map_mor₂_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/homologysequence-mono-shift-map-mor-iff--eccaf22419e5103e7e203a73.md) | 249 | `result-track:eccaf22419e5103e7e203a73f78877ec703bf8c90b292967a74fa2f15a75b7e9` |
| 24 | `lemma` | [mem_homologicalKernel_W_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/mem-homologicalkernel-w-iff--eb2ba72caee0ae6c1dc6fe91.md) | 254 | `result-track:eb2ba72caee0ae6c1dc6fe9118bdb820c003585b35cfa64c7fa0bb2e5e747e9a` |
| 25 | `def` | [homologySequenceComposableArrows₅](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/homologysequencecomposablearrows--a3c31bf78c6b132a0bdc9311.md) | 276 | `declaration-track:a3c31bf78c6b132a0bdc9311ed89980f28b380d677088662e841c06fb4f28141` |
| 26 | `lemma` | [homologySequenceComposableArrows₅_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variantd227861db3975780113281ca1dd7f506c03ee64809a6f62aebc076835d7cdcdd.lean/declarations/homologysequencecomposablearrows-exact--7f84ec1460db4ffdf6dddd08.md) | 281 | `result-track:7f84ec1460db4ffdf6dddd08bb29e3a37ceaf476e8cd83ccc3cec59ad9feeb63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
