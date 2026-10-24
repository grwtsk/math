# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sum.Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e085a570ea10dc9292aa5506559a75ee86a00731",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e085a570ea10dc9292aa5506559a75ee86a00731`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.MinMax` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Div.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.MinMax` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_pos_iff_exists_pos_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc.lean/declarations/sum-pos-iff-exists-pos-nat--a34ed90c5d785ba37752e446.md) | 25 | `result-track:a34ed90c5d785ba37752e446fa42182078e2a3f4892b34a3c63e6e9178b65c1c` |
| 2 | `theorem` | [sum_eq_zero_iff_forall_eq_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc.lean/declarations/sum-eq-zero-iff-forall-eq-nat--d5c51548af485b5c58f9fd67.md) | 32 | `result-track:d5c51548af485b5c58f9fd67db8e50d1ad37f5d8042838b5785f8cb5a4eb64bb` |
| 3 | `theorem` | [sum_replicate_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc.lean/declarations/sum-replicate-nat--dc93c4778eb9698a1cde07d2.md) | 38 | `result-track:dc93c4778eb9698a1cde07d2a4ca79864ead09b3923de9e5d2187d022d49b9ed` |
| 4 | `theorem` | [sum_append_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc.lean/declarations/sum-append-nat--18386af72104cd23c246705b.md) | 41 | `result-track:18386af72104cd23c246705bc7bd706f83453d5921b6d2df0430cdc4a20d70c1` |
| 5 | `theorem` | [sum_reverse_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc.lean/declarations/sum-reverse-nat--5468ad108cc5e62f0ab22bb0.md) | 44 | `result-track:5468ad108cc5e62f0ab22bb03ca5a6ddc36a0134f87484ee557cb06e9b9596a9` |
| 6 | `theorem` | [sum_eq_foldl_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc.lean/declarations/sum-eq-foldl-nat--b917c9b71c14ed743a737ec5.md) | 47 | `result-track:b917c9b71c14ed743a737ec502e0a1874693d68398d32e874d6f60a442b79b9b` |
| 7 | `theorem` | [min_mul_length_le_sum_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc.lean/declarations/min-mul-length-le-sum-nat--e425d872fe7be6ff5c491130.md) | 50 | `result-track:e425d872fe7be6ff5c491130989ae0f9322764a9e90aa77da61a2253e69ec7b7` |
| 8 | `theorem` | [mul_length_le_sum_of_min?_eq_some_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc.lean/declarations/mul-length-le-sum-of-min-eq-some-nat--54641e83b9e505bb3d35d4e6.md) | 67 | `result-track:54641e83b9e505bb3d35d4e644f062b43f83cf9ad048b9b60c1c6369e72f30fa` |
| 9 | `theorem` | [min_le_sum_div_length_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc.lean/declarations/min-le-sum-div-length-nat--60e087ded1c9b5f82a311ca3.md) | 74 | `result-track:60e087ded1c9b5f82a311ca35ed984630bf95331891451cddf623002046229ce` |
| 10 | `theorem` | [le_sum_div_length_of_min?_eq_some_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc.lean/declarations/le-sum-div-length-of-min-eq-some-nat--10332e83bf3ae1cde4a9b9c5.md) | 80 | `result-track:10332e83bf3ae1cde4a9b9c5849df529a890b8f0bf6736e62fd2a2244ccf4168` |
| 11 | `theorem` | [sum_le_max_mul_length_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc.lean/declarations/sum-le-max-mul-length-nat--a35efd1e62b35ebcd4c24c36.md) | 87 | `result-track:a35efd1e62b35ebcd4c24c367880f29adbb9351817673f52e6d6862a4e06ca8a` |
| 12 | `theorem` | [sum_le_max_mul_length_of_max?_eq_some_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc.lean/declarations/sum-le-max-mul-length-of-max-eq-some-nat--30169126d6f8a980abe94d26.md) | 104 | `result-track:30169126d6f8a980abe94d2683c87380d926d213835f62f61f6f1f442caaa7f8` |
| 13 | `theorem` | [sum_div_length_le_max_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc.lean/declarations/sum-div-length-le-max-nat--2b4ef24023b62117d3aabc48.md) | 112 | `result-track:2b4ef24023b62117d3aabc48dd8620c2964e645cdc01df7b017caad6b8a1c8b8` |
| 14 | `theorem` | [sum_div_length_le_max_of_max?_eq_some_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant873381db0502d0f747d27d0faa47b52286fbc28a74955fad9e8f27502a0d56dc.lean/declarations/sum-div-length-le-max-of-max-eq-some-nat--91b3fc0054110567b00929e7.md) | 120 | `result-track:91b3fc0054110567b00929e72b8d3740c6075f27db5ba0040754daeec1de0a8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
