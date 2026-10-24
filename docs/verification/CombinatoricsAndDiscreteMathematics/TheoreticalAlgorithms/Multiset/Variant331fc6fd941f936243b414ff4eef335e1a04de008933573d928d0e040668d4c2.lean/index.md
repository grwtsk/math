# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Multiset.Variant331fc6fd941f936243b414ff4eef335e1a04de008933573d928d0e040668d4c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f915e7a749b5704d14d6396d7a51088e7086439",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant331fc6fd941f936243b414ff4eef335e1a04de008933573d928d0e040668d4c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant331fc6fd941f936243b414ff4eef335e1a04de008933573d928d0e040668d4c2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant331fc6fd941f936243b414ff4eef335e1a04de008933573d928d0e040668d4c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f915e7a749b5704d14d6396d7a51088e7086439`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant331fc6fd941f936243b414ff4eef335e1a04de008933573d928d0e040668d4c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant331fc6fd941f936243b414ff4eef335e1a04de008933573d928d0e040668d4c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Chain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Sort` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.List` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [enle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant331fc6fd941f936243b414ff4eef335e1a04de008933573d928d0e040668d4c2.lean/declarations/enle--2921ac1972911817aa2720a2.md) | 22 | `declaration-track:2921ac1972911817aa2720a2a34b6579eab1073f092c4b6d6b67cde90c961873` |
| 2 | `theorem` | [enle.isLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant331fc6fd941f936243b414ff4eef335e1a04de008933573d928d0e040668d4c2.lean/declarations/enle-islinearorder--063509d375eac11df5249b53.md) | 25 | `result-track:063509d375eac11df5249b538cba02df7e36d4552e6b12658f1ee8cc4293a7b2` |
| 3 | `def` | [decidable_enle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant331fc6fd941f936243b414ff4eef335e1a04de008933573d928d0e040668d4c2.lean/declarations/decidable-enle--a46470ebe67fb622b1d12544.md) | 28 | `declaration-track:a46470ebe67fb622b1d12544889b9f929beab60159c6859ebaac13e4ae39aa1f` |
| 4 | `def` | [encodeMultiset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant331fc6fd941f936243b414ff4eef335e1a04de008933573d928d0e040668d4c2.lean/declarations/encodemultiset--484957842e97d550272e154b.md) | 35 | `declaration-track:484957842e97d550272e154b368d1c6fd4e6dd5755708e6091aea37023335826` |
| 5 | `def` | [decodeMultiset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant331fc6fd941f936243b414ff4eef335e1a04de008933573d928d0e040668d4c2.lean/declarations/decodemultiset--446adf3998a536010d702039.md) | 39 | `declaration-track:446adf3998a536010d7020390204320ee8690769900240d18d1a36ed9f29e531` |
| 6 | `instance` | [_root_.Multiset.encodable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant331fc6fd941f936243b414ff4eef335e1a04de008933573d928d0e040668d4c2.lean/declarations/root-multiset-encodable--246c744ef44ecb5edff51d25.md) | 43 | `declaration-track:246c744ef44ecb5edff51d25a9c45f230b84bb2ccdb0768205fa51ce1f054e0b` |
| 7 | `def` | [lower](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant331fc6fd941f936243b414ff4eef335e1a04de008933573d928d0e040668d4c2.lean/declarations/lower--c676f3f5da4620e5151a3f3a.md) | 55 | `declaration-track:c676f3f5da4620e5151a3f3a9ce3ccdee1ce3e27c510b50b710cec65c94ab372` |
| 8 | `def` | [raise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant331fc6fd941f936243b414ff4eef335e1a04de008933573d928d0e040668d4c2.lean/declarations/raise--45ad90f8538ba8e67c5a829e.md) | 61 | `declaration-track:45ad90f8538ba8e67c5a829e855f7115797ee9f48af4e2f2e7ff52f4604c029b` |
| 9 | `theorem` | [lower_raise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant331fc6fd941f936243b414ff4eef335e1a04de008933573d928d0e040668d4c2.lean/declarations/lower-raise--b4cf68457737db011c475509.md) | 65 | `result-track:b4cf68457737db011c4755096e2de7f3401f9a303e50cd90b108e84c44f550e1` |
| 10 | `theorem` | [raise_lower](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant331fc6fd941f936243b414ff4eef335e1a04de008933573d928d0e040668d4c2.lean/declarations/raise-lower--7644f6db1a437406eaa13204.md) | 69 | `result-track:7644f6db1a437406eaa1320462b486e8c97c8a7c3b68fad7dae79663f1dfe792` |
| 11 | `theorem` | [raise_chain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant331fc6fd941f936243b414ff4eef335e1a04de008933573d928d0e040668d4c2.lean/declarations/raise-chain--700ed5dd655470fba9e3e52f.md) | 75 | `result-track:700ed5dd655470fba9e3e52fc592e73c0b004bf7daa8ba734b3e9490415624aa` |
| 12 | `theorem` | [raise_sorted](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant331fc6fd941f936243b414ff4eef335e1a04de008933573d928d0e040668d4c2.lean/declarations/raise-sorted--f9746971d78aa4feaeddad5e.md) | 80 | `result-track:f9746971d78aa4feaeddad5e285a514845a576862b1fa2b75587ebf1361f401b` |
| 13 | `instance` | [multiset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Multiset/Variant331fc6fd941f936243b414ff4eef335e1a04de008933573d928d0e040668d4c2.lean/declarations/multiset--e985263721434a792bd6b553.md) | 86 | `declaration-track:e985263721434a792bd6b5530fcf707de8a39f494bb4e23e08f80e7ca89b4dd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
