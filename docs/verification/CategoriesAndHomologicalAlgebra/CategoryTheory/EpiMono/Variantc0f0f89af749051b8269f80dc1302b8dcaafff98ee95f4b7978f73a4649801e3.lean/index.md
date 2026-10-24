# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8de162ee1b50a7f4ace513b33570ddd7060d8f2e",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8de162ee1b50a7f4ace513b33570ddd7060d8f2e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EpiMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrongEpi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.LiftingProperties.Adjunction` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/preservesmonomorphisms--be67349d219a22ad7df1de1b.md) | 38 | `declaration-track:be67349d219a22ad7df1de1bc9ae5cf2114f23231523bd2bc717acc2da6f38a1` |
| 2 | `instance` | [map_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/map-mono--86ec25563d83e7c6c43cb4b0.md) | 43 | `declaration-track:86ec25563d83e7c6c43cb4b04b3c95f5fb58bda46a6c80e4ed07410d857c6bb2` |
| 3 | `class` | [PreservesEpimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/preservesepimorphisms--9ab1c891aed3800a25357552.md) | 49 | `declaration-track:9ab1c891aed3800a25357552d4cc0e93ec5e7ceb27cdedf2485e5db090d901ec` |
| 4 | `instance` | [map_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/map-epi--bb9db7fc2c09ede509c6601a.md) | 54 | `declaration-track:bb9db7fc2c09ede509c6601a7a3044fae13205fd4f1be4213fd8a54e7fe5c0c6` |
| 5 | `class` | [ReflectsMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/reflectsmonomorphisms--80fecb8ef33fdc424df1bb3a.md) | 61 | `declaration-track:80fecb8ef33fdc424df1bb3a8b4ac4642bf3e4cfd776a5d32c80e6785b7a8ebd` |
| 6 | `theorem` | [mono_of_mono_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/mono-of-mono-map--9fbd1e29b1dabc170e4325b6.md) | 67 | `result-track:9fbd1e29b1dabc170e4325b6322f2857d94de7de9e24f37bff39b7ca96a443bb` |
| 7 | `class` | [ReflectsEpimorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/reflectsepimorphisms--9cbf75150ae9bd1381a38ddd.md) | 74 | `declaration-track:9cbf75150ae9bd1381a38ddda93c3f8e22fc3dfdecc628319f580c062e92e4f5` |
| 8 | `theorem` | [epi_of_epi_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/epi-of-epi-map--ea65b52c26510ca083900ca8.md) | 80 | `result-track:ea65b52c26510ca083900ca86aa7588c4db1bcdfe0bcd530135a4e0d016fa6fe` |
| 9 | `instance` | [preservesMonomorphisms_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/preservesmonomorphisms-comp--fbf731e09d7ddabadacb9be1.md) | 85 | `declaration-track:fbf731e09d7ddabadacb9be1e271ba9c5d0c143c8e3c30f18e86356bdd88c71b` |
| 10 | `instance` | [preservesEpimorphisms_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/preservesepimorphisms-comp--e9f57c81f5dd530ac9e3196c.md) | 92 | `declaration-track:e9f57c81f5dd530ac9e3196ce76c92d552fe261496af9b3cd7293ded45bd9293` |
| 11 | `instance` | [reflectsMonomorphisms_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/reflectsmonomorphisms-comp--60d59eb102e0101f5f8854a7.md) | 99 | `declaration-track:60d59eb102e0101f5f8854a7832586f82b88c9ae437781178cf5585548e69242` |
| 12 | `instance` | [reflectsEpimorphisms_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/reflectsepimorphisms-comp--48aa55ae464bb498a7a545db.md) | 104 | `declaration-track:48aa55ae464bb498a7a545db301e4f8160d351d996438397962314359c5c201b` |
| 13 | `theorem` | [preservesEpimorphisms_of_preserves_of_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/preservesepimorphisms-of-preserves-of-reflects--9133437aa1c9c97457b9ffd6.md) | 109 | `result-track:9133437aa1c9c97457b9ffd6c7feb60e5f4e75b35943bd28f62654b547d5623d` |
| 14 | `theorem` | [preservesMonomorphisms_of_preserves_of_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/preservesmonomorphisms-of-preserves-of-reflects--ecaf5e0971e7731ca02ef6f4.md) | 114 | `result-track:ecaf5e0971e7731ca02ef6f445b26dd4bb5c1b017f46134b9c56d245aa10bca2` |
| 15 | `theorem` | [reflectsEpimorphisms_of_preserves_of_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/reflectsepimorphisms-of-preserves-of-reflects--20eb398afc7dbd1e413dd935.md) | 119 | `result-track:20eb398afc7dbd1e413dd9358352af22d702f0e729203c618d2ff74785cf29fd` |
| 16 | `theorem` | [reflectsMonomorphisms_of_preserves_of_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/reflectsmonomorphisms-of-preserves-of-reflects--1d02967f9f37d6cec97d697f.md) | 124 | `result-track:1d02967f9f37d6cec97d697f7496911a2267cafb04f793f5128029728c6866ff` |
| 17 | `theorem` | [preservesMonomorphisms.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/preservesmonomorphisms-of-iso--079a136decd2d4eae3b88270.md) | 129 | `result-track:079a136decd2d4eae3b88270292d8dd4635e5921d3a327d4988c2273bd89539a` |
| 18 | `theorem` | [preservesMonomorphisms.iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/preservesmonomorphisms-iso-iff--acf8eb64e132e92a25e1bad2.md) | 137 | `result-track:acf8eb64e132e92a25e1bad2ffecace50a8e66f94bdf3c3cf431e1d58b54e8bf` |
| 19 | `theorem` | [preservesEpimorphisms.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/preservesepimorphisms-of-iso--42c3be035eac0c6ad4da1fa9.md) | 142 | `result-track:42c3be035eac0c6ad4da1fa9bbf33a1163f67730b4c9e33ac481ea6ea76c1d88` |
| 20 | `theorem` | [preservesEpimorphisms.iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/preservesepimorphisms-iso-iff--9b86df324e62d0b01eb66468.md) | 150 | `result-track:9b86df324e62d0b01eb66468f3c6a458997a4081d9d2b17db9f2b7571f863eab` |
| 21 | `theorem` | [reflectsMonomorphisms.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/reflectsmonomorphisms-of-iso--1ac8857a71745298148ba3cc.md) | 155 | `result-track:1ac8857a71745298148ba3cc50b5e152a18b10067ff2767a34e8286e26388f56` |
| 22 | `theorem` | [reflectsMonomorphisms.iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/reflectsmonomorphisms-iso-iff--3830fc799c503ff1e390e924.md) | 164 | `result-track:3830fc799c503ff1e390e9249259092d07c085a8d83d65264f7d80c18bf5f746` |
| 23 | `theorem` | [reflectsEpimorphisms.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/reflectsepimorphisms-of-iso--9cab9aeb9ffef3c5d1601bab.md) | 169 | `result-track:9cab9aeb9ffef3c5d1601bab6303f6fdc03be618fbd421a7eca3a40561fc65e9` |
| 24 | `theorem` | [reflectsEpimorphisms.iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/reflectsepimorphisms-iso-iff--8967f5a5736357595b495b9c.md) | 178 | `result-track:8967f5a5736357595b495b9c50cc1279886ad74a963264539cade752afa20fe7` |
| 25 | `theorem` | [preservesEpimorphsisms_of_adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/preservesepimorphsisms-of-adjunction--ef6e8fc5a6761b4591e5a377.md) | 183 | `result-track:ef6e8fc5a6761b4591e5a37778476bd747c3e1f62d417acfe7dcab24c373bf46` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/instance--f3200134f912d2945de1d725.md) | 193 | `declaration-track:f3200134f912d2945de1d725a91186ad7e0d63e4c8ddd10534630dcec0d10b09` |
| 27 | `theorem` | [preservesMonomorphisms_of_adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/preservesmonomorphisms-of-adjunction--59990f49a682177b77823b7f.md) | 198 | `result-track:59990f49a682177b77823b7fcf9ec9a97058220c4c7fdd8e43e648e4098edd49` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/instance--389542f270226f0a8c1d93e4.md) | 208 | `declaration-track:389542f270226f0a8c1d93e4846c6456826f88a7bd12831c350096d76ad08e0d` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/instance--47e406ec7623f2b7ff663299.md) | 213 | `declaration-track:47e406ec7623f2b7ff663299684667c8a260ff9555894d5e7e292f20794389a4` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/instance--3be6d27a3ea1ae1fa4008d58.md) | 220 | `declaration-track:3be6d27a3ea1ae1fa4008d58b1dab2e26465af34746a918b1d432ee4f3feaeca` |
| 31 | `def` | [splitEpiEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/splitepiequiv--e4497f2347a165dccd7f9a0b.md) | 232 | `declaration-track:e4497f2347a165dccd7f9a0bd33db3c8f58c0fee839cab3aa2b69483461b24a2` |
| 32 | `theorem` | [isSplitEpi_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/issplitepi-iff--a0e294f57ff46f07e7eb9867.md) | 249 | `result-track:a0e294f57ff46f07e7eb9867a5cdfa2819031292c9777fc33411907e9e7177ab` |
| 33 | `def` | [splitMonoEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/splitmonoequiv--bd8ba205d1d42ea16920a406.md) | 258 | `declaration-track:bd8ba205d1d42ea16920a406c3de86b50d48172bcf1eda5b6f5c61c21430c95e` |
| 34 | `theorem` | [isSplitMono_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/issplitmono-iff--60cddf4f0aa126b7c29ba560.md) | 275 | `result-track:60cddf4f0aa126b7c29ba5607ae66c57b2cf9b3904a26c5520e85429e702f45b` |
| 35 | `theorem` | [epi_map_iff_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/epi-map-iff-epi--a39114a81af4b744a33e2006.md) | 284 | `result-track:a39114a81af4b744a33e200649fca6b06efd1f8f35e9a09089bb00fb31321b16` |
| 36 | `theorem` | [mono_map_iff_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/mono-map-iff-mono--63a164aff5341bb4bedf1a82.md) | 293 | `result-track:63a164aff5341bb4bedf1a8246bc772499790a0a1c8520083985e0cb65675e99` |
| 37 | `theorem` | [splitEpiCategoryImpOfIsEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/splitepicategoryimpofisequivalence--dddd77011d43f5021b153df9.md) | 303 | `result-track:dddd77011d43f5021b153df90f5bf40670785d048986cb142329132406c80bac` |
| 38 | `theorem` | [strongEpi_map_of_strongEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/strongepi-map-of-strongepi--e7a27cc2b68d0b3ecae777bb.md) | 319 | `result-track:e7a27cc2b68d0b3ecae777bb74dec55c45145b3e72c1f2c58c9f01cffe9a9ec4` |
| 39 | `instance` | [strongEpi_map_of_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/strongepi-map-of-isequivalence--01c88530933f0a02b64acb91.md) | 327 | `declaration-track:01c88530933f0a02b64acb91642d75a19da7667ea0a67fc3fea182391285ea5b` |
| 40 | `theorem` | [strongEpi_map_iff_strongEpi_of_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variantc0f0f89af749051b8269f80dc1302b8dcaafff98ee95f4b7978f73a4649801e3.lean/declarations/strongepi-map-iff-strongepi-of-isequivalence--412be7e204aac63d474de936.md) | 339 | `result-track:412be7e204aac63d474de93667cfe67eeb3b35217e91ffc19770bcea6d870f15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
