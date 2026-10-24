# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Defs.Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2683d7e82c0e34523cb1b1490774cd09d21ea380",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2683d7e82c0e34523cb1b1490774cd09d21ea380`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Notation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Functor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SProd` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Util.CompileInductive` — import line 9; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Lint.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Logic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/instance--9f9e36d0fac0c70593693048.md) | 29 | `declaration-track:9f9e36d0fac0c70593693048142336a86c92a00067fd418dc05418c299ae19f3` |
| 2 | `def` | [getI](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/geti--6c08c605a644097b4c68844e.md) | 34 | `declaration-track:6c08c605a644097b4c68844e7f16cdd9d6152e44000dd4d8eeb20cb126e6ca18` |
| 3 | `def` | [headI](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/headi--577f4067e9c7611651b56211.md) | 38 | `declaration-track:577f4067e9c7611651b56211514e5caf1624e7ee892335545b7c371b23583e98` |
| 4 | `theorem` | [headI_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/headi-nil--21ec6b0c6b1a451d83e4858a.md) | 42 | `result-track:21ec6b0c6b1a451d83e4858a197416966469efb17f009beb49e4630900ea1c93` |
| 5 | `theorem` | [headI_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/headi-cons--23309927c70acaeb95121dd3.md) | 43 | `result-track:23309927c70acaeb95121dd37872c376ec84fcea85eac82ee170c407a156c9d8` |
| 6 | `def` | [getLastI](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/getlasti--be294dba7c5faf222c7f2c62.md) | 46 | `declaration-track:be294dba7c5faf222c7f2c62b434476b66240118706453ee5ce9af1dc981f693` |
| 7 | `def` | [takeI](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/takei--c04b0db6093759d71190afe0.md) | 54 | `declaration-track:c04b0db6093759d71190afe044266f0cdef311b44f7bf861d1143581a7d9118e` |
| 8 | `def` | [findM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/findm--f04a07ff01c168a1b99c896a.md) | 59 | `declaration-track:f04a07ff01c168a1b99c896ab26ac0cf77680cf413e82a682d72879b7229f787` |
| 9 | `def` | [findM?'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/findm--ada8e8cffe35fbfa9b7dcd47.md) | 65 | `declaration-track:ada8e8cffe35fbfa9b7dcd471be5c06fde9280848e6e8ce4bd99775886960a5f` |
| 10 | `def` | [orM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/orm--fb8bc76260e205d28fa9729d.md) | 81 | `declaration-track:fb8bc76260e205d28fa9729dbc9da0dc9f1bd70f8fa7b019d07fb7d5c46568b8` |
| 11 | `def` | [andM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/andm--46574b814fb6adc0890cf8c7.md) | 87 | `declaration-track:46574b814fb6adc0890cf8c7278090ed8ae79aae9a859e90d56e73f0625f177c` |
| 12 | `def` | [foldlIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/foldlidxm--88793eecb169869fb3eb46d1.md) | 97 | `declaration-track:88793eecb169869fb3eb46d12de9c4f9601699e20b81e6c6afbf719706d92b15` |
| 13 | `def` | [foldrIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/foldridxm--07f3cc78061aaeb6fa78e144.md) | 105 | `declaration-track:07f3cc78061aaeb6fa78e144ed1c34303b88f516071df4258fae89198c8932ee` |
| 14 | `def` | [mapIdxMAux'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/mapidxmaux--1eaa545e86f0394a29ace53c.md) | 120 | `declaration-track:1eaa545e86f0394a29ace53c5da09c62aa985cc5e777aa4550f89c437e9330c3` |
| 15 | `def` | [mapIdxM'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/mapidxm--67457bf74377527fe049c1d4.md) | 126 | `declaration-track:67457bf74377527fe049c1d453d2a08e162811709fbe6c97f41bf81a338c140b` |
| 16 | `def` | [Forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/forall--753ec75d4bc4a16aa7700cdb.md) | 134 | `declaration-track:753ec75d4bc4a16aa7700cdb67dd14d35bb23641256305c8b4d5dcd4f3fb4dcb` |
| 17 | `def` | [permutationsAux2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/permutationsaux2--d070b93624e90ced3dfbfa17.md) | 150 | `declaration-track:d070b93624e90ced3dfbfa1796da61cdb2cdaf897ca709460dbeb0de61e1ea9e` |
| 18 | `def` | [permutationsAux.rec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/permutationsaux-rec--1f38727ed929428d2c3777f0.md) | 159 | `declaration-track:1f38727ed929428d2c3777f0f7615dc565b96991596a44a373bc8b438a3f9634` |
| 19 | `def` | [permutationsAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/permutationsaux--6274e62e73ebef06c280e26f.md) | 169 | `declaration-track:6274e62e73ebef06c280e26f46875983823dfbe8cedccb71a8093dbca899c147` |
| 20 | `def` | [permutations](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/permutations--05b72d39c174d9e67a5cefcb.md) | 178 | `declaration-track:05b72d39c174d9e67a5cefcba3334965f74f653edbfc4acabb2b4b0e16f7eb27` |
| 21 | `def` | [permutations'Aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/permutations-aux--ab17a92e1181d07e1b897797.md) | 193 | `declaration-track:ab17a92e1181d07e1b897797edfb59450b1a542752d23ec44234accc6fe3b7c4` |
| 22 | `def` | [permutations'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/permutations--56cf49e06dfcbb6e31541f3e.md) | 205 | `declaration-track:56cf49e06dfcbb6e31541f3e24114735520fda0a8938129697e900d0ef13a9db` |
| 23 | `def` | [extractp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/extractp--0037b9b1a19e32e0bf19076f.md) | 213 | `declaration-track:0037b9b1a19e32e0bf19076f80593d1c7ef0b8ff73e6a58444c089bb712d0807` |
| 24 | `instance` | [instSProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/instsprod--7465c3e50a8a8535e4a29f9e.md) | 224 | `declaration-track:7465c3e50a8a8535e4a29f9e65aef8146aa65ddc6ebcdb3388c8cf3ab350d82e` |
| 25 | `instance` | [decidableChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/decidablechain--8a94e222e746496ee35adc23.md) | 229 | `declaration-track:8a94e222e746496ee35adc235a102cb7346c79ce94d298b1b90501a72f6e6817` |
| 26 | `instance` | [decidableChain'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/decidablechain--c1c5aee665a40297bcf85292.md) | 236 | `declaration-track:c1c5aee665a40297bcf8529246cba0d8067d11f075036bed8620f3644c083ae6` |
| 27 | `def` | [dedup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/dedup--4e01bc1e7bbc55b3ffeba7df.md) | 248 | `declaration-track:4e01bc1e7bbc55b3ffeba7df69117c925fcb75fd74b106273f69c93e4fe6e432` |
| 28 | `def` | [destutter'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/destutter--361c860836d687d14090dd75.md) | 254 | `declaration-track:361c860836d687d14090dd758a1a05d9e6848e79fafabcb23c01ba519925ceb5` |
| 29 | `def` | [destutter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/destutter--2dcfc2d93f1ec00c2f18a8de.md) | 262 | `declaration-track:2dcfc2d93f1ec00c2f18a8dee24a74135cee8cda4d761c980b52cfb97a7d642e` |
| 30 | `def` | [chooseX](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/choosex--b7afa2cfac3cbedaac9ea8df.md) | 273 | `declaration-track:b7afa2cfac3cbedaac9ea8df709215acb4634ac1b9f1f1e1a215b8628f4e18a3` |
| 31 | `def` | [choose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/choose--44e8b4b9603121077ee06fa3.md) | 287 | `declaration-track:44e8b4b9603121077ee06fa374b78e96fb93ca74a8d98b71032cac697b4f68bc` |
| 32 | `def` | [mapDiagM'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/mapdiagm--2538d4a71486f7a94c2c8360.md) | 299 | `declaration-track:2538d4a71486f7a94c2c83609e3e25e4c91a08aa875b02d46d550441b384bfe6` |
| 33 | `def` | [map₂Left'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/map-left--571a0de11d3765eaf92734c7.md) | 321 | `declaration-track:571a0de11d3765eaf92734c7338b7360c192de6957ebacc5692e8fe31186c66f` |
| 34 | `def` | [map₂Right'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/map-right--d4b8e104ef31e254d1567aa6.md) | 339 | `declaration-track:d4b8e104ef31e254d1567aa62466c2e8c3745d8558dfe50e161d455651869d97` |
| 35 | `def` | [map₂Left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/map-left--0f7642dcf32822b7b9693d6b.md) | 356 | `declaration-track:0f7642dcf32822b7b9693d6be880dc557e49b63bf4fbfce6f78511ab1aa34e6d` |
| 36 | `def` | [map₂Right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/map-right--956bc4c35509b316aaa58a41.md) | 373 | `declaration-track:956bc4c35509b316aaa58a410fd6c4f1523922e7c15cd63bd6ebd0cc5e39e80a` |
| 37 | `def` | [mapAsyncChunked](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/mapasyncchunked--014c84a81a92ead2d902b4c4.md) | 379 | `declaration-track:014c84a81a92ead2d902b4c4da499a4d3b6aace2c606cf4019ce2f0702bda5a4` |
| 38 | `def` | [zipWith3](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/zipwith3--619fe20e2a2a750ae964099c.md) | 393 | `declaration-track:619fe20e2a2a750ae964099c5a3c4e184c4f9a4d1d1adbbf3640f63245683752` |
| 39 | `def` | [zipWith4](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/zipwith4--383376fa32787090ff450dd0.md) | 398 | `declaration-track:383376fa32787090ff450dd09737c291f1dadbd16d6610b5e77c7f9eee8538ee` |
| 40 | `def` | [zipWith5](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/zipwith5--a4a72b605bc2ada02d437e9b.md) | 403 | `declaration-track:a4a72b605bc2ada02d437e9bdce76b2ad587eb1ffad22176f999f07a11d6a800` |
| 41 | `def` | [replaceIf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/replaceif--89fb754fc02333eba5cda57d.md) | 410 | `declaration-track:89fb754fc02333eba5cda57d00f33927fd3101eb449a1753034046ea2b588cd8` |
| 42 | `def` | [iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/iterate--d92ba1c6790320d2309eeba5.md) | 418 | `declaration-track:d92ba1c6790320d2309eeba558c38e7c0dbff524399a7c36484619bf7c8aba28` |
| 43 | `def` | [iterateTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/iteratetr--b49c3123d44b7bac9921d41b.md) | 424 | `declaration-track:b49c3123d44b7bac9921d41b2fc588dbf6422b67005d9021d885ee2c8b0595cf` |
| 44 | `theorem` | [iterateTR_loop_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/iteratetr-loop-eq--f5c6d3016b901f7a30c33da8.md) | 434 | `result-track:f5c6d3016b901f7a30c33da807c81cbb2249195023fb6035e984840ee7761a45` |
| 45 | `theorem` | [iterate_eq_iterateTR](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/iterate-eq-iteratetr--a7f3aa26101f12e8cc81a655.md) | 439 | `result-track:a7f3aa26101f12e8cc81a6559016fc66d55efdb85c9043cd7b07391aa2dac54e` |
| 46 | `def` | [mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/mapaccumr--1253f9804471ca5bb8ae4e7f.md) | 446 | `declaration-track:1253f9804471ca5bb8ae4e7f4e971043482b053f47584dbf000645ccb6805fc4` |
| 47 | `theorem` | [length_mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/length-mapaccumr--6528a50b69b791eb0c844033.md) | 455 | `result-track:6528a50b69b791eb0c84403356667050731cc63f6f6a88404e6633a62925a1d2` |
| 48 | `def` | [mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/mapaccumr--ca22e944f2571bcda645a0d4.md) | 461 | `declaration-track:ca22e944f2571bcda645a0d4c1a4082abb970ed10eb8a283d14e584599dd07e5` |
| 49 | `theorem` | [length_mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant655286ba5f8b2be1aa9f194e80c1aea7086fa6528c82aabd95aeee29316f0856.lean/declarations/length-mapaccumr--d58b11d089aa0a9f88176851.md) | 471 | `result-track:d58b11d089aa0a9f88176851107cfc1e2e80d9e28574c4814590c81a15ca5896` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
