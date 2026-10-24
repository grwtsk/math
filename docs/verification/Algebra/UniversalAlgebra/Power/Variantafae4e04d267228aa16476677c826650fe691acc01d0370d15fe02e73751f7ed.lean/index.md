# Verification target: GRWTSK.Algebra.UniversalAlgebra.Power.Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c8fe2a3e8b1742e43d2c950372c7fc62fcad47d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c8fe2a3e8b1742e43d2c950372c7fc62fcad47d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Bitwise` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pow_sub₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/pow-sub--f427eec02002aa9e2e20ab2c.md) | 33 | `result-track:f427eec02002aa9e2e20ab2ce772e4f1c6fe03577097f7a56285d4f3215ee1c3` |
| 2 | `theorem` | [pow_sub_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/pow-sub-of-lt--4fa0cfe0f27432b4e17f2c7b.md) | 39 | `result-track:4fa0cfe0f27432b4e17f2c7b2e875979a69e0ee9cbb11a410f511f866e3acf05` |
| 3 | `theorem` | [pow_inv_comm₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/pow-inv-comm--d3c3f6f092bd8aded1baff13.md) | 45 | `result-track:d3c3f6f092bd8aded1baff137975baacef8a7b0b9330d5a4150d86d35e3ba255` |
| 4 | `theorem` | [inv_pow_sub₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/inv-pow-sub--b02cf82bf440d084ef6d467d.md) | 49 | `result-track:b02cf82bf440d084ef6d467d4dd4bdf0ba490ce64418b1d4df906ea68fd231cc` |
| 5 | `theorem` | [inv_pow_sub_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/inv-pow-sub-of-lt--e29ec1e9b346a11d8a17709a.md) | 53 | `result-track:e29ec1e9b346a11d8a17709a3cda50bb84d0dd73172c6f0eed07de8bb266b029` |
| 6 | `theorem` | [zero_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/zero-zpow--1cb52ac8321ce244f15ee235.md) | 69 | `result-track:1cb52ac8321ce244f15ee2353dce9bfb457a0cd63dce41f047f6c2dd023ed55f` |
| 7 | `theorem` | [zero_zpow_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/zero-zpow-eq--b64f329d49af1ee6ef8d4958.md) | 76 | `result-track:b64f329d49af1ee6ef8d49584e7c1db41c027947e6b9803effaaaaa4fb6aa1ae` |
| 8 | `theorem` | [zpow_add_one₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/zpow-add-one--2b71de1c5c036d20e26b5dad.md) | 82 | `result-track:2b71de1c5c036d20e26b5dad9ee62c9360dc9a20bf4d61584969b5fcf2393b1a` |
| 9 | `theorem` | [zpow_sub_one₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/zpow-sub-one--0fcd1a1f7451cf5c165ef22a.md) | 91 | `result-track:0fcd1a1f7451cf5c165ef22a472c72c90251ec1de5318d90d4c9571340cdb2c8` |
| 10 | `theorem` | [zpow_add₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/zpow-add--f71320779aa04822d9230c65.md) | 97 | `result-track:f71320779aa04822d9230c65225b03a91a871199a5b4e8e564326b4e694ac452` |
| 11 | `theorem` | [zpow_add'](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/zpow-add--232abc489d6d2cfc0611f2da.md) | 104 | `result-track:232abc489d6d2cfc0611f2da6f65879ce18b2ac90fda69758bd72d91e38dd9cc` |
| 12 | `theorem` | [zpow_one_add₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/zpow-one-add--de658edd4f0ec9a0ca3a5d56.md) | 118 | `result-track:de658edd4f0ec9a0ca3a5d5656e9b16cdfd7760670284869504fa8306eae2c91` |
| 13 | `theorem` | [SemiconjBy.zpow_right₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/semiconjby-zpow-right--decfb1a6b4f110e493855e3d.md) | 122 | `result-track:decfb1a6b4f110e493855e3d0442ed0bd42681b4fb5ea61e27fb79966f14b8ea` |
| 14 | `theorem` | [Commute.zpow_right₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/commute-zpow-right--2ed1709206a07a9ad0ec35f1.md) | 128 | `result-track:2ed1709206a07a9ad0ec35f1366310f1e5bef02b2d54e72de4b82f547b1dd060` |
| 15 | `theorem` | [Commute.zpow_left₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/commute-zpow-left--3c2a903f80d3d7797564e289.md) | 132 | `result-track:3c2a903f80d3d7797564e2893ffcffa825c6a66f7211992e3e960f895a3e0971` |
| 16 | `theorem` | [Commute.zpow_zpow₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/commute-zpow-zpow--e17c7e1b49a026f520c75721.md) | 136 | `result-track:e17c7e1b49a026f520c75721592e1a0945a0a056de66c4b36dc6ff2994b2d2c6` |
| 17 | `theorem` | [Commute.zpow_self₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/commute-zpow-self--09a6851bac1b70de89aedec7.md) | 140 | `result-track:09a6851bac1b70de89aedec7a9d495eedfe6186e48b7fd94407143bb73fc537e` |
| 18 | `theorem` | [Commute.self_zpow₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/commute-self-zpow--6b35c4e2e4d5522414c89d22.md) | 144 | `result-track:6b35c4e2e4d5522414c89d2295622ff274722a56401a2645675f0556a904c0f1` |
| 19 | `theorem` | [Commute.zpow_zpow_self₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/commute-zpow-zpow-self--86fa7b8dc516194341d9d1e7.md) | 148 | `result-track:86fa7b8dc516194341d9d1e703fd9bfbcfc0cfa41f94e8b18a0481394777fc3a` |
| 20 | `theorem` | [zpow_bit1₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/zpow-bit1--46f7ef092c715c6465d74f86.md) | 153 | `result-track:46f7ef092c715c6465d74f861660fbd156319e21dd497cc8ee49a7c5958ff9cf` |
| 21 | `theorem` | [zpow_ne_zero_of_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/zpow-ne-zero-of-ne-zero--4fdc210cd4537e38dd50411e.md) | 159 | `result-track:4fdc210cd4537e38dd50411e9189185f095ce8a6b05242ea93c539371d646336` |
| 22 | `theorem` | [zpow_sub₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/zpow-sub--4d7225904aa22effcda59a12.md) | 168 | `result-track:4d7225904aa22effcda59a1259af31f018f9cf0aaa9dfdb4353104959a278500` |
| 23 | `theorem` | [zpow_bit1'](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/zpow-bit1--7176dfaa447449af5daa2970.md) | 173 | `result-track:7176dfaa447449af5daa29708a618b1cbc7dc6ba46b11ff4df5c34cea162f5f1` |
| 24 | `theorem` | [zpow_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/zpow-eq-zero--add747fe54bbf6ea9812dc20.md) | 177 | `result-track:add747fe54bbf6ea9812dc20b30d129aa1c20970f43e49c1523e4ebe4fedc216` |
| 25 | `theorem` | [zpow_eq_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/zpow-eq-zero-iff--b158cbbf41d23e9e17ad874c.md) | 181 | `result-track:b158cbbf41d23e9e17ad874c06db05b13e6ac1ab3b0063d1fd1dd26b26d8e088` |
| 26 | `theorem` | [zpow_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/zpow-ne-zero--3b31333a6e4e7578ebbe39e3.md) | 185 | `result-track:3b31333a6e4e7578ebbe39e39267c73332db0ad53c57caea5d6098df36b9cab6` |
| 27 | `theorem` | [zpow_neg_mul_zpow_self](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/zpow-neg-mul-zpow-self--cc8f8fc24b25e84054a13fab.md) | 189 | `result-track:cc8f8fc24b25e84054a13fab2a5c7e957fcc437c5730670502581a79ad4c09fe` |
| 28 | `theorem` | [div_sq_cancel](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/div-sq-cancel--0d2f5d25b8023dfbfea083d1.md) | 200 | `result-track:0d2f5d25b8023dfbfea083d17cb68afa22ab35fd7ef8cba9891ec1eeb7478c30` |
| 29 | `theorem` | [map_zpow₀](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variantafae4e04d267228aa16476677c826650fe691acc01d0370d15fe02e73751f7ed.lean/declarations/map-zpow--23c95ddb678a85591cc72e28.md) | 211 | `result-track:23c95ddb678a85591cc72e2822229b1e6cc3a25698f22deb89686a0608510475` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
