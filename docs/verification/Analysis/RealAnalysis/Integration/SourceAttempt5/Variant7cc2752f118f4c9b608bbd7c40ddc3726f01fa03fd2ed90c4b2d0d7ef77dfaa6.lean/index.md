# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt5.Variant7cc2752f118f4c9b608bbd7c40ddc3726f01fa03fd2ed90c4b2d0d7ef77dfaa6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc3b1b9472c9feb3c876085307f778fd58c408a8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant7cc2752f118f4c9b608bbd7c40ddc3726f01fa03fd2ed90c4b2d0d7ef77dfaa6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant7cc2752f118f4c9b608bbd7c40ddc3726f01fa03fd2ed90c4b2d0d7ef77dfaa6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant7cc2752f118f4c9b608bbd7c40ddc3726f01fa03fd2ed90c4b2d0d7ef77dfaa6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc3b1b9472c9feb3c876085307f778fd58c408a8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant7cc2752f118f4c9b608bbd7c40ddc3726f01fa03fd2ed90c4b2d0d7ef77dfaa6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant7cc2752f118f4c9b608bbd7c40ddc3726f01fa03fd2ed90c4b2d0d7ef77dfaa6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaProfile` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.FrullaniIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dividedDifference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant7cc2752f118f4c9b608bbd7c40ddc3726f01fa03fd2ed90c4b2d0d7ef77dfaa6.lean/declarations/divideddifference--d5f1c11fd32488245d356df7.md) | 21 | `declaration-track:d5f1c11fd32488245d356df7eba14d6a1939ce3e6cdad1e918509e4ce49a3156` |
| 2 | `theorem` | [dividedDifference_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant7cc2752f118f4c9b608bbd7c40ddc3726f01fa03fd2ed90c4b2d0d7ef77dfaa6.lean/declarations/divideddifference-bound--b0eeefb6c15ae236a83a9cb6.md) | 24 | `result-track:b0eeefb6c15ae236a83a9cb6719e03c1e1f0ebf227fea09051fd832553e30186` |
| 3 | `theorem` | [dividedDifference_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant7cc2752f118f4c9b608bbd7c40ddc3726f01fa03fd2ed90c4b2d0d7ef77dfaa6.lean/declarations/divideddifference-integrable--8ea17c040565deb84765ec38.md) | 44 | `result-track:8ea17c040565deb84765ec3844d36ed43094e4e14785a4cea62df4d6c4e4c2d0` |
| 4 | `theorem` | [dividedDifference_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant7cc2752f118f4c9b608bbd7c40ddc3726f01fa03fd2ed90c4b2d0d7ef77dfaa6.lean/declarations/divideddifference-integral--5ef89b03c62bac1370749c63.md) | 55 | `result-track:5ef89b03c62bac1370749c637d501a4cf4b0967413b52734d6d2ab22992a37f4` |
| 5 | `def` | [physicalRate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant7cc2752f118f4c9b608bbd7c40ddc3726f01fa03fd2ed90c4b2d0d7ef77dfaa6.lean/declarations/physicalrate--9cadbc491e7241a1321878fd.md) | 67 | `declaration-track:9cadbc491e7241a1321878fd9e482ccf452746e530955bbfe4b0a133207d2ad3` |
| 6 | `def` | [compensatedTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant7cc2752f118f4c9b608bbd7c40ddc3726f01fa03fd2ed90c4b2d0d7ef77dfaa6.lean/declarations/compensatedterm--01679567a45776f659509e0a.md) | 69 | `declaration-track:01679567a45776f659509e0afad456e7b8889024edd559fef3c56ea4d45fa72b` |
| 7 | `theorem` | [physicalRate_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant7cc2752f118f4c9b608bbd7c40ddc3726f01fa03fd2ed90c4b2d0d7ef77dfaa6.lean/declarations/physicalrate-pos--f6a2ae1a18950bea8dcf2872.md) | 72 | `result-track:f6a2ae1a18950bea8dcf28726b030476a7176923a055321f69bbff6325268fea` |
| 8 | `theorem` | [shifted_physicalRate_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant7cc2752f118f4c9b608bbd7c40ddc3726f01fa03fd2ed90c4b2d0d7ef77dfaa6.lean/declarations/shifted-physicalrate-pos--44447efa98a9fcab1bf24c46.md) | 74 | `result-track:44447efa98a9fcab1bf24c46f0daf6a263bb1d247ba688a43106d380365bc850` |
| 9 | `theorem` | [compensatedTerm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant7cc2752f118f4c9b608bbd7c40ddc3726f01fa03fd2ed90c4b2d0d7ef77dfaa6.lean/declarations/compensatedterm-nonneg--035606a5dce787a4d1c6bd6d.md) | 79 | `result-track:035606a5dce787a4d1c6bd6dab4412122ea7c6a6f2413323ba951821d21bacc5` |
| 10 | `theorem` | [compensatedTerm_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant7cc2752f118f4c9b608bbd7c40ddc3726f01fa03fd2ed90c4b2d0d7ef77dfaa6.lean/declarations/compensatedterm-split--11e9be18bb39343f05639476.md) | 85 | `result-track:11e9be18bb39343f05639476a32ec9e33869d5d37cd3fcf4864694f4bdf140f3` |
| 11 | `theorem` | [compensatedTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant7cc2752f118f4c9b608bbd7c40ddc3726f01fa03fd2ed90c4b2d0d7ef77dfaa6.lean/declarations/compensatedterm-integrable--66371fca42403d54f2c410a8.md) | 98 | `result-track:66371fca42403d54f2c410a8b2e51d6bdefab56c8b7c91c2eba2a3bd7f46b427` |
| 12 | `theorem` | [compensatedTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt5/Variant7cc2752f118f4c9b608bbd7c40ddc3726f01fa03fd2ed90c4b2d0d7ef77dfaa6.lean/declarations/compensatedterm-integral--2bd25d4f77af37f06132b2e2.md) | 107 | `result-track:2bd25d4f77af37f06132b2e281ce48f1cb94090c103abe227610a3c6d12d4a68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
