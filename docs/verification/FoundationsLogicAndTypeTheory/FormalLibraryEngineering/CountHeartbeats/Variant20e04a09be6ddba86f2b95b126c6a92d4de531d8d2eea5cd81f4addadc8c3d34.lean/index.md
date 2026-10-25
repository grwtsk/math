# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CountHeartbeats.Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a301f943b76c31d3ed5f981429aba780740a1332",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a301f943b76c31d3ed5f981429aba780740a1332`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Util.Heartbeats` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.TryThis` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [runTacForHeartbeats](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean/declarations/runtacforheartbeats--f12a1af65f3b35f48d3f68dc.md) | 43 | `declaration-track:f12a1af65f3b35f48d3f68dc813bdbe7deeb6c4a42f48d5ca25e851220618905` |
| 2 | `def` | [variation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean/declarations/variation--a218000095903240e206cfb6.md) | 54 | `declaration-track:a218000095903240e206cfb63d7e92492207dfb910596b4f17345ac989b79701` |
| 3 | `def` | [logVariation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean/declarations/logvariation--02096655370d9235c7d442c5.md) | 68 | `declaration-track:02096655370d9235c7d442c5a78e55508ef51e4a57c5745e92245a1b64fa8121` |
| 4 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean/declarations/elab--d6efc6273adea1a7ab65c960.md) | 75 | `declaration-track:d6efc6273adea1a7ab65c960efec5e86d94d4ae8094533b46dd75970972c88d0` |
| 5 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean/declarations/elab--a3eed19c77f3457dc561a83f.md) | 82 | `declaration-track:a3eed19c77f3457dc561a83fa5169bd2726f2b8658353138def5a17d6fae8b4f` |
| 6 | `def` | [roundDownIf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean/declarations/rounddownif--ecd6a350d0cbbbaedc90d1f9.md) | 95 | `declaration-track:ecd6a350d0cbbbaedc90d1f9c7378a118879cfca3ac63effc849254bf9509986` |
| 7 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean/declarations/elab--b8f13a02eec2c12d7a2d4113.md) | 121 | `declaration-track:b8f13a02eec2c12d7a2d411301ad9136527f8d21441f1965aaac788c941e03da` |
| 8 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean/declarations/elab--f971adbe4141f231a0ec6768.md) | 145 | `declaration-track:f971adbe4141f231a0ec6768b04c4121b3f7fbf2308b7964cad91c4cf28f995e` |
| 9 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean/declarations/elab--95e8593b8c442531eb811bf0.md) | 149 | `declaration-track:95e8593b8c442531eb811bf0135660bd8ea8ba52c18ce207e0756c6627fa1de3` |
| 10 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean/declarations/elab--26ec38b6273a1946857427ad.md) | 168 | `declaration-track:26ec38b6273a1946857427ada0cbef8df00e12f09ae23d2574dba8352f2ff5fd` |
| 11 | `def` | [elabForHeartbeats](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean/declarations/elabforheartbeats--2570f7a4047057d6d18ea3d5.md) | 188 | `declaration-track:2570f7a4047057d6d18ea3d5b5bbba0b8a9da2b9767e126c18f125601a57b567` |
| 12 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean/declarations/elab--f1f802c80ea618a92cfa1d98.md) | 206 | `declaration-track:f1f802c80ea618a92cfa1d987dbbe08711ae5993b80012b439461bf831456e42` |
| 13 | `register_option` | [linter.countHeartbeats](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean/declarations/linter-countheartbeats--33f0642123137f5d7b920dd4.md) | 241 | `declaration-track:33f0642123137f5d7b920dd40771752c29879f2743f82e40e14a03f7097e9f47` |
| 14 | `register_option` | [linter.countHeartbeatsApprox](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean/declarations/linter-countheartbeatsapprox--c3b0e26ec408b3bc388ab733.md) | 250 | `declaration-track:c3b0e26ec408b3bc388ab733df2ca5f51424c027f3976e10ee720b10bb38edf1` |
| 15 | `def` | [countHeartbeatsLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean/declarations/countheartbeatslinter--c87d3b5cd562bb8df849262f.md) | 259 | `declaration-track:c87d3b5cd562bb8df849262f54f3d8e5ccf84fc00e7d8c4a8973894cf6a4b3d0` |
| 16 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean/declarations/initialize--a836643bd106b6fde9782e72.md) | 279 | `declaration-track:a836643bd106b6fde9782e72446d19781dff03ca29013710fb4c1acd69be4ddd` |
| 17 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variant20e04a09be6ddba86f2b95b126c6a92d4de531d8d2eea5cd81f4addadc8c3d34.lean/declarations/macro--067e011c20365032e675d938.md) | 282 | `declaration-track:067e011c20365032e675d93880c87f635831fb3568cdcba54f4cac7775c5dd3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
