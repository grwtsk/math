# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndPred.Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e4c0a308e3b40b24dfe556d263a576d38c5a954",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e4c0a308e3b40b24dfe556d263a576d38c5a954`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.HasConstCache` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.IndPredBelow` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [andProj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean/declarations/andproj--d4b59e65c75a28affb11e495.md) | 21 | `declaration-track:d4b59e65c75a28affb11e495850d3728b218dfe2eec437b4ef24238e8e45847d` |
| 2 | `def` | [replaceIndPredRecApp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean/declarations/replaceindpredrecapp--a871a006cdc57f8d185a48b2.md) | 28 | `declaration-track:a871a006cdc57f8d185a48b2c5dae9054ed5222d87ce25291e07c19805f77c81` |
| 3 | `abbrev` | [IndPredM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean/declarations/indpredm--006899a876808ebd3b0a8f2a.md) | 47 | `declaration-track:006899a876808ebd3b0a8f2ab7880c3bc0b787d37ace26e58405efad5ee7b29e` |
| 4 | `def` | [replaceIndPredRecApps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean/declarations/replaceindpredrecapps--6c67719d8b41eeb0cbb8fea2.md) | 49 | `declaration-track:6c67719d8b41eeb0cbb8fea20b538e00769b6a4501be71911c756bbc87ed0d0d` |
| 5 | `def` | [withFunTypes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean/declarations/withfuntypes--506a2b16d279dfc947d3fabf.md) | 105 | `declaration-track:506a2b16d279dfc947d3fabf745a5cd928772e987fc053f550f316de2555162e` |
| 6 | `def` | [mkIndPredBRecOnMotive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean/declarations/mkindpredbreconmotive--4051cb05d46a8770211056d9.md) | 123 | `declaration-track:4051cb05d46a8770211056d9e9fb15d5f02ce2ea3ef7305757e6c3063ac722ae` |
| 7 | `def` | [mkIndPredBRecOnF](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndPred/Variant08bb45d5b3a677ff10905b085fe9445eab1dd3c3beb80ea59724ad53c64566ab.lean/declarations/mkindpredbreconf--24fb3b25a0c08fc62fc01437.md) | 139 | `declaration-track:24fb3b25a0c08fc62fc01437e87618070163cd314195a72d14bf2a6633e325f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
