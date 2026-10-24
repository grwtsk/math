# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DoubleCounting.Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da048a809660cc2e218204f2b9bfd9006dc49420",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da048a809660cc2e218204f2b9bfd9006dc49420`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Nat` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bipartiteBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/bipartitebelow--7148cbb393b7b9fa24b77799.md) | 53 | `declaration-track:7148cbb393b7b9fa24b77799570cfbbedda20034624c4c9dbbb34488a615e086` |
| 2 | `def` | [bipartiteAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/bipartiteabove--6da4296c93e4897056272748.md) | 56 | `declaration-track:6da4296c93e489705627274887192e2e2a203e5372f9cfdba2f7b53a43a15e00` |
| 3 | `theorem` | [bipartiteBelow_swap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/bipartitebelow-swap--8318aabf3507eb2a95524ac7.md) | 58 | `result-track:8318aabf3507eb2a95524ac7bec89dff8d699fce01bb24676f1dc70496c7e1bd` |
| 4 | `theorem` | [bipartiteAbove_swap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/bipartiteabove-swap--47aa1f7d4894eecf82fbb5e4.md) | 60 | `result-track:47aa1f7d4894eecf82fbb5e447a62e2f7736ffffad5ec316fae7f75b7a53d01b` |
| 5 | `theorem` | [coe_bipartiteBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/coe-bipartitebelow--53d5a6a771157fb6c584afc4.md) | 63 | `result-track:53d5a6a771157fb6c584afc4811397f4af98b26842ab83019507a73ede2e96f2` |
| 6 | `theorem` | [coe_bipartiteAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/coe-bipartiteabove--7e258701be906442bd33c673.md) | 66 | `result-track:7e258701be906442bd33c673380c3cb880386d62f63fda5364d64a113ec9cd54` |
| 7 | `theorem` | [mem_bipartiteBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/mem-bipartitebelow--aa1135729acdcb34c93f5ea2.md) | 71 | `result-track:aa1135729acdcb34c93f5ea28561099c4b7ce7ef1f53cee01ac0d1691544c916` |
| 8 | `theorem` | [mem_bipartiteAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/mem-bipartiteabove--d3b6e854d0269914679e4c5c.md) | 74 | `result-track:d3b6e854d0269914679e4c5c0e8c55abf1ce9ef383beb0b2aa131ac094a22ad7` |
| 9 | `theorem` | [prod_prod_bipartiteAbove_eq_prod_prod_bipartiteBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/prod-prod-bipartiteabove-eq-prod-prod-bipartitebelow--37e68eb48efc67293c927d03.md) | 77 | `result-track:37e68eb48efc67293c927d0339400244b86ef5186d68b1510c1eacde39a929b2` |
| 10 | `theorem` | [sum_card_bipartiteAbove_eq_sum_card_bipartiteBelow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/sum-card-bipartiteabove-eq-sum-card-bipartitebelow--3e80349bf3af535e9e98c790.md) | 83 | `result-track:3e80349bf3af535e9e98c790e553b0c112da69332ad36051b94468057d405213` |
| 11 | `theorem` | [card_nsmul_le_card_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/card-nsmul-le-card-nsmul--845732031a7303636c4d347b.md) | 94 | `result-track:845732031a7303636c4d347b52a95984d13006251dc5ee7a33eef8b8b188e611` |
| 12 | `theorem` | [card_nsmul_le_card_nsmul'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/card-nsmul-le-card-nsmul--f12dfe8f8dbc86940afebcbd.md) | 107 | `result-track:f12dfe8f8dbc86940afebcbd42f8603ea977772ca0adb1c970e63cb6419b9b70` |
| 13 | `theorem` | [card_nsmul_lt_card_nsmul_of_lt_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/card-nsmul-lt-card-nsmul-of-lt-of-le--3689d410596b5e0da77f9c22.md) | 122 | `result-track:3689d410596b5e0da77f9c2289ddee3f04a47663727aad25cfb4b31df8da688a` |
| 14 | `theorem` | [card_nsmul_lt_card_nsmul_of_le_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/card-nsmul-lt-card-nsmul-of-le-of-lt--d52711bc3edaa806ed825354.md) | 136 | `result-track:d52711bc3edaa806ed825354c05ea91b3202c1097a16ec194161a7600ebce489` |
| 15 | `theorem` | [card_nsmul_lt_card_nsmul_of_lt_of_le'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/card-nsmul-lt-card-nsmul-of-lt-of-le--28b3d4b781b1f4edfa3cc058.md) | 150 | `result-track:28b3d4b781b1f4edfa3cc058755c07d6e5b7ad89074bbd3b4a4cccb508502122` |
| 16 | `theorem` | [card_nsmul_lt_card_nsmul_of_le_of_lt'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/card-nsmul-lt-card-nsmul-of-le-of-lt--3c9289b651d9564394d38942.md) | 159 | `result-track:3c9289b651d9564394d3894234e7f41dcbabddce4568fbdceeca7acac86958f8` |
| 17 | `theorem` | [card_mul_le_card_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/card-mul-le-card-mul--9458b0aa5f81812f2b177529.md) | 170 | `result-track:9458b0aa5f81812f2b17752903625df07d0c1ac625ab54b7c35a62365037e21c` |
| 18 | `theorem` | [card_mul_le_card_mul'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/card-mul-le-card-mul--156dd3a4c8c852c504ae9fe1.md) | 175 | `result-track:156dd3a4c8c852c504ae9fe10d874ed1381b225d8734132a14c5a7f40e51002d` |
| 19 | `theorem` | [card_mul_eq_card_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/card-mul-eq-card-mul--70ea7e95e2674d3a6b748b14.md) | 180 | `result-track:70ea7e95e2674d3a6b748b145bbfaf7c4a31e4fac3f6a0a11aef859564f29986` |
| 20 | `theorem` | [card_le_card_of_forall_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/card-le-card-of-forall-subsingleton--b2b6f15d56e986c9dc59b776.md) | 186 | `result-track:b2b6f15d56e986c9dc59b776449c670197a860311c833db1d42df45b40916ce5` |
| 21 | `theorem` | [card_le_card_of_forall_subsingleton'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/card-le-card-of-forall-subsingleton--88c5dd872c70fadc70c59f51.md) | 198 | `result-track:88c5dd872c70fadc70c59f5183d335ce8c27b015ce5fd7226319f463a92d1a30` |
| 22 | `theorem` | [card_le_card_of_leftTotal_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/card-le-card-of-lefttotal-unique--3d2ec5f851f999b12fd76e7f.md) | 212 | `result-track:3d2ec5f851f999b12fd76e7f293d26a48b18cbbab348ed37c3e8e2d28992de57` |
| 23 | `theorem` | [card_le_card_of_rightTotal_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCounting/Variant2d5b84a9783e226eaf99e8de4883d19c639d0fc0de381eeb112e0a3253d58071.lean/declarations/card-le-card-of-righttotal-unique--5b56d85808ec8d5e24a97003.md) | 216 | `result-track:5b56d85808ec8d5e24a970031d4d00617157ca5675e41877898e4b00486b7b07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
