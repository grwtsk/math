# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HashSet.Variant1e73b0d73bca3d944590c3091e8d24e2cd70cce4d414b3df1aa8267aed02df5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a915451dafa2c7603a95a6445d37f8b66d6568f1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashSet/Variant1e73b0d73bca3d944590c3091e8d24e2cd70cce4d414b3df1aa8267aed02df5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashSet/Variant1e73b0d73bca3d944590c3091e8d24e2cd70cce4d414b3df1aa8267aed02df5e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashSet/Variant1e73b0d73bca3d944590c3091e8d24e2cd70cce4d414b3df1aa8267aed02df5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a915451dafa2c7603a95a6445d37f8b66d6568f1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashSet/Variant1e73b0d73bca3d944590c3091e8d24e2cd70cce4d414b3df1aa8267aed02df5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashSet/Variant1e73b0d73bca3d944590c3091e8d24e2cd70cce4d414b3df1aa8267aed02df5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Data.HashSet` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [anyM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashSet/Variant1e73b0d73bca3d944590c3091e8d24e2cd70cce4d414b3df1aa8267aed02df5e.lean/declarations/anym--793a4ed2163f509cd1b657e7.md) | 25 | `declaration-track:793a4ed2163f509cd1b657e711770bad5f6835d8ba93d39f7124530d4e2f79a9` |
| 2 | `def` | [any](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashSet/Variant1e73b0d73bca3d944590c3091e8d24e2cd70cce4d414b3df1aa8267aed02df5e.lean/declarations/any--f1235c474f337ed68fcdea60.md) | 35 | `declaration-track:f1235c474f337ed68fcdea60462fed260ce5ba6323df0688fd8dda1c576a531b` |
| 3 | `def` | [allM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashSet/Variant1e73b0d73bca3d944590c3091e8d24e2cd70cce4d414b3df1aa8267aed02df5e.lean/declarations/allm--43d89bd6fb391a0bad36812f.md) | 42 | `declaration-track:43d89bd6fb391a0bad36812f37650eced701862a326e3d07f22b9b9e8d138389` |
| 4 | `def` | [all](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashSet/Variant1e73b0d73bca3d944590c3091e8d24e2cd70cce4d414b3df1aa8267aed02df5e.lean/declarations/all--d1ea76252a084d713006da60.md) | 52 | `declaration-track:d1ea76252a084d713006da60359c3d6c6f634879e26ccb200d8d04d4e6ca42fb` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashSet/Variant1e73b0d73bca3d944590c3091e8d24e2cd70cce4d414b3df1aa8267aed02df5e.lean/declarations/instance--67e75269a54b03b068259b1c.md) | 55 | `declaration-track:67e75269a54b03b068259b1c84e11f7b0f035419d6fb49be4c3aeda89b3f8922` |
| 6 | `def` | [insert'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashSet/Variant1e73b0d73bca3d944590c3091e8d24e2cd70cce4d414b3df1aa8267aed02df5e.lean/declarations/insert--db04914d8da8700cead42902.md) | 63 | `declaration-track:db04914d8da8700cead42902da139d65d79904d37140188c6bb23de3631bd57c` |
| 7 | `def` | [ofArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashSet/Variant1e73b0d73bca3d944590c3091e8d24e2cd70cce4d414b3df1aa8267aed02df5e.lean/declarations/ofarray--c809bb577680f70da60c53ea.md) | 72 | `declaration-track:c809bb577680f70da60c53ea8393f2e5e5d0911bab65c818176e008b8ab75750` |
| 8 | `def` | [ofList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashSet/Variant1e73b0d73bca3d944590c3091e8d24e2cd70cce4d414b3df1aa8267aed02df5e.lean/declarations/oflist--7e67d77c9981b2099ba6a37a.md) | 79 | `declaration-track:7e67d77c9981b2099ba6a37a811f2dc28f46c7a15d1d9faa6b33d040433a49bd` |
| 9 | `def` | [merge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HashSet/Variant1e73b0d73bca3d944590c3091e8d24e2cd70cce4d414b3df1aa8267aed02df5e.lean/declarations/merge--cb16041dca146b3393ded9c0.md) | 86 | `declaration-track:cb16041dca146b3393ded9c028dd9ffff5a42200a8c2f0ef12d0a7b6b9de2e12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
