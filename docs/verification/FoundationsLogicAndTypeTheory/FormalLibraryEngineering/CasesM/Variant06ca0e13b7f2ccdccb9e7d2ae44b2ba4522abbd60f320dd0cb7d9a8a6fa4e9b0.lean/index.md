# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesM.Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d63fc8054b4633468a20dd86e88cc1432b9a7688",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d63fc8054b4633468a20dd86e88cc1432b9a7688`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Conv.Pattern` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [casesMatching](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean/declarations/casesmatching--63af55a35af8d2c93c56d67b.md) | 32 | `declaration-track:63af55a35af8d2c93c56d67b37be6c3f2e9575af33719686f72cfd3506e95c01` |
| 2 | `def` | [casesType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean/declarations/casestype--e4f7dcaf607067ecde84a5e6.md) | 69 | `declaration-track:e4f7dcaf607067ecde84a5e6a4c80b053d96faa08a9a2910e401dbc252b07b3b` |
| 3 | `def` | [elabPatterns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean/declarations/elabpatterns--2b6e6465b5ece20b48857c41.md) | 81 | `declaration-track:2b6e6465b5ece20b48857c416542c4e423e12d59314be6fdbaeb5a7dbcfe2634` |
| 4 | `def` | [matchPatterns](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean/declarations/matchpatterns--f7f2ced2360d09c7aee93c67.md) | 88 | `declaration-track:f7f2ced2360d09c7aee93c677dc5a072de48a9407a5526d6b1c8facd4ba8c76a` |
| 5 | `def` | [elabCasesM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean/declarations/elabcasesm--9b18a684117fc8c683c50eba.md) | 93 | `declaration-track:9b18a684117fc8c683c50eba0f59a9c3090b846f1120a54e0817465f9989de6a` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean/declarations/elab--7cf85f59a715762c874bfc50.md) | 111 | `declaration-track:7cf85f59a715762c874bfc50287d4c5682f98d56512ee38a46025537ad745c2f` |
| 7 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean/declarations/elab--a46ab2921c6c986b4775c32f.md) | 115 | `declaration-track:a46ab2921c6c986b4775c32f171cc5bd4d04e19dad9d40466a7f146d951a3787` |
| 8 | `def` | [elabCasesType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean/declarations/elabcasestype--4dd66754a17cbf64ca63d6dd.md) | 119 | `declaration-track:4dd66754a17cbf64ca63d6dd419ff3ceed27502e87f9339cdddaa5eb218efca1` |
| 9 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean/declarations/elab--9f773a5a1a133dd7acb35d57.md) | 136 | `declaration-track:9f773a5a1a133dd7acb35d572d2a60bd0226db34d20d08e42ab2b08dc3f11416` |
| 10 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean/declarations/elab--3749c9ade4c88825a774d6a6.md) | 140 | `declaration-track:3749c9ade4c88825a774d6a6b3b9a4a33c814b4acd7220ae595123107b7927c5` |
| 11 | `def` | [constructorMatching](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean/declarations/constructormatching--bacd161911abdef3d6efb79a.md) | 149 | `declaration-track:bacd161911abdef3d6efb79a06953a22c45cfd7db26934cbca0b18da67234407` |
| 12 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CasesM/Variant06ca0e13b7f2ccdccb9e7d2ae44b2ba4522abbd60f320dd0cb7d9a8a6fa4e9b0.lean/declarations/elab--a8080e3b5630cfdf40490b33.md) | 185 | `declaration-track:a8080e3b5630cfdf40490b330c346ec96c92aea9d90cd3b56f8352e80b6a9fb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
