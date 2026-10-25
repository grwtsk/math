# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoadDynlib.Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a29e581680979ed0009dd179d0f6471b1cff08c4",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a29e581680979ed0009dd179d0f6471b1cff08c4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.TakeDrop` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.ToString.Macro` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `opaque` | [DynlibImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean/declarations/dynlibimpl--ea9abe7b6e777965fd8ac4c4.md) | 17 | `declaration-track:ea9abe7b6e777965fd8ac4c476bd00c0821d108d763a234ff451f041a437648f` |
| 2 | `def` | [Dynlib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean/declarations/dynlib--877f2034adc13cf5df5d9c52.md) | 19 | `declaration-track:877f2034adc13cf5df5d9c522d9c90f4c5a5d03103942256ec8596e75c61ce2f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean/declarations/instance--f4ec937f70ea2322a4f4afc1.md) | 20 | `declaration-track:f4ec937f70ea2322a4f4afc1863262a59090c285428815f799d79bd2312f39b8` |
| 4 | `opaque` | [Dynlib.SymbolImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean/declarations/dynlib-symbolimpl--cefeab13303d5eae57877bb7.md) | 22 | `declaration-track:cefeab13303d5eae57877bb75ae37f37d021c3afed343c42645625af55221033` |
| 5 | `def` | [Dynlib.Symbol](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean/declarations/dynlib-symbol--762fd20887fe76aaba07a3a6.md) | 24 | `declaration-track:762fd20887fe76aaba07a3a6e1d100ec94bf24a8d2e88a06501adc95c5bcaf43` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean/declarations/instance--a988e1017c158651659502a5.md) | 25 | `declaration-track:a988e1017c158651659502a5fbe440262ccdf516df3a3f044a2de884c501df2d` |
| 7 | `opaque` | [Dynlib.load](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean/declarations/dynlib-load--7e33093d8916985bb5ab1618.md) | 34 | `declaration-track:7e33093d8916985bb5ab1618a817a2ad06c5b3b8ec36ad6adb0c8c81a8fdd645` |
| 8 | `opaque` | [Dynlib.get?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean/declarations/dynlib-get--57273e0b9e48b1261766a934.md) | 38 | `declaration-track:57273e0b9e48b1261766a934cb95c2c11d1da74a78f32b43fec112c590d5c485` |
| 9 | `opaque` | [Dynlib.Symbol.runAsInit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean/declarations/dynlib-symbol-runasinit--7f5b2bd7bbc56c8d4c03465d.md) | 54 | `declaration-track:7f5b2bd7bbc56c8d4c03465d9ab89d18d67b5c3836093de80213e9d6e599df18` |
| 10 | `def` | [loadDynlib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean/declarations/loaddynlib--d1a04a2c53a6621482549e7d.md) | 67 | `declaration-track:d1a04a2c53a6621482549e7db13dd5622251be81670283f3ce0cfeb68173b5d3` |
| 11 | `def` | [loadPlugin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoadDynlib/Varianteb440396160296adc1c2fde044d0fcb87cf09e0b9874fe0afeebd414d4ce488d.lean/declarations/loadplugin--cdb3437ea2cf030b69270a13.md) | 95 | `declaration-track:cdb3437ea2cf030b69270a134b6d1ef98a5e9ddee48db30fa375ece1cc824aeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
