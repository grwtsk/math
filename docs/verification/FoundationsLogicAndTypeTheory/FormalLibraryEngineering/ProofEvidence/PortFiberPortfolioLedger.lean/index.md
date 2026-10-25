# Verification target: GRWTSK.Interfaces.PortFiberPortfolioLedger

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff66c7de52d1f72263a78c374df092f430fd9247",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberPortfolioLedger.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/PortFiberPortfolioLedger.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/PortFiberPortfolioLedger.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff66c7de52d1f72263a78c374df092f430fd9247`.

Source path: `GRWTSK/Interfaces/PortFiberPortfolioLedger.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberPortfolioLedger.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PortFiberTheoremPortfolio.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Interfaces.OptionalAdapterComposition`](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/OptionalAdapterComposition.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GovernedPortfolio](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/PortFiberPortfolioLedger.lean/declarations/governedportfolio--07b99ff4247fe967dfbbfe22.md) | 16 | `declaration-track:07b99ff4247fe967dfbbfe223893fa4c897e3c72b2f9d861aa28211a7ffaab3d` |
| 2 | `def` | [localDisposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/PortFiberPortfolioLedger.lean/declarations/localdisposition--0520003247bd0ec800fa36f9.md) | 30 | `declaration-track:0520003247bd0ec800fa36f92c36c5b79fce400c755957467779ad6fbba5e6cb` |
| 3 | `def` | [targetDisposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/PortFiberPortfolioLedger.lean/declarations/targetdisposition--b9613c9703ec277ecde478d8.md) | 36 | `declaration-track:b9613c9703ec277ecde478d824c46ec0180b353a8fa5b1f43f8ddf2a229c8782` |
| 4 | `theorem` | [ledger_eq_of_not_touches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/PortFiberPortfolioLedger.lean/declarations/ledger-eq-of-not-touches--3bfdf70d17a64bea59e0292e.md) | 42 | `result-track:3bfdf70d17a64bea59e0292ef18596979302b0d5d7da00c3ef0be92fc86185a0` |
| 5 | `theorem` | [ledger_none_of_not_touches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/PortFiberPortfolioLedger.lean/declarations/ledger-none-of-not-touches--4c8b0fa773e66b09c9527360.md) | 49 | `result-track:4c8b0fa773e66b09c9527360946f248512733707a33abe384c9a2ac92c244d01` |
| 6 | `def` | [retarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/PortFiberPortfolioLedger.lean/declarations/retarget--fbebfa6e6041c8680f7d04ca.md) | 57 | `declaration-track:fbebfa6e6041c8680f7d04ca8f6f67e2dc69acd121bc6515637766c26a905b8b` |
| 7 | `theorem` | [retarget_local](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/PortFiberPortfolioLedger.lean/declarations/retarget-local--35cc4c95d1121e76909e036d.md) | 66 | `result-track:35cc4c95d1121e76909e036d2f10cb1771ce3bafa678a0a5688e7fa6ab794b1f` |
| 8 | `def` | [updateLocal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/PortFiberPortfolioLedger.lean/declarations/updatelocal--1001b2eba6f35242fd4ce25e.md) | 74 | `declaration-track:1001b2eba6f35242fd4ce25e76d1c6be165401481ffefc7bb757c1d5e52c9ce0` |
| 9 | `theorem` | [updateLocal_target](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/PortFiberPortfolioLedger.lean/declarations/updatelocal-target--ea06e9ce40c6ba058dfd246c.md) | 82 | `result-track:ea06e9ce40c6ba058dfd246cf157b7b27d6f0f04c54af5b0fded30a2ebb1081c` |
| 10 | `def` | [unresolvedNoPlan](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/PortFiberPortfolioLedger.lean/declarations/unresolvednoplan--008f1f68c562466fc52be476.md) | 97 | `declaration-track:008f1f68c562466fc52be47626b1c7e8c0940f764f58a285dbcc881dcfb0555d` |
| 11 | `theorem` | [unresolvedNoPlan_local](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/PortFiberPortfolioLedger.lean/declarations/unresolvednoplan-local--b40e0e1946b6792bdc526396.md) | 105 | `result-track:b40e0e1946b6792bdc52639666c0d63fdeffc1a126eac8243f8ea0c06841de20` |
| 12 | `theorem` | [unresolvedNoPlan_ledger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/PortFiberPortfolioLedger.lean/declarations/unresolvednoplan-ledger--950e4ecdabdf4d93428aa7ed.md) | 112 | `result-track:950e4ecdabdf4d93428aa7ed60ed202e6787f337205c5ccb67bba0d50dd16a3b` |
| 13 | `theorem` | [hypothetical_refutation_preserves_local](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofEvidence/PortFiberPortfolioLedger.lean/declarations/hypothetical-refutation-preserves-local--9fdd8a2efd7b984803d8bf0d.md) | 119 | `result-track:9fdd8a2efd7b984803d8bf0dfd21e097d5619b1ea9a3b6bddd11d3732c1d358e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
