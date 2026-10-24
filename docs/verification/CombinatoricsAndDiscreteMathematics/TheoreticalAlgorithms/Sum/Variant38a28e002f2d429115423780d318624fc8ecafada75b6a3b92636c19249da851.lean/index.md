# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sum.Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "818b1ecd0a72048e4c53e074ae36a27651d66e86",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `818b1ecd0a72048e4c53e074ae36a27651d66e86`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.MinMax` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Div.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.MinMax` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_pos_iff_exists_pos_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean/declarations/sum-pos-iff-exists-pos-nat--71a1362f3cf6c39c7a454ced.md) | 33 | `result-track:71a1362f3cf6c39c7a454ced65d7026b2904ad7808be50ebf1abd176ab0dd05c` |
| 2 | `theorem` | [sum_eq_zero_iff_forall_eq_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean/declarations/sum-eq-zero-iff-forall-eq-nat--0dd907450defc425a73e74e8.md) | 40 | `result-track:0dd907450defc425a73e74e87a4ff22cc0a4a6a03bcc99b2a165f5a7615ee5fc` |
| 3 | `theorem` | [sum_replicate_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean/declarations/sum-replicate-nat--60d716432934814f8ef88d12.md) | 46 | `result-track:60d716432934814f8ef88d12fc9dddb118b3c22e089b7b70d52ca473991c60c1` |
| 4 | `theorem` | [sum_append_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean/declarations/sum-append-nat--128ee4ae8610fcb3a7efc88f.md) | 49 | `result-track:128ee4ae8610fcb3a7efc88fddfd5e2a1b733685663b52330ef8dba593cd7925` |
| 5 | `theorem` | [sum_reverse_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean/declarations/sum-reverse-nat--6ebb1fbf40bff3d9652cb119.md) | 52 | `result-track:6ebb1fbf40bff3d9652cb1198cbfb520f8bba5e107d6fe565c027fd49f7d8ff4` |
| 6 | `theorem` | [sum_eq_foldl_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean/declarations/sum-eq-foldl-nat--c932b4660d612ff218b6636e.md) | 55 | `result-track:c932b4660d612ff218b6636e65e430e14d4725fb455b3617575b68cb1d08a460` |
| 7 | `theorem` | [min_mul_length_le_sum_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean/declarations/min-mul-length-le-sum-nat--b21522ccac7d8f7ec5f7e443.md) | 58 | `result-track:b21522ccac7d8f7ec5f7e4431c2b31eb3f270ef453c88a2a9a66445a9a255767` |
| 8 | `theorem` | [mul_length_le_sum_of_min?_eq_some_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean/declarations/mul-length-le-sum-of-min-eq-some-nat--c0629577f82e7df0d7dc53eb.md) | 75 | `result-track:c0629577f82e7df0d7dc53eb689cfdaece287de2484c55cd250c8d8f1e3cda3f` |
| 9 | `theorem` | [min_le_sum_div_length_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean/declarations/min-le-sum-div-length-nat--02cdb3d19c42782de9963353.md) | 82 | `result-track:02cdb3d19c42782de9963353c44c93522257314af7b9066fd45faac21db75e25` |
| 10 | `theorem` | [le_sum_div_length_of_min?_eq_some_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean/declarations/le-sum-div-length-of-min-eq-some-nat--793db33a5c3adf27aa92ffb6.md) | 88 | `result-track:793db33a5c3adf27aa92ffb66f452f34300b6c053ee6912fe47e1c29aacb7d64` |
| 11 | `theorem` | [sum_le_max_mul_length_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean/declarations/sum-le-max-mul-length-nat--431ac9712ad738e670de2c9a.md) | 95 | `result-track:431ac9712ad738e670de2c9a01d76288a70a89ec10fe7488351642822054a1f9` |
| 12 | `theorem` | [sum_le_max_mul_length_of_max?_eq_some_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean/declarations/sum-le-max-mul-length-of-max-eq-some-nat--e8e96a8aa9066293f8a40995.md) | 112 | `result-track:e8e96a8aa9066293f8a409955ea81a2bbd8b230e29e92ce0fc8a9e6b6a9525e8` |
| 13 | `theorem` | [sum_div_length_le_max_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean/declarations/sum-div-length-le-max-nat--ababfdc02a30ff447f093d0d.md) | 120 | `result-track:ababfdc02a30ff447f093d0d971fb9b21df876a10d7bef72ee715ce2eb2a92a3` |
| 14 | `theorem` | [sum_div_length_le_max_of_max?_eq_some_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean/declarations/sum-div-length-le-max-of-max-eq-some-nat--00f193e328e6aba33a013f3f.md) | 128 | `result-track:00f193e328e6aba33a013f3fde8efb28e4f64fd428cd6ccfbbef7681ad955445` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
