# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Imo1962Q1.Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e86f8b3bd6245bbecbb093480e58cc255850b8f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e86f8b3bd6245bbecbb093480e58cc255850b8f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Digits` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProblemPredicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/declarations/problempredicate--08907a398c387d240190fa7b.md) | 38 | `declaration-track:08907a398c387d240190fa7be256b0d061c9965c641942dae159a018d6ba3cf7` |
| 2 | `abbrev` | [ProblemPredicate'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/declarations/problempredicate--9b61f251aa99f1f81efaf19e.md) | 47 | `declaration-track:9b61f251aa99f1f81efaf19ee5af23cdc69a1d3a133b0b86f96b2d6caa6a1660` |
| 3 | `theorem` | [without_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/declarations/without-digits--0d75df983958012b2961a8fe.md) | 51 | `result-track:0d75df983958012b2961a8fe2262573a933419ae0fc8657519c9673e867127d3` |
| 4 | `theorem` | [case_0_digit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/declarations/case-0-digit--60b0c1a5aacd9ca6544f1c65.md) | 68 | `result-track:60b0c1a5aacd9ca6544f1c65a6908d478bd695f3e718a6ce1ee0cfdea4cbf13e` |
| 5 | `theorem` | [case_1_digit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/declarations/case-1-digit--edd19c3b419c994a0a402675.md) | 75 | `result-track:edd19c3b419c994a0a402675c55d4dd718a4dbb541604f257ec7a6801626ee0d` |
| 6 | `theorem` | [case_2_digit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/declarations/case-2-digit--0c343e1d89b41abc0f8410a9.md) | 83 | `result-track:0c343e1d89b41abc0f8410a9a922c5af07dbe19d60d65566b13d60f3ff4327bf` |
| 7 | `theorem` | [case_3_digit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/declarations/case-3-digit--dd1f15ff9d5565615c0c85cc.md) | 91 | `result-track:dd1f15ff9d5565615c0c85ccef4857453b4120842ec5635b782333d22f247f28` |
| 8 | `theorem` | [case_4_digit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/declarations/case-4-digit--5b8eff4e3c9c59f1be1c7436.md) | 99 | `result-track:5b8eff4e3c9c59f1be1c743660d4e029c61002509149e94d5536307c80d2ebe1` |
| 9 | `theorem` | [helper_5_digit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/declarations/helper-5-digit--099a747db4047801f1f159f0.md) | 108 | `result-track:099a747db4047801f1f159f0f439d61e4e91fb74088f09411d2897fd0f36cc5e` |
| 10 | `theorem` | [case_5_digit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/declarations/case-5-digit--5d0d9ddef31e33475eee6c2c.md) | 111 | `result-track:5d0d9ddef31e33475eee6c2cf688c322eaa4a4ef4cc3889c4a562044535bd406` |
| 11 | `theorem` | [case_more_digits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/declarations/case-more-digits--7b6932bd46bc07bc66bab749.md) | 122 | `result-track:7b6932bd46bc07bc66bab749783791955660e8255389a0901a1c118d13d6f377` |
| 12 | `theorem` | [satisfied_by_153846](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/declarations/satisfied-by-153846--4177e9b38b4b83fb11ab0b20.md) | 141 | `result-track:4177e9b38b4b83fb11ab0b20b1e66f0949da943b4c5088ac51417504c4d2468e` |
| 13 | `theorem` | [no_smaller_solutions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/declarations/no-smaller-solutions--f66155706532c11d6a237db5.md) | 145 | `result-track:f66155706532c11d6a237db52e5607f4c8667f7b09d18e1603465e90d92a543b` |
| 14 | `theorem` | [imo1962_q1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo1962Q1/Variant6e86da65c6f739f341680e12a938e78e26847a76afb6c22a9847d8599c9dccd8.lean/declarations/imo1962-q1--92a21de72e24cc11a767a2a1.md) | 167 | `result-track:92a21de72e24cc11a767a2a136b0040fed2650f0aae7f122f64963e5f302f6cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
