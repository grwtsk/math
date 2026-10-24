# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ed7cd1f1a9f08d328312fcb69bc771ab716f4cd",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ed7cd1f1a9f08d328312fcb69bc771ab716f4cd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Opposites` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [unop_mono_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/unop-mono-of-epi--6a847394001d7ea0428e9c39.md) | 25 | `declaration-track:6a847394001d7ea0428e9c3928b615874dbfd2c16906c07584728f3d07bf8aa9` |
| 2 | `instance` | [unop_epi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/unop-epi-of-mono--7d1f77f4ee2f425cd5fa6e4d.md) | 29 | `declaration-track:7d1f77f4ee2f425cd5fa6e4d3bf7590b9dbc3a8a485f27ebb6dfcfb6d45ad524` |
| 3 | `instance` | [op_mono_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/op-mono-of-epi--bd9e8e221e20f246be56046b.md) | 33 | `declaration-track:bd9e8e221e20f246be56046bc62a96a67c2be939c5daf94e08a38649102c7c9b` |
| 4 | `instance` | [op_epi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/op-epi-of-mono--4bf141fd34ab9a9779ebb410.md) | 37 | `declaration-track:4bf141fd34ab9a9779ebb410f3d32d5163dfa9d90a3f88d2a2506089e60ecb99` |
| 5 | `structure` | [SplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/splitmono--89f6d332f2051ed9297048de.md) | 49 | `declaration-track:89f6d332f2051ed9297048de751d42358f5fbab3e35f52086fd6ba1acccd0da2` |
| 6 | `class` | [IsSplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/issplitmono--34a19df6d05854da5d73b65d.md) | 59 | `declaration-track:34a19df6d05854da5d73b65de510356c7eb50ecec402fa8ad7717ffbec5b7519` |
| 7 | `theorem` | [IsSplitMono.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/issplitmono-mk--ffda5ae4547441eea4c04b2c.md) | 66 | `result-track:ffda5ae4547441eea4c04b2cf72b4d810a9b61ca6fdedc759f80498ec25f6fc1` |
| 8 | `structure` | [SplitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/splitepi--d2c8befbacb5e3930520ad06.md) | 79 | `declaration-track:d2c8befbacb5e3930520ad065d88054a2d6ce4f075e0af7d38081db43e3e8d6d` |
| 9 | `class` | [IsSplitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/issplitepi--bd2e53b34c71ede1a9d9f5c9.md) | 89 | `declaration-track:bd2e53b34c71ede1a9d9f5c9cfbe3a28f68769fc62dceee1562e31ce45b6205e` |
| 10 | `theorem` | [IsSplitEpi.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/issplitepi-mk--2836b6e8c32ddf8f4f84e100.md) | 96 | `result-track:2836b6e8c32ddf8f4f84e100ca8bf54a890181559d70fe56b4005c8a633aa45e` |
| 11 | `def` | [retraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/retraction--e48197c49c8369d9dcfd0130.md) | 101 | `declaration-track:e48197c49c8369d9dcfd013095da378ff71c9dc6f643d1453b10f2f05bd6a150` |
| 12 | `theorem` | [IsSplitMono.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/issplitmono-id--6a39238751282ffca6ea911b.md) | 106 | `result-track:6a39238751282ffca6ea911b92b4e527730800cbcc387fc9e8d94ca0f357f1ae` |
| 13 | `def` | [SplitMono.splitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/splitmono-splitepi--fa6b7bb1d870e177d6c34964.md) | 111 | `declaration-track:fa6b7bb1d870e177d6c3496429bd7957fd1b0b56ba0df38ce4abc49e168f61ca` |
| 14 | `instance` | [retraction_isSplitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/retraction-issplitepi--164d735c1ddafc84bff68c94.md) | 116 | `declaration-track:164d735c1ddafc84bff68c94d2fa2e959fdfbd1053b9c22d1a0d775cd69730c0` |
| 15 | `theorem` | [isIso_of_epi_of_isSplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/isiso-of-epi-of-issplitmono--91096a82213be7bed69bae1a.md) | 122 | `result-track:91096a82213be7bed69bae1a46e3453902a428d830558dad8da321a09af9de1c` |
| 16 | `def` | [section_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/section--a0cca87c146c268db000f5be.md) | 129 | `declaration-track:a0cca87c146c268db000f5be51eb904569b998d0688ac11aeb8268425930e8b0` |
| 17 | `theorem` | [IsSplitEpi.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/issplitepi-id--afa4e0e92971bee75b07c7ea.md) | 134 | `result-track:afa4e0e92971bee75b07c7ea9073c77fa11b8164802f1fba9a61944460d1fd26` |
| 18 | `def` | [SplitEpi.splitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/splitepi-splitmono--3a2ad2463340465a8f79c750.md) | 139 | `declaration-track:3a2ad2463340465a8f79c75068f107ba441880bc0b18930ef5d4c2f5c81708c0` |
| 19 | `instance` | [section_isSplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/section-issplitmono--43ad4303864268aa407a4c5f.md) | 144 | `declaration-track:43ad4303864268aa407a4c5f1b6d68dc579df6d5a3c7ee3ab66505c32c480fef` |
| 20 | `theorem` | [isIso_of_mono_of_isSplitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/isiso-of-mono-of-issplitepi--c87c2ea9d90cd17f633a4d3f.md) | 149 | `result-track:c87c2ea9d90cd17f633a4d3f3e05de8fc006960d08636b0ffd56c246f833a7c2` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/instance--d69106087f030d13edae2042.md) | 154 | `declaration-track:d69106087f030d13edae20424152045674abe09c4179194eb0d9884632856798` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/instance--3a829a4c61155c87196aa602.md) | 159 | `declaration-track:3a829a4c61155c87196aa6023a5c59683f76c93d2347477afa5c680eed6bc479` |
| 23 | `theorem` | [SplitMono.mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/splitmono-mono--44310db2e5adbb41a1ae39a9.md) | 163 | `result-track:44310db2e5adbb41a1ae39a943c5e28239bc72aecff07a8f0cd55d2c00341102` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/instance--7312bc994fc6c754fedd2baf.md) | 168 | `declaration-track:7312bc994fc6c754fedd2bafd909f5fe8d8d05584f4d2b482d708552881bf73a` |
| 25 | `theorem` | [SplitEpi.epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/splitepi-epi--f22179f67ab9ac193d3e5971.md) | 172 | `result-track:f22179f67ab9ac193d3e5971a20fe26e2c22e63120549d96b53a1b312a0436a3` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/instance--90eba2e27e481c8b6110b4e1.md) | 177 | `declaration-track:90eba2e27e481c8b6110b4e1212f1642740eb4e18da8971e195c81b7535a4e93` |
| 27 | `theorem` | [IsIso.of_mono_retraction'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/isiso-of-mono-retraction--86a50e2903bf3b0ba9da208b.md) | 182 | `result-track:86a50e2903bf3b0ba9da208b8d50e56b2b25ab685af43d9503dfdce3da3eef80` |
| 28 | `theorem` | [IsIso.of_mono_retraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/isiso-of-mono-retraction--c17c5ab09650d3f989d996e4.md) | 188 | `result-track:c17c5ab09650d3f989d996e4bcb1260cb5ee1b95f95cecc2a08683986d2fdf38` |
| 29 | `theorem` | [IsIso.of_epi_section'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/isiso-of-epi-section--4ae44e5eef59cefe8ad7960e.md) | 194 | `result-track:4ae44e5eef59cefe8ad7960e784e98aef49ad4266a3aca91ca5187c0597ad35d` |
| 30 | `theorem` | [IsIso.of_epi_section](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/isiso-of-epi-section--638a96d7209bfe001f5fe85b.md) | 200 | `result-track:638a96d7209bfe001f5fe85b698cb4ca17c5b6b4769d99ba03183862385d0a30` |
| 31 | `def` | [Groupoid.ofTruncSplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/groupoid-oftruncsplitmono--955b9ec6a400b3f6bfd634ec.md) | 207 | `declaration-track:955b9ec6a400b3f6bfd634ec0cbf165ebf77144b9344d488bde311e47c85e350` |
| 32 | `class` | [SplitMonoCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/splitmonocategory--05c8d4b24fbac58a731c4ad3.md) | 221 | `declaration-track:05c8d4b24fbac58a731c4ad3eeb185cae5dcb1dbbe7aed059eb4883b310e24f2` |
| 33 | `class` | [SplitEpiCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/splitepicategory--12efff447582fdd9f6374eee.md) | 228 | `declaration-track:12efff447582fdd9f6374eee645724fbce89ca81a2899a04400caf952106c3f8` |
| 34 | `theorem` | [isSplitMono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/issplitmono-of-mono--452085e66ae4343a3b31f4f3.md) | 238 | `result-track:452085e66ae4343a3b31f4f3c0400920d31a140fe89c1e9d863572c9200acaf1` |
| 35 | `theorem` | [isSplitEpi_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/issplitepi-of-epi--2e38e2ba58fd7601abb7fdb9.md) | 244 | `result-track:2e38e2ba58fd7601abb7fdb9a535e341eba09169f08a94b76bb857bb5372e708` |
| 36 | `def` | [SplitMono.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/splitmono-map--0063da9b08ede61376c251da.md) | 254 | `declaration-track:0063da9b08ede61376c251da612838349f64ad96299e412d9c19b63a9dda374b` |
| 37 | `def` | [SplitEpi.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/splitepi-map--931a201fc24b54131e238bcd.md) | 262 | `declaration-track:931a201fc24b54131e238bcd4639eca055f63e2ef16ff8d75912952aeab2a6f4` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/instance--8cfdd21b1fc7d43e689234eb.md) | 268 | `declaration-track:8cfdd21b1fc7d43e689234ebc85f7f92182ecdc2c441504f61b157e0849a0aac` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18.lean/declarations/instance--7baa941b8994102263168705.md) | 271 | `declaration-track:7baa941b899410226316870558f36561279f9632b53ad6ee963a4024a1d29c4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
