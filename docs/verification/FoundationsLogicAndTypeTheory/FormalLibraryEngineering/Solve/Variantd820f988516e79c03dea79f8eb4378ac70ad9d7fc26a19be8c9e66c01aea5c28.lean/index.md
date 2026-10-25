# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Solve.Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f28269f362e6f6f19645e8560a052fe9c02e9623",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f28269f362e6f6f19645e8560a052fe9c02e9623`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.InferType` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.InstantiateMVarsS` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SolveResult.StopReason](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/solveresult-stopreason--16387c3f913c42a3e472aa59.md) | 40 | `declaration-track:16387c3f913c42a3e472aa59b82188e0c0828af1c95e5a3e16cbbca4bea5f555` |
| 2 | `inductive` | [SolveResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/solveresult--3d9c8ce78bd7e5340b592ecb.md) | 54 | `declaration-track:3d9c8ce78bd7e5340b592ecb0c69d6521b699eaf19fe9c8d2fae0024f5d311be` |
| 3 | `def` | [isDuplicable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/isduplicable--c809f320c3625c12f9f4a90a.md) | 60 | `declaration-track:c809f320c3625c12f9f4a90af927e06ca61ee09e0c4393e8ca45c14ba987f512` |
| 4 | `def` | [forallIntro?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/forallintro--29e51aec0a51d032c9a00a35.md) | 67 | `declaration-track:29e51aec0a51d032c9a00a35bead3948e52d4e8c3c295268443790b2683050cf` |
| 5 | `def` | [throwIfUnsupportedJP](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/throwifunsupportedjp--bf3e9c87e09c36e6d07740ba.md) | 78 | `declaration-track:bf3e9c87e09c36e6d07740ba26acd0488f3ea3770ba527577c078f166d969ca6` |
| 6 | `def` | [targetLetIntro?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/targetletintro--e12344646450fa329342fa96.md) | 88 | `declaration-track:e12344646450fa329342fa969ca6ad4c6082848c5321d65be369754fba2e2599` |
| 7 | `def` | [tripleUnfold?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/tripleunfold--abb88cee8140082494830e49.md) | 99 | `declaration-track:abb88cee8140082494830e498430e66dc5799e1a1cf185884cb35c44e0854881` |
| 8 | `def` | [bareWPToLe?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/barewptole--23b70702040a868382fc7880.md) | 105 | `declaration-track:23b70702040a868382fc7880e1217456ca94ddee40e3f8f2203e1164cd579075` |
| 9 | `def` | [rfl?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/rfl--378383109ac3cc771bfdaed4.md) | 117 | `declaration-track:378383109ac3cc771bfdaed405857afe4fd0c9417c9b6850e4e9414f8cbbda60` |
| 10 | `def` | [liftedPreFor?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/liftedprefor--646142934c51854cd47ac8dc.md) | 124 | `declaration-track:646142934c51854cd47ac8dca1c7a1f5c4058a5c16025960747617c386a5cc05` |
| 11 | `def` | [liftedHyp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/liftedhyp--f1d7d00c3416346175ecb525.md) | 134 | `declaration-track:f1d7d00c3416346175ecb5258eb551040730b79d45154657e2ad8d6475cdbf1d` |
| 12 | `def` | [liftedHypBare?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/liftedhypbare--cae7d818499e6fa83f548ca0.md) | 145 | `declaration-track:cae7d818499e6fa83f548ca09c939bd2290b0e78ed298fe1b7b9c39710cf5ef2` |
| 13 | `def` | [stripMeetTopPre?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/stripmeettoppre--602a5d393bbae6ee49bcb20a.md) | 154 | `declaration-track:602a5d393bbae6ee49bcb20aca8fc85475b051dd80bf829293c07aa7c2945bee` |
| 14 | `def` | [ofPropPreIntro?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/ofproppreintro--7b30381514e7e85250325acf.md) | 164 | `declaration-track:7b30381514e7e85250325acfc7c2df00f6b41db0bef4acda5b391a4ecf3168b1` |
| 15 | `def` | [barePreIntro?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/barepreintro--b91ea20e8100730f94063df1.md) | 172 | `declaration-track:b91ea20e8100730f94063df185b44c22619af75478514217efcbe1be1f54fb69` |
| 16 | `def` | [normalizePreToTop?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/normalizepretotop--90109e02573f5280c94e2463.md) | 182 | `declaration-track:90109e02573f5280c94e2463bf6db25966ca9a40fcc5c79d7dfacf9ded4b1aca` |
| 17 | `def` | [normalizePre?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/normalizepre--f42ee5ce7822a5eed65ce580.md) | 197 | `declaration-track:f42ee5ce7822a5eed65ce580a1a30fb178eb6591f5c5d29f2e11ce4faaf68c1f` |
| 18 | `def` | [replaceProgDefEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/replaceprogdefeq--43e6d7727a9fe9a5db9ad4e9.md) | 211 | `declaration-track:43e6d7727a9fe9a5db9ad4e99f24edb5b02a33dbfad8bee18a7afbc361b947b1` |
| 19 | `def` | [wpConsumeMData?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/wpconsumemdata--a943a65400b00eee8710abca.md) | 222 | `declaration-track:a943a65400b00eee8710abca4588f930f2e6ea97822f350b3e3279b689a0eef3` |
| 20 | `def` | [wpLet?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/wplet--68b918823eb25f109fb2b03e.md) | 227 | `declaration-track:68b918823eb25f109fb2b03eeb53d91af7dfc3150ad199112e20b55df9662fcc` |
| 21 | `def` | [wpMatch?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/wpmatch--05b61eb4d6f69a99952495a5.md) | 252 | `declaration-track:05b61eb4d6f69a99952495a56206385112a4f486320d21bea9b04dab81286a91` |
| 22 | `def` | [wpFVarZeta?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/wpfvarzeta--3a103577dc93646b61d5322f.md) | 270 | `declaration-track:3a103577dc93646b61d5322ffd2e09fd8f7c62b1e5958774964ad514e74aa49b` |
| 23 | `def` | [wpHeadReduce?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/wpheadreduce--87dd257a53d93e61709f2c9e.md) | 280 | `declaration-track:87dd257a53d93e61709f2c9e354ac3ed5e807b3840daffbbc42ed3aae1503359` |
| 24 | `def` | [stopOrErrorOnMissingSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/stoporerroronmissingspec--79478423441e5440445fef56.md) | 291 | `declaration-track:79478423441e5440445fef5647417e8cab8ea2fa7e4e716a9b5feb44124d35d4` |
| 25 | `def` | [findSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/findspec--bb46fea388a8fa71fe1c576e.md) | 304 | `declaration-track:bb46fea388a8fa71fe1c576ed68658ef3d35215c41ebbf579e09eafff13ad9bc` |
| 26 | `def` | [applySpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/applyspec--1c01ac2fc2c13ee2531bc753.md) | 316 | `declaration-track:1c01ac2fc2c13ee2531bc75339b6279886c027d0b85eca7310bd90b7d0aa0b7e` |
| 27 | `def` | [matchesUntilPattern](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/matchesuntilpattern--5d77ecffef9cc98063cb9e09.md) | 341 | `declaration-track:5d77ecffef9cc98063cb9e0975598a84745bae76c191b32b71d7d58f0eb2d3d5` |
| 28 | `def` | [withLetDeclsDND](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/withletdeclsdnd--061fe6075b6d08ce0a27bc0e.md) | 351 | `declaration-track:061fe6075b6d08ce0a27bc0e9092bf7e3ad094492ac81be0ef63ebfc15dfeb08` |
| 29 | `def` | [elabFrame](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/elabframe--7c7a4f1525ef2d282dd81ffb.md) | 367 | `declaration-track:7c7a4f1525ef2d282dd81ffb278e6cd9dca1bccd28d8e20c3dae38f9ab7c48a2` |
| 30 | `def` | [matchFrame?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/matchframe--507ed7da96a3cb760ade541b.md) | 383 | `declaration-track:507ed7da96a3cb760ade541bca1612b06a65feceb2beae42db712ff42128f3c7` |
| 31 | `def` | [isFramedPost](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/isframedpost--1cf15faa611b6af6137a1631.md) | 404 | `declaration-track:1cf15faa611b6af6137a1631d4e6385f3f212351beb7b498906e8ff83313a7f4` |
| 32 | `def` | [isStructuralCombinator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/isstructuralcombinator--36094c624c4579bf9ead06d1.md) | 410 | `declaration-track:36094c624c4579bf9ead06d11ec2ab6135a81c6c3395451e3c66c0e15c445359` |
| 33 | `def` | [applyFrameRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/applyframerule--bb835d546cc5c18a55453208.md) | 420 | `declaration-track:bb835d546cc5c18a55453208d702814d28bac35f1bf7fb4938671f60eb53c063` |
| 34 | `def` | [specPreOf?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/specpreof--ed9204120eecd166891ddcbc.md) | 434 | `declaration-track:ed9204120eecd166891ddcbcf461b9a071eec450d805cfb5cf9cc96e1e8677c3` |
| 35 | `def` | [applyFrameOrSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/applyframeorspec--522eadb80518ba28c3ed7518.md) | 454 | `declaration-track:522eadb80518ba28c3ed7518de81cc300fb47c142e69067f57d42e658f3d813c` |
| 36 | `def` | [solve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Solve/Variantd820f988516e79c03dea79f8eb4378ac70ad9d7fc26a19be8c9e66c01aea5c28.lean/declarations/solve--f2dfd6170ff6528af3223991.md) | 510 | `declaration-track:f2dfd6170ff6528af3223991f76d8ed565f839e8ffd8dd56e7250ea26619990a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
