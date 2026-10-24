# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Averaging.Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "165303d3d91b8a65774a90404b3a3f45d2cf95e5",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `165303d3d91b8a65774a90404b3a3f45d2cf95e5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrixFlow.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AveragedCell](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/averagedcell--314496d5e9f9441a67a0d308.md) | 16 | `declaration-track:314496d5e9f9441a67a0d3089889e14a0a514afa8983de378097f089aaf55eed` |
| 2 | `def` | [meanFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/meanfrom--383e328705ba31b80a99f8be.md) | 22 | `declaration-track:383e328705ba31b80a99f8beba0f8f60d39f9184fda24a165f27de06dc284112` |
| 3 | `structure` | [AveragedBinaryLogicMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/averagedbinarylogicmatrix--6c12fcce6183b1db9b33f9ee.md) | 25 | `declaration-track:6c12fcce6183b1db9b33f9eefef46a6225f837cea89a165d224018b6dc79a71f` |
| 4 | `structure` | [AverageResult](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/averageresult--5d98e2210e4bfe4a0157bd57.md) | 28 | `declaration-track:5d98e2210e4bfe4a0157bd576438d1ce1c199e3fda480026f7d1564b1ca09163` |
| 5 | `def` | [selectedContribution](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/selectedcontribution--647eeb2d0809b04eab550b29.md) | 32 | `declaration-track:647eeb2d0809b04eab550b292cfe21c679689508c0e81f523ffe1e21e487b74e` |
| 6 | `def` | [selectedDivisorContribution](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/selecteddivisorcontribution--b272991f64e1027de9975b43.md) | 44 | `declaration-track:b272991f64e1027de9975b43f105559cb49bf699a77d81c822199746397613e9` |
| 7 | `def` | [cellNumerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/cellnumerator--25abaaacd1a259f71546cc87.md) | 53 | `declaration-track:25abaaacd1a259f71546cc87164902ca715047fd2e9f7a0052b6725221836d8f` |
| 8 | `def` | [cellDivisor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/celldivisor--ed25c6ee8f61bb3e32506535.md) | 56 | `declaration-track:ed25c6ee8f61bb3e3250653500d54c7ce01d6119cbb2c4c785ab1ce7c91d4780` |
| 9 | `def` | [averagedCell](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/averagedcell--6290e6ad63f8f49f94313bb2.md) | 59 | `declaration-track:6290e6ad63f8f49f94313bb2865cc8735316991f860ecd8d8441d45633bb4947` |
| 10 | `def` | [computeAverage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/computeaverage--abe90c71a44559ca6d89ce95.md) | 65 | `declaration-track:abe90c71a44559ca6d89ce9548e9f40faf0731e39baf61f3745469c2f1263386` |
| 11 | `def` | [averageResult](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/averageresult--624971deea3d9613343feb67.md) | 68 | `declaration-track:624971deea3d9613343feb67618638ea9e51978ca953fb9df60e799a547b0d6d` |
| 12 | `def` | [PaddingSound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/paddingsound--4ac8e7acd06f522eb0d60e0d.md) | 72 | `declaration-track:4ac8e7acd06f522eb0d60e0d53fb684680f06ea9be0150ae85840bfcbe1824d8` |
| 13 | `def` | [ComparisonSound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/comparisonsound--7f486b58a923b35ce7f56899.md) | 73 | `declaration-track:7f486b58a923b35ce7f56899dde0d684354f7474b2d36f7c6328a6f1031a446b` |
| 14 | `def` | [SpectralChoiceSound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/spectralchoicesound--557ab66e4c1101f9fa88e406.md) | 74 | `declaration-track:557ab66e4c1101f9fa88e4067d461f5872c86709cc135532c7b9e1cedacf6d54` |
| 15 | `def` | [DivisorSound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/divisorsound--468e702b8e144174a7b60dc8.md) | 75 | `declaration-track:468e702b8e144174a7b60dc8a7301b19236e9489a1b9dd426197d5ebcd202f95` |
| 16 | `def` | [MeanSound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/meansound--c0db441cd97672469f8c6f0a.md) | 76 | `declaration-track:c0db441cd97672469f8c6f0adbca1cb01a996c2a738cc07b4014b47a3ac9c098` |
| 17 | `theorem` | [average_none_iff_zero_divisor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/average-none-iff-zero-divisor--1a8311c090033e4f54def82a.md) | 78 | `result-track:1a8311c090033e4f54def82a7b8ee01033b63702b0c57efd4e9033d32c8026cc` |
| 18 | `theorem` | [average_mean_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/average-mean-sound--2e93626f0b2e341d713ba6b2.md) | 84 | `result-track:2e93626f0b2e341d713ba6b28010cc18f2f9b7454b89a9d40f530919e0723839` |
| 19 | `theorem` | [average_divisor_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/average-divisor-sound--448ccde72ec0bbc744fc34f8.md) | 93 | `result-track:448ccde72ec0bbc744fc34f89817f2b53ea671b10440572c28bbf3aae86261d2` |
| 20 | `theorem` | [average_result_mean_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/average-result-mean-sound--e6a6101be562faf43843ff80.md) | 97 | `result-track:e6a6101be562faf43843ff80b32ea0f49bf56f37014a3bdcc6fcd3a5078e0ec6` |
| 21 | `theorem` | [average_bounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/average-bounds--725b8bd796245d826d6bfa32.md) | 101 | `result-track:725b8bd796245d826d6bfa32f5f404fce419686d96cec9d29060ffcf6ed33f79` |
| 22 | `theorem` | [flow_deterministic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/flow-deterministic--1f13a3b5f84bc78637251db8.md) | 105 | `result-track:1f13a3b5f84bc78637251db8f52e799e7ea0f4b1b1f36add521c9e8d06edc1b1` |
| 23 | `theorem` | [flow_padding_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/flow-padding-sound--3a151019e2ea8a5361eda3cd.md) | 109 | `result-track:3a151019e2ea8a5361eda3cd2e05accb53ac31f278b3e8d5d7746fc6326eeecc` |
| 24 | `theorem` | [flow_comparison_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/flow-comparison-sound--f0e58ce7a329929e6dd8983c.md) | 113 | `result-track:f0e58ce7a329929e6dd8983c5dcafc78697df11d960f7e484e8db778b122b729` |
| 25 | `theorem` | [flow_spectral_choice_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/declarations/flow-spectral-choice-sound--e9420922cbfe05000317cd5b.md) | 117 | `result-track:e9420922cbfe05000317cd5b0c3db5be3feea0561a11ee331e05b40cce7c0540` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
