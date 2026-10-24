# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfb44db3faab1a143092c2caeb083e2aced57053",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfb44db3faab1a143092c2caeb083e2aced57053`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Parity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.ZModChar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadraticCharFun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticcharfun--84b9ddbd6fcfdc0b07e19718.md) | 51 | `declaration-track:84b9ddbd6fcfdc0b07e19718d85d1fac115c413232c18b316fddf76ba0feb887` |
| 2 | `theorem` | [quadraticCharFun_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticcharfun-eq-zero-iff--6145bb89be1429bcb450de42.md) | 74 | `result-track:6145bb89be1429bcb450de4272a44579601a5d6248ceab955683fb358b43a562` |
| 3 | `theorem` | [quadraticCharFun_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticcharfun-zero--4505a40f291c3993823380f1.md) | 83 | `result-track:4505a40f291c3993823380f1131d3187af8d614609de0447611c46dfe069e62f` |
| 4 | `theorem` | [quadraticCharFun_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticcharfun-one--1f8676eecaee583a01b1608a.md) | 88 | `result-track:1f8676eecaee583a01b1608a15337fb2bd6e7339ea03e30035cc35d7fd3fa817` |
| 5 | `theorem` | [quadraticCharFun_eq_one_of_char_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticcharfun-eq-one-of-char-two--5b0f0f86d827769f13d38f98.md) | 93 | `result-track:5b0f0f86d827769f13d38f98e7e4fcd6b62a9fad086747b9ce37e7c47d6546b2` |
| 6 | `theorem` | [quadraticCharFun_eq_pow_of_char_ne_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticcharfun-eq-pow-of-char-ne-two--7308fc2d62c0f76fe07f3955.md) | 101 | `result-track:7308fc2d62c0f76fe07f3955f37c8938fd7fe70691703ed166be860c3e83d749` |
| 7 | `theorem` | [quadraticCharFun_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticcharfun-mul--9427771f7a4d37910e71ff3b.md) | 108 | `result-track:9427771f7a4d37910e71ff3b41af18f21e2c853fdc595d0ba55e36a3d5509c73` |
| 8 | `def` | [quadraticChar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticchar--59a7e502098790da97f86569.md) | 137 | `declaration-track:59a7e502098790da97f865697a7885864cb8656228965362e64a132b46abfa28` |
| 9 | `theorem` | [quadraticChar_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticchar-eq-zero-iff--a0b9a801ff6270d31ef9427d.md) | 147 | `result-track:a0b9a801ff6270d31ef9427de5f506fb90f2650c6ea6a642462be8917921ca6b` |
| 10 | `theorem` | [quadraticChar_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticchar-zero--d23f5eac22cbbdf294d63c52.md) | 152 | `result-track:d23f5eac22cbbdf294d63c52cbdf63fb098efbfa2bf2f1830adf3cd0776f96e5` |
| 11 | `theorem` | [quadraticChar_one_iff_isSquare](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticchar-one-iff-issquare--83a6137e64f60933f7223da7.md) | 157 | `result-track:83a6137e64f60933f7223da70d172d4a0e562cfb1b08ace2da0421a1562f4c32` |
| 12 | `theorem` | [quadraticChar_sq_one'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticchar-sq-one--a94cc56af7039955ce2a124f.md) | 164 | `result-track:a94cc56af7039955ce2a124f4723c0978778673cad700e3f8b41679252722df1` |
| 13 | `theorem` | [quadraticChar_sq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticchar-sq-one--9373999da73ded6f0289637d.md) | 170 | `result-track:9373999da73ded6f0289637d915103fbd89a59273fa6245ee3e8c5b999ba5f37` |
| 14 | `theorem` | [quadraticChar_dichotomy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticchar-dichotomy--24211c30327c98ee1f647bf4.md) | 178 | `result-track:24211c30327c98ee1f647bf46cb5ce6c247fb19d121ca086af09f365532749cb` |
| 15 | `theorem` | [quadraticChar_eq_neg_one_iff_not_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticchar-eq-neg-one-iff-not-one--429f080f176ab9203daaa374.md) | 184 | `result-track:429f080f176ab9203daaa374139d3abf681be2002a1bebe24e765bb4363da4e2` |
| 16 | `theorem` | [quadraticChar_neg_one_iff_not_isSquare](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticchar-neg-one-iff-not-issquare--9578e4dc0bf3d90b189d0cf3.md) | 192 | `result-track:9578e4dc0bf3d90b189d0cf3f2122480042810f0f2230e0c2df951a91555e384` |
| 17 | `theorem` | [quadraticChar_exists_neg_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticchar-exists-neg-one--2eb03851f070cfe9d2cd0b0a.md) | 199 | `result-track:2eb03851f070cfe9d2cd0b0aff98662898c06719b2ca8f5ef8ad15df87bae74c` |
| 18 | `theorem` | [quadraticChar_eq_one_of_char_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticchar-eq-one-of-char-two--4de1bd0dede4d8e7f59871ca.md) | 204 | `result-track:4de1bd0dede4d8e7f59871caf5c139f062da149b536c286940ec20afd50473c1` |
| 19 | `theorem` | [quadraticChar_eq_pow_of_char_ne_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticchar-eq-pow-of-char-ne-two--ea0495c8a5f7cbc4ad3b02fb.md) | 211 | `result-track:ea0495c8a5f7cbc4ad3b02fb9b545baa298db41beba24bb0b03e38d10a440866` |
| 20 | `theorem` | [quadraticChar_eq_pow_of_char_ne_two'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticchar-eq-pow-of-char-ne-two--481da82e9ede17d9b33e5df4.md) | 216 | `result-track:481da82e9ede17d9b33e5df4139f3d297f738e3953ee6376eaf0b8fd0c65b6a2` |
| 21 | `theorem` | [quadraticChar_isQuadratic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticchar-isquadratic--9cf958b3c5c3a6cbaa9d1bdf.md) | 232 | `result-track:9cf958b3c5c3a6cbaa9d1bdf50f844a4a17d58e1222c3e4e80649ce2d97b2488` |
| 22 | `theorem` | [quadraticChar_isNontrivial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticchar-isnontrivial--e3672c850e9bacd86dea577f.md) | 243 | `result-track:e3672c850e9bacd86dea577f625b36677d98e4a65ee8b803bfc1a8f8ccdac217` |
| 23 | `theorem` | [quadraticChar_card_sqrts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticchar-card-sqrts--0fc0d94839840e0590e36ea8.md) | 252 | `result-track:0fc0d94839840e0590e36ea8b2d3923bec9ba751f6d591df43dcf20912ebf7e9` |
| 24 | `theorem` | [quadraticChar_sum_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticchar-sum-zero--9ed73cc927833a870ad8b7d5.md) | 291 | `result-track:9ed73cc927833a870ad8b7d5f04a28e701b80f641f3995ae801748cc43b8dc4e` |
| 25 | `theorem` | [quadraticChar_neg_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/quadraticchar-neg-one--20e128b3f0846a394454e485.md) | 311 | `result-track:20e128b3f0846a394454e485f0dbfa60eddd78f1b2b75ea18382f47b3bc4aa0c` |
| 26 | `theorem` | [FiniteField.isSquare_neg_one_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/declarations/finitefield-issquare-neg-one-iff--223e375f94c371dbc97ac583.md) | 322 | `result-track:223e375f94c371dbc97ac583127cedcb2d4880fb9d3f83f594eacf7667705eef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
