# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoadDynlib.Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab372bed6ba2526fd9670bcc5bec69ec2a00d24e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab372bed6ba2526fd9670bcc5bec69ec2a00d24e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.TakeDrop` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.ToString.Macro` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `opaque` | [DynlibImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean/declarations/dynlibimpl--78f8c41d723ea9c1c8b2f90d.md) | 25 | `declaration-track:78f8c41d723ea9c1c8b2f90d5ee814b6437e52ef43ca5213a652a37ecf009373` |
| 2 | `def` | [Dynlib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean/declarations/dynlib--8d6d8ac9012df0cb841dd2c2.md) | 27 | `declaration-track:8d6d8ac9012df0cb841dd2c200b9388ae272f802e68bc297d9b69c610b04d71e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean/declarations/instance--bc9d25744b74cd6015681dba.md) | 28 | `declaration-track:bc9d25744b74cd6015681dba6b757ee7a6e3cb052889f93e10213c70631d19df` |
| 4 | `opaque` | [Dynlib.SymbolImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean/declarations/dynlib-symbolimpl--a0255300ae02453667c611bc.md) | 30 | `declaration-track:a0255300ae02453667c611bc6a385cfd60c74a568d208f48a23012442593b063` |
| 5 | `def` | [Dynlib.Symbol](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean/declarations/dynlib-symbol--47311a49fbebd06494531a15.md) | 32 | `declaration-track:47311a49fbebd06494531a156733a57ccc6dec0724292453745b82530871c059` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean/declarations/instance--f7103abd53e721b202fbc379.md) | 33 | `declaration-track:f7103abd53e721b202fbc379ebe7056215ca9eed4e942954a83cae2faa6397bc` |
| 7 | `opaque` | [Dynlib.load](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean/declarations/dynlib-load--55723059f9454381b22dd40f.md) | 42 | `declaration-track:55723059f9454381b22dd40f9b7770293fccec50678ee47ea6b91cef8117c35b` |
| 8 | `opaque` | [Dynlib.get?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean/declarations/dynlib-get--19e5a5dbc1ced9770a29af61.md) | 46 | `declaration-track:19e5a5dbc1ced9770a29af61d85e6cf5f6093e00fb154eff6162cc30706012b8` |
| 9 | `opaque` | [Dynlib.Symbol.runAsInit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean/declarations/dynlib-symbol-runasinit--4ac9909d63b8cdebab9718de.md) | 62 | `declaration-track:4ac9909d63b8cdebab9718ded25f654baff60bd656f683e6d33608f0a29565a3` |
| 10 | `def` | [loadDynlib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean/declarations/loaddynlib--5346c1645fbb0008e80bfff8.md) | 75 | `declaration-track:5346c1645fbb0008e80bfff804a6ae15ca0c30a5132a0bc481d81a2f9f393907` |
| 11 | `def` | [loadPlugin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Variant107fbc3919387f3d56dde3bde8fc652636ad6261c6897b32dadaa9d5ff8a73ca.lean/declarations/loadplugin--fe141228817881f2152523b8.md) | 103 | `declaration-track:fe141228817881f2152523b8ea7efaa627b7ee00c2863e1192caa1d6fd12acd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
