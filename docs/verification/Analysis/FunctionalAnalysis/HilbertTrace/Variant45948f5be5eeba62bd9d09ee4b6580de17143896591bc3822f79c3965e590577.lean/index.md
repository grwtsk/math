# Verification target: GRWTSK.Analysis.FunctionalAnalysis.HilbertTrace.Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb07ddc84f4c9781eed943f2fb8cb60b3e598945",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb07ddc84f4c9781eed943f2fb8cb60b3e598945`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Hilbert.TraceFormula` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Spectral.Readiness` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Spectral.HilbertTraceBridge](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean/declarations/spectral-hilberttracebridge--113c3ca0e968dc4def79359e.md) | 53 | `declaration-track:113c3ca0e968dc4def79359edec4627bf2228d3402d9869e955e1c52cae26bb7` |
| 2 | `def` | [Spectral.HilbertTraceBridge.ready](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean/declarations/spectral-hilberttracebridge-ready--e548488b6cf65eb585051246.md) | 60 | `declaration-track:e548488b6cf65eb5850512469b9cdbd8d382c834f059f1cc2f2c67e0c9002943` |
| 3 | `def` | [Spectral.HilbertTraceBridge.theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean/declarations/spectral-hilberttracebridge-theoremready--143a5445b10f0df4d0754ba1.md) | 69 | `declaration-track:143a5445b10f0df4d0754ba1fca580b74d71bb554bb648778874232a8df2e2e5` |
| 4 | `theorem` | [Spectral.HilbertTraceBridge.theoremReady_implies_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean/declarations/spectral-hilberttracebridge-theoremready-implies-ready--1118dedabad6435d99c61950.md) | 73 | `result-track:1118dedabad6435d99c6195042e78961ddaf5ab33b60ed86ac9c0ca8ed0b1daa` |
| 5 | `structure` | [Spectral.HilbertTraceBridgeTheoremCertificate](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean/declarations/spectral-hilberttracebridgetheoremcertificate--28464f1b020c5bd57f3280af.md) | 86 | `declaration-track:28464f1b020c5bd57f3280af8403887cd974fe1971eb75a9a7ad12e1fb7b39e6` |
| 6 | `def` | [Spectral.HilbertTraceBridgeTheoremCertificate.certifiedForMajorProof](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean/declarations/spectral-hilberttracebridgetheoremcertificate-certifiedformajorproof--3b4cbc3432a6097f9c07b198.md) | 101 | `declaration-track:3b4cbc3432a6097f9c07b198733109ec4735cc0319aa7b966a50b14c328cd5a6` |
| 7 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean/declarations/spectral-hilberttracebridgetheoremcertificate-certifiedformajorproof-of--ac74ddfde8812e73a8660095.md) | 109 | `result-track:ac74ddfde8812e73a86600952eb1d323abd1d721724bfb8e553a3aef60045dfe` |
| 8 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.hodgeTate_pullback_rejects_externalAssumption](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean/declarations/spectral-hilberttracebridgetheoremcertificate-hodgetate-pullback-rejects--fd8b5b7230297f2496894eeb.md) | 118 | `result-track:fd8b5b7230297f2496894eebf87f76ad13ec7bc1075e276b7cc4eb96aea8e6e9` |
| 9 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.hodgeTate_pullback_rejects_placeholderInput](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean/declarations/spectral-hilberttracebridgetheoremcertificate-hodgetate-pullback-rejects--d191f0bd1dc92e91328e0b86.md) | 137 | `result-track:d191f0bd1dc92e91328e0b86a4b83ee5a6fb658ca5887b629ee21afcd63ec8d3` |
| 10 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.implies_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean/declarations/spectral-hilberttracebridgetheoremcertificate-implies-ready--8050cdf7da0d24cc8c68ff60.md) | 156 | `result-track:8050cdf7da0d24cc8c68ff60bc93efcf194ec92c98767c5d4182eea689881b83` |
| 11 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.implies_theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean/declarations/spectral-hilberttracebridgetheoremcertificate-implies-theoremready--4473e9f8ac227ee4087d306e.md) | 164 | `result-track:4473e9f8ac227ee4087d306e5dce7b75e479a0f83ac79ba7c054bfe388af68aa` |
| 12 | `def` | [Spectral.standardHilbertTraceBridge](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean/declarations/spectral-standardhilberttracebridge--14917ee9fac7109ffa4eaa22.md) | 176 | `declaration-track:14917ee9fac7109ffa4eaa225215c99d0ff26fc0cca78663c0e8c08ca35e3d39` |
| 13 | `theorem` | [Spectral.standardHilbertTraceBridge_not_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean/declarations/spectral-standardhilberttracebridge-not-ready--37e7938c74b4f3d22a0e582e.md) | 186 | `result-track:37e7938c74b4f3d22a0e582ef257a2214ffc12c0d191fe5d2c0d4b1fd2ea09b3` |
| 14 | `theorem` | [Spectral.standardHilbertTraceBridge_not_theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean/declarations/spectral-standardhilberttracebridge-not-theoremready--49e6539fb4cfc6e00bac766a.md) | 193 | `result-track:49e6539fb4cfc6e00bac766a7fbe065caac0ece87e366bc3de52401ae375f04a` |
| 15 | `theorem` | [Spectral.dependencyBridge_not_hilbertTrace_evidence](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant45948f5be5eeba62bd9d09ee4b6580de17143896591bc3822f79c3965e590577.lean/declarations/spectral-dependencybridge-not-hilberttrace-evidence--853a30b758810d52b77f08e9.md) | 205 | `result-track:853a30b758810d52b77f08e93f26bf5be9b7d72d83c8a908f8f6af08817499da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
