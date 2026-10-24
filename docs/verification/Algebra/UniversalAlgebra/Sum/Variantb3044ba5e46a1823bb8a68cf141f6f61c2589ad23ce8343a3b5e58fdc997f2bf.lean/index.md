# Verification target: GRWTSK.Algebra.UniversalAlgebra.Sum.Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25faeedb640dd63834234744acaaca719e72eab2",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25faeedb640dd63834234744acaaca719e72eab2`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.NatAntidiagonal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/add-pow--31845d0e2d1d1ed621c1c87e.md) | 30 | `result-track:31845d0e2d1d1ed621c1c87e92058247ea7e3c27bf3ec517d95afd43c4ba2f5c` |
| 2 | `theorem` | [add_pow'](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/add-pow--c72994c4eb07f2aa6d9c0d39.md) | 64 | `result-track:c72994c4eb07f2aa6d9c0d395a97ae1218e4d6f7f2d2576328ccdcabf72c4970` |
| 3 | `theorem` | [add_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/add-pow--a3e46d97c6f72216f527999a.md) | 72 | `result-track:a3e46d97c6f72216f527999af2132de3555f3d478ae113314f8d1be63dca53e7` |
| 4 | `theorem` | [sub_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/sub-pow--8ac8eb82c987694dd28bec58.md) | 77 | `result-track:8ac8eb82c987694dd28bec580a24e17e1f250831037594e2d58047c73aae87b1` |
| 5 | `theorem` | [sum_range_choose](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/sum-range-choose--84bf75d984fd16dd8328e0a5.md) | 90 | `result-track:84bf75d984fd16dd8328e0a51c6ddb342f3944c3891853872d796f232a9226de` |
| 6 | `theorem` | [sum_range_choose_halfway](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/sum-range-choose-halfway--d8fb2b7f7210fa0f1b125b63.md) | 94 | `result-track:d8fb2b7f7210fa0f1b125b634dfbcd516f5d127b669896ac79a89377fe294c07` |
| 7 | `theorem` | [choose_middle_le_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/choose-middle-le-pow--c216656bb0c2d8fe4ae1b17d.md) | 112 | `result-track:c216656bb0c2d8fe4ae1b17dda78790f72d574d82932a282b0a634d4450c3884` |
| 8 | `theorem` | [four_pow_le_two_mul_add_one_mul_central_binom](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/four-pow-le-two-mul-add-one-mul-central-binom--57f82ff21afe85946cd7e074.md) | 117 | `result-track:57f82ff21afe85946cd7e074d1d14ab72f3449852f360150df9bd51a4192abce` |
| 9 | `theorem` | [sum_Icc_choose](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/sum-icc-choose--944bb8f6f53f2e7f3f65417f.md) | 126 | `result-track:944bb8f6f53f2e7f3f65417f18e7de4a3a13f23d30d6add3be50c8fa3cc2ce4c` |
| 10 | `lemma` | [sum_range_add_choose](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/sum-range-add-choose--91de5ce649e5ff3b5c5b5018.md) | 143 | `result-track:91de5ce649e5ff3b5c5b5018fdb8fc5effa0f113605aeaf840d77d93889cc8dd` |
| 11 | `theorem` | [Int.alternating_sum_range_choose](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/int-alternating-sum-range-choose--a8260eef209a02d6685c27c9.md) | 151 | `result-track:a8260eef209a02d6685c27c9d39cb7a0278ef381413648224f4bffb13608de20` |
| 12 | `theorem` | [Int.alternating_sum_range_choose_of_ne](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/int-alternating-sum-range-choose-of-ne--b53390a5945b063bf10eb7cd.md) | 160 | `result-track:b53390a5945b063bf10eb7cd93141de6f7e36a0224cf8d5766f9971e531fcb42` |
| 13 | `theorem` | [sum_powerset_apply_card](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/sum-powerset-apply-card--c03eed32548887141d433d7d.md) | 166 | `result-track:c03eed32548887141d433d7dbec69924f8e25bfa0a3e90efe6205ebd67310853` |
| 14 | `theorem` | [sum_powerset_neg_one_pow_card](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/sum-powerset-neg-one-pow-card--54d7c3cf3534d2f7c794c51a.md) | 179 | `result-track:54d7c3cf3534d2f7c794c51a3b0aa5aba564d5202b6f580e45558734886b552d` |
| 15 | `theorem` | [sum_powerset_neg_one_pow_card_of_nonempty](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/sum-powerset-neg-one-pow-card-of-nonempty--9cec4320f68cd8466156a960.md) | 184 | `result-track:9cec4320f68cd8466156a960ff715d22bbdcd9c0e60f6b0ab463d243b0f6ce97` |
| 16 | `theorem` | [prod_pow_choose_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/prod-pow-choose-succ--3328d319dbce607ec3b312eb.md) | 193 | `result-track:3328d319dbce607ec3b312ebdd552bf3e45d30aff6429622772829d332f59515` |
| 17 | `theorem` | [prod_antidiagonal_pow_choose_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/prod-antidiagonal-pow-choose-succ--85ce311c1e2c0316a8f70743.md) | 204 | `result-track:85ce311c1e2c0316a8f70743b03a69b8432d128007a7ed145408f0ed96604ce2` |
| 18 | `theorem` | [sum_choose_succ_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/sum-choose-succ-mul--45c837470fd75239096a5e1a.md) | 218 | `result-track:45c837470fd75239096a5e1a4428cce5d0ed28f000f3025951f1f64d57b97517` |
| 19 | `theorem` | [sum_antidiagonal_choose_succ_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/sum-antidiagonal-choose-succ-mul--f94ef1d0b1e500d62f431bf2.md) | 226 | `result-track:f94ef1d0b1e500d62f431bf2128b8cac12e2b0669c5cc708a14e720944339be6` |
| 20 | `theorem` | [sum_antidiagonal_choose_add](../../../../../mathematics/Algebra/UniversalAlgebra/Sum/Variantb3044ba5e46a1823bb8a68cf141f6f61c2589ad23ce8343a3b5e58fdc997f2bf.lean/declarations/sum-antidiagonal-choose-add--0c89ea3330b512ca382b0af3.md) | 232 | `result-track:0c89ea3330b512ca382b0af32fb777c5942ca33f80c2a865596674b3c464fe6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
