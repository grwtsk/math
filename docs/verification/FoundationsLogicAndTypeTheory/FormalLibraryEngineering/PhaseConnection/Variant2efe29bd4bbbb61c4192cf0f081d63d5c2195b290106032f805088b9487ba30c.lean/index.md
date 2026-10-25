# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseConnection.Variant2efe29bd4bbbb61c4192cf0f081d63d5c2195b290106032f805088b9487ba30c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "647d225ce5616df2b4b4edee6a8230d0a08f696c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseConnection/Variant2efe29bd4bbbb61c4192cf0f081d63d5c2195b290106032f805088b9487ba30c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseConnection/Variant2efe29bd4bbbb61c4192cf0f081d63d5c2195b290106032f805088b9487ba30c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseConnection/Variant2efe29bd4bbbb61c4192cf0f081d63d5c2195b290106032f805088b9487ba30c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `647d225ce5616df2b4b4edee6a8230d0a08f696c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseConnection/Variant2efe29bd4bbbb61c4192cf0f081d63d5c2195b290106032f805088b9487ba30c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseConnection/Variant2efe29bd4bbbb61c4192cf0f081d63d5c2195b290106032f805088b9487ba30c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Cellular.Phase` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Cellular.ScanOrder` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Cochain0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseConnection/Variant2efe29bd4bbbb61c4192cf0f081d63d5c2195b290106032f805088b9487ba30c.lean/declarations/cochain0--3f520aa8091d5ede60e3c20b.md) | 20 | `declaration-track:3f520aa8091d5ede60e3c20be4a3ffe43b1b4090a3d600cbe08fd59643064ce0` |
| 2 | `abbrev` | [Cochain1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseConnection/Variant2efe29bd4bbbb61c4192cf0f081d63d5c2195b290106032f805088b9487ba30c.lean/declarations/cochain1--8d3feb610270a71221b3f527.md) | 23 | `declaration-track:8d3feb610270a71221b3f527a1d554e980a7999276662e36d8b4c01ee40f5905` |
| 3 | `def` | [coboundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseConnection/Variant2efe29bd4bbbb61c4192cf0f081d63d5c2195b290106032f805088b9487ba30c.lean/declarations/coboundary--b30d0585be97aec825fdb803.md) | 26 | `declaration-track:b30d0585be97aec825fdb80358188b5b5fb305a234face3d21c33069c0256869` |
| 4 | `def` | [phaseConnection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseConnection/Variant2efe29bd4bbbb61c4192cf0f081d63d5c2195b290106032f805088b9487ba30c.lean/declarations/phaseconnection--9aa7d9250bf07689b8d217cf.md) | 31 | `declaration-track:9aa7d9250bf07689b8d217cfdedf48837bf72881b44ba45dc61efab46fead934` |
| 5 | `inductive` | [EdgePath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseConnection/Variant2efe29bd4bbbb61c4192cf0f081d63d5c2195b290106032f805088b9487ba30c.lean/declarations/edgepath--e7838d83beb1457cfa86e408.md) | 37 | `declaration-track:e7838d83beb1457cfa86e408897068da316a4a0e17d597e3c44d8c02b9dc4bcf` |
| 6 | `def` | [pathIntegral](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseConnection/Variant2efe29bd4bbbb61c4192cf0f081d63d5c2195b290106032f805088b9487ba30c.lean/declarations/pathintegral--36b257ad98803da2d454439b.md) | 45 | `declaration-track:36b257ad98803da2d454439bd084435bcc87593ac4cb0d0502374189b85c5379` |
| 7 | `theorem` | [pathIntegral_coboundary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseConnection/Variant2efe29bd4bbbb61c4192cf0f081d63d5c2195b290106032f805088b9487ba30c.lean/declarations/pathintegral-coboundary--9fa0d83986d81f0a9fc53a65.md) | 51 | `result-track:9fa0d83986d81f0a9fc53a65adb380319296622d3cc3b923d5f923202e3c46cc` |
| 8 | `theorem` | [loopIntegral_coboundary_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseConnection/Variant2efe29bd4bbbb61c4192cf0f081d63d5c2195b290106032f805088b9487ba30c.lean/declarations/loopintegral-coboundary-zero--42c874af6e7a1190defe820b.md) | 61 | `result-track:42c874af6e7a1190defe820b4418071727d8f15fb71ee445e57efdc23c85b353` |
| 9 | `theorem` | [pathIntegral_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseConnection/Variant2efe29bd4bbbb61c4192cf0f081d63d5c2195b290106032f805088b9487ba30c.lean/declarations/pathintegral-add--8a05b15d6d0e65e6af3a766e.md) | 68 | `result-track:8a05b15d6d0e65e6af3a766ec2584c16e049bd2fd351fc4084cf6387ea12804e` |
| 10 | `theorem` | [phaseConnection_loopIntegral_eq_scan](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseConnection/Variant2efe29bd4bbbb61c4192cf0f081d63d5c2195b290106032f805088b9487ba30c.lean/declarations/phaseconnection-loopintegral-eq-scan--e7e85e9441d626d00832aebd.md) | 80 | `result-track:e7e85e9441d626d00832aebdd73f61a44b6f5c1726aa20a5a7b3ffcd54146b20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
