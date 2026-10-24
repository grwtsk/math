# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Nat.Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1044cc18b846782809ae6a02f7cd251896b29ff6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1044cc18b846782809ae6a02f7cd251896b29ff6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.Sum` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Prod` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_pos_iff_exists_pos_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/sum-pos-iff-exists-pos-nat--b29aa50ce31d1679d19fe850.md) | 29 | `result-track:b29aa50ce31d1679d19fe850aa4387976462ca0a7c419b607f938a7352589dda` |
| 2 | `theorem` | [sum_eq_zero_iff_forall_eq_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/sum-eq-zero-iff-forall-eq-nat--0d9e6f73b049635b3158fe72.md) | 32 | `result-track:0d9e6f73b049635b3158fe72af72e70c26c613081a62c21c406890109f2a795b` |
| 3 | `theorem` | [sum_replicate_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/sum-replicate-nat--ab8b44d8978a229ef7654f5a.md) | 36 | `result-track:ab8b44d8978a229ef7654f5ac2306c7a4bfeb371d5154bef56e91f881350b8fd` |
| 4 | `theorem` | [sum_append_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/sum-append-nat--cea163f497abdc24e18ad632.md) | 40 | `result-track:cea163f497abdc24e18ad632d380ac0934c0d7581f828d944e72b2665f90a1cc` |
| 5 | `theorem` | [sum_reverse_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/sum-reverse-nat--d70c5fd0fe09320070ce42d3.md) | 43 | `result-track:d70c5fd0fe09320070ce42d3fc1edf52f40fa53450b52f7526054c33bead66d1` |
| 6 | `theorem` | [sum_eq_foldl_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/sum-eq-foldl-nat--762e23a351ea9994eedaba9d.md) | 46 | `result-track:762e23a351ea9994eedaba9d32692522e428181ae77fe4c1cddc69aef432a570` |
| 7 | `theorem` | [min_mul_length_le_sum_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/min-mul-length-le-sum-nat--fb5275cd0c9e1df05d04c940.md) | 49 | `result-track:fb5275cd0c9e1df05d04c940ed511f2d4501276285af6a77c6ac5161ee0aebcf` |
| 8 | `theorem` | [mul_length_le_sum_of_min?_eq_some_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/mul-length-le-sum-of-min-eq-some-nat--c8c8897fb695aa49e38e4f02.md) | 54 | `result-track:c8c8897fb695aa49e38e4f02123e255d7800303f5ff41f156b5cc1c234d45a82` |
| 9 | `theorem` | [min_le_sum_div_length_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/min-le-sum-div-length-nat--020c8bc45394785be36d8c8d.md) | 60 | `result-track:020c8bc45394785be36d8c8dac31064867dfe2dc70fe24fee72005c78b16541e` |
| 10 | `theorem` | [le_sum_div_length_of_min?_eq_some_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/le-sum-div-length-of-min-eq-some-nat--5115e615e02fd79c39d54d90.md) | 65 | `result-track:5115e615e02fd79c39d54d90ac20d4fe968875e99704f07f074769b0d4c5bfd2` |
| 11 | `theorem` | [sum_le_max_mul_length_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/sum-le-max-mul-length-nat--cfc71b6c54f0beb4fb2fca97.md) | 71 | `result-track:cfc71b6c54f0beb4fb2fca971baa6500d7b355ae9eef805ad3c869f5c5b88fb6` |
| 12 | `theorem` | [sum_le_max_mul_length_of_max?_eq_some_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/sum-le-max-mul-length-of-max-eq-some-nat--f2b60acf00f84ccffee7154f.md) | 76 | `result-track:f2b60acf00f84ccffee7154f5d166a2d095ca6c2b743bf84013eff5b04116167` |
| 13 | `theorem` | [sum_div_length_le_max_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/sum-div-length-le-max-nat--3a94d3043f77405c5991fd6d.md) | 82 | `result-track:3a94d3043f77405c5991fd6d4fa7b34a4f4b2e1978bd86092ef3d06e7cc5a39a` |
| 14 | `theorem` | [sum_div_length_le_max_of_max?_eq_some_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/sum-div-length-le-max-of-max-eq-some-nat--a2f5b5175bbbb470e5d66ffc.md) | 87 | `result-track:a2f5b5175bbbb470e5d66ffcfc6c85b9c0e04a4d5c4d6c19de4f34b5193cc35a` |
| 15 | `theorem` | [prod_pos_iff_forall_pos_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/prod-pos-iff-forall-pos-nat--f6f7cce006779d5cd54a2cb0.md) | 93 | `result-track:f6f7cce006779d5cd54a2cb045881723682608cc2dc36e11b6323942fe9fd350` |
| 16 | `theorem` | [prod_eq_zero_iff_exists_zero_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/prod-eq-zero-iff-exists-zero-nat--910837b02d89162183855363.md) | 96 | `result-track:910837b02d891621838553635e9ea15e8bffbf190cd0b671ff495d08a0f6dfa5` |
| 17 | `theorem` | [prod_replicate_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/prod-replicate-nat--d9c89c5b7412ca66c54c0fe0.md) | 100 | `result-track:d9c89c5b7412ca66c54c0fe0fda883ed743203ad4ba51e4225bf57ec4a94086b` |
| 18 | `theorem` | [prod_append_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/prod-append-nat--0147d7a74dc7a4871cd32a38.md) | 104 | `result-track:0147d7a74dc7a4871cd32a38ff7c703b9a3cd6d26ff8c9fc3cf94409fdab08fa` |
| 19 | `theorem` | [prod_reverse_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/prod-reverse-nat--883f989864bf36f8dafa9050.md) | 107 | `result-track:883f989864bf36f8dafa9050fce553e0ad7af8d5cb2f66b0e766e8c264ab36ed` |
| 20 | `theorem` | [prod_eq_foldl_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant41a0ae544aa6403aaeeaa8a0c72b3349a6f8877d6ce8725197510c2d4731a3e8.lean/declarations/prod-eq-foldl-nat--c8880856e30ea8e8342e6e8a.md) | 110 | `result-track:c8880856e30ea8e8342e6e8a503a514ed250c544804270209a0e6b70c751851f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
