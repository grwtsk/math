# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Nat.Variant5ee526ae75426b7e53f40d6656c6f15ca9d216551b85e81fed052c699d6fb81e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cb6088ce98c40197b2a5ccc00a1ae28e2177bcd",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant5ee526ae75426b7e53f40d6656c6f15ca9d216551b85e81fed052c699d6fb81e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant5ee526ae75426b7e53f40d6656c6f15ca9d216551b85e81fed052c699d6fb81e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant5ee526ae75426b7e53f40d6656c6f15ca9d216551b85e81fed052c699d6fb81e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cb6088ce98c40197b2a5ccc00a1ae28e2177bcd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant5ee526ae75426b7e53f40d6656c6f15ca9d216551b85e81fed052c699d6fb81e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant5ee526ae75426b7e53f40d6656c6f15ca9d216551b85e81fed052c699d6fb81e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Nat` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_pos_iff_exists_pos_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant5ee526ae75426b7e53f40d6656c6f15ca9d216551b85e81fed052c699d6fb81e.lean/declarations/sum-pos-iff-exists-pos-nat--17b992dce85a8e99bab8c6d5.md) | 29 | `result-track:17b992dce85a8e99bab8c6d59883da6bb62b48abe248f373eea518872ca25f96` |
| 2 | `theorem` | [sum_eq_zero_iff_forall_eq_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant5ee526ae75426b7e53f40d6656c6f15ca9d216551b85e81fed052c699d6fb81e.lean/declarations/sum-eq-zero-iff-forall-eq-nat--30fb612dd05e3f295d3f3c1a.md) | 32 | `result-track:30fb612dd05e3f295d3f3c1a6c0bc4d639217c75d6dd8a4f459d8e26dc2a4681` |
| 3 | `theorem` | [sum_replicate_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant5ee526ae75426b7e53f40d6656c6f15ca9d216551b85e81fed052c699d6fb81e.lean/declarations/sum-replicate-nat--f51b45bbdfaab6f66c487358.md) | 36 | `result-track:f51b45bbdfaab6f66c48735855dd6d046bebd4e1544155ce2558fd714c761f01` |
| 4 | `theorem` | [sum_append_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant5ee526ae75426b7e53f40d6656c6f15ca9d216551b85e81fed052c699d6fb81e.lean/declarations/sum-append-nat--649d2c2fae05ac4a0cf68094.md) | 39 | `result-track:649d2c2fae05ac4a0cf6809485421ad8cbc6aecb8dd0bba34d81f519eef8b3b2` |
| 5 | `theorem` | [sum_reverse_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant5ee526ae75426b7e53f40d6656c6f15ca9d216551b85e81fed052c699d6fb81e.lean/declarations/sum-reverse-nat--8d57907ce4d7d07d0f23ed07.md) | 43 | `result-track:8d57907ce4d7d07d0f23ed071e279a2ed0a5be771e44536c25b8530884db7c4a` |
| 6 | `theorem` | [sum_eq_foldl_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant5ee526ae75426b7e53f40d6656c6f15ca9d216551b85e81fed052c699d6fb81e.lean/declarations/sum-eq-foldl-nat--890c937a6b51723129a1e5c0.md) | 46 | `result-track:890c937a6b51723129a1e5c010702814a0da8ebd948ed82b65e724ae13884516` |
| 7 | `theorem` | [prod_pos_iff_forall_pos_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant5ee526ae75426b7e53f40d6656c6f15ca9d216551b85e81fed052c699d6fb81e.lean/declarations/prod-pos-iff-forall-pos-nat--ce9f9386f2fffe7808de7276.md) | 49 | `result-track:ce9f9386f2fffe7808de72769d486e7f43879a98331c94af09352f0303700e62` |
| 8 | `theorem` | [prod_eq_zero_iff_exists_zero_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant5ee526ae75426b7e53f40d6656c6f15ca9d216551b85e81fed052c699d6fb81e.lean/declarations/prod-eq-zero-iff-exists-zero-nat--9488cdd22ff150fd0353a6f7.md) | 52 | `result-track:9488cdd22ff150fd0353a6f7a040ad558f647e65e24ae207503aa8508bd6a2af` |
| 9 | `theorem` | [prod_replicate_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant5ee526ae75426b7e53f40d6656c6f15ca9d216551b85e81fed052c699d6fb81e.lean/declarations/prod-replicate-nat--925fbed1a588f4a60cae5a7b.md) | 56 | `result-track:925fbed1a588f4a60cae5a7b259938a895ec922a5c685595ca5a742d02b1f2dc` |
| 10 | `theorem` | [prod_append_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant5ee526ae75426b7e53f40d6656c6f15ca9d216551b85e81fed052c699d6fb81e.lean/declarations/prod-append-nat--342a922637e7b930c736d169.md) | 59 | `result-track:342a922637e7b930c736d16906db52c555417902cc607d8f2af9d3f4b4d5ffe5` |
| 11 | `theorem` | [prod_reverse_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant5ee526ae75426b7e53f40d6656c6f15ca9d216551b85e81fed052c699d6fb81e.lean/declarations/prod-reverse-nat--9539fcb2d102a21355915998.md) | 63 | `result-track:9539fcb2d102a21355915998d5d3006de9359d234517918f9535dc1253dcc672` |
| 12 | `theorem` | [prod_eq_foldl_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant5ee526ae75426b7e53f40d6656c6f15ca9d216551b85e81fed052c699d6fb81e.lean/declarations/prod-eq-foldl-nat--e4b11b87946f72c39a3eabad.md) | 66 | `result-track:e4b11b87946f72c39a3eabadcdab634c09d84bb55a5c985f191e6747fe22dd83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
