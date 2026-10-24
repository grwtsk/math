# Verification target: GRWTSK.Algebra.UniversalAlgebra.Imo2015Q6.Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3b82657452fc7b23c0abb71204c7226f303d6f3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3b82657452fc7b23c0abb71204c7226f303d6f3`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean.json)

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
| 1 | `def` | [Condition](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean/declarations/condition--164346fce8c05ec774dae66b.md) | 61 | `declaration-track:164346fce8c05ec774dae66bacc191afa4b172e931d9303bd936ef7915363ac0` |
| 2 | `def` | [pool](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean/declarations/pool--9424cfb574b6eedb1264aa8c.md) | 64 | `declaration-track:9424cfb574b6eedb1264aa8cb91730b459588116efb1e8f429b21607a880723f` |
| 3 | `lemma` | [exists_add_eq_of_mem_pool](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean/declarations/exists-add-eq-of-mem-pool--aafaba55d9838483086d0a52.md) | 72 | `result-track:aafaba55d9838483086d0a52b1be86e4627ba5d8347dcfdfee0efcf531c67b24` |
| 4 | `lemma` | [pool_subset_Icc](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean/declarations/pool-subset-icc--3107ae007123dc48ac9cb20c.md) | 86 | `result-track:3107ae007123dc48ac9cb20ce43e4c0fbcba06aca33dddfc5d0ff89e62edd806` |
| 5 | `lemma` | [notMem_pool_self](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean/declarations/notmem-pool-self--cbac43c84d6e97001ec7d733.md) | 97 | `result-track:cbac43c84d6e97001ec7d733a139e0a6a62db29dcc69500e555bfbc26536ba11` |
| 6 | `lemma` | [card_pool_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean/declarations/card-pool-succ--46e3050c273638728f8e102b.md) | 104 | `result-track:46e3050c273638728f8e102bb3f16c986ac787e4d0902c0f9622600b3e6b298f` |
| 7 | `lemma` | [monotone_card_pool](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean/declarations/monotone-card-pool--78654e4131939a7e0514804b.md) | 112 | `result-track:78654e4131939a7e0514804ba49168a350803e1b1ac37cf3d5ea1f7f80f67839` |
| 8 | `lemma` | [exists_max_card_pool](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean/declarations/exists-max-card-pool--56afd7d7b18c3f4895c80de5.md) | 118 | `result-track:56afd7d7b18c3f4895c80de5ed87c90b7b44cc979c4a190a28ff1576c86e594c` |
| 9 | `lemma` | [b_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean/declarations/b-pos--d6eb0f771ad74b861d1b6e07.md) | 130 | `result-track:d6eb0f771ad74b861d1b6e0752575504591d5f84d7f9c1a3e54144278362a885` |
| 10 | `lemma` | [zero_mem_pool](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean/declarations/zero-mem-pool--27c4460067429a4eb7ed1baf.md) | 142 | `result-track:27c4460067429a4eb7ed1baf99981ab1b359412d57d22b40b19dfb74e9caf9dc` |
| 11 | `lemma` | [sum_sub_sum_eq_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean/declarations/sum-sub-sum-eq-sub--8bf9e23709c03e2a8829beb8.md) | 149 | `result-track:8bf9e23709c03e2a8829beb897de1eaaacf0adb90d85335bf74d2d2b13ab7333` |
| 12 | `lemma` | [sum_telescope](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean/declarations/sum-telescope--c4c31825c0b3431e973f3ea2.md) | 158 | `result-track:c4c31825c0b3431e973f3ea26f4683e1b8aba53757d8924bc0928e4204cd141c` |
| 13 | `lemma` | [le_sum_pool](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean/declarations/le-sum-pool--66bcd995d03e72d63f518979.md) | 166 | `result-track:66bcd995d03e72d63f518979b5f402844a85b4fdbda81b06e3c0b00dffd9c5c8` |
| 14 | `lemma` | [sum_pool_le](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean/declarations/sum-pool-le--b49dff86acae7f9a68719f8f.md) | 172 | `result-track:b49dff86acae7f9a68719f8fe4cb884782b70d651051669a155b3e0561eab9f9` |
| 15 | `theorem` | [result](../../../../../mathematics/Algebra/UniversalAlgebra/Imo2015Q6/Variantf79bbb67249ae0db8285a1fa25cf003fb461479136b4c7148fe48b5039dfa3e2.lean/declarations/result--5490202fde4114eaee75c458.md) | 181 | `result-track:5490202fde4114eaee75c458541b4e7b860216ac6b6e22b585b943d00abe5c89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
