# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85c95649620c6a896362fe6fd97e6a1d60fe55bb",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85c95649620c6a896362fe6fd97e6a1d60fe55bb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Divisibility.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Units` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Dedup` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Flatten` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Pairwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Perm.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Range` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Rotate` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.ProdSigma` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_isUnit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/declarations/prod-isunit--df13d6b643261d6a53404d35.md) | 36 | `result-track:df13d6b643261d6a53404d358310cf40d9ae35dc2fd281feb30cf8fd0e36618f` |
| 2 | `theorem` | [prod_isUnit_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/declarations/prod-isunit-iff--a9ceaba4a9783acbe70551b1.md) | 43 | `result-track:a9ceaba4a9783acbe70551b16ae0d290bf5673155f4bb2ecbb1e31b918e072cd` |
| 3 | `lemma` | [Perm.prod_eq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/declarations/perm-prod-eq--13243767da4d5a09c1980d94.md) | 56 | `result-track:13243767da4d5a09c1980d9421ca3beb5125edd53038574f2709509fca2ef771` |
| 4 | `lemma` | [prod_rotate_eq_one_of_prod_eq_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/declarations/prod-rotate-eq-one-of-prod-eq-one--58b3a35c9fe99496554ae039.md) | 72 | `result-track:58b3a35c9fe99496554ae0399ca2f2294a3ce4cef701db6d93e351efb2b0188b` |
| 5 | `theorem` | [sum_map_count_dedup_filter_eq_countP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/declarations/sum-map-count-dedup-filter-eq-countp--c9bb7f0746c5f70b52164b61.md) | 86 | `result-track:c9bb7f0746c5f70b52164b6166901263dfba266c028cb644f448bb354e22f41e` |
| 6 | `theorem` | [sum_map_count_dedup_eq_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/declarations/sum-map-count-dedup-eq-length--56d4cb2c09c1e22928f9c8e7.md) | 111 | `result-track:56d4cb2c09c1e22928f9c8e72988db5de7e744d23e3ae1b7382850c58915b28d` |
| 7 | `lemma` | [length_sigma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/declarations/length-sigma--e56af97ce81e4fd8a01c416a.md) | 119 | `result-track:e56af97ce81e4fd8a01c416ad796b87e25421978fe60f26327ee700ed6bad07e` |
| 8 | `lemma` | [ranges_flatten](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/declarations/ranges-flatten--dd3ce32777a6173b3990c7ba.md) | 125 | `result-track:dd3ce32777a6173b3990c7ba3da1120a504ce05bcfc27c5b3d3a91d9d2d70308` |
| 9 | `theorem` | [ranges_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/declarations/ranges-nodup--35ddd844b84b106a9aa737a9.md) | 130 | `result-track:35ddd844b84b106a9aa737a990ae441a84653d3f5bf58acf6b875be10be539ee` |
| 10 | `lemma` | [mem_mem_ranges_iff_lt_sum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/declarations/mem-mem-ranges-iff-lt-sum--f8fc0ea6e2713f575ce754ef.md) | 134 | `result-track:f8fc0ea6e2713f575ce754efcc6ab825eb85a72a08b24f4469d5203d3c69ddbb` |
| 11 | `lemma` | [drop_take_succ_flatten_eq_getElem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/declarations/drop-take-succ-flatten-eq-getelem--cb2c632822e09ed3ce6685f4.md) | 144 | `result-track:cb2c632822e09ed3ce6685f498e483e35c6e47f583f78be34083900e74af49d8` |
| 12 | `theorem` | [neg_one_mem_of_prod_eq_neg_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/declarations/neg-one-mem-of-prod-eq-neg-one--dd759f11ac86ebc40411056c.md) | 157 | `result-track:dd759f11ac86ebc40411056c23ab50b58ef3a959ef57aa1e01a3d46d2f7bf345` |
| 13 | `theorem` | [dvd_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/declarations/dvd-prod--aee5e7a50e4566517e15d0a8.md) | 163 | `result-track:aee5e7a50e4566517e15d0a8d28f40425f706988cf0b409d6c9e8af00e2d1cb9` |
| 14 | `theorem` | [Sublist.prod_dvd_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/declarations/sublist-prod-dvd-prod--bc72ceec1435170059d6c910.md) | 168 | `result-track:bc72ceec1435170059d6c9103ead351f201283663b55377eeff3f4c858613f92` |
| 15 | `theorem` | [alternatingProd_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/declarations/alternatingprod-append--c7614fb7f07b445425032506.md) | 179 | `result-track:c7614fb7f07b445425032506a8e4bf67e4082ba3c6d9495bf627512dc6ad798c` |
| 16 | `theorem` | [alternatingProd_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/declarations/alternatingprod-reverse--f1bf19f4d9dcf523ff4c3f0f.md) | 188 | `result-track:f1bf19f4d9dcf523ff4c3f0fd6c45404a435d98c9c29bddd387c3642e4deb119` |
| 17 | `lemma` | [op_list_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/declarations/op-list-prod--3cec321614b287dd8e525b6b.md) | 206 | `result-track:3cec321614b287dd8e525b6b6ad121e625c3e1c8f76f3549a8e0ed17db8339cc` |
| 18 | `lemma` | [unop_list_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/declarations/unop-list-prod--683a0403726657b6b553ad82.md) | 212 | `result-track:683a0403726657b6b553ad8287ef8e59222a6616c8dda335b0a5ab2a0abc823d` |
| 19 | `lemma` | [unop_map_list_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0fd7dff4363aefee424e70106fce68e214bc9927fc4b4a1f3920e7bc88dc3865.lean/declarations/unop-map-list-prod--772e8d4876db2f7e132608ab.md) | 222 | `result-track:772e8d4876db2f7e132608aba8aa56eba8b1329407c5d22cebfe048076ce677d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
