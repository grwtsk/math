# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilePath.Variant000dd350ee67eb3af5cd428efd3b38b40560d931cc84cd861b370d4dae7cae35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c0be0a9dce099058b06d4c5ce82c80639e2c77b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant000dd350ee67eb3af5cd428efd3b38b40560d931cc84cd861b370d4dae7cae35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant000dd350ee67eb3af5cd428efd3b38b40560d931cc84cd861b370d4dae7cae35.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant000dd350ee67eb3af5cd428efd3b38b40560d931cc84cd861b370d4dae7cae35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c0be0a9dce099058b06d4c5ce82c80639e2c77b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant000dd350ee67eb3af5cd428efd3b38b40560d931cc84cd861b370d4dae7cae35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant000dd350ee67eb3af5cd428efd3b38b40560d931cc84cd861b370d4dae7cae35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.TakeDrop` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.String.Modify` — import line 16; external provider; requires a separately pinned dependency.
- `Init.System.Platform` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [relPathFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant000dd350ee67eb3af5cd428efd3b38b40560d931cc84cd861b370d4dae7cae35.lean/declarations/relpathfrom--a606e0c941500c457f8c3df6.md) | 27 | `declaration-track:a606e0c941500c457f8c3df6db65ed313446a8b76e632b9f773bdcdcd565a961` |
| 2 | `def` | [mkRelPathString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant000dd350ee67eb3af5cd428efd3b38b40560d931cc84cd861b370d4dae7cae35.lean/declarations/mkrelpathstring--5dfa257375a471b45245aa0d.md) | 37 | `declaration-track:5dfa257375a471b45245aa0d1fc71f734ef96b21b5c3d406b92837a5db14171e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant000dd350ee67eb3af5cd428efd3b38b40560d931cc84cd861b370d4dae7cae35.lean/declarations/instance--25744709afc75f923b16f8af.md) | 43 | `declaration-track:25744709afc75f923b16f8af8a1c8595e678d0e198df7a3d05a087b52ba65b6e` |
| 4 | `def` | [joinRelative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant000dd350ee67eb3af5cd428efd3b38b40560d931cc84cd861b370d4dae7cae35.lean/declarations/joinrelative--3ce794e3e4a7284b9323e450.md) | 50 | `declaration-track:3ce794e3e4a7284b9323e45037b130119ec88f2823815d60eb785d16bcf735e3` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant000dd350ee67eb3af5cd428efd3b38b40560d931cc84cd861b370d4dae7cae35.lean/declarations/instance--82e2e89502e421674cf291f3.md) | 55 | `declaration-track:82e2e89502e421674cf291f33afc18bbe3dfff7c23653c4a4e459f32bcffd062` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant000dd350ee67eb3af5cd428efd3b38b40560d931cc84cd861b370d4dae7cae35.lean/declarations/instance--f0831e5839f4f1a07493dc6e.md) | 58 | `declaration-track:f0831e5839f4f1a07493dc6ea00c7b1eaa6d631f6c61be34e6df45661fcd4460` |
| 7 | `def` | [modOfFilePath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variant000dd350ee67eb3af5cd428efd3b38b40560d931cc84cd861b370d4dae7cae35.lean/declarations/modoffilepath--696623493ecd07db54629eb1.md) | 74 | `declaration-track:696623493ecd07db54629eb19c70f63149a5244352230e461c8dd6277347dd60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
