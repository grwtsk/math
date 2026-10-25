# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Specialize.Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "744889b1f1b063ca4b83b2d59f4bbd45a923754c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `744889b1f1b063ca4b83b2d59f4bbd45a923754c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.LCNF.Simp` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.ToExpr` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.Level` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.Closure` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Transform` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Cache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/cache--cf7067b763efb97aa3dd1a44.md) | 28 | `declaration-track:cf7067b763efb97aa3dd1a44a0f1cfc43f6aa0cc11a8e029f5382dd78d3edc4e` |
| 2 | `structure` | [CacheEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/cacheentry--ae67ebf07086b63d5346bba7.md) | 30 | `declaration-track:ae67ebf07086b63d5346bba7b0eb92547c5209a6daf2b30a8a35c97b8169f614` |
| 3 | `def` | [addEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/addentry--72a4872d07bc806e2af12c17.md) | 35 | `declaration-track:72a4872d07bc806e2af12c17a3d01a2c62a65c46e5b030b0b2ad779153113541` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/builtin-initialize--835bed3712ca7c75ae49dc38.md) | 38 | `declaration-track:835bed3712ca7c75ae49dc38265129915a46942d288971780459766448439c90` |
| 5 | `def` | [cacheSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/cachespec--06b963cfcffb6280e665c4c3.md) | 49 | `declaration-track:06b963cfcffb6280e665c4c32726eaaf1e17559918d15f7d74c8137b07e6dac0` |
| 6 | `def` | [findSpecCache?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/findspeccache--3facf4be3bce3491175b3892.md) | 52 | `declaration-track:3facf4be3bce3491175b38924bdc98a5d4745503956c130788fb72a5e4321e77` |
| 7 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/context--efe7975cb610a591ce03b2c7.md) | 55 | `declaration-track:efe7975cb610a591ce03b2c74ba2b6d975c5d04eba4d6448931c66461aa6c6c7` |
| 8 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/state--2cb0d2822a28695497bf04b6.md) | 71 | `declaration-track:2cb0d2822a28695497bf04b683fd48b811f372dd3679580ca010bfa00ae86b94` |
| 9 | `abbrev` | [SpecializeM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/specializem--31f36c7533e97df92de07cef.md) | 96 | `declaration-track:31f36c7533e97df92de07cef2cfa104c869dd49f02c680072e347e7319229f08` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/instance--42385280f8aa236870cc81d6.md) | 98 | `declaration-track:42385280f8aa236870cc81d69cce7a1b689a195f4e4c3e57308013d1de95556f` |
| 11 | `def` | [isGround](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/isground--6596e96aecf4e3204fc08355.md) | 106 | `declaration-track:6596e96aecf4e3204fc08355bfbd0832208c1678113b0d7514d5988e80cae896` |
| 12 | `def` | [withLetDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/withletdecl--4d46bc8a9c11a01bf2ae57d5.md) | 110 | `declaration-track:4d46bc8a9c11a01bf2ae57d5d18947625e2db16ddf7ecf4df516fdb7594ac18f` |
| 13 | `def` | [withFunDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/withfundecl--d2da10b13d9e4fbe71db287e.md) | 134 | `declaration-track:d2da10b13d9e4fbe71db287e337fb70a95efeebaca6cc769861ed31dd29fb1b5` |
| 14 | `def` | [collect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/collect--9f04ad2d503bc5b5bdb6a652.md) | 202 | `declaration-track:9f04ad2d503bc5b5bdb6a652e9fa1c6a2e40c3c694c7dc010c8ca77df86fc027` |
| 15 | `def` | [shouldSpecialize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/shouldspecialize--6b79a3a2374ba9b0cc154707.md) | 227 | `declaration-track:6b79a3a2374ba9b0cc1547071e5b87c20f3981b1d7907951186a4ad2b4eafc48` |
| 16 | `def` | [expandCodeDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/expandcodedecls--e71ef74a9f73cc4c64ae803a.md) | 275 | `declaration-track:e71ef74a9f73cc4c64ae803a36065a92cf406869ec9b7275f7e448b27e2f59d1` |
| 17 | `def` | [mkKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/mkkey--61031ca621deebefc62b20fa.md) | 296 | `declaration-track:61031ca621deebefc62b20fa7ca4a5ab54f9598182c01f869c2f4171a8d199d6` |
| 18 | `def` | [mkSpecDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/mkspecdecl--0f39ab714bd13e58027b6596.md) | 320 | `declaration-track:0f39ab714bd13e58027b6596fa6a68c4b92e74227d9278ae84e14fe1efde4302` |
| 19 | `def` | [getRemainingArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/getremainingargs--fcc7c0557d7bd9a28ce0af67.md) | 369 | `declaration-track:fcc7c0557d7bd9a28ce0af67cd71797156e3453db0d5bfa32c7d2041677fe3f8` |
| 20 | `def` | [paramsToGroundVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/paramstogroundvars--c348d2917b8967554a0b0b0b.md) | 376 | `declaration-track:c348d2917b8967554a0b0b0bc1502dde82fdb0268cc405c4dc0d7da2ad9e5242` |
| 21 | `def` | [getSpecEntry?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/getspecentry--5416fe157df953e157bfde3c.md) | 383 | `declaration-track:5416fe157df953e157bfde3c1fd2bab1a4ba7e192c41cbb937a68ead346aed95` |
| 22 | `def` | [markChanged](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/markchanged--1d9ff762961ce90779a5c776.md) | 390 | `declaration-track:1d9ff762961ce90779a5c77629c605f6a74f320dff4c60b3b2f773619d1b7399` |
| 23 | `def` | [resetChanged](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/resetchanged--5b56d9f3abf5c960311790b2.md) | 394 | `declaration-track:5b56d9f3abf5c960311790b20607f9dbfaa56beb1f1ba3adcfc52b6c08018c87` |
| 24 | `def` | [hasChanged](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/haschanged--02a19a46d0818f084ff55eca.md) | 398 | `declaration-track:02a19a46d0818f084ff55eca3c21913b95863c9050be9b682a62de7b9e052f65` |
| 25 | `def` | [specializeApp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/specializeapp--02fa00c0859edb3ff7da2615.md) | 406 | `declaration-track:02fa00c0859edb3ff7da2615e4a606737da00aa4b1e244d52da8574a645b562b` |
| 26 | `def` | [visitFunDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/visitfundecl--73f2efac027e1e78bbeddb42.md) | 456 | `declaration-track:73f2efac027e1e78bbeddb42fe24218e4eb9dcb52e48864683b3b532929d4b8b` |
| 27 | `def` | [visitCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/visitcode--fa5e2b76295fca3ee710cd8c.md) | 460 | `declaration-track:fa5e2b76295fca3ee710cd8cfb75f616d706a7ebb81d7bf55cd48668d8d941d4` |
| 28 | `def` | [specializeDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/specializedecl--75f096db3abe3f346966b613.md) | 490 | `declaration-track:75f096db3abe3f346966b61302ba7c4707bfcaae81b4f56f33b6a8e124379441` |
| 29 | `def` | [updateLocalSpecParamInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/updatelocalspecparaminfo--00d95a95fe0694cd2b9ffae8.md) | 507 | `declaration-track:00d95a95fe0694cd2b9ffae850db2a1c11008cd998d47c809c23523309e82c35` |
| 30 | `def` | [loop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/loop--2ba4fe387287f30b6e88a4fc.md) | 527 | `declaration-track:2ba4fe387287f30b6e88a4fc5c825104af9239fe606b94e9ce4701d7164d9d74` |
| 31 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/main--dce7aa465bc8ad5f4071aa50.md) | 558 | `declaration-track:dce7aa465bc8ad5f4071aa504334f2854a604e7db3d2d556309b183878e04fe3` |
| 32 | `def` | [specialize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/specialize--c6899b7fd940e252e1ddc596.md) | 565 | `declaration-track:c6899b7fd940e252e1ddc596e5f34d41761d6c4dabf551fce7c5cb6a596902cd` |
| 33 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant694641183a12678d28c525cce0a6f4983ecb5f3a561a4059a6b6efd364db8a88.lean/declarations/builtin-initialize--a08ba7a03f19a5cf14697a37.md) | 571 | `declaration-track:a08ba7a03f19a5cf14697a3793cb9b9672db1b0df695772b83fc8768b686468f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
