# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4f1679dd43c735f0d3ac56170c267df79a2b7c6",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4f1679dd43c735f0d3ac56170c267df79a2b7c6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Countable.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Nat` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/instance--67ffe46142a78f021e1f66d1.md) | 23 | `declaration-track:67ffe46142a78f021e1f66d17010a707d081247761eb3c815fab42ea9a19ef52` |
| 2 | `theorem` | [countable_iff_nonempty_embedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/countable-iff-nonempty-embedding--4ff20a23eb0a2756de571878.md) | 34 | `result-track:4ff20a23eb0a2756de571878b7eaa8764a12b7476ef7676489f48ebb7b62790e` |
| 3 | `theorem` | [uncountable_iff_isEmpty_embedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/uncountable-iff-isempty-embedding--e0c46dc79256ef7949596c0e.md) | 37 | `result-track:e0c46dc79256ef7949596c0edaf9104438ae2d645e645f9f276754b76967ba08` |
| 4 | `theorem` | [nonempty_embedding_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/nonempty-embedding-nat--5e84c06afdb7fa6d755be1fd.md) | 40 | `result-track:5e84c06afdb7fa6d755be1fdcbbc3d10cc32bda7b96e8a81d6830f66aa4b9f8f` |
| 5 | `theorem` | [Function.Embedding.countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/function-embedding-countable--ae78ad6c7ad52abaf3fa2c75.md) | 43 | `result-track:ae78ad6c7ad52abaf3fa2c757b11f22b28cb9383bb35f597b957a47a0c61ac79` |
| 6 | `lemma` | [Function.Embedding.uncountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/function-embedding-uncountable--d627cb9f17f134e92fad2fe6.md) | 46 | `result-track:d627cb9f17f134e92fad2fe6a8a9a4d2d6e369d514fe090879cd630f05364d08` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/instance--d030989b9c58351f6a665342.md) | 59 | `declaration-track:d030989b9c58351f6a665342a5a7668f614916ec4c9e8faa2092d36ab590c960` |
| 8 | `instance` | [Sum.uncountable_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/sum-uncountable-inl--7de8e465e5d4c76f3fb7c66c.md) | 64 | `declaration-track:7de8e465e5d4c76f3fb7c66c3ec5d64f49cc1e036cd1bf02fa2e223bd5d6364f` |
| 9 | `instance` | [Sum.uncountable_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/sum-uncountable-inr--dfc28de9c39ad536d2757c5a.md) | 67 | `declaration-track:dfc28de9c39ad536d2757c5a69fa604970e82626a3dfd6e7cc19f2eacf6c247b` |
| 10 | `instance` | [Option.instCountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/option-instcountable--e30b34fcd9ae80ab10c5be32.md) | 70 | `declaration-track:e30b34fcd9ae80ab10c5be32021287ebe1374cb9df0976b21e21972c5c5379e5` |
| 11 | `instance` | [WithTop.instCountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/withtop-instcountable--eb3f3cbff038320f15620280.md) | 73 | `declaration-track:eb3f3cbff038320f15620280e70ffbde2be71f50e62320d6338d87771cebd0f0` |
| 12 | `instance` | [WithBot.instCountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/withbot-instcountable--2b055cfc2637c196466a4d18.md) | 74 | `declaration-track:2b055cfc2637c196466a4d18ae10bb20c9da3dc4535f47fadc29f6ca8e3e542e` |
| 13 | `instance` | [ENat.instCountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/enat-instcountable--8111f45c4e5cf9ad410d2e6d.md) | 75 | `declaration-track:8111f45c4e5cf9ad410d2e6d98d2f3be025367ea6da7b37849149b57908d611c` |
| 14 | `instance` | [Option.instUncountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/option-instuncountable--ac9efabe699cc6f77a8acaca.md) | 77 | `declaration-track:ac9efabe699cc6f77a8acaca31f7d44384eea38802f910238c1f4968469c7e51` |
| 15 | `instance` | [WithTop.instUncountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/withtop-instuncountable--615f9c5189e42199f381ff37.md) | 80 | `declaration-track:615f9c5189e42199f381ff3731b8a58972e60e08359251f32698d8acd497dfb6` |
| 16 | `instance` | [WithBot.instUncountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/withbot-instuncountable--43c9e117c4a5040edaf3a471.md) | 81 | `declaration-track:43c9e117c4a5040edaf3a4710fe0d24abc0db3438109e92a3c46cda7af19ea19` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/instance--3ed01fc8ff50d31852a8f167.md) | 83 | `declaration-track:3ed01fc8ff50d31852a8f1671bf5b6a4f74b957300ae1c79b424f86cee162ac5` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/instance--c404edcf699bdd15630d125b.md) | 88 | `declaration-track:c404edcf699bdd15630d125b0fae1fc9db6755700bc3c024e78d1df287a139a7` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/instance--3618fc89b8488f482ae23901.md) | 92 | `declaration-track:3618fc89b8488f482ae2390135e8ca2aa987ae4be66d1e17c3b4f3650ea9a9ec` |
| 20 | `lemma` | [countable_left_of_prod_of_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/countable-left-of-prod-of-nonempty--6a3411bb53378cffe51d8b19.md) | 96 | `result-track:6a3411bb53378cffe51d8b1995a329cd7829cb78c8e3fc505b778ac8c8da0999` |
| 21 | `lemma` | [countable_right_of_prod_of_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/countable-right-of-prod-of-nonempty--843fae20e07488c6dae05f5c.md) | 101 | `result-track:843fae20e07488c6dae05f5ce8cc739c96d08cfb58dd1855b2cb6d6c8e47c684` |
| 22 | `lemma` | [countable_prod_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/countable-prod-swap--3662f69d1481c4dbf70e68e5.md) | 106 | `result-track:3662f69d1481c4dbf70e68e51e566f67d8dca342ca1e18d432bce19a72631ce2` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/instance--152d095ea4fc3adad1e988c8.md) | 109 | `declaration-track:152d095ea4fc3adad1e988c8f98035a2758dc75dbb343c08024ec659e3aa8d5c` |
| 24 | `lemma` | [Sigma.uncountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/sigma-uncountable--bf47c15aebd3d36bbf449187.md) | 114 | `result-track:bf47c15aebd3d36bbf44918703cce4ecf10e91351f2d085838f65065c7be99d8` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/instance--89b842e31e76ccfbaa585c0f.md) | 117 | `declaration-track:89b842e31e76ccfbaa585c0f3984dbcd2d8508ceb2b2c77798b61b8e7279ca18` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/instance--b9dd77a529306d0beb6c3c45.md) | 120 | `declaration-track:b9dd77a529306d0beb6c3c45b1690385f469b260cc5e3fc8112881b5510279f4` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/instance--1f34e61df23c01c34ae64270.md) | 133 | `declaration-track:1f34e61df23c01c34ae642703f34f170358cad774bb457caef0cacb8cccc2d02` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/instance--171c68741b8b6ebdbe48a6a2.md) | 136 | `declaration-track:171c68741b8b6ebdbe48a6a2cd8a0a0b83492728cabda377fb2fc53b31ab870b` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/instance--e1bb488eb07d73019b7350ce.md) | 139 | `declaration-track:e1bb488eb07d73019b7350cef6e51580a9411de06cac8ea93e71020eaa92b211` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantadf27a8d03586012c0b1efb2ca908a08cf34c0048aea3db2857984a4bbad9c3b.lean/declarations/instance--8f9e884496c02262a7ac741a.md) | 142 | `declaration-track:8f9e884496c02262a7ac741abe068d80bb95ed8d5a17b7b62701e39c11ae9d5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
