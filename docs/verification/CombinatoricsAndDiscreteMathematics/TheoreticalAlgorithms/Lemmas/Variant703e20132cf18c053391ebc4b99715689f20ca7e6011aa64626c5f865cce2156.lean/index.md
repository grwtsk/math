# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ae38e54bd2327f75d0c0965004f99f49600065d",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ae38e54bd2327f75d0c0965004f99f49600065d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.Range` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.Pairwise` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.List.Perm` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.List.Range` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.Prod` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [splitInTwo_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/splitintwo-fst--e9b21ba3e858d531d6a80f8d.md) | 52 | `result-track:e9b21ba3e858d531d6a80f8dddfbae1b6acbe7c40d1cb92ea4639b775ec26f5d` |
| 2 | `theorem` | [splitInTwo_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/splitintwo-snd--defd0c6f5a30cfd3acda2626.md) | 56 | `result-track:defd0c6f5a30cfd3acda2626f5774473bb099632b39d36290b4df0fe1e1a01d8` |
| 3 | `theorem` | [splitInTwo_fst_append_splitInTwo_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/splitintwo-fst-append-splitintwo-snd--1fc9eb0a5d12d1907c6c76a9.md) | 60 | `result-track:1fc9eb0a5d12d1907c6c76a961c40e1f52f7bb85585f88103a088f0156cc4e25` |
| 4 | `theorem` | [splitInTwo_cons_cons_zipIdx_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/splitintwo-cons-cons-zipidx-fst--9c67b89a5e9024022378ad79.md) | 63 | `result-track:9c67b89a5e9024022378ad7945aa3e938f935d712a468b4ab4f62511a994ea43` |
| 5 | `theorem` | [splitInTwo_cons_cons_zipIdx_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/splitintwo-cons-cons-zipidx-snd--d6365dd3ae6866c66ae67810.md) | 80 | `result-track:d6365dd3ae6866c66ae678108f828076410faa23101f2915a0d5425350c3ed24` |
| 6 | `theorem` | [splitInTwo_fst_pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/splitintwo-fst-pairwise--a4824eadc3a117e4f68da521.md) | 95 | `result-track:a4824eadc3a117e4f68da5214dac1c339711992843e8c13bb5594d0164c4e5a7` |
| 7 | `theorem` | [splitInTwo_snd_pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/splitintwo-snd-pairwise--c96fc6f75cc07238bfe7594e.md) | 99 | `result-track:c96fc6f75cc07238bfe7594e9401d2b11d5f4d5836bef9395c9a67e8ee75dcbf` |
| 8 | `theorem` | [splitInTwo_fst_le_splitInTwo_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/splitintwo-fst-le-splitintwo-snd--a1abaa17d181b93c56115b83.md) | 103 | `result-track:a1abaa17d181b93c56115b8308e3064da45d6371aac315c30fa66ed464f5dadf` |
| 9 | `theorem` | [zipIdxLE_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/zipidxle-trans--5d4312efd7a55c25ee02b875.md) | 117 | `result-track:5d4312efd7a55c25ee02b8753e49fbe90c18d3c4d34c10c5e7a5270faaf1d196` |
| 10 | `theorem` | [zipIdxLE_total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/zipidxle-total--9b1a0fd5bbf4a571a4348746.md) | 145 | `result-track:9b1a0fd5bbf4a571a4348746726895913fc80a9d9d15117a68912c4128a3b8c1` |
| 11 | `theorem` | [cons_merge_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/cons-merge-cons--f1143c74bdd91ada4cb87ea4.md) | 157 | `result-track:f1143c74bdd91ada4cb87ea4d80cd47210bbad05c8c1911e341a5a5fa354adb0` |
| 12 | `theorem` | [cons_merge_cons_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/cons-merge-cons-pos--c46e86780fae28730908b40c.md) | 161 | `result-track:c46e86780fae28730908b40c18ff696b8763c4cafa2421741356bdef36b65abe` |
| 13 | `theorem` | [cons_merge_cons_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/cons-merge-cons-neg--4690763cd8a703f7bc01c4dd.md) | 165 | `result-track:4690763cd8a703f7bc01c4dd343467a2264ae539bd1c30e2df50a91369782db4` |
| 14 | `theorem` | [length_merge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/length-merge--efdcdb88ae82465400d8c3dc.md) | 169 | `result-track:efdcdb88ae82465400d8c3dc3e63c98bc5129bcd2ff6f1379c2f8d01c1add123` |
| 15 | `theorem` | [mem_merge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/mem-merge--424d52094f4aab6883d72b79.md) | 184 | `result-track:424d52094f4aab6883d72b790ce8ec6d06c0e6701d5252be8f6159bb59d928d4` |
| 16 | `theorem` | [mem_merge_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/mem-merge-left--460aa76e1bba3f343ef6e01a.md) | 198 | `result-track:460aa76e1bba3f343ef6e01a63481b3099b8ee4ec093d4851eacabe8e93c3f16` |
| 17 | `theorem` | [mem_merge_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/mem-merge-right--3231dbd18f3b37f4a3419a6e.md) | 201 | `result-track:3231dbd18f3b37f4a3419a6e09cefc84a66c61313ae5f98806534cb42a7388e0` |
| 18 | `theorem` | [merge_stable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/merge-stable--f69e814bc2ea14227c552e66.md) | 204 | `result-track:f69e814bc2ea14227c552e664bc6665390105eebd6845f63caa0da000953a87e` |
| 19 | `theorem` | [pairwise_merge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/pairwise-merge--64af7e8cb6022c2838ccaf2a.md) | 226 | `result-track:64af7e8cb6022c2838ccaf2a4f1c0a905dc02e0aa881131bb1af0e20efe060e1` |
| 20 | `theorem` | [merge_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/merge-of-le--3a58eedf872e58efedbf8919.md) | 256 | `result-track:3a58eedf872e58efedbf8919e74f704d49414d7fb09405c61af130b53fbf20c5` |
| 21 | `theorem` | [merge_perm_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/merge-perm-append--dfd426a06c4dc65e4ce3be12.md) | 268 | `result-track:dfd426a06c4dc65e4ce3be127f468ae79678ef0fcefc523cc3508a55d9cac8c8` |
| 22 | `theorem` | [Perm.merge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/perm-merge--33c72e994bbf0b0eee0ebca1.md) | 278 | `result-track:33c72e994bbf0b0eee0ebca1efde15af3c117e5cdb311aacf850bcf9f190147f` |
| 23 | `theorem` | [mergeSort_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/mergesort-nil--0479ebde2d1a7c9794dc42dc.md) | 284 | `result-track:0479ebde2d1a7c9794dc42dc5ab7d404bb9382477bc3434a16da6f734f28d34a` |
| 24 | `theorem` | [mergeSort_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/mergesort-singleton--3ce5c98f4de6e2b771e25106.md) | 286 | `result-track:3ce5c98f4de6e2b771e25106783ecab7740a9015e73b5fa80696d75f659d7e97` |
| 25 | `theorem` | [mergeSort_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/mergesort-perm--bc2e627c4ad01405150c121e.md) | 288 | `result-track:bc2e627c4ad01405150c121ed16fc56835c34e9217a613a04941b7791d8dec56` |
| 26 | `theorem` | [length_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/length-mergesort--47718e7be15c258149a86744.md) | 300 | `result-track:47718e7be15c258149a86744f83a3737bc11a12c1c9bc2a4c0117491ada49e58` |
| 27 | `theorem` | [mem_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/mem-mergesort--08e2b06afdfde07af88371ac.md) | 303 | `result-track:08e2b06afdfde07af88371aca0495afdcf21959e79ab6505afd7f9fe8e2e28a2` |
| 28 | `theorem` | [pairwise_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/pairwise-mergesort--f3f8213bf84ed1a6e84fca78.md) | 313 | `result-track:f3f8213bf84ed1a6e84fca78aa29d8e35a72bdc16cdd783dcfa4e2ca19dc39ea` |
| 29 | `theorem` | [mergeSort_of_pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/mergesort-of-pairwise--c45cfd048aecfa4d4acefab7.md) | 329 | `result-track:c45cfd048aecfa4d4acefab7eb54f77d7924e84c3eadec625462958656260f08` |
| 30 | `theorem` | [mergeSort_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/mergesort-zipidx--8b7ad94c0d44e1dcef29f74e.md) | 354 | `result-track:8b7ad94c0d44e1dcef29f74ef82fd4b23f82a6813758b7abf43fb32e5b47bb87` |
| 31 | `theorem` | [mergeSort_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/mergesort-cons--488ce7050f60f3ae1d78882c.md) | 377 | `result-track:488ce7050f60f3ae1d78882ce61e1f366f4aba8d4903305ab4879876f931f737` |
| 32 | `theorem` | [sublist_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/sublist-mergesort--84f6f262ffb47b3355d85596.md) | 436 | `result-track:84f6f262ffb47b3355d85596c78cd5ab2a4418235cd1806f55696d2594d5c949` |
| 33 | `theorem` | [pair_sublist_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/pair-sublist-mergesort--3aa84978e9fd704f0589eeb6.md) | 465 | `result-track:3aa84978e9fd704f0589eeb6c8ab69c065cbbf23dcf106adcfce187f86f2ba69` |
| 34 | `theorem` | [map_merge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/map-merge--8994df9be88dd5edc59ddaf8.md) | 471 | `result-track:8994df9be88dd5edc59ddaf8d21bb3666df083f0c73b3e88150b99e77b85ba46` |
| 35 | `theorem` | [map_mergeSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant703e20132cf18c053391ebc4b99715689f20ca7e6011aa64626c5f865cce2156.lean/declarations/map-mergesort--a075bfc4ce52063968e252c5.md) | 490 | `result-track:a075bfc4ce52063968e252c53e7b38abbe148e14b076f89bb21c036e1281f0b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
