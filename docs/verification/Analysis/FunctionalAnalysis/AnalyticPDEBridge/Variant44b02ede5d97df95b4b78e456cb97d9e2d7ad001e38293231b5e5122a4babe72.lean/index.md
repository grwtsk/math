# Verification target: GRWTSK.Analysis.FunctionalAnalysis.AnalyticPDEBridge.Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9f12b9d82af71be74c7a6ddadcf3bdae996733f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9f12b9d82af71be74c7a6ddadcf3bdae996733f`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Flow.AnalyticPDE` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Homology.OrientedFlatness` — import line 2; external provider; requires a separately pinned dependency.
- `Surface.Spectral.FiniteHilbertConvergence` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AnalyticPDETheoremGates](../../../../../mathematics/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72.lean/declarations/analyticpdetheoremgates--158546ef35f168664418dccc.md) | 33 | `declaration-track:158546ef35f168664418dcccd18801eaea1c7d179eba0626fea41ef1476bc800` |
| 2 | `def` | [AnalyticPDETheoremGates.certifiedForMajorProof](../../../../../mathematics/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72.lean/declarations/analyticpdetheoremgates-certifiedformajorproof--39c489078ae20df501ead254.md) | 48 | `declaration-track:39c489078ae20df501ead2541f1f01ccf4580b30637635bdda1721c0998e4528` |
| 3 | `theorem` | [AnalyticPDETheoremGates.certifiedForMajorProof_of_fields](../../../../../mathematics/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72.lean/declarations/analyticpdetheoremgates-certifiedformajorproof-of-fields--ecb5dad320718369124d0599.md) | 55 | `result-track:ecb5dad320718369124d0599a1ca0c3182be3c6d491ca410526e5afae0b0d7cf` |
| 4 | `structure` | [AnalyticPDESpectralTheoremInput](../../../../../mathematics/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72.lean/declarations/analyticpdespectraltheoreminput--a39a75bf3309c36f4f1d7ad7.md) | 71 | `declaration-track:a39a75bf3309c36f4f1d7ad7defd75afea63e3a2003fd968bf6643f21f43d5a6` |
| 5 | `def` | [AnalyticPDESpectralTheoremInput.certifiedForMajorProof](../../../../../mathematics/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72.lean/declarations/analyticpdespectraltheoreminput-certifiedformajorproof--79858bf62910fc9fa641c9bf.md) | 111 | `declaration-track:79858bf62910fc9fa641c9bfc5ec950e53ab138f3c1a58458d6a36efb26dd404` |
| 6 | `theorem` | [AnalyticPDESpectralTheoremInput.certifiedForMajorProof_of_fields](../../../../../mathematics/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72.lean/declarations/analyticpdespectraltheoreminput-certifiedformajorproof-of-fields--7b2d1577af044021837d73e1.md) | 124 | `result-track:7b2d1577af044021837d73e13427bd8ee5c2360bd204b401b75e0c94f41a3b15` |
| 7 | `theorem` | [AnalyticPDESpectralTheoremInput.certifiedForMajorProof_has_theoremGates](../../../../../mathematics/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72.lean/declarations/analyticpdespectraltheoreminput-certifiedformajorproof-has-theoremgates--10c9546706302b227fafc658.md) | 144 | `result-track:10c9546706302b227fafc65878d0b0835a0c9359d49b2e1bbf3660e697a5a578` |
| 8 | `theorem` | [AnalyticPDESpectralTheoremInput.certifiedForMajorProof_has_finiteConvergence](../../../../../mathematics/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72.lean/declarations/analyticpdespectraltheoreminput-certifiedformajorproof-has-finiteconverg--5e21ab9ac380857a7aa5b2e1.md) | 156 | `result-track:5e21ab9ac380857a7aa5b2e136205421fe2e967625c96fb902c15648427c98dc` |
| 9 | `theorem` | [AnalyticPDESpectralTheoremInput.certifiedForMajorProof_keeps_noFiniteDataAlone](../../../../../mathematics/Analysis/FunctionalAnalysis/AnalyticPDEBridge/Variant44b02ede5d97df95b4b78e456cb97d9e2d7ad001e38293231b5e5122a4babe72.lean/declarations/analyticpdespectraltheoreminput-certifiedformajorproof-keeps-nofinitedat--c0bb70ec9f09824319b41f58.md) | 171 | `result-track:c0bb70ec9f09824319b41f584df3db9e7567c8b02b8fb8b183d96e48fc36c694` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
