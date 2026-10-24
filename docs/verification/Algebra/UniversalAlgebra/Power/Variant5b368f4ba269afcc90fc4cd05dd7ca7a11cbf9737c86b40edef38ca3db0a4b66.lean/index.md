# Verification target: GRWTSK.Algebra.UniversalAlgebra.Power.Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2e81737c6cc3c0ed54e6d15d6f1a9ea617cf605",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2e81737c6cc3c0ed54e6d15d6f1a9ea617cf605`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Parity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharZero.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Power` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zpow_le_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-le-of-le--824aeb30e7ade24bf52b1fec.md) | 37 | `result-track:824aeb30e7ade24bf52b1feca847f162aeb09d25d9e83708369c0a73f2a865a8` |
| 2 | `theorem` | [zpow_le_one_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-le-one-of-nonpos--23786686bcf4c0bfe4428bcc.md) | 47 | `result-track:23786686bcf4c0bfe4428bcca3aff9a320070bc02fbb72aac553f753f5edc433` |
| 3 | `theorem` | [one_le_zpow_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/one-le-zpow-of-nonneg--10c79f720316e39a50b1e8c6.md) | 51 | `result-track:10c79f720316e39a50b1e8c6e42720191d57b71053e8bb54795d9569a63d901b` |
| 4 | `theorem` | [Nat.zpow_pos_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/nat-zpow-pos-of-pos--0820308348e7c1fa26c9d2a0.md) | 55 | `result-track:0820308348e7c1fa26c9d2a0ef49d86a8c0a93e23eb38f1e4c3fbd051130ec48` |
| 5 | `theorem` | [Nat.zpow_ne_zero_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/nat-zpow-ne-zero-of-pos--2c0f84fbe4745a8ab6adc7e9.md) | 60 | `result-track:2c0f84fbe4745a8ab6adc7e9e0ffb4a8931f99bd81a1c8b831a81f7c3dbfa0a7` |
| 6 | `theorem` | [one_lt_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/one-lt-zpow--3f52b485092ebacbccd14c92.md) | 64 | `result-track:3f52b485092ebacbccd14c926011b4b440ebcc05bff8baf6d7520485015ce001` |
| 7 | `theorem` | [zpow_strictMono](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-strictmono--1b46e81e019527357b8550c0.md) | 69 | `result-track:1b46e81e019527357b8550c0c6c157f1607c1d048f7c6a3c15f4889a18686ada` |
| 8 | `theorem` | [zpow_strictAnti](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-strictanti--341bc0d85d8716365bf55488.md) | 77 | `result-track:341bc0d85d8716365bf554887bb3cfbb19a80c1d79f51c0e2a359d2cc2d90509` |
| 9 | `theorem` | [zpow_lt_iff_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-lt-iff-lt--8e144bd93e5fc1c51b208e6b.md) | 86 | `result-track:8e144bd93e5fc1c51b208e6ba423650c9ea0ce82ca9fb1153c021619d3ff318c` |
| 10 | `theorem` | [zpow_le_iff_le](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-le-iff-le--4375d2716658cda8f4ca4abb.md) | 91 | `result-track:4375d2716658cda8f4ca4abb1268ca023d9dcb8f7bac8d600f49b6f79130bcad` |
| 11 | `theorem` | [div_pow_le](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/div-pow-le--d6e3645fbd6188c12f2a519e.md) | 96 | `result-track:d6e3645fbd6188c12f2a519ed3f1f1c95bdb9d09e190316c6423e164fc79d1d0` |
| 12 | `theorem` | [zpow_injective](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-injective--4d35d70779e18cbeca4df38b.md) | 100 | `result-track:4d35d70779e18cbeca4df38b6409c5a74a8df7b2a803eac26a26aded9ffea156` |
| 13 | `theorem` | [zpow_inj](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-inj--b29ef5a9d81a0a43440a048c.md) | 107 | `result-track:b29ef5a9d81a0a43440a048c3e81ee492d3f63c95a90488b38423ab9c0c005f8` |
| 14 | `theorem` | [zpow_le_max_of_min_le](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-le-max-of-min-le--71b364936059e09751f97ff8.md) | 111 | `result-track:71b364936059e09751f97ff84e0b42c174a63674cd42a854d273262b14db4413` |
| 15 | `theorem` | [zpow_le_max_iff_min_le](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-le-max-iff-min-le--0bb5d843bbfe0a7b4b2f6011.md) | 117 | `result-track:0bb5d843bbfe0a7b4b2f6011d71f432e661008fe3abbccfc2d1246a6e415b67b` |
| 16 | `theorem` | [zpow_bit0_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-bit0-nonneg--6f55a6836b698f1dfd132d6d.md) | 134 | `result-track:6f55a6836b698f1dfd132d6d2a59d544b2b33a9453c375d3c3297b0930025770` |
| 17 | `theorem` | [zpow_two_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-two-nonneg--9b27291b1c4ac4fc2f7009fe.md) | 138 | `result-track:9b27291b1c4ac4fc2f7009fef68242b95509a37c8bbc22112ace75bd1ffe777a` |
| 18 | `theorem` | [zpow_neg_two_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-neg-two-nonneg--5d6a803d9ba615b43c373714.md) | 142 | `result-track:5d6a803d9ba615b43c373714ae9eb166907f4a042159c60fd6e74b80f6159db5` |
| 19 | `theorem` | [zpow_bit0_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-bit0-pos--43ef6b4512a9a24bae8a0e97.md) | 146 | `result-track:43ef6b4512a9a24bae8a0e9778ca6b63b66df7cd1ca77c1f19231f7eba97055c` |
| 20 | `theorem` | [zpow_two_pos_of_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-two-pos-of-ne-zero--624944be4d0b2c199fda66da.md) | 150 | `result-track:624944be4d0b2c199fda66da15ac3c10f97a7193958adf16bd215d3ff9ba7a73` |
| 21 | `theorem` | [zpow_bit0_pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-bit0-pos-iff--706d13f966b15a6dbb755eca.md) | 155 | `result-track:706d13f966b15a6dbb755eca6baea0a2d38c72509440ba71ab54105bcf1ea994` |
| 22 | `theorem` | [zpow_bit1_neg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-bit1-neg-iff--dc4501c6572594acfec980f1.md) | 164 | `result-track:dc4501c6572594acfec980f1cc4502dc50141b4520beda78784402da96a63eee` |
| 23 | `theorem` | [zpow_bit1_nonneg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-bit1-nonneg-iff--a9b8a6191be5832c1a756acd.md) | 170 | `result-track:a9b8a6191be5832c1a756acd0d6e031b746dd01701cc1ecc8e8ca5cddc8d26c6` |
| 24 | `theorem` | [zpow_bit1_nonpos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-bit1-nonpos-iff--b97f1eda5915e1deaaada25b.md) | 175 | `result-track:b97f1eda5915e1deaaada25b9c33ffe308ec4251de5fc07c73be11f564d81749` |
| 25 | `theorem` | [zpow_bit1_pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-bit1-pos-iff--b40a33016b344bee2ff26240.md) | 180 | `result-track:b40a33016b344bee2ff2624028f1ee882f7c13ccd597c7f6fdc8223ed4c359e4` |
| 26 | `theorem` | [Even.zpow_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/even-zpow-nonneg--50a7d68b54273020a75f104e.md) | 186 | `result-track:50a7d68b54273020a75f104ee27918d885480afd2c433c0dd0239958f4967f12` |
| 27 | `theorem` | [Even.zpow_pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/even-zpow-pos-iff--a36240b71dc163bfb7edc5b4.md) | 190 | `result-track:a36240b71dc163bfb7edc5b4368607974a83c373ca3189a32bc1da01fe611e57` |
| 28 | `theorem` | [Odd.zpow_neg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/odd-zpow-neg-iff--5103db8a88ef6d67ed66dba1.md) | 194 | `result-track:5103db8a88ef6d67ed66dba15873548dc298acbb39db9fe58bfc61da5c716038` |
| 29 | `theorem` | [Odd.zpow_nonneg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/odd-zpow-nonneg-iff--29665966e06dcc807724f6cc.md) | 198 | `result-track:29665966e06dcc807724f6cc23ca9cafa4f309d203755ad681b242f46de37fc3` |
| 30 | `theorem` | [Odd.zpow_nonpos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/odd-zpow-nonpos-iff--b003a322c9a6104f886826f2.md) | 202 | `result-track:b003a322c9a6104f886826f2f3f73ffdc760d143235c0d8ae82a422d73d09107` |
| 31 | `theorem` | [Odd.zpow_pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/odd-zpow-pos-iff--c2d9a31888b8afc02a4986af.md) | 206 | `result-track:c2d9a31888b8afc02a4986afdbfb600878b03bbe7e64868fd11430ff6593333d` |
| 32 | `theorem` | [Even.zpow_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/even-zpow-abs--998e48f16bfd530d1fa387bc.md) | 219 | `result-track:998e48f16bfd530d1fa387bccde488da1c70b8b6023b82d85fb24aae2de9d62a` |
| 33 | `theorem` | [zpow_bit0_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/zpow-bit0-abs--a4dd9f5d0e27bcb3b73b78ff.md) | 225 | `result-track:a4dd9f5d0e27bcb3b73b78ffd51ff406a84636edd0bec52e6268e065eb0a57b0` |
| 34 | `theorem` | [Nat.cast_le_pow_sub_div_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/nat-cast-le-pow-sub-div-sub--4703a5c5ad97bd341d6bbaf5.md) | 233 | `result-track:4703a5c5ad97bd341d6bbaf55103b969333be60f48f2676d28a3e4459af8c9e3` |
| 35 | `theorem` | [Nat.cast_le_pow_div_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant5b368f4ba269afcc90fc4cd05dd7ca7a11cbf9737c86b40edef38ca3db0a4b66.lean/declarations/nat-cast-le-pow-div-sub--a447407fe7777f31a2f73492.md) | 240 | `result-track:a447407fe7777f31a2f7349295e4a0ac74abff943137a22c10286385e27b016f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
