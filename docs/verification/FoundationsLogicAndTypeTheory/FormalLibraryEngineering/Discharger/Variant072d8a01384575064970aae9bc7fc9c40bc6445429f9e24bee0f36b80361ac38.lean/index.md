# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Discharger.Variant072d8a01384575064970aae9bc7fc9c40bc6445429f9e24bee0f36b80361ac38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88c311b8df82f8c9b54d94d80b687020c81fdc57",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variant072d8a01384575064970aae9bc7fc9c40bc6445429f9e24bee0f36b80361ac38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variant072d8a01384575064970aae9bc7fc9c40bc6445429f9e24bee0f36b80361ac38.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variant072d8a01384575064970aae9bc7fc9c40bc6445429f9e24bee0f36b80361ac38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88c311b8df82f8c9b54d94d80b687020c81fdc57`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variant072d8a01384575064970aae9bc7fc9c40bc6445429f9e24bee0f36b80361ac38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variant072d8a01384575064970aae9bc7fc9c40bc6445429f9e24bee0f36b80361ac38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.AppBuilder` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DischargeResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variant072d8a01384575064970aae9bc7fc9c40bc6445429f9e24bee0f36b80361ac38.lean/declarations/dischargeresult--419a937d3933cce90029b86d.md) | 43 | `declaration-track:419a937d3933cce90029b86dddad1422bb513bc3459c15de1677d7cea7a6d1f2` |
| 2 | `abbrev` | [Discharger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variant072d8a01384575064970aae9bc7fc9c40bc6445429f9e24bee0f36b80361ac38.lean/declarations/discharger--057965740df03d0e41b7cb5b.md) | 59 | `declaration-track:057965740df03d0e41b7cb5bc1a0b416988e7edac4e51d0c6027f1230f001d10` |
| 3 | `def` | [resultToDischargeResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variant072d8a01384575064970aae9bc7fc9c40bc6445429f9e24bee0f36b80361ac38.lean/declarations/resulttodischargeresult--5d3c31190ad1a27690cfe586.md) | 61 | `declaration-track:5d3c31190ad1a27690cfe586a5016113bdb5fd89bad67aec4b7e9b22e1f3fa26` |
| 4 | `def` | [mkDischargerFromSimproc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variant072d8a01384575064970aae9bc7fc9c40bc6445429f9e24bee0f36b80361ac38.lean/declarations/mkdischargerfromsimproc--ce05d41367c27a2dc3a2e690.md) | 88 | `declaration-track:ce05d41367c27a2dc3a2e690b7f3e97d527a0f8fd60147956050b06134c3f163` |
| 5 | `def` | [dischargeSimpSelf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variant072d8a01384575064970aae9bc7fc9c40bc6445429f9e24bee0f36b80361ac38.lean/declarations/dischargesimpself--78a999b9b21ff5c36b52710b.md) | 104 | `declaration-track:78a999b9b21ff5c36b52710be5b8a10d44e97ba193ef7d612aa4cbf21dc06231` |
| 6 | `def` | [dischargeNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variant072d8a01384575064970aae9bc7fc9c40bc6445429f9e24bee0f36b80361ac38.lean/declarations/dischargenone--b50272044cc19e00f3017c3e.md) | 122 | `declaration-track:b50272044cc19e00f3017c3e7270bca195a0418a3bb1395067f60efd66c4da53` |
| 7 | `def` | [dischargeAssumption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variant072d8a01384575064970aae9bc7fc9c40bc6445429f9e24bee0f36b80361ac38.lean/declarations/dischargeassumption--75aa0b5d7a7f7a9337dbe5cd.md) | 129 | `declaration-track:75aa0b5d7a7f7a9337dbe5cd37f80e12035f7d4cb798e20479811d136b47beca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
