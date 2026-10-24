# Verification target: GRWTSK.Analysis.FunctionalAnalysis.HilbertTrace.Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "348b690a1ebbe3ccede7e041ba0ec0c4667d8949",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `348b690a1ebbe3ccede7e041ba0ec0c4667d8949`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean.json)

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
| 1 | `structure` | [Spectral.HilbertTraceBridge](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean/declarations/spectral-hilberttracebridge--fed43654b1c2feb7e4b4360a.md) | 51 | `declaration-track:fed43654b1c2feb7e4b4360ac170c784b760215476a557cbde44ce13410e91cb` |
| 2 | `def` | [Spectral.HilbertTraceBridge.ready](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean/declarations/spectral-hilberttracebridge-ready--05e3353bcda654c4172d5785.md) | 58 | `declaration-track:05e3353bcda654c4172d5785c0059cbc35dfb4c6fed457865e2fe24278061a72` |
| 3 | `def` | [Spectral.HilbertTraceBridge.theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean/declarations/spectral-hilberttracebridge-theoremready--a8faf7f31d07bdaf7b275197.md) | 67 | `declaration-track:a8faf7f31d07bdaf7b275197d7502a6363cd05c230df1f18017de4a376bdb291` |
| 4 | `theorem` | [Spectral.HilbertTraceBridge.theoremReady_implies_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean/declarations/spectral-hilberttracebridge-theoremready-implies-ready--f940f4a2e6f62bde6fc9716d.md) | 71 | `result-track:f940f4a2e6f62bde6fc9716ddc0c14fc0a0367d6bfbaafc29fd10a82fd8b6a80` |
| 5 | `structure` | [Spectral.HilbertTraceBridgeTheoremCertificate](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean/declarations/spectral-hilberttracebridgetheoremcertificate--1c56e43f0035d72823792fc1.md) | 84 | `declaration-track:1c56e43f0035d72823792fc1f41108efefce56797d902d4717ef38550ddb9e24` |
| 6 | `def` | [Spectral.HilbertTraceBridgeTheoremCertificate.certifiedForMajorProof](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean/declarations/spectral-hilberttracebridgetheoremcertificate-certifiedformajorproof--3d80d1b445f95264cf778798.md) | 99 | `declaration-track:3d80d1b445f95264cf7787982f7f67e74fc2d82537cbafbbdb209b2ba0394082` |
| 7 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean/declarations/spectral-hilberttracebridgetheoremcertificate-certifiedformajorproof-of--62342b63dcc1247a9ca243e1.md) | 107 | `result-track:62342b63dcc1247a9ca243e1f32dc0a0ae1d2f4e7e6eb7eb80211d50b4d26e46` |
| 8 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.hodgeTate_pullback_rejects_externalAssumption](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean/declarations/spectral-hilberttracebridgetheoremcertificate-hodgetate-pullback-rejects--ec77d3c5be02f2d011917fd4.md) | 116 | `result-track:ec77d3c5be02f2d011917fd4cbb803a77216edb222ed34ab2afb82d6b72ef442` |
| 9 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.hodgeTate_pullback_rejects_placeholderInput](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean/declarations/spectral-hilberttracebridgetheoremcertificate-hodgetate-pullback-rejects--12b1e621b4d66d868f6edc38.md) | 135 | `result-track:12b1e621b4d66d868f6edc3855e0efe006368cb0efe9f29fe41ac51c8ec2a428` |
| 10 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.implies_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean/declarations/spectral-hilberttracebridgetheoremcertificate-implies-ready--7a2103e170014f1baf42d614.md) | 154 | `result-track:7a2103e170014f1baf42d6145b4106b8b8520df1e8b9cd0b83deb82891d2d5ac` |
| 11 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.implies_theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean/declarations/spectral-hilberttracebridgetheoremcertificate-implies-theoremready--b3df3492315a08161e75e171.md) | 162 | `result-track:b3df3492315a08161e75e1718026dd0f49783d05f24b72f4779f2681d4b642e8` |
| 12 | `def` | [Spectral.standardHilbertTraceBridge](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean/declarations/spectral-standardhilberttracebridge--6a21de192f983d7dfeee9ba7.md) | 174 | `declaration-track:6a21de192f983d7dfeee9ba7c7c904dab39d0e64de39bf7a960687519dfae4ad` |
| 13 | `theorem` | [Spectral.standardHilbertTraceBridge_not_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean/declarations/spectral-standardhilberttracebridge-not-ready--eb6c8132867e509531c78e77.md) | 184 | `result-track:eb6c8132867e509531c78e77543e3bae4559b6f782945e6cd722800011ad0e0b` |
| 14 | `theorem` | [Spectral.standardHilbertTraceBridge_not_theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean/declarations/spectral-standardhilberttracebridge-not-theoremready--dfc96bd1fabca5080f29124f.md) | 191 | `result-track:dfc96bd1fabca5080f29124fa8ee2148b9d5b4a427dfd49347e5a5890803f33d` |
| 15 | `theorem` | [Spectral.dependencyBridge_not_hilbertTrace_evidence](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variant1e223a1afc805b626663dbadc29d17c4af96f1b90e50d27db0c7000c5ddd11f8.lean/declarations/spectral-dependencybridge-not-hilberttrace-evidence--561f06c86069173d8e464899.md) | 203 | `result-track:561f06c86069173d8e4648997b4138bb68bfcf341ef09c5a2db1c87434bb9f00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
