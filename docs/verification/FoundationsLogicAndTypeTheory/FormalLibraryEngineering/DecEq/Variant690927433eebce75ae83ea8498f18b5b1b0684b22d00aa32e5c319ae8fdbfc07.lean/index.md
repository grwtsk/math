# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecEq.Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c509e8f588d75bd6f9a06059aabafc1d9a54db23",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c509e8f588d75bd6f9a06059aabafc1d9a54db23`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Inductive` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Util` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.NatTable` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.CtorIdx` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.CasesOnSameCtor` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.SameCtorUtils` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Array.OfFn` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkDecEqHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean/declarations/mkdeceqheader--876e1e29ad67ac09b6ba9f6f.md) | 31 | `declaration-track:876e1e29ad67ac09b6ba9f6f0bc11a3cc995ad8422d9e08f181c270b42383e03` |
| 2 | `def` | [mkMatchOld](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean/declarations/mkmatchold--143540cbf29a0d338ee87e79.md) | 34 | `declaration-track:143540cbf29a0d338ee87e79f38e667a10cf16609e9cb8c788813a0dbf04eb11` |
| 3 | `def` | [mkMatchNew](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean/declarations/mkmatchnew--9319a3ba60e7904346cb6c5e.md) | 108 | `declaration-track:9319a3ba60e7904346cb6c5ea51a27ecb8aef909c77b655df29e6b7f567b982d` |
| 4 | `def` | [mkMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean/declarations/mkmatch--9cf22aef223e7f374b452b4a.md) | 174 | `declaration-track:9cf22aef223e7f374b452b4aece8be66acf55114716a947fdc6f6c7c5a2fa135` |
| 5 | `def` | [mkAuxFunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean/declarations/mkauxfunction--83fa46a1a5188aefdd1afd66.md) | 180 | `declaration-track:83fa46a1a5188aefdd1afd66d14beef188e106603ea71fe5122e0fbb85f52eec` |
| 6 | `def` | [mkAuxFunctions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean/declarations/mkauxfunctions--f49fe54200c3839cb3ebef79.md) | 193 | `declaration-track:f49fe54200c3839cb3ebef79fed379cd0fa9d93d74fe5c7c8303f75dcf1f692b` |
| 7 | `def` | [mkDecEqCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean/declarations/mkdeceqcmds--0d1a9b24ab459af964a8e11d.md) | 201 | `declaration-track:0d1a9b24ab459af964a8e11d49070997c1300beba8cfb314d3ec10f683cdf437` |
| 8 | `def` | [mkDecEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean/declarations/mkdeceq--1a208c40f5e53b403ca06345.md) | 209 | `declaration-track:1a208c40f5e53b403ca06345e17d529875edc712cfc66edf0eb63e170c220ed6` |
| 9 | `def` | [mkEnumOfNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean/declarations/mkenumofnat--49791460e988163c77f94da0.md) | 222 | `declaration-track:49791460e988163c77f94da0064bb66f4d77a5c63273c91f0cf4036003b2613a` |
| 10 | `def` | [mkEnumOfNatThm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean/declarations/mkenumofnatthm--f9d2131272019aa21e411902.md) | 239 | `declaration-track:f9d2131272019aa21e411902c62c1ecb2c48de23c5e0b9c8aedd186a9716044e` |
| 11 | `def` | [mkDecEqEnum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean/declarations/mkdeceqenum--9b708aa8ce1d771777c67b1e.md) | 264 | `declaration-track:9b708aa8ce1d771777c67b1e3191515726eb726dbf4a462579eb5541babb75d5` |
| 12 | `def` | [mkDecEqInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean/declarations/mkdeceqinstance--bc0709b19612bd4233109e6f.md) | 280 | `declaration-track:bc0709b19612bd4233109e6f2a03b5bb99bbc580e3346f4c6c1eb2def6b68c8e` |
| 13 | `def` | [mkDecEqInstanceHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean/declarations/mkdeceqinstancehandler--0d1f1796b275dfb4b85cd202.md) | 288 | `declaration-track:0d1f1796b275dfb4b85cd202b5c217db8b7ecb19a219d73af586b570427ddd8e` |
| 14 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant690927433eebce75ae83ea8498f18b5b1b0684b22d00aa32e5c319ae8fdbfc07.lean/declarations/builtin-initialize--ccf04371c919d51789800019.md) | 291 | `declaration-track:ccf04371c919d51789800019bc45f9fe192cd9776eeeaced4a64fba53899db9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
