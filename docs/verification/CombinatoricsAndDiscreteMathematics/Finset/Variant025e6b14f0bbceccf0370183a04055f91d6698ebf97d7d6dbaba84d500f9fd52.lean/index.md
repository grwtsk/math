# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "985c6e5457f4ca7a44fb283ef872964bb0e6869c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `985c6e5457f4ca7a44fb283ef872964bb0e6869c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.AbsoluteValue.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.Multiset` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/prod-nonneg--9adec210ef5785232286b608.md) | 32 | `result-track:9adec210ef5785232286b608fd258d2e2edad8892ba825a72832c3a855fa3020` |
| 2 | `lemma` | [prod_le_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/prod-le-prod--ebc71b8a7f5b667c7e1f612b.md) | 39 | `result-track:ebc71b8a7f5b667c7e1f612b1e827bf8e9543e13b7c82b01eb835ee36b5cd60e` |
| 3 | `lemma` | [prod_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/prod-le-one--066572375dd227410d093ee1.md) | 51 | `result-track:066572375dd227410d093ee1254b1a0b51713c44a69d05f12b45c517f030676c` |
| 4 | `lemma` | [prod_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/prod-pos--966a70df45c85e57484a393e.md) | 60 | `result-track:966a70df45c85e57484a393e3521d7cb86cac267c75aec5bf5e85a702010189a` |
| 5 | `lemma` | [prod_lt_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/prod-lt-prod--160318d5f7402d18241fb0f4.md) | 63 | `result-track:160318d5f7402d18241fb0f40653749755b851f15b05e228fce1bde73dce9f2f` |
| 6 | `lemma` | [prod_lt_prod_of_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/prod-lt-prod-of-nonempty--62086f94dfdebe11bc19c764.md) | 76 | `result-track:62086f94dfdebe11bc19c764eeaf39dbb433c9c006cdf4abd319385658ed8c9e` |
| 7 | `lemma` | [sum_sq_le_sq_sum_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/sum-sq-le-sq-sum-of-nonneg--a26c183166c40fb04fb27971.md) | 90 | `result-track:a26c183166c40fb04fb27971b7bed7b2ad11fa569aab083e8234941632ae2d47` |
| 8 | `lemma` | [prod_add_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/prod-add-prod-le--3b255807d5c012e9e5ffffaf.md) | 106 | `result-track:3b255807d5c012e9e5ffffaf1f079d63d0516e68b2d200b2c56b5e45f0243184` |
| 9 | `theorem` | [le_prod_of_submultiplicative_on_pred_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/le-prod-of-submultiplicative-on-pred-of-nonneg--37105cc43574551546336766.md) | 118 | `result-track:37105cc43574551546336766deaaa94a19a2a41aeaf8f11d784e2afa789a124e` |
| 10 | `theorem` | [le_prod_of_submultiplicative_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/le-prod-of-submultiplicative-of-nonneg--9f0803db02a1cb52aaa0c49e.md) | 129 | `result-track:9f0803db02a1cb52aaa0c49ea8f56f1bdb04f56f31432d41f52bc3891bbbbba6` |
| 11 | `theorem` | [sum_mul_self_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/sum-mul-self-eq-zero-iff--72d6ed5c956ef3de22eb65d9.md) | 138 | `result-track:72d6ed5c956ef3de22eb65d91f2451fcf69f87f79ac591cb598be9e9db2bd829` |
| 12 | `lemma` | [abs_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/abs-prod--19a47ae4edd45c3c1e231004.md) | 144 | `result-track:19a47ae4edd45c3c1e23100443a3de3d335202658fd26810ef47b098d8010416` |
| 13 | `theorem` | [PNat.coe_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/pnat-coe-prod--44e779ca9d4b38ecd4f53f21.md) | 149 | `result-track:44e779ca9d4b38ecd4f53f21998e2d9045eeb88de064d189eead6f0b41c77eb1` |
| 14 | `lemma` | [_root_.CanonicallyOrderedAdd.prod_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/root-canonicallyorderedadd-prod-pos--f82230d29139146b21a267e2.md) | 158 | `result-track:f82230d29139146b21a267e2ce890f928beb0b3424b8986ac1f6369e02ed6a67` |
| 15 | `lemma` | [prod_add_prod_le'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/prod-add-prod-le--20751c939bf85395ff8fde55.md) | 165 | `result-track:20751c939bf85395ff8fde555e61ec857d56050cc1ecf7074233a42457321cec` |
| 16 | `lemma` | [sum_sq_le_sum_mul_sum_of_sq_eq_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/sum-sq-le-sum-mul-sum-of-sq-eq-mul--68940041a125e8a8c8d59330.md) | 182 | `result-track:68940041a125e8a8c8d593300e83df44e79321c96867a223a3f7a7920da573f8` |
| 17 | `lemma` | [sum_mul_sq_le_sq_mul_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/sum-mul-sq-le-sq-mul-sq--06448da0dc675ff689f7c379.md) | 208 | `result-track:06448da0dc675ff689f7c379dff4524aeb2ca8a1de88933283da70f4dc96f2b2` |
| 18 | `theorem` | [sq_sum_div_le_sum_sq_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/sq-sum-div-le-sum-sq-div--9112a5dc5e46b4e5f6256da9.md) | 218 | `result-track:9112a5dc5e46b4e5f6256da9f919ef9ba2afc18befb5dada44ee78028892eb37` |
| 19 | `lemma` | [AbsoluteValue.sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/absolutevalue-sum-le--7280141e0ffa9fb582bd30ff.md) | 235 | `result-track:7280141e0ffa9fb582bd30ff9a77def07304ebb924408f733b97c1f548210578` |
| 20 | `lemma` | [IsAbsoluteValue.abv_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/isabsolutevalue-abv-sum--b6aa4b702e0194f406b6c066.md) | 240 | `result-track:b6aa4b702e0194f406b6c066422fc4789142056f8d8d40d9009c1733f3e6703b` |
| 21 | `lemma` | [AbsoluteValue.map_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/absolutevalue-map-prod--cbe057d16dc843a880874822.md) | 245 | `result-track:cbe057d16dc843a8808748223c0140646d33a54fcead6f062ee2edc5f7b73814` |
| 22 | `lemma` | [IsAbsoluteValue.map_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/isabsolutevalue-map-prod--fd2507415673c31b76941bb5.md) | 251 | `result-track:fd2507415673c31b76941bb50346be3ef1dfd716e6c316bac9f18dbb6fd35e5f` |
| 23 | `def` | [evalFinsetProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant025e6b14f0bbceccf0370183a04055f91d6698ebf97d7d6dbaba84d500f9fd52.lean/declarations/evalfinsetprod--d379cbe76b1553ed73b9fd2b.md) | 277 | `declaration-track:d379cbe76b1553ed73b9fd2b2fdf33a232e70b600cac7a3463a140d4dea11f40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
