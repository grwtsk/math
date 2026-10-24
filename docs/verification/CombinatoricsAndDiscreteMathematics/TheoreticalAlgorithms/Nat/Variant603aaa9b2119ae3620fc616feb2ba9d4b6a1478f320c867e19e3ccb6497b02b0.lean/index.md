# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Nat.Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32fe8e22e1e24e4da1a8ca6ff458642a4186db71",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32fe8e22e1e24e4da1a8ca6ff458642a4186db71`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.Sum` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_pos_iff_exists_pos_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/sum-pos-iff-exists-pos-nat--903211e48a9a396e13d687ea.md) | 21 | `result-track:903211e48a9a396e13d687ea88a93beec51d06ae502b3f0afd34eccf997a2e79` |
| 2 | `theorem` | [sum_eq_zero_iff_forall_eq_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/sum-eq-zero-iff-forall-eq-nat--5c249f31ba84a0c6f250a0b5.md) | 24 | `result-track:5c249f31ba84a0c6f250a0b5ddcb79788e5e6f412b3875c722be25bdb911823b` |
| 3 | `theorem` | [sum_replicate_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/sum-replicate-nat--c2b5f599fc840e9f464068ef.md) | 28 | `result-track:c2b5f599fc840e9f464068efbf9a6d5edbfd423ef397b7785668b0fb253e7a91` |
| 4 | `theorem` | [sum_append_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/sum-append-nat--73132298b9d72e00ba287181.md) | 32 | `result-track:73132298b9d72e00ba2871811243e1ece793cf0e9519455a2eb18262c42fe50e` |
| 5 | `theorem` | [sum_reverse_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/sum-reverse-nat--56c242bf1311082d09d6dc35.md) | 35 | `result-track:56c242bf1311082d09d6dc35137397d11098b14571031aaa864325dc98d2c3fa` |
| 6 | `theorem` | [sum_eq_foldl_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/sum-eq-foldl-nat--76da84587c25264c2d57166f.md) | 38 | `result-track:76da84587c25264c2d57166f50c2e34e51b33c0302c2f02061e7a1c74b52f5a2` |
| 7 | `theorem` | [min_mul_length_le_sum_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/min-mul-length-le-sum-nat--632f658e0036082b50b7de5f.md) | 41 | `result-track:632f658e0036082b50b7de5f87313fbb20f04b0348d88a5085fdbff707561742` |
| 8 | `theorem` | [mul_length_le_sum_of_min?_eq_some_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/mul-length-le-sum-of-min-eq-some-nat--858a3c29a226511c93154d25.md) | 46 | `result-track:858a3c29a226511c93154d25aedf51ac56b2b98bcd79b964646c7fcf3c39352c` |
| 9 | `theorem` | [min_le_sum_div_length_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/min-le-sum-div-length-nat--da84dfdb8d074402dd86f10c.md) | 52 | `result-track:da84dfdb8d074402dd86f10cb11141acd10729a0fada4a2a2d960e3122e5dc72` |
| 10 | `theorem` | [le_sum_div_length_of_min?_eq_some_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/le-sum-div-length-of-min-eq-some-nat--5c986a6f26eac7ffa500d8f7.md) | 57 | `result-track:5c986a6f26eac7ffa500d8f779b42a21508a3360aafe7e9d3a78c01ab7f4f331` |
| 11 | `theorem` | [sum_le_max_mul_length_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/sum-le-max-mul-length-nat--119530e3764abc77e6d61daa.md) | 63 | `result-track:119530e3764abc77e6d61daa12f0536fe60b4996f890d173a667b2eb56db3269` |
| 12 | `theorem` | [sum_le_max_mul_length_of_max?_eq_some_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/sum-le-max-mul-length-of-max-eq-some-nat--b4b95053e6007dc1f9dd4742.md) | 68 | `result-track:b4b95053e6007dc1f9dd4742d64addd5e1d4e31351839c995ba0e47e20fbf48a` |
| 13 | `theorem` | [sum_div_length_le_max_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/sum-div-length-le-max-nat--7823206b311ebc48f3e8c67a.md) | 74 | `result-track:7823206b311ebc48f3e8c67a97b388bfa506c36b6d2266c7f57cac316b5dc77b` |
| 14 | `theorem` | [sum_div_length_le_max_of_max?_eq_some_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/sum-div-length-le-max-of-max-eq-some-nat--2599caf7624cbb26f649b98c.md) | 79 | `result-track:2599caf7624cbb26f649b98cfb0694b9f5599fd9423048c0ba5493bb028ec916` |
| 15 | `theorem` | [prod_pos_iff_forall_pos_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/prod-pos-iff-forall-pos-nat--59e8c2fbb6fc82e00d4361fa.md) | 85 | `result-track:59e8c2fbb6fc82e00d4361fa2ac9660f4d9e984741c3179d8a809ab165cffcc8` |
| 16 | `theorem` | [prod_eq_zero_iff_exists_zero_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/prod-eq-zero-iff-exists-zero-nat--a608a2c4fb26a5b50e6df792.md) | 88 | `result-track:a608a2c4fb26a5b50e6df79233cb023ca0a88adb6705758974265a6ed1aa5c3c` |
| 17 | `theorem` | [prod_replicate_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/prod-replicate-nat--e33f4c55c495d5542d18c510.md) | 92 | `result-track:e33f4c55c495d5542d18c5109a525f8fb370dccc12b34ede00406e78a5cc8f9b` |
| 18 | `theorem` | [prod_append_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/prod-append-nat--ee7b45c5bd0df78625e7f82b.md) | 96 | `result-track:ee7b45c5bd0df78625e7f82b5ce82d0b9ec585275a4671dbf7de587d462a64da` |
| 19 | `theorem` | [prod_reverse_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/prod-reverse-nat--35d7d36622eade34edc4ba9f.md) | 99 | `result-track:35d7d36622eade34edc4ba9f25338ac8a7f321e85967c9b5a437e71ddde76d52` |
| 20 | `theorem` | [prod_eq_foldl_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0.lean/declarations/prod-eq-foldl-nat--a042d96d62baf884d74bb2b0.md) | 102 | `result-track:a042d96d62baf884d74bb2b080dd1eb6c5b5d3a6285fab33da4960ea8b36dfaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
