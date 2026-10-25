# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PostconditionMonad.Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83c16ebfac82c6da5b0b52733b17b348fe875dbc",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83c16ebfac82c6da5b0b52733b17b348fe875dbc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Subtype.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Init.PropLemmas` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PostconditionT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont--e134719709b68687682a0f2b.md) | 42 | `declaration-track:e134719709b68687682a0f2b396787d1d584e4c1446ea63edb7b87f0c86b8636` |
| 2 | `def` | [PostconditionT.lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-lift--24afbcf2b2e723236448b550.md) | 62 | `declaration-track:24afbcf2b2e723236448b550ff884de6f6e66748eddab3fe941a39abefe745fc` |
| 3 | `def` | [PostconditionT.attachLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-attachlift--b9a91fcdc26f2166ed502087.md) | 67 | `declaration-track:b9a91fcdc26f2166ed50208778628651f87a669f1b33a9f9eb92e7ec03bb89a0` |
| 4 | `def` | [PostconditionT.pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-pure--62f53cabd29c285ee9ec67b8.md) | 72 | `declaration-track:62f53cabd29c285ee9ec67b86eafa015e5fa97d1a95c844a1be23bbcf6a3345c` |
| 5 | `def` | [PostconditionT.liftWithProperty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-liftwithproperty--392c0a39b5ee8a08843861c6.md) | 80 | `declaration-track:392c0a39b5ee8a08843861c696c36409d6312460bc925ca227bf9631ebbadf1b` |
| 6 | `def` | [PostconditionT.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-map--39e0d42024f0533f6bb7a3b4.md) | 92 | `declaration-track:39e0d42024f0533f6bb7a3b45e166fbfc481130b09632117b3e9a3a9234acd25` |
| 7 | `def` | [PostconditionT.bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-bind--fbace25859110c4ffb9abdb6.md) | 102 | `declaration-track:fbace25859110c4ffb9abdb6168b595d27e947e5f392a85102c1685a60958c2c` |
| 8 | `def` | [PostconditionT.pbind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-pbind--068ed7abc557e9e42cfafdbb.md) | 113 | `declaration-track:068ed7abc557e9e42cfafdbb678ac45bba7f994f0df25cc845398054108731d3` |
| 9 | `def` | [PostconditionT.liftMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-liftmap--c7ce828a003b2a9694042013.md) | 122 | `declaration-track:c7ce828a003b2a9694042013efc0b25534c8dc0a3bc13b110aa0f4ac6f033a79` |
| 10 | `def` | [PostconditionT.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-run--58f21481dcdaa7f18c4c076e.md) | 130 | `declaration-track:58f21481dcdaa7f18c4c076ec8d435b9fdddf4ff391816e4d98914633a15d13d` |
| 11 | `theorem` | [PostconditionT.run_eq_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-run-eq-map--cee43467ee14a1a70f06d1e5.md) | 134 | `result-track:cee43467ee14a1a70f06d1e5486ec00a69c53b2c9e8ca6f2a72ad1b72f21c5b4` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/instance--f2ab7fd3ecd164e813d45e28.md) | 139 | `declaration-track:f2ab7fd3ecd164e813d45e2897108603ecab90769e5dd3866bf4428bd49a2188` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/instance--31f61e98493299292150c694.md) | 142 | `declaration-track:31f61e98493299292150c694d20c5e273a84d50f526ef63d3b8700049c73a9f7` |
| 14 | `theorem` | [PostconditionT.pure_eq_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-pure-eq-pure--af1a081938be6264da815bb5.md) | 146 | `result-track:af1a081938be6264da815bb511b83932c0fc5680813f1559dd46a480971d2c07` |
| 15 | `theorem` | [PostconditionT.property_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-property-pure--c7d23f05f87fe1584d0ab4a1.md) | 151 | `result-track:c7d23f05f87fe1584d0ab4a1d05d57bba5aac78aa5197fa4b5a1122bf5c3aafa` |
| 16 | `theorem` | [PostconditionT.operation_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-operation-pure--116338d3d43c30e06b5cb932.md) | 157 | `result-track:116338d3d43c30e06b5cb93218a93999714366e641df81aed309d0a6baa7bb05` |
| 17 | `theorem` | [PostconditionT.ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-ext--bf4478e8237b912292aceaf9.md) | 162 | `result-track:bf4478e8237b912292aceaf9acb074a5798286f10e781b8cae8a6688040cdaf7` |
| 18 | `theorem` | [PostconditionT.ext_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-ext-iff--71b124631df2ca2543e39d6a.md) | 169 | `result-track:71b124631df2ca2543e39d6a35a6e9e9afe453c5ea17d97b818a8fa12046590a` |
| 19 | `theorem` | [PostconditionT.map_eq_pure_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-map-eq-pure-bind--ad7935974c3f0e0a794962a4.md) | 179 | `result-track:ad7935974c3f0e0a794962a481006e543bacade3e1ce10624d54d56e39c06ca7` |
| 20 | `theorem` | [PostconditionT.pure_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-pure-bind--4ed245574ff262bf131aa053.md) | 185 | `result-track:4ed245574ff262bf131aa053720a16a64f47c8a074a094850d230a116a025542` |
| 21 | `theorem` | [PostconditionT.bind_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-bind-pure--136604c6e7d72b8d5e75f0c9.md) | 191 | `result-track:136604c6e7d72b8d5e75f0c9558051338d05080f114734e601dbb998640f252e` |
| 22 | `theorem` | [PostconditionT.bind_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-bind-assoc--389a4b9aa59902dc32f048c9.md) | 197 | `result-track:389a4b9aa59902dc32f048c91dd5811fcb836def92e08eb0c6bc658a98590b2d` |
| 23 | `theorem` | [PostconditionT.map_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-map-pure--10b3298052473b6b6372170c.md) | 211 | `result-track:10b3298052473b6b6372170ca813b4b654eea26c7deff1c8c4fc2466ed437566` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/instance--071a929ec587b7098330503a.md) | 216 | `declaration-track:071a929ec587b7098330503a413013572f78ab7c4148e33e418c4aca0c8ec218` |
| 25 | `theorem` | [PostconditionT.property_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-property-map--f6448aa6228bf8722682fda9.md) | 229 | `result-track:f6448aa6228bf8722682fda95cc6766e719d38a8e0ca2bd9798eff0e6cfd5087` |
| 26 | `theorem` | [PostconditionT.operation_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-operation-map--e8ade86e81c22fc1d4c2a675.md) | 240 | `result-track:e8ade86e81c22fc1d4c2a675eb6827b9c136fd43a90ccc6ff9bcb6fd84fec297` |
| 27 | `theorem` | [PostconditionT.operation_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-operation-bind--ef399412d745061c5507620f.md) | 247 | `result-track:ef399412d745061c5507620f31ce8202a99692c166666d3b228a8f45fd713af0` |
| 28 | `theorem` | [PostconditionT.operation_bind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-operation-bind--3e1914e83a50e4fe01cbf92f.md) | 254 | `result-track:3e1914e83a50e4fe01cbf92fa4a7eaa1f64b28d271577cf36f671be4f71af292` |
| 29 | `theorem` | [PostconditionT.operation_eq_map_mk_operation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-operation-eq-map-mk-operation--e69e1c345f486c7675aebceb.md) | 261 | `result-track:e69e1c345f486c7675aebceba38ec4b155ea5d04226e335cfc9be4c151cefd0b` |
| 30 | `theorem` | [PostconditionT.operation_bind_eq_operation_bind_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-operation-bind-eq-operation-bind-mk--b171a49daa23747d21523b90.md) | 266 | `result-track:b171a49daa23747d21523b902aaccec57416768156ccc82f13677dd4d1cef9a1` |
| 31 | `theorem` | [PostconditionT.run_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-run-bind--66d6da576f23a47d5d27458c.md) | 272 | `result-track:66d6da576f23a47d5d27458c7c6012f8d35a2ab1c5764691b9c67bd59f3fc949` |
| 32 | `theorem` | [PostconditionT.run_bind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-run-bind--bd11bbc40ff43072fc500413.md) | 278 | `result-track:bd11bbc40ff43072fc50041329d94aa63d03d2d1d86ccd90f466da7d4030bb48` |
| 33 | `theorem` | [PostconditionT.run_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-run-pure--851fab124b7066892c093307.md) | 284 | `result-track:851fab124b7066892c093307d9fc2dc2d1448dd946b58dc725d91d887775b563` |
| 34 | `theorem` | [PostconditionT.property_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-property-lift--6bc688b34aca6504b45e7948.md) | 290 | `result-track:6bc688b34aca6504b45e79486bda1ebe6d4ed7b49ef1c6be54becdd42ac01095` |
| 35 | `theorem` | [PostconditionT.operation_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-operation-lift--4ca7bc852a3410d8e66b6d4f.md) | 295 | `result-track:4ca7bc852a3410d8e66b6d4f128728f416f46f8dac0e930574abdf2522fa40d5` |
| 36 | `theorem` | [PostconditionT.run_attachLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-run-attachlift--4e2bc078573495db3576933b.md) | 301 | `result-track:4e2bc078573495db3576933b0f3dc0d815a013305d9ae49f6ca04a893d731aea` |
| 37 | `theorem` | [PostconditionT.operation_attachLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-operation-attachlift--8c2a144efffed1425f2fede0.md) | 307 | `result-track:8c2a144efffed1425f2fede044804961ef939f2391b3e2445e6660aa7234f8f5` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/instance--fa6ffecb3b261d461b71c89e.md) | 312 | `declaration-track:fa6ffecb3b261d461b71c89e6fbb262d90d1e78436db62b8399fdc202e817a98` |
| 39 | `instance` | [PostconditionT.instLawfulMonadLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variantf6347d5a382be6837f77ceef5a0610a911fb4991f7088b916fae8a9a32c2bc5a.lean/declarations/postconditiont-instlawfulmonadlift--7edebc1b13a0f43fbf4671f1.md) | 316 | `declaration-track:7edebc1b13a0f43fbf4671f1440277b1020d07847d2abe2e1daaded71ac4bde1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
