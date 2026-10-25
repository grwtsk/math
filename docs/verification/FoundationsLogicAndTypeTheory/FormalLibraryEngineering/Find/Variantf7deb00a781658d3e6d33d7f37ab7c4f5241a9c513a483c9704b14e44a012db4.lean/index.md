# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Find.Variantf7deb00a781658d3e6d33d7f37ab7c4f5241a9c513a483c9704b14e44a012db4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af12a88d91db7d1042c8f0c6158372afc20a7a1a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variantf7deb00a781658d3e6d33d7f37ab7c4f5241a9c513a483c9704b14e44a012db4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variantf7deb00a781658d3e6d33d7f37ab7c4f5241a9c513a483c9704b14e44a012db4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variantf7deb00a781658d3e6d33d7f37ab7c4f5241a9c513a483c9704b14e44a012db4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af12a88d91db7d1042c8f0c6158372afc20a7a1a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variantf7deb00a781658d3e6d33d7f37ab7c4f5241a9c513a483c9704b14e44a012db4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variantf7deb00a781658d3e6d33d7f37ab7c4f5241a9c513a483c9704b14e44a012db4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Cache` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [matchHyps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variantf7deb00a781658d3e6d33d7f37ab7c4f5241a9c513a483c9704b14e44a012db4.lean/declarations/matchhyps--b0f372dd0acd6e6e470c9510.md) | 31 | `declaration-track:b0f372dd0acd6e6e470c951003f2cecf88ffd2872955dc9e3a97815863443a14` |
| 2 | `def` | [isBlackListed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variantf7deb00a781658d3e6d33d7f37ab7c4f5241a9c513a483c9704b14e44a012db4.lean/declarations/isblacklisted--52e0b6c7c39df5e6ecd66390.md) | 43 | `declaration-track:52e0b6c7c39df5e6ecd66390c41b4a6d79590b131e36bfa3701223be729c937d` |
| 3 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variantf7deb00a781658d3e6d33d7f37ab7c4f5241a9c513a483c9704b14e44a012db4.lean/declarations/initialize--914cf921878b277a73e54caf.md) | 51 | `declaration-track:914cf921878b277a73e54caf867b0d50deab7298d0ff7e2a51a7d5c110c85630` |
| 4 | `def` | [findType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variantf7deb00a781658d3e6d33d7f37ab7c4f5241a9c513a483c9704b14e44a012db4.lean/declarations/findtype--7532567fa7294d7f370c847f.md) | 61 | `declaration-track:7532567fa7294d7f370c847fe1ae6a9a4c55369549ff70a9e3d30744a299bb6e` |
| 5 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variantf7deb00a781658d3e6d33d7f37ab7c4f5241a9c513a483c9704b14e44a012db4.lean/declarations/elab--8075b3b1712598c59a5289dc.md) | 97 | `declaration-track:8075b3b1712598c59a5289dccd96ab3c6278687a118f279ecde0470c97ec5cc8` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variantf7deb00a781658d3e6d33d7f37ab7c4f5241a9c513a483c9704b14e44a012db4.lean/declarations/elab--d11a78cb892199126cf761f7.md) | 124 | `declaration-track:d11a78cb892199126cf761f7353578d125571eb44c9d9979df40819d47096acf` |
| 7 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Find/Variantf7deb00a781658d3e6d33d7f37ab7c4f5241a9c513a483c9704b14e44a012db4.lean/declarations/elab--af5d0a5ca48d755f5c49083a.md) | 131 | `declaration-track:af5d0a5ca48d755f5c49083a4423668b5967b4c953163c0cfab67cdc70d78453` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
