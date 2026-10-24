# Verification target: GRWTSK.Algebra.UniversalAlgebra.MinMax.Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6895f3067336520b09c5b701c32161dcba22f57",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6895f3067336520b09c5b701c32161dcba22f57`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [fn_min_mul_fn_max](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean/declarations/fn-min-mul-fn-max--b91875172edeb82be2a1aa37.md) | 33 | `result-track:b91875172edeb82be2a1aa37032fcce9852e936f186d012d050ff42e64e6a030` |
| 2 | `lemma` | [fn_max_mul_fn_min](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean/declarations/fn-max-mul-fn-min--cb20e1b9cf4b5d598a708c5c.md) | 37 | `result-track:cb20e1b9cf4b5d598a708c5c05837b6e62fc04e9fa6ce112eafa6791fc3644f8` |
| 3 | `lemma` | [min_mul_max](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean/declarations/min-mul-max--cf9ef192074036ffdf6b0226.md) | 43 | `result-track:cf9ef192074036ffdf6b02260213efe7410177aa9aa6e851009a425659b8a440` |
| 4 | `lemma` | [max_mul_min](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean/declarations/max-mul-min--ea90f450b34d3ed7c0eb785a.md) | 46 | `result-track:ea90f450b34d3ed7c0eb785a334d3de0b24e81bad41ba1ff202a49e85bb8730c` |
| 5 | `theorem` | [min_mul_mul_left](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean/declarations/min-mul-mul-left--436d58de0ec3584101036592.md) | 63 | `result-track:436d58de0ec35841010365921a98fe6635c88939b71e01d6e44a354c3eecbf13` |
| 6 | `theorem` | [max_mul_mul_left](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean/declarations/max-mul-mul-left--1905494152c36fbe421123fe.md) | 67 | `result-track:1905494152c36fbe421123fef2b6d93975a03d03c35085d859ea31bb30ebda82` |
| 7 | `theorem` | [min_mul_mul_right](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean/declarations/min-mul-mul-right--3e8c4c836bac70ab27a5e987.md) | 77 | `result-track:3e8c4c836bac70ab27a5e9871dacf1f5a87deaa34dee910980dca89fcd95d44c` |
| 8 | `theorem` | [max_mul_mul_right](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean/declarations/max-mul-mul-right--9cc2f884dfeb49ffae25c067.md) | 81 | `result-track:9cc2f884dfeb49ffae25c067a442edb1fea7869264aa4f3d68a11dcbae07ba41` |
| 9 | `theorem` | [lt_or_lt_of_mul_lt_mul](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean/declarations/lt-or-lt-of-mul-lt-mul--8f78fe53fe99a250762b9d0e.md) | 87 | `result-track:8f78fe53fe99a250762b9d0ebf1539b97a0d7412a4a6c3895198afe0e44b3321` |
| 10 | `theorem` | [le_or_lt_of_mul_le_mul](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean/declarations/le-or-lt-of-mul-le-mul--ed788c99a1ad68804e5e9c50.md) | 93 | `result-track:ed788c99a1ad68804e5e9c507c46d8bc5159425ede039f7e34b8346b744abec2` |
| 11 | `theorem` | [lt_or_le_of_mul_le_mul](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean/declarations/lt-or-le-of-mul-le-mul--b5da57b21bd1b03a3abd3907.md) | 99 | `result-track:b5da57b21bd1b03a3abd390778d5aa112a7e55ad358c26605b906be5625d88e3` |
| 12 | `theorem` | [le_or_le_of_mul_le_mul](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean/declarations/le-or-le-of-mul-le-mul--44aaf05ddfd6891d93d1cc46.md) | 105 | `result-track:44aaf05ddfd6891d93d1cc46a84e8dc8fcfdb44b8b96e711c5b205b580815b8d` |
| 13 | `theorem` | [mul_lt_mul_iff_of_le_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean/declarations/mul-lt-mul-iff-of-le-of-le--823b26c4524589493c3bcbc1.md) | 111 | `result-track:823b26c4524589493c3bcbc1afc1f3f1237296b171f66d056b700e39b9cf0d6a` |
| 14 | `theorem` | [min_le_mul_of_one_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean/declarations/min-le-mul-of-one-le-right--361a1600a1951522705a46c1.md) | 125 | `result-track:361a1600a1951522705a46c17f5c8ed9c46b73233e8af9f8dc1fbb60225b0dd1` |
| 15 | `theorem` | [min_le_mul_of_one_le_left](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean/declarations/min-le-mul-of-one-le-left--ec32064b6ef8a7216b9b172a.md) | 130 | `result-track:ec32064b6ef8a7216b9b172a9cf37cab3fee95a138e9d7c96254a4c739bbb1f5` |
| 16 | `theorem` | [max_le_mul_of_one_le](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variant81220fd94232f5d278ef05bf97bd5d0a4aa9d4b584652c517a4e78804ea810d0.lean/declarations/max-le-mul-of-one-le--f55da735fe894bc34044fdd8.md) | 135 | `result-track:f55da735fe894bc34044fdd87bffdb1d7716d150a3751ec7b24d4988814d3e70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
