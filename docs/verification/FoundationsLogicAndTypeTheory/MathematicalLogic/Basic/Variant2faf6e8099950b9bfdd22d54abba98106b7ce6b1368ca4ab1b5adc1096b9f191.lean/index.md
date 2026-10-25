# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7513dae951ee937cac45d491ae5843bcd176d45f",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7513dae951ee937cac45d491ae5843bcd176d45f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Group` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MulMemClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/mulmemclass--c93366cf039e4aa37fa8fa00.md) | 70 | `declaration-track:c93366cf039e4aa37fa8fa00c6d169a6dd09b6d8905b5470a396ecdf878d28f6` |
| 2 | `class` | [AddMemClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/addmemclass--9ac015f8c2af771e89fe76b0.md) | 78 | `declaration-track:9ac015f8c2af771e89fe76b02579e17d2ad1dac79c5f46668c80f35d426816e3` |
| 3 | `structure` | [Subsemigroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/subsemigroup--83214e30c4fe2a59cf9567fc.md) | 88 | `declaration-track:83214e30c4fe2a59cf9567fc8bc7bcd0e89bea8f7c42fd4f6f911fd324ad316f` |
| 4 | `structure` | [AddSubsemigroup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/addsubsemigroup--7acda2e80cadd928578c066a.md) | 96 | `declaration-track:7acda2e80cadd928578c066a012829952c1d782c12692c0ca67bde2e2f3ec8ae` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/instance--c3d7eec30845d5d6e881be89.md) | 108 | `declaration-track:c3d7eec30845d5d6e881be8957381a4874a2255c0af4d45fa77ae1241d24e469` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/instance--315d41ea2d357f64ad72ffd5.md) | 112 | `declaration-track:315d41ea2d357f64ad72ffd5b97b8fd82517dfd446ea58149c7dc6977afe3e41` |
| 7 | `theorem` | [mem_carrier](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/mem-carrier--7ddb6e189cbcad35a05cc767.md) | 118 | `result-track:7ddb6e189cbcad35a05cc767eb875c7d863a6a272d50310b52a3a055125194b8` |
| 8 | `theorem` | [mem_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/mem-mk--24fa3a58efb8f4ff826ed283.md) | 124 | `result-track:24fa3a58efb8f4ff826ed2839cbfc1064a8a5d6329761f0c33501020c36ac873` |
| 9 | `theorem` | [coe_set_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/coe-set-mk--01553f3bf2f9bbff590ff552.md) | 130 | `result-track:01553f3bf2f9bbff590ff5520f90b40a219802e91597e8a2fb3a7338b70969e1` |
| 10 | `theorem` | [mk_le_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/mk-le-mk--2229f5ff05a32a15f0c05758.md) | 136 | `result-track:2229f5ff05a32a15f0c05758804db140e2f905e06fba1ef6804d5011f96f2d5e` |
| 11 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/ext--23f36b0aa026390200e0146d.md) | 143 | `result-track:23f36b0aa026390200e0146da7e919312255158c5a2631bdd2f80b2b2ec583c4` |
| 12 | `def` | [copy](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/copy--dcb1ebd450da9be5e931ac13.md) | 150 | `declaration-track:dcb1ebd450da9be5e931ac13efb3d1d515eb74b489b0c9d085f6fc2bf76fdfa4` |
| 13 | `theorem` | [coe_copy](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/coe-copy--a07a86f0974820b99eb3a23d.md) | 160 | `result-track:a07a86f0974820b99eb3a23de4c47aae1c1a6a730f232a757c0f245d3ee5c2ee` |
| 14 | `theorem` | [copy_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/copy-eq--6ef02f16831f47a27319671f.md) | 166 | `result-track:6ef02f16831f47a27319671f6af042a5fecf53a8eebf57a1c6f7fd16b1f5ad8b` |
| 15 | `theorem` | [mul_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/mul-mem--ddb803d12b88fe8b80cf1e8d.md) | 175 | `result-track:ddb803d12b88fe8b80cf1e8da810a82e2548fd1e438fe3c2e1db3c1723284d89` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/instance--540a584bb24c2ab8a2ad649d.md) | 182 | `declaration-track:540a584bb24c2ab8a2ad649d7bf7f6c5a1b5f42d8cdff576049a14c259cc725d` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/instance--9e303e5b9463e42e389417e9.md) | 188 | `declaration-track:9e303e5b9463e42e389417e9d30a5f079fc8a1ac44850886c5d5ae7d411dfe7f` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/instance--28723bef8cbc03fce014528d.md) | 193 | `declaration-track:28723bef8cbc03fce014528da7afb842264dd5f5407b7274c1f1ea5fce4d20bc` |
| 19 | `theorem` | [not_mem_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/not-mem-bot--5fc6b675c16cecfae8866ec2.md) | 197 | `result-track:5fc6b675c16cecfae8866ec285fe0b53a9df36248d4d0ff6777ac39d8022fe90` |
| 20 | `theorem` | [mem_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/mem-top--b7c5c3adb4b8eec393835646.md) | 203 | `result-track:b7c5c3adb4b8eec393835646c50c5690492225da39252d8612d274c3595c85f7` |
| 21 | `theorem` | [coe_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/coe-top--703823245a4a994323cca759.md) | 209 | `result-track:703823245a4a994323cca7592fe00ba807d43e6b78a45822262e3d670d5670ee` |
| 22 | `theorem` | [coe_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/coe-bot--287a8fe7f9a9c81439230f23.md) | 215 | `result-track:287a8fe7f9a9c81439230f2329ffc508d7ff273e7e168aa2fbee2636eee09813` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/instance--23b6b066d068c6d3f66838fc.md) | 222 | `declaration-track:23b6b066d068c6d3f66838fca8b8a215353a071be59eb960b662e2087b867414` |
| 24 | `theorem` | [coe_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/coe-inf--735bb121195bd5da6117eb61.md) | 228 | `result-track:735bb121195bd5da6117eb6145b693c27b85d491a08c54b6ea1173ba965f4b0f` |
| 25 | `theorem` | [mem_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/mem-inf--294d909380198b4a782efd13.md) | 234 | `result-track:294d909380198b4a782efd136db6c5e0b6f643bb69b3ddcc60873f64d56be2c8` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/instance--9e28df04a7a651e668f1320d.md) | 240 | `declaration-track:9e28df04a7a651e668f1320deb5ccbf24bcea230852c983961a02d0de881764f` |
| 27 | `theorem` | [coe_sInf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/coe-sinf--4f7a47e82899dfb20c30bc0e.md) | 248 | `result-track:4f7a47e82899dfb20c30bc0e581c7a964d6528d1a86b6796729741fb64cd46c2` |
| 28 | `theorem` | [mem_sInf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/mem-sinf--e0d9de1caca77bef91cd5b3f.md) | 254 | `result-track:e0d9de1caca77bef91cd5b3fe1da3b2993a5585700bd940da4fa90020e887214` |
| 29 | `theorem` | [mem_iInf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/mem-iinf--f3138d806b2f97c65403ac85.md) | 260 | `result-track:f3138d806b2f97c65403ac852b61ba5f65099c3e9501501ed5f046aa7bb7a5ac` |
| 30 | `theorem` | [coe_iInf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/coe-iinf--5b9ea426cacd5384cb8ef747.md) | 266 | `result-track:5b9ea426cacd5384cb8ef7475d23f547fd2cd518896ae3f37e8d35a7a49ed4aa` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/instance--73f36df26d618a0406184b63.md) | 273 | `declaration-track:73f36df26d618a0406184b63e14772b8c9cc6dc99814f6584cb04c7d1bd1adb8` |
| 32 | `theorem` | [subsingleton_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/subsingleton-of-subsingleton--2909dd320ddf83270a3ae044.md) | 289 | `result-track:2909dd320ddf83270a3ae0446d530934e32573a3e2e82e8d32ae4629b11eef07` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/instance--b56d8d0e363e86e46a3b51fb.md) | 297 | `declaration-track:b56d8d0e363e86e46a3b51fbf0fc1b9eb4a4e50b1de20b7417bb0afeaff104ff` |
| 34 | `def` | [closure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/closure--c1748664f33cde13b8912c5a.md) | 305 | `declaration-track:c1748664f33cde13b8912c5a928c47da12f345b95f3a6de5b1efb9dc87d1687d` |
| 35 | `theorem` | [mem_closure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/mem-closure--9bf30b64dabb3cb6bea25a25.md) | 311 | `result-track:9bf30b64dabb3cb6bea25a25aaaf4036aaaf00f66cfa04042e30595f10c13c5b` |
| 36 | `theorem` | [subset_closure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/subset-closure--1011ce06223b16bb556ee2b9.md) | 318 | `result-track:1011ce06223b16bb556ee2b96a90788f56591bafc97616c2781599740c8efc90` |
| 37 | `theorem` | [not_mem_of_not_mem_closure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/not-mem-of-not-mem-closure--af2d0b95675e16caa9b2321d.md) | 323 | `result-track:af2d0b95675e16caa9b2321da6770448451d349e41eb7b787debc6a0ca47bd25` |
| 38 | `theorem` | [closure_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/closure-le--474d69b596a83f2757ec98ac.md) | 335 | `result-track:474d69b596a83f2757ec98ac99fb7bac51718ff786361c9592f4f4e3749a8874` |
| 39 | `theorem` | [closure_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/closure-mono--1663ed95b7ff60b9efd81e86.md) | 344 | `result-track:1663ed95b7ff60b9efd81e86e5874574b82344eab216a16280cbbf1b1d91fc4f` |
| 40 | `theorem` | [closure_eq_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/closure-eq-of-le--027ec3d01a4f2ddb388da4cc.md) | 350 | `result-track:027ec3d01a4f2ddb388da4cce181dca5e6976a5f5f69af85d6421926d095b184` |
| 41 | `theorem` | [closure_induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/closure-induction--d2ecb55b0a3398fb8a88c614.md) | 362 | `result-track:d2ecb55b0a3398fb8a88c6143429f8f18eaa3bf5c2e7e2c52fdd1267f0d4b9d0` |
| 42 | `theorem` | [closure_induction'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/closure-induction--2c8bb7f8762040399254d37e.md) | 370 | `result-track:2c8bb7f8762040399254d37eea9ba213fa785c4885349a568321b8ea02261240` |
| 43 | `theorem` | [closure_induction₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/closure-induction--2890ba629412660c6d669448.md) | 384 | `result-track:2890ba629412660c6d6694481a067ebaae9fc36f193141468a01ac604fde958d` |
| 44 | `theorem` | [dense_induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/dense-induction--88c233edc56b1d2e3eb89590.md) | 400 | `result-track:88c233edc56b1d2e3eb89590175137724de7cb5d538f9517f18e2c921013e751` |
| 45 | `def` | [gi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/gi--35f3eb070a34bb75b714d493.md) | 411 | `declaration-track:35f3eb070a34bb75b714d493605fd16c6ae7ae3dc8a809477d65feae49ba23e3` |
| 46 | `theorem` | [closure_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/closure-eq--03b3a08a16eb712600a59022.md) | 420 | `result-track:03b3a08a16eb712600a590228eea6a4b2469da033700193b192ddb9c6e74680a` |
| 47 | `theorem` | [closure_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/closure-empty--c5fa0f2fe0e1939cf4b19671.md) | 426 | `result-track:c5fa0f2fe0e1939cf4b19671df10a3763cf32c0eaf24a890240dcdcc91d94948` |
| 48 | `theorem` | [closure_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/closure-univ--c9865e4e4a1a2933b6e2f830.md) | 432 | `result-track:c9865e4e4a1a2933b6e2f8304c11d7b8607984f7a705d13476e972e24943dae2` |
| 49 | `theorem` | [closure_union](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/closure-union--186d74fc44cbcb4945bf8d58.md) | 438 | `result-track:186d74fc44cbcb4945bf8d58ad7946c26af48193146d6a8f4dabf38995c7e1a1` |
| 50 | `theorem` | [closure_iUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/closure-iunion--bcb7e42cfd4b5cbe21f8f284.md) | 444 | `result-track:bcb7e42cfd4b5cbe21f8f284d3748f7aa421541ac11b47017b48703f20978305` |
| 51 | `theorem` | [closure_singleton_le_iff_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/closure-singleton-le-iff-mem--ea75c6460ff3bd47902f9ad9.md) | 450 | `result-track:ea75c6460ff3bd47902f9ad9d15bde368e6ba6bf38599b5e179614ee4c76e471` |
| 52 | `theorem` | [mem_iSup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/mem-isup--1e4270f5abe38f4b24cb5b17.md) | 456 | `result-track:1e4270f5abe38f4b24cb5b17bd97f7e1f26aeb903b0241393e874ae7a81442b9` |
| 53 | `theorem` | [iSup_eq_closure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/isup-eq-closure--abf28419ebb634c04bdb3fc5.md) | 464 | `result-track:abf28419ebb634c04bdb3fc53c38e9a64f34c3a38b266f07996a2a46a7a9fe4e` |
| 54 | `def` | [eqLocus](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/eqlocus--e7adf1c171cd67ef2c417253.md) | 480 | `declaration-track:e7adf1c171cd67ef2c417253c746b5cc52212b9f432195e1764e4d1473f9783f` |
| 55 | `theorem` | [eqOn_closure](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/eqon-closure--bd7d2052c764360f44d3d622.md) | 489 | `result-track:bd7d2052c764360f44d3d622736c8435a82eb672752d1e245b78407a8754efb3` |
| 56 | `theorem` | [eq_of_eqOn_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/eq-of-eqon-top--0b018fa764d2dbb9335be71d.md) | 496 | `result-track:0b018fa764d2dbb9335be71d4fe349f778b936f7a55dcbb621f60bbd59f83fb5` |
| 57 | `theorem` | [eq_of_eqOn_dense](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/eq-of-eqon-dense--d7d736e4047a2016ada087c9.md) | 502 | `result-track:d7d736e4047a2016ada087c9cb496487a353eb1cf46c0711ac56b31cb7f38648` |
| 58 | `def` | [ofDense](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/ofdense--9c53399485d73513544c471a.md) | 522 | `declaration-track:9c53399485d73513544c471ade4c72f5e6a4bee9565e33bcae3c22d6a7418937` |
| 59 | `theorem` | [coe_ofDense](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2faf6e8099950b9bfdd22d54abba98106b7ce6b1368ca4ab1b5adc1096b9f191.lean/declarations/coe-ofdense--1b529d0854001f00b271b6df.md) | 538 | `result-track:1b529d0854001f00b271b6df2c442c0f9643450aef06059bed14f278ae7c61eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
