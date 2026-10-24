# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceHybridStorage.Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71747ff93ce975cc1624adcbab5b3dc0da5d54de",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71747ff93ce975cc1624adcbab5b3dc0da5d54de`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ConjTranspose` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [flow_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/declarations/flow-integral-bound--8df706e1c462437138822ca4.md) | 36 | `result-track:8df706e1c462437138822ca43e6589e7e37eeedb203ac5ea1a83b238c68bb132` |
| 2 | `theorem` | [signed_hybrid_telescope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/declarations/signed-hybrid-telescope--37c2077ec4cce81807c309ea.md) | 49 | `result-track:37c2077ec4cce81807c309ea426682fa43ea4cb0202fcf93310e6ac51196fef7` |
| 3 | `theorem` | [signed_hybrid_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/declarations/signed-hybrid-bound--89c371f32ea9e01d009ea638.md) | 66 | `result-track:89c371f32ea9e01d009ea638afb73c7e889aa69fd4ac34aeaa357d7729712c6d` |
| 4 | `def` | [quadraticReadout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/declarations/quadraticreadout--c0d14c6f17bd105d1d21cfae.md) | 83 | `declaration-track:c0d14c6f17bd105d1d21cfae22fa03fce514a327084aabf946c6d9a3df6dbd13` |
| 5 | `def` | [FormLE](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/declarations/formle--a76bfe37af2c8371209b4da6.md) | 87 | `declaration-track:a76bfe37af2c8371209b4da624237945dc3d355b35c38dd478f36731fe4df632` |
| 6 | `theorem` | [quadraticReadout_congruence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/declarations/quadraticreadout-congruence--816bad014bde85a1239d0aa5.md) | 90 | `result-track:816bad014bde85a1239d0aa569c5b4321e9be8a704f25902a37a2b8de0a1aa21` |
| 7 | `theorem` | [formLE_congruence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/declarations/formle-congruence--d283747cf07d6c0723f0c737.md) | 97 | `result-track:d283747cf07d6c0723f0c73792700d82a571c6c0413ab8fd494c3020e490e832` |
| 8 | `def` | [homogeneousProjector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/declarations/homogeneousprojector--8c95250ac0322d7b9ad745fe.md) | 103 | `declaration-track:8c95250ac0322d7b9ad745fe5f4cd38f5845d3377973cc4ac4af6657194f0d5c` |
| 9 | `theorem` | [homogeneousProjector_readout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/declarations/homogeneousprojector-readout--9ade961761fae9d9c3e00043.md) | 106 | `result-track:9ade961761fae9d9c3e00043c4ff47560c4cd041795e68efad3b3fb9080d25c8` |
| 10 | `theorem` | [homogeneousProjector_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/declarations/homogeneousprojector-covariance--bb8bbd725f89aa733b8aa9ce.md) | 112 | `result-track:bb8bbd725f89aa733b8aa9ce7cd1a1df9541fd3be1cf7f4c0f2d06899631a803` |
| 11 | `def` | [transformedStorageDerivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/declarations/transformedstoragederivative--f1b8483bf312dce803965502.md) | 128 | `declaration-track:f1b8483bf312dce803965502ec22bb362eae9d3d5ef4d07ac2322bbc8c5ccc57` |
| 12 | `theorem` | [flow_defect_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/declarations/flow-defect-covariance--e1b1f8f99dcc6709a2b78be9.md) | 131 | `result-track:e1b1f8f99dcc6709a2b78be930cae8f9fafbc13bae6b12ff47b57c229e304018` |
| 13 | `theorem` | [event_defect_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/declarations/event-defect-covariance--cc1191d6fb7d183467e1f204.md) | 149 | `result-track:cc1191d6fb7d183467e1f20461cbb545d6eb95a677e04ca552d45411f3ea56d4` |
| 14 | `theorem` | [simultaneous_affine_reset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/declarations/simultaneous-affine-reset--fd523a31fe7b41643fbe896c.md) | 167 | `result-track:fd523a31fe7b41643fbe896cab9a7f6b2ea816a9e38d50c7ab55963f1334745a` |
| 15 | `theorem` | [simultaneous_impulse_mixed_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/declarations/simultaneous-impulse-mixed-term--1c9286df238ae5235f5db2aa.md) | 173 | `result-track:1c9286df238ae5235f5db2aa12e190ede2caefef54c406a9c66316916251b9ab` |
| 16 | `theorem` | [offset_telescope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant7647f2627364085398a5427229cfbb1fdf46322f8e18d9c0f5f1c178beae2884.lean/declarations/offset-telescope--e4abd594ee0e286b63b2a5cc.md) | 180 | `result-track:e4abd594ee0e286b63b2a5cc76c7f920fa85f20155529e28f4da786e225473df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
