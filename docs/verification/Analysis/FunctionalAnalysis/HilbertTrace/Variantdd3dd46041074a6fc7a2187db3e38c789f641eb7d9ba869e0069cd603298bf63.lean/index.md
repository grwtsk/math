# Verification target: GRWTSK.Analysis.FunctionalAnalysis.HilbertTrace.Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eada860dda5c51201dfc67ad60239b24f5538870",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eada860dda5c51201dfc67ad60239b24f5538870`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean.json)

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
| 1 | `structure` | [Spectral.HilbertTraceBridge](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean/declarations/spectral-hilberttracebridge--35b1c2bea0c06f40ad8ab247.md) | 59 | `declaration-track:35b1c2bea0c06f40ad8ab24732edb54467aa1371c5685b4d259f2a87d012cbf7` |
| 2 | `def` | [Spectral.HilbertTraceBridge.ready](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean/declarations/spectral-hilberttracebridge-ready--aa97bf762cb32e915bd22abb.md) | 66 | `declaration-track:aa97bf762cb32e915bd22abbca38d606dd90b8d119a6dde21e571ada0fee00b6` |
| 3 | `def` | [Spectral.HilbertTraceBridge.theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean/declarations/spectral-hilberttracebridge-theoremready--e6e86ce3ae6296a7759d34b7.md) | 75 | `declaration-track:e6e86ce3ae6296a7759d34b780bae336a78b073a0b332b37d9c0e28cae665523` |
| 4 | `theorem` | [Spectral.HilbertTraceBridge.theoremReady_implies_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean/declarations/spectral-hilberttracebridge-theoremready-implies-ready--7ee1d23eff54c54d7a69f4e3.md) | 79 | `result-track:7ee1d23eff54c54d7a69f4e31b5083ccab3de1a189af1200e7b5cf476a537b8d` |
| 5 | `structure` | [Spectral.HilbertTraceBridgeTheoremCertificate](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean/declarations/spectral-hilberttracebridgetheoremcertificate--af6f3c3bb0c8000598f6414f.md) | 92 | `declaration-track:af6f3c3bb0c8000598f6414f4b353836f8e07fba3af55d34d4be8f230ba283c8` |
| 6 | `def` | [Spectral.HilbertTraceBridgeTheoremCertificate.certifiedForMajorProof](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean/declarations/spectral-hilberttracebridgetheoremcertificate-certifiedformajorproof--8105a9ddc0d1ec9b8506cfe3.md) | 107 | `declaration-track:8105a9ddc0d1ec9b8506cfe3acd2927dd657b2e70dd49d4c746768181ce2e10b` |
| 7 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean/declarations/spectral-hilberttracebridgetheoremcertificate-certifiedformajorproof-of--c02b49ca5f5424ed27957f2b.md) | 115 | `result-track:c02b49ca5f5424ed27957f2bd24fd2a12087fda6f096ebfab8d2d97d48e6e96f` |
| 8 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.hodgeTate_pullback_rejects_externalAssumption](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean/declarations/spectral-hilberttracebridgetheoremcertificate-hodgetate-pullback-rejects--32829d28314e72b58672afc8.md) | 124 | `result-track:32829d28314e72b58672afc82962ab616992870abbb7e6bfffc37fc06cf2f0d2` |
| 9 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.hodgeTate_pullback_rejects_placeholderInput](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean/declarations/spectral-hilberttracebridgetheoremcertificate-hodgetate-pullback-rejects--1f5be617326f43b983f6a017.md) | 143 | `result-track:1f5be617326f43b983f6a017164c687a6528f72067ad71a1f80531986c59bf5b` |
| 10 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.implies_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean/declarations/spectral-hilberttracebridgetheoremcertificate-implies-ready--957d849d2bfd9d0581e4e29c.md) | 162 | `result-track:957d849d2bfd9d0581e4e29c87462cc7d100e71f6b5aa2e3144b4f944bc862b1` |
| 11 | `theorem` | [Spectral.HilbertTraceBridgeTheoremCertificate.implies_theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean/declarations/spectral-hilberttracebridgetheoremcertificate-implies-theoremready--64c72cd02290e2d4611b8d2f.md) | 170 | `result-track:64c72cd02290e2d4611b8d2f2bbbe3076157f36e5b0aa4d7133a222b1d26b43c` |
| 12 | `def` | [Spectral.standardHilbertTraceBridge](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean/declarations/spectral-standardhilberttracebridge--29228cae525e7ada0ee089d9.md) | 182 | `declaration-track:29228cae525e7ada0ee089d9126b9b01c21eefbad8f64ec87007eb7c5999a47f` |
| 13 | `theorem` | [Spectral.standardHilbertTraceBridge_not_ready](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean/declarations/spectral-standardhilberttracebridge-not-ready--404d37ebd255009718d62885.md) | 192 | `result-track:404d37ebd255009718d628850536b31dcd1a5c59fa65383e0f5354db9994ca92` |
| 14 | `theorem` | [Spectral.standardHilbertTraceBridge_not_theoremReady](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean/declarations/spectral-standardhilberttracebridge-not-theoremready--57e9a7b89d58b83a8e8601de.md) | 199 | `result-track:57e9a7b89d58b83a8e8601de2657c78fa48d584e4d2e6152ca389fb8cbd1c22a` |
| 15 | `theorem` | [Spectral.dependencyBridge_not_hilbertTrace_evidence](../../../../../mathematics/Analysis/FunctionalAnalysis/HilbertTrace/Variantdd3dd46041074a6fc7a2187db3e38c789f641eb7d9ba869e0069cd603298bf63.lean/declarations/spectral-dependencybridge-not-hilberttrace-evidence--beb176acbc1d1cd0e6485af0.md) | 211 | `result-track:beb176acbc1d1cd0e6485af03dcfb6e4a57bb7e5cee2f7db2c8aac64ae19a0c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
