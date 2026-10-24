# Verification target: GRWTSK.Algebra.LinearAlgebra.ComparatorSeparation.Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50614d86285cb257a7c3234588d88eabf0e1349f",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50614d86285cb257a7c3234588d88eabf0e1349f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.InterventionDefect` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearComparator](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/linearcomparator--df1171f81914e5b288f06460.md) | 46 | `declaration-track:df1171f81914e5b288f0646008c006b30b9ffa9ffd9b2c53524eae8ac28c9791` |
| 2 | `def` | [responseDifference](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/responsedifference--6d6e23502de25135b8d441e9.md) | 53 | `declaration-track:6d6e23502de25135b8d441e98cf9342d0b2a929d0c8a76a6ddee4200f9609471` |
| 3 | `theorem` | [responseDifference_apply](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/responsedifference-apply--918df1ac4742dfca44bde775.md) | 59 | `result-track:918df1ac4742dfca44bde7758048f09e0d7e3203ed9f387f5ac6543ab29f9eda` |
| 4 | `def` | [comparatorGap](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/comparatorgap--eecd23156957a096e459a3ce.md) | 66 | `declaration-track:eecd23156957a096e459a3cea79710581eed290429d1f674c8fb47ee9ebefa6b` |
| 5 | `theorem` | [comparatorGap_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/comparatorgap-nonnegative--c4e7c1d907d19e7f62ce6f4b.md) | 71 | `result-track:c4e7c1d907d19e7f62ce6f4b443cf3b0af7d122b56dbf75010da2fcc88f541ac` |
| 6 | `theorem` | [comparatorGap_pos_iff](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/comparatorgap-pos-iff--05011baba84d98887412f1a2.md) | 78 | `result-track:05011baba84d98887412f1a2ac6f4b23cedf9d9c1e4dff2d0056c18f2e112a5b` |
| 7 | `theorem` | [comparatorGap_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/comparatorgap-eq-zero-iff--2e711d5ee16b0d8ea709a32e.md) | 84 | `result-track:2e711d5ee16b0d8ea709a32ea39d8aa4264f1179579c182798d71394629a5230` |
| 8 | `def` | [zero](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/zero--5b461c4f18051599f8c0e270.md) | 90 | `declaration-track:5b461c4f18051599f8c0e2708ea9b5e843356d79cf7d26c5ee6f03480ddbf81f` |
| 9 | `theorem` | [zero_readout](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/zero-readout--31d79fd189f81188b8081ac6.md) | 94 | `result-track:31d79fd189f81188b8081ac6f76b709a29b930045bf392747bd3dd58359daf4c` |
| 10 | `theorem` | [zero_responseDifference](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/zero-responsedifference--a0cfd747b61dc0f72ef794f6.md) | 99 | `result-track:a0cfd747b61dc0f72ef794f6eff14c203864cd60e8f701d13672eba3776bfd54` |
| 11 | `theorem` | [zero_comparatorGap](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/zero-comparatorgap--304da15c0837eb428c9c3579.md) | 105 | `result-track:304da15c0837eb428c9c3579eb11b8bc36edb1d7e2edda51167c411fd59bb74f` |
| 12 | `def` | [interventionSensitivity](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/interventionsensitivity--656485b98d9c07b81d6a855b.md) | 117 | `declaration-track:656485b98d9c07b81d6a855b8ef6250e52e54ce4c7257bf76f15eca03d0dcc03` |
| 13 | `theorem` | [interventionSensitivity_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/interventionsensitivity-nonnegative--fdc60a4e160950d839f70087.md) | 122 | `result-track:fdc60a4e160950d839f70087359b16325ed7740e7ff7bafe83961ccce2a7b595` |
| 14 | `theorem` | [interventionSensitivity_pos_iff_visible](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/interventionsensitivity-pos-iff-visible--15f3827de1d9ecb8440a257c.md) | 128 | `result-track:15f3827de1d9ecb8440a257c830fd2cdb080255af8ae3a77d51dbbf2a9bc0188` |
| 15 | `def` | [ComparatorSectorComplete](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/comparatorsectorcomplete--ff564985975d190b96d43110.md) | 136 | `declaration-track:ff564985975d190b96d4311070c4dceec063dee7ca69855a0cad125bf7e943ce` |
| 16 | `theorem` | [zeroComparator_sectorComplete](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/zerocomparator-sectorcomplete--7d86f498ac43bdebb5238c3a.md) | 142 | `result-track:7d86f498ac43bdebb5238c3a139afa529d2919885570b93c58698079cea2fa87` |
| 17 | `theorem` | [responseDifference_eq_projected](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/responsedifference-eq-projected--3ebf26c5ecdd050266061d5e.md) | 149 | `result-track:3ebf26c5ecdd050266061d5e83b09c1e38f893a01ba4ee0ce635e97b20f2f31a` |
| 18 | `theorem` | [comparatorGap_eq_projected_sq](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/comparatorgap-eq-projected-sq--9d2df6763a8a1f106b55aef3.md) | 159 | `result-track:9d2df6763a8a1f106b55aef3049b800bee4dd72275ea94d5e569d109fc48e891` |
| 19 | `def` | [ComparatorDetectsAt](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/comparatordetectsat--ef0ccc517200db36a0589a39.md) | 167 | `declaration-track:ef0ccc517200db36a0589a39f5e1afbb5b865bb6d715f156984a93b6972c7b6a` |
| 20 | `theorem` | [comparatorGap_pos_of_sectorComplete_detects](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/comparatorgap-pos-of-sectorcomplete-detects--b19a8182cc8986081f649707.md) | 173 | `result-track:b19a8182cc8986081f6497070dabc96dcedc05f29b687cd5b408392f8c3ed207` |
| 21 | `def` | [ComparatorCompleteFor](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/comparatorcompletefor--d4e606741a2a2d7573be75e2.md) | 184 | `declaration-track:d4e606741a2a2d7573be75e28c6b19b39cd20827fa37b04db77564b29f98bfa8` |
| 22 | `theorem` | [positive_sensitivity_implies_positive_gap_of_complete](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/positive-sensitivity-implies-positive-gap-of-complete--e40d5757ed49fc9bce0d0c6a.md) | 192 | `result-track:e40d5757ed49fc9bce0d0c6a7e929b53df19f5996f58021278352739dbd51425` |
| 23 | `theorem` | [positive_sensitivity_sectorComplete_zero_gap](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/positive-sensitivity-sectorcomplete-zero-gap--b0ecc3647cc662d5da750a78.md) | 204 | `result-track:b0ecc3647cc662d5da750a782038742bc039e312084cd8b4c5634adde5669c43` |
| 24 | `theorem` | [positive_sensitivity_zero_comparator_gap](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/positive-sensitivity-zero-comparator-gap--41719a4da302b0e99184566d.md) | 215 | `result-track:41719a4da302b0e99184566dab7c14526cc4691badc1b2cb6213fc5b0e57e6dc` |
| 25 | `theorem` | [not_all_comparators_separate_of_positive_sensitivity](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Variantd36edf816a4101c4ecda4975658d42f17f30b0d6272c33fc24a236ec9d9ecb5e.lean/declarations/not-all-comparators-separate-of-positive-sensitivity--a3a9dbd471b85697db76b37a.md) | 224 | `result-track:a3a9dbd471b85697db76b37a52fad55b44615eb146a33732f38bda2c2f2a3a26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
