# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HalfLineExponential.Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a26adbd2364e70dee2b93bca325ad80c04f1a21",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a26adbd2364e70dee2b93bca325ad80c04f1a21`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.L2Space` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfLineMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/halflinemeasure--cb73b6debd20743420f7d117.md) | 20 | `declaration-track:cb73b6debd20743420f7d1170307ef9a7bdfbfef1a542b258173b76ffd00c77c` |
| 2 | `abbrev` | [H](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/h--87dc1abfc5adfc5f772a44b0.md) | 23 | `declaration-track:87dc1abfc5adfc5f772a44b0ca4b4bbb3279d96391c7b788e40e13ab11e33c47` |
| 3 | `def` | [exponentialFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/exponentialfunction--88f89e0aab8cd15a39b480e6.md) | 26 | `declaration-track:88f89e0aab8cd15a39b480e6a0dbb73aab0c4de706baf8f293b442bd13655f83` |
| 4 | `theorem` | [exponentialFunction_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/exponentialfunction-continuous--6fe5074e4a690ae35b268593.md) | 28 | `result-track:6fe5074e4a690ae35b2685939e6cfe5e4ea790905e5afe5ee4406eba445b16d2` |
| 5 | `theorem` | [exponentialFunction_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/exponentialfunction-integrable--afd3b86e4e7f78b681599713.md) | 32 | `result-track:afd3b86e4e7f78b681599713401cde85c46e953da21adbe180031a5ed7dc7819` |
| 6 | `theorem` | [exponentialFunction_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/exponentialfunction-norm-sq--29b469bcc0cdb4f8a55c93ad.md) | 36 | `result-track:29b469bcc0cdb4f8a55c93ad7e7bf8ff0d6b9b3f4a29712fe2004eeb0192da97` |
| 7 | `theorem` | [exponentialFunction_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/exponentialfunction-sq-integrable--a585a632bb8c95c6d07dbf1b.md) | 45 | `result-track:a585a632bb8c95c6d07dbf1b8eaaa0db1e382027d9d0244a1201767b7c99d8f9` |
| 8 | `theorem` | [exponentialFunction_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/exponentialfunction-memlp--4b7cd454ec716796e727f3ff.md) | 50 | `result-track:4b7cd454ec716796e727f3ff655d06b178188028e6a53ea30915aabf30c3e1c7` |
| 9 | `theorem` | [exponentialFunction_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/exponentialfunction-sq-integral--f82aec117fe38c2952ba522c.md) | 56 | `result-track:f82aec117fe38c2952ba522c9245762f045ebbbd6ff7ff03b6f7bded695ed726` |
| 10 | `def` | [exponentialVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/exponentialvector--507e7ea40305a7cd9701fb77.md) | 63 | `declaration-track:507e7ea40305a7cd9701fb7754aecb8838997c5ef59ace1b3ee6fdda2f24af65` |
| 11 | `theorem` | [exponentialVector_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/exponentialvector-ae--56f460bd8e42b98ff796ad5f.md) | 66 | `result-track:56f460bd8e42b98ff796ad5fd2cd5ec959adf125f3e52d691db8853df5fc79de` |
| 12 | `theorem` | [pointwise_inner_exponential](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/pointwise-inner-exponential--0f60bb37aec335da961993f1.md) | 70 | `result-track:0f60bb37aec335da961993f1e16b5899a154d3f6839765eb8a0c3a3ee33c082b` |
| 13 | `theorem` | [inner_exponential_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/inner-exponential-integrable--cd8d2a2891d7301f15cf8346.md) | 80 | `result-track:cd8d2a2891d7301f15cf834656db8c097b686020423bee6e0f470dd18750c018` |
| 14 | `theorem` | [inner_exponential_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/inner-exponential-integral--8d4694a8d9f453b440971ba0.md) | 86 | `result-track:8d4694a8d9f453b440971ba0a07590716a745341312eef82c43e9c3dd123bc9d` |
| 15 | `theorem` | [inner_exponentialVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/inner-exponentialvector--50404a889a26fb0d33c234e1.md) | 95 | `result-track:50404a889a26fb0d33c234e1707e6d2583bd8e59193143c6a1786cca8fd24422` |
| 16 | `theorem` | [exponentialVector_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/exponentialvector-norm-sq--05e797bcfee0545db3992fcc.md) | 106 | `result-track:05e797bcfee0545db3992fccad8355dd1f3e528157ab55eb440bec62017cada7` |
| 17 | `theorem` | [exponentialVector_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/exponentialvector-ne-zero--ab46c0efae5540881ac6eb5a.md) | 117 | `result-track:ab46c0efae5540881ac6eb5ad0b2a76ef448143472bb130acf566c0eca6e7d5e` |
| 18 | `def` | [referenceVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/referencevector--eba58010406f8d6e1629ee01.md) | 126 | `declaration-track:eba58010406f8d6e1629ee01f154fed9de1317de2652042a88a338985104e84f` |
| 19 | `theorem` | [referenceVector_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/referencevector-ae--9ef7489315206ffc0a7ca5f2.md) | 128 | `result-track:9ef7489315206ffc0a7ca5f275b568063a86819f74d70dd0817cc49c3f399789` |
| 20 | `theorem` | [referenceVector_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/referencevector-norm-sq--bb9fd4d96a8e21e44ebaf35e.md) | 134 | `result-track:bb9fd4d96a8e21e44ebaf35eba8d6b7cf439eefb61d028fc3b324032d355974a` |
| 21 | `theorem` | [inner_reference_exponential](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/inner-reference-exponential--2220ccc0046efd9f0090dd6b.md) | 137 | `result-track:2220ccc0046efd9f0090dd6b5774308155614645652a48c08c08b27a2a88f7ba` |
| 22 | `theorem` | [inner_exponential_reference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/inner-exponential-reference--0e22d6c1bffc49cfbf958655.md) | 141 | `result-track:0e22d6c1bffc49cfbf958655b75005dc2bf4de2754c3ae7d4060db256095dcc5` |
| 23 | `theorem` | [norm_sq_inner_reference_exponential](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/norm-sq-inner-reference-exponential--85b75f46468a6f4a89da8ce9.md) | 145 | `result-track:85b75f46468a6f4a89da8ce955896718ad91fec1d4bbca6a3f2c07256b6f3f83` |
| 24 | `theorem` | [reference_projection_coefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/reference-projection-coefficient--7cc4c3511dac0e5ca187cbcc.md) | 153 | `result-track:7cc4c3511dac0e5ca187cbcc3e352a2a89b90f499e85d01b6a5cbb34bd8a2104` |
| 25 | `theorem` | [one_add_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/one-add-ne-zero--f266884e6df89f44985d70c6.md) | 160 | `result-track:f266884e6df89f44985d70c6d6853deaa8757ac36fdde3347f3bc0d63864a02f` |
| 26 | `theorem` | [reference_projection_coefficient_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Variantdf917553bbba1f22aa7d6297859a378ba0b660dc67a5f8ff3e73d7252a25dd49.lean/declarations/reference-projection-coefficient-pos--3221f537e143f2a7699bd9e0.md) | 166 | `result-track:3221f537e143f2a7699bd9e0f9ea476a7c5b26e8873565a89241451cb5dfe5c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
