# Verification target: GRWTSK.Analysis.NegativeAbelKernel.Variante7af4a6070d9a331ecc43c8d33ab01d313fb334cf3c301d22a24c7de2ddd0aba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "265bb8962661722f7787df6b119db52308f0894b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/NegativeAbelKernel/Variante7af4a6070d9a331ecc43c8d33ab01d313fb334cf3c301d22a24c7de2ddd0aba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/NegativeAbelKernel/Variante7af4a6070d9a331ecc43c8d33ab01d313fb334cf3c301d22a24c7de2ddd0aba.lean/index.md) · [Full source](../../../../mathematics/Analysis/NegativeAbelKernel/Variante7af4a6070d9a331ecc43c8d33ab01d313fb334cf3c301d22a24c7de2ddd0aba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `265bb8962661722f7787df6b119db52308f0894b`.

Source path: `GRWTSK/Analysis/NegativeAbelKernel/Variante7af4a6070d9a331ecc43c8d33ab01d313fb334cf3c301d22a24c7de2ddd0aba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/NegativeAbelKernel/Variante7af4a6070d9a331ecc43c8d33ab01d313fb334cf3c301d22a24c7de2ddd0aba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureSign` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.InnerProduct` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualKernel](../../../../mathematics/Analysis/NegativeAbelKernel/Variante7af4a6070d9a331ecc43c8d33ab01d313fb334cf3c301d22a24c7de2ddd0aba.lean/declarations/actualkernel--7a74f4b27c8eebb741988431.md) | 30 | `declaration-track:7a74f4b27c8eebb74198843149a7512e6ebc5d0220ccb6541150bc424bac5023` |
| 2 | `theorem` | [actual_kernel_continuous](../../../../mathematics/Analysis/NegativeAbelKernel/Variante7af4a6070d9a331ecc43c8d33ab01d313fb334cf3c301d22a24c7de2ddd0aba.lean/declarations/actual-kernel-continuous--760f0edb7d893899b8e0bd38.md) | 34 | `result-track:760f0edb7d893899b8e0bd389549fba885d7e0304a55c98c181be7e70cd32b0e` |
| 3 | `theorem` | [actual_kernel_negative_at_zero](../../../../mathematics/Analysis/NegativeAbelKernel/Variante7af4a6070d9a331ecc43c8d33ab01d313fb334cf3c301d22a24c7de2ddd0aba.lean/declarations/actual-kernel-negative-at-zero--abaf47d11130713f462126b7.md) | 38 | `result-track:abaf47d11130713f462126b79bc47c96b57bf3f79631ba9f131e9c308817887b` |
| 4 | `theorem` | [smooth_nonpositive_pairing_unbounded](../../../../mathematics/Analysis/NegativeAbelKernel/Variante7af4a6070d9a331ecc43c8d33ab01d313fb334cf3c301d22a24c7de2ddd0aba.lean/declarations/smooth-nonpositive-pairing-unbounded--ab7315919548dff5849b011c.md) | 42 | `result-track:ab7315919548dff5849b011ca9d6a4fad1e0462f5b5d8c3650b63589111503d9` |
| 5 | `theorem` | [actual_native_pairing_unbounded](../../../../mathematics/Analysis/NegativeAbelKernel/Variante7af4a6070d9a331ecc43c8d33ab01d313fb334cf3c301d22a24c7de2ddd0aba.lean/declarations/actual-native-pairing-unbounded--d5e2422887627910e3e29a1d.md) | 93 | `result-track:d5e2422887627910e3e29a1dfff7a3e8dd490c1048d1584c997f75e222c05ffb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
