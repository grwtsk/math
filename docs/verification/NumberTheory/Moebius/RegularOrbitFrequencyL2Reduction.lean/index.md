# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitFrequencyL2Reduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f51caa56d98e3cbd37bbb051cb3f63855021b82b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f51caa56d98e3cbd37bbb051cb3f63855021b82b`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitShiftParityResidueConvolution`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitShiftParityResidueConvolution.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Algebra.Order.Chebyshev` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_twoKernelRegularOrbitRepresentativeSet_le_square](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean/declarations/card-twokernelregularorbitrepresentativeset-le-square--352f17f5f3f9503c4292e16f.md) | 42 | `result-track:352f17f5f3f9503c4292e16fddaf692cc8284c1d3d89cb425132509a38af487b` |
| 2 | `theorem` | [sum_norm_le_parameter_mul_sqrt_sum_sq](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean/declarations/sum-norm-le-parameter-mul-sqrt-sum-sq--a88924f67fc42ba80521ae2e.md) | 56 | `result-track:a88924f67fc42ba80521ae2e8e94afaf073d51a61b5aa23d1fc6006a04dba95a` |
| 3 | `def` | [twoNonunitRegularShiftParityFrequencyL2Majorant](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean/declarations/twononunitregularshiftparityfrequencyl2majorant--a48e03031b4d2dbab3dfe386.md) | 95 | `declaration-track:a48e03031b4d2dbab3dfe386c931909106f395854dd8ac27c7d200cabb9ee68c` |
| 4 | `theorem` | [sum_regularShiftParityResidueFourierMajorant_le_l2](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean/declarations/sum-regularshiftparityresiduefouriermajorant-le-l2--a63c2d9c21af8d95f0014573.md) | 112 | `result-track:a63c2d9c21af8d95f0014573ec7f6443d70ab451ce5745cef55a4e95e2dbbf53` |
| 5 | `def` | [twoNonunitRegularShiftParityFrequencyL2EndpointMajorant](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean/declarations/twononunitregularshiftparityfrequencyl2endpointmajorant--62a15cb2aa7a57c55f80d862.md) | 147 | `declaration-track:62a15cb2aa7a57c55f80d862140bd84e7957f845e1bd5fe99d81c8bedb3d9712` |
| 6 | `theorem` | [regularShiftParityResidueEndpointMajorant_le_frequencyL2](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean/declarations/regularshiftparityresidueendpointmajorant-le-frequencyl2--7e69aeb75602a3c2e5cbeff6.md) | 160 | `result-track:7e69aeb75602a3c2e5cbeff6ca1a96b472d0f896b2c9c6f35a1753081b499e35` |
| 7 | `def` | [DyadicNaturalScaleRegularShiftParityFrequencyL2Budget](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean/declarations/dyadicnaturalscaleregularshiftparityfrequencyl2budget--596e411df660185d6bc9fc43.md) | 194 | `declaration-track:596e411df660185d6bc9fc43783b193396eede2e0d01b9f9f1b0a8cdf111cdf0` |
| 8 | `theorem` | [regularShiftParityResidueBudget_of_frequencyL2](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean/declarations/regularshiftparityresiduebudget-of-frequencyl2--dd404fabb7050ee8bce60e04.md) | 204 | `result-track:dd404fabb7050ee8bce60e040f8e9f425f26fba228b68fbe304727bbe146dc18` |
| 9 | `def` | [regularFrequencyL2ToShiftParityResidueAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean/declarations/regularfrequencyl2toshiftparityresidueadapter--109a2acd5b4bad0376701183.md) | 216 | `declaration-track:109a2acd5b4bad03767011831fdbdd3e587a97d9c9a74e6b490823bc052b4247` |
| 10 | `theorem` | [naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regularFrequencyL2](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean/declarations/naturalscalecongruencel1-of-two-pointwisemertens-twounit-regularfrequenc--3bb8a7e8883342c1904fa578.md) | 224 | `result-track:3bb8a7e8883342c1904fa57856e791c12a8bb8b7c1a2e7786d69b3d98d0f001f` |
| 11 | `structure` | [RegularShiftParityParsevalSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean/declarations/regularshiftparityparsevalsourcedata--928d6432594802db8e7e6cfb.md) | 237 | `declaration-track:928d6432594802db8e7e6cfba035e8c3b454f54630120de19560a4aa403ed7c7` |
| 12 | `def` | [RegularShiftParityParsevalSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean/declarations/regularshiftparityparsevalsource--073af85d8796df0c1233f1ad.md) | 251 | `declaration-track:073af85d8796df0c1233f1ad1893d53997eb1bd63aa8c21a0c347b39ee36f576` |
| 13 | `structure` | [ToRegularShiftParityFrequencyL2BudgetAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean/declarations/toregularshiftparityfrequencyl2budgetadapter--ed2b2f901441152bb3846af5.md) | 267 | `declaration-track:ed2b2f901441152bb3846af57b2d7daddd40b1aff9981da10cd235bcce9144ab` |
| 14 | `abbrev` | [RegularShiftParityParsevalAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean/declarations/regularshiftparityparsevaladapter--6a073694f02b3951ee3f7186.md) | 272 | `declaration-track:6a073694f02b3951ee3f7186f2b35e281385e401ca8de3d0f8f2880cdc60c950` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
