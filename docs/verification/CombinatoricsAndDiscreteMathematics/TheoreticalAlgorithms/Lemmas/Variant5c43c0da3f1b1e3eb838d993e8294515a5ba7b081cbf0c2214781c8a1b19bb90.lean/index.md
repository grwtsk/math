# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6509837631a2f702281399aa0bf42d1ed6494807",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6509837631a2f702281399aa0bf42d1ed6494807`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.BigOperators.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupPower.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Commute` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.WithZero` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Commute` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Units` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [list_sum_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean/declarations/list-sum-right--60395c4234d6a5427602170d.md) | 37 | `result-track:60395c4234d6a5427602170de3fdd69c39b4586a88a6085e11387162ed294208` |
| 2 | `theorem` | [list_sum_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean/declarations/list-sum-left--bc16a6cd0e1f889d778d0eca.md) | 45 | `result-track:bc16a6cd0e1f889d778d0eca38689fb92dd8394c652ec99586dda6e6630ba114` |
| 3 | `theorem` | [pow_card_le_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean/declarations/pow-card-le-prod--d4ccbedffc55406befa869bd.md) | 55 | `result-track:d4ccbedffc55406befa869bdd33efcb0991a9ce46e52ebed65377368f0ed81d9` |
| 4 | `theorem` | [prod_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean/declarations/prod-eq-one-iff--1e6f064033474597766531af.md) | 63 | `result-track:1e6f064033474597766531afa0615e55439ccfc7d2de4b2dadabc60b861ccf10` |
| 5 | `theorem` | [neg_one_mem_of_prod_eq_neg_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean/declarations/neg-one-mem-of-prod-eq-neg-one--7accb42c117ea960ea77672c.md) | 71 | `result-track:7accb42c117ea960ea77672ce38020fe61a9984e048cf7d47c31c91cc3ea2b57` |
| 6 | `theorem` | [length_le_sum_of_one_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean/declarations/length-le-sum-of-one-le--cee47e92e02fa1ff34a33ecc.md) | 83 | `result-track:cee47e92e02fa1ff34a33ecc5107e070edaf56e11e337fbef822b15bdc8fc40e` |
| 7 | `theorem` | [dvd_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean/declarations/dvd-prod--23b0b2f6cea7b5555445298a.md) | 89 | `result-track:23b0b2f6cea7b5555445298a74ec4cabeca72231919a7830c3a1b06fd000377b` |
| 8 | `theorem` | [dvd_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean/declarations/dvd-sum--a3fa4c7bb79a1f0a0619cb1d.md) | 95 | `result-track:a3fa4c7bb79a1f0a0619cb1d7ba65d9210fb04b98f022d09092430cec04a8f10` |
| 9 | `theorem` | [alternatingProd_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean/declarations/alternatingprod-append--b434d7e316aa93ed581522df.md) | 107 | `result-track:b434d7e316aa93ed581522dfceb55586d2622b5c142a1ee9e4303f978fa074b1` |
| 10 | `theorem` | [alternatingProd_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean/declarations/alternatingprod-reverse--1cc3790dc26fa7b5db01ae74.md) | 118 | `result-track:1cc3790dc26fa7b5db01ae74cdc31594635f375e71a903941d8425a7652ff874` |
| 11 | `theorem` | [sum_map_mul_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean/declarations/sum-map-mul-left--49faf5d8ade625628cf8a111.md) | 131 | `result-track:49faf5d8ade625628cf8a111416934e1cb844210815fff884231e415b9eb34c0` |
| 12 | `theorem` | [sum_map_mul_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean/declarations/sum-map-mul-right--bd21b0895d5c5eb4b1835104.md) | 136 | `result-track:bd21b0895d5c5eb4b1835104913efe0a0842f1eae86b6b1d7f7cb9c3e803c9b5` |
| 13 | `theorem` | [op_list_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean/declarations/op-list-prod--b6597d2f7efdd123f03f3d03.md) | 149 | `result-track:b6597d2f7efdd123f03f3d03ed3cad273a2345b4da3360bd49f89ba8ff37751d` |
| 14 | `theorem` | [unop_list_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean/declarations/unop-list-prod--f32302dd3084cb732e7efb69.md) | 156 | `result-track:f32302dd3084cb732e7efb6917ab1c301577a6dad26e2ec846044a58893af866` |
| 15 | `theorem` | [unop_map_list_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean/declarations/unop-map-list-prod--74c485704ebc8b1778d5de1b.md) | 168 | `result-track:74c485704ebc8b1778d5de1ba80402a640c00ff16b0bad12d32c0843429e714a` |
| 16 | `theorem` | [unop_map_list_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5c43c0da3f1b1e3eb838d993e8294515a5ba7b081cbf0c2214781c8a1b19bb90.lean/declarations/unop-map-list-prod--e5afb65183872fa0c29b0bb5.md) | 177 | `result-track:e5afb65183872fa0c29b0bb5180b4ce344631f8c95a4e3cf0d370c67a0546bf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
