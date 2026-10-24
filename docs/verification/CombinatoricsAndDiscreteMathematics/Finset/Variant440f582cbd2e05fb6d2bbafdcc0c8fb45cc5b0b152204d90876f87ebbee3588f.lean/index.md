# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c81e3ba895b5566a2fa0790da9b5d8a1ad1f58c7",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c81e3ba895b5566a2fa0790da9b5d8a1ad1f58c7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_sq_le_sq_sum_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/sum-sq-le-sq-sum-of-nonneg--7905e539d970b2d342cf475c.md) | 35 | `result-track:7905e539d970b2d342cf475cb6d654d4270e5e3f49e0f3b4203934c73398feab` |
| 2 | `lemma` | [prod_add_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/prod-add-prod-le--515addbad8de5dbaedaffcc1.md) | 51 | `result-track:515addbad8de5dbaedaffcc1b3222a69e642c8f2eeb13f7a0aaebceed6c6d31f` |
| 3 | `theorem` | [le_prod_of_submultiplicative_on_pred_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/le-prod-of-submultiplicative-on-pred-of-nonneg--8aae0025a8d7714569f9b2d9.md) | 63 | `result-track:8aae0025a8d7714569f9b2d96104c697629ba3919021ca0e4581c793d18a5409` |
| 4 | `theorem` | [le_prod_of_submultiplicative_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/le-prod-of-submultiplicative-of-nonneg--f3da4b4613c07d0c66e27376.md) | 74 | `result-track:f3da4b4613c07d0c66e27376ec03a337a5b73b602585a6f543f635a70a4f9a0e` |
| 5 | `theorem` | [sum_mul_self_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/sum-mul-self-eq-zero-iff--00350cf1fc5dbd2ae2365b63.md) | 88 | `result-track:00350cf1fc5dbd2ae2365b631a91ea3abe3b27320e9fee2e81f01915d6e74425` |
| 6 | `theorem` | [sum_sq_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/sum-sq-eq-zero-iff--e43198fa9e2acf36dcc17132.md) | 92 | `result-track:e43198fa9e2acf36dcc17132be96ec43cb00b97eede1725e3c9e8dbb6d0b63d2` |
| 7 | `theorem` | [sum_pow_eq_zero_iff_of_even](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/sum-pow-eq-zero-iff-of-even--2f1f627bbd06abaf902b290b.md) | 95 | `result-track:2f1f627bbd06abaf902b290b112fdd45265dfa8ceda8783ec57e2f295ba909ac` |
| 8 | `lemma` | [abs_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/abs-prod--cebbdbd17cafb88fa2de2537.md) | 101 | `result-track:cebbdbd17cafb88fa2de2537622ff3af0e9e836ee07cbadfa4f536ab6397410c` |
| 9 | `theorem` | [PNat.coe_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/pnat-coe-prod--566671cfe89d2d05478a5c25.md) | 106 | `result-track:566671cfe89d2d05478a5c254633745cd17024186a658863271f38276ec081cb` |
| 10 | `lemma` | [_root_.CanonicallyOrderedAdd.prod_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/root-canonicallyorderedadd-prod-pos--92115f6be99a50f9a083d374.md) | 115 | `result-track:92115f6be99a50f9a083d37454440f87af114a3cd0021b92e75f7cd7543bba1c` |
| 11 | `lemma` | [prod_add_prod_le'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/prod-add-prod-le--0aa78206773ec4493c6af8da.md) | 122 | `result-track:0aa78206773ec4493c6af8da08bf0fa505eef22f1d7932404982a9ed1d6941c5` |
| 12 | `lemma` | [sum_sq_le_sum_mul_sum_of_sq_le_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/sum-sq-le-sum-mul-sum-of-sq-le-mul--f33e4167d6e16b1f66a22bae.md) | 138 | `result-track:f33e4167d6e16b1f66a22bae5b99bf43d703c8493713785b4aa6274a167be820` |
| 13 | `lemma` | [sum_sq_le_sum_mul_sum_of_sq_eq_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/sum-sq-le-sum-mul-sum-of-sq-eq-mul--5b3e4ee2f623cffa22f29912.md) | 164 | `result-track:5b3e4ee2f623cffa22f29912356cbe7373df6a5cc529d1b19ae95e966ee3328d` |
| 14 | `lemma` | [sum_mul_sq_le_sq_mul_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/sum-mul-sq-le-sq-mul-sq--0814712509c6f0e048b44bdf.md) | 171 | `result-track:0814712509c6f0e048b44bdf491b2ecefc9701e6d5dec7c0000a3239929dc37e` |
| 15 | `theorem` | [sq_sum_div_le_sum_sq_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/sq-sum-div-le-sum-sq-div--32d4150070a7bfa8afd0c442.md) | 181 | `result-track:32d4150070a7bfa8afd0c442d563f9a7f96d85c9446d330795c38bad34561d24` |
| 16 | `lemma` | [AbsoluteValue.sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/absolutevalue-sum-le--e560a51de116e0e97a0d3d86.md) | 198 | `result-track:e560a51de116e0e97a0d3d861c859d7dc7c40fc53b3759b5594d397513e998ee` |
| 17 | `lemma` | [IsAbsoluteValue.abv_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/isabsolutevalue-abv-sum--a82afdab73765edfdbe333f2.md) | 203 | `result-track:a82afdab73765edfdbe333f2e534d487aef27245de4e269d68bb13db75279ef8` |
| 18 | `lemma` | [AbsoluteValue.map_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/absolutevalue-map-prod--c9292df46f339a8dbdaf1df5.md) | 208 | `result-track:c9292df46f339a8dbdaf1df5cd98d3a09fe66a18f89809dd8fc975ac6578c5f1` |
| 19 | `lemma` | [IsAbsoluteValue.map_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/isabsolutevalue-map-prod--075f93c913b07b7976590136.md) | 214 | `result-track:075f93c913b07b797659013610260a9b1e0205f2bddb1747917cf1ca2712e905` |
| 20 | `def` | [evalFinsetProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/declarations/evalfinsetprod--a022b209b65e717f32d50d1d.md) | 240 | `declaration-track:a022b209b65e717f32d50d1d100610df36b876c0c8b68fcd6df3e5f94de491f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
