# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpleGroundExpr.Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c73f72919ec72d9f71678c83fa074470aaf6cd1e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c73f72919ec72d9f71678c83fa074470aaf6cd1e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.While` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SimpleGroundArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/declarations/simplegroundarg--c9cf21d455e762d2bef7fd4e.md) | 37 | `declaration-track:c9cf21d455e762d2bef7fd4e0a000aa55463156d8393ae4d8c2cbbab4140e71a` |
| 2 | `inductive` | [SimpleGroundExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/declarations/simplegroundexpr--5c9cdcd1ad52c97a9395a529.md) | 56 | `declaration-track:5c9cdcd1ad52c97a9395a529bbf5df17b678e1078ddc80f0e42eda0b611dc033` |
| 3 | `structure` | [SimpleGroundExtState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/declarations/simplegroundextstate--a2f30b78b2bc834f48275efd.md) | 92 | `declaration-track:a2f30b78b2bc834f48275efdf1b62369398dc7e6b8c3d94c243c8661cc9391b2` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/declarations/builtin-initialize--9984dbe57609a90e01d06ef1.md) | 97 | `declaration-track:9984dbe57609a90e01d06ef1195c9d682a714d793581ebdac13a56c71244cd9a` |
| 5 | `def` | [addSimpleGroundDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/declarations/addsimplegrounddecl--1bb401be124548274f90e8db.md) | 109 | `declaration-track:1bb401be124548274f90e8dbbd2a11a25e960a4a8120f3bfc99499c59f0d410c` |
| 6 | `def` | [getSimpleGroundExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/declarations/getsimplegroundexpr--ecffba9c79bf57a36b15b67a.md) | 117 | `declaration-track:ecffba9c79bf57a36b15b67a3a7e22c815f79abf22231260cfeb28fd7914ee4a` |
| 7 | `def` | [getSimpleGroundExprWithResolvedRefs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/declarations/getsimplegroundexprwithresolvedrefs--9b875e4691c9e754f291505e.md) | 124 | `declaration-track:9b875e4691c9e754f291505e3b9010926306620a808ee9324d7519b5652d3e7a` |
| 8 | `def` | [isSimpleGroundDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/declarations/issimplegrounddecl--3af43d6a28a8717ee69f748d.md) | 137 | `declaration-track:3af43d6a28a8717ee69f748dee2d2535b6bc01f247702553e4b2729fa7d71785` |
| 9 | `def` | [uint64ToByteArrayLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/declarations/uint64tobytearrayle--9820395c11aa0e49a2a403c6.md) | 140 | `declaration-track:9820395c11aa0e49a2a403c635c262c84d49d0a1b9e6564e4bdafd976365cd46` |
| 10 | `inductive` | [SimpleGroundValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/declarations/simplegroundvalue--70f7821c86c144bb5f254d1e.md) | 153 | `declaration-track:70f7821c86c144bb5f254d1ed66969a9c68332a278a4978ef569d2577b10b489` |
| 11 | `structure` | [DetectState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/declarations/detectstate--35c97f6432ae31936bb51d55.md) | 167 | `declaration-track:35c97f6432ae31936bb51d550ef5475cda7fb1f6753f352bd2457ee3c2e8178d` |
| 12 | `abbrev` | [DetectM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/declarations/detectm--49869a4faac35ed0b9f6bf19.md) | 170 | `declaration-track:49869a4faac35ed0b9f6bf19e811e6e4e1a6ba71ed2398f56ed3012db6877b74` |
| 13 | `def` | [compileToSimpleGroundExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/declarations/compiletosimplegroundexpr--3650cd733cee49a51f75ccea.md) | 184 | `declaration-track:3650cd733cee49a51f75cceae256ad3d3a69a1d3d34f01c13f847f3004ec6866` |
| 14 | `def` | [Decl.detectSimpleGround](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/declarations/decl-detectsimpleground--b73c65db7cc1b932dd3a3cc3.md) | 419 | `declaration-track:b73c65db7cc1b932dd3a3cc3c8ca892b787eac9ebc3c55d2fe698b9357f40933` |
| 15 | `def` | [detectSimpleGround](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/declarations/detectsimpleground--96adf8809224ed0e913f8130.md) | 426 | `declaration-track:96adf8809224ed0e913f813014a2b9981fc7f68483fedc1f22cc90b46d107b36` |
| 16 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variante329ca67c214a3fefd5027e7f88a0e9479d6dc955570057edee9ba859a690bde.lean/declarations/builtin-initialize--bd6a4509ae70e548572d582c.md) | 433 | `declaration-track:bd6a4509ae70e548572d582ce816fef8e975a62856aa29d487c302b096e82c01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
