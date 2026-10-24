# Verification target: GRWTSK.Analysis.FunctionalAnalysis.HilbertTrace.Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fa758a479d0b5330bd5d743135d3789c0ceed71",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fa758a479d0b5330bd5d743135d3789c0ceed71`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Hilbert.TraceFormula` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Spectral.Readiness` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Spectral.HilbertTraceBridge](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean/declarations/spectral-hilberttracebridge--eb57c07e52da7d8253d7f500.md) | 61 | `declaration-track:eb57c07e52da7d8253d7f5008ad0a536e8f8117bb5158cbc3617f1595099a8ca` |
| 2 | `def` | [Spectral.HilbertTraceBridge.ready](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean/declarations/spectral-hilberttracebridge-ready--200d9e28b29961c73845f8fb.md) | 68 | `declaration-track:200d9e28b29961c73845f8fb185f36f36e8a7a46e920a659e9066a23be50f7a5` |
| 3 | `def` | [Spectral.HilbertTraceBridge.theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean/declarations/spectral-hilberttracebridge-theoremready--c827c4fe95802dd1a22fda85.md) | 77 | `declaration-track:c827c4fe95802dd1a22fda853483c94832b6fccb604f901db729166b649fbde2` |
| 4 | `theorem` | [Spectral.HilbertTraceBridge.theoremReady_implies_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean/declarations/spectral-hilberttracebridge-theoremready-implies-ready--64b23b2cb73e2a9a49c6c8e2.md) | 81 | `result-track:64b23b2cb73e2a9a49c6c8e221d8d88dcae00eb4c76abcaa0da9de4d923d7290` |
| 5 | `structure` | [Spectral.HilbertTraceBridgeTheoremCertificate](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean/declarations/spectral-hilberttracebridgetheoremcertificate--a6edf168eca50ba344ebffe5.md) | 94 | `declaration-track:a6edf168eca50ba344ebffe5b09f6d33f0b2a7f9502574a156a16e149f376a27` |
| 6 | `def` | [Spectral.HilbertTraceBridgeTheoremCertificate.certifiedForMajorProof](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean/declarations/spectral-hilberttracebridgetheoremcertificate-certifiedformajorproof--af5ed1f25e5c0b565b580205.md) | 109 | `declaration-track:af5ed1f25e5c0b565b580205c99cca3e21a94422d970a75fe84cd3a40b2df30d` |
| 7 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean/declarations/spectral-hilberttracebridgetheoremcertificate-certifiedformajorproof-of--903285ebf0be478684ca3310.md) | 117 | `result-track:903285ebf0be478684ca3310d40830cb0647d20365d19ac43bd0b3d807abae25` |
| 8 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.hodgeTate_pullback_rejects_externalAssumption](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean/declarations/spectral-hilberttracebridgetheoremcertificate-hodgetate-pullback-rejects--c02d6b0f038388b3c69bacb7.md) | 126 | `result-track:c02d6b0f038388b3c69bacb7916cf80ac1275b3b03d8986dcbfa0d0c63e56d7a` |
| 9 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.hodgeTate_pullback_rejects_placeholderInput](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean/declarations/spectral-hilberttracebridgetheoremcertificate-hodgetate-pullback-rejects--dd362faf083d2af696a33118.md) | 145 | `result-track:dd362faf083d2af696a33118e429f06a8c29eb1ba5f85aabc51876b956d06c3a` |
| 10 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.implies_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean/declarations/spectral-hilberttracebridgetheoremcertificate-implies-ready--d715a99b00cb96115def8b6a.md) | 164 | `result-track:d715a99b00cb96115def8b6a779ff916e4f6094bccdc265dd9b35dae076fee64` |
| 11 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.implies_theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean/declarations/spectral-hilberttracebridgetheoremcertificate-implies-theoremready--1c69d678a5f434b8527c8621.md) | 172 | `result-track:1c69d678a5f434b8527c8621d150845daa7485424f2b7338c6b76d5302bbc203` |
| 12 | `def` | [Spectral.standardHilbertTraceBridge](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean/declarations/spectral-standardhilberttracebridge--82e7eb901dabf1f720243100.md) | 184 | `declaration-track:82e7eb901dabf1f7202431004e14aabec997cf80d3b95ec9575c646153061c80` |
| 13 | `theorem` | [Spectral.standardHilbertTraceBridge_not_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean/declarations/spectral-standardhilberttracebridge-not-ready--cf03580412bb9b8b55230b9d.md) | 194 | `result-track:cf03580412bb9b8b55230b9d2da3a29f48e5af22e9c107cc50679bc60f234b7f` |
| 14 | `theorem` | [Spectral.standardHilbertTraceBridge_not_theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean/declarations/spectral-standardhilberttracebridge-not-theoremready--796d393aa265f491acaea945.md) | 201 | `result-track:796d393aa265f491acaea9454e57e8793899f860b16288c92b697357896a76ed` |
| 15 | `theorem` | [Spectral.dependencyBridge_not_hilbertTrace_evidence](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Varianta01637d3bb0d197d8ca6557b856acffb4f6a1f71a8c0016384d33a97c6f7d641.lean/declarations/spectral-dependencybridge-not-hilberttrace-evidence--3b8a5e4041700f14e44b9b99.md) | 213 | `result-track:3b8a5e4041700f14e44b9b99af86d269ddd5b39cad9c406bb8117745e0fac094` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
