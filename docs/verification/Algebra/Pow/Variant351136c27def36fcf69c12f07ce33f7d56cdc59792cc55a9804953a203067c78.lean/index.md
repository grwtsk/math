# Verification target: GRWTSK.Algebra.Pow.Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c452562c9cf9fe98dec23178a730f0e91a7d9fe",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c452562c9cf9fe98dec23178a730f0e91a7d9fe`.

Source path: `GRWTSK/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.OrderDual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lift` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity.Attr` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [one_le_pow_of_le](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/one-le-pow-of-le--00240560a22345bd578abd2e.md) | 40 | `result-track:00240560a22345bd578abd2ed42693fe78384f6a9744a1187c2a520e05c9cd54` |
| 2 | `theorem` | [pow_le_one_of_le](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/pow-le-one-of-le--aa81fc65b4ba0b906bc32246.md) | 47 | `result-track:aa81fc65b4ba0b906bc32246cbe7db86f7fe00c75dbc35a844f78727b61da32e` |
| 3 | `theorem` | [pow_lt_one_of_lt](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/pow-lt-one-of-lt--2dcf3073ed9ed87f26f3a592.md) | 50 | `result-track:2dcf3073ed9ed87f26f3a59218d719d7e02a6a2b9a5d5ba52beb06948e6cdc33` |
| 4 | `theorem` | [pow_right_monotone](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/pow-right-monotone--11e357eb18db1d7513ef52e4.md) | 66 | `result-track:11e357eb18db1d7513ef52e4785346310c820a23f231f832c71d1279737fffc2` |
| 5 | `theorem` | [pow_le_pow_right'](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/pow-le-pow-right--4e55e922f565f8f10602ba03.md) | 70 | `result-track:4e55e922f565f8f10602ba0333837abfcc18519b882cbe3c070061055bef8cbd` |
| 6 | `theorem` | [pow_le_pow_right_of_le_one'](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/pow-le-pow-right-of-le-one--59597ab34d043ef5a552a646.md) | 74 | `result-track:59597ab34d043ef5a552a646c26a643ec77af3ee8beb7a1afb67f47b70689c29` |
| 7 | `theorem` | [one_lt_pow'](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/one-lt-pow--57a86f6f91a5cead5a595b99.md) | 78 | `result-track:57a86f6f91a5cead5a595b997bbfafc7ea39d4013ece3a3d476438fe8fc66d11` |
| 8 | `lemma` | [le_self_pow](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/le-self-pow--bafdd3b0fd075b37c42f1890.md) | 82 | `result-track:bafdd3b0fd075b37c42f1890d3b8c046a65d4cde855c48718af006863ec42453` |
| 9 | `theorem` | [pow_right_strictMono'](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/pow-right-strictmono--848e299a9701b45102168fcd.md) | 92 | `result-track:848e299a9701b45102168fcd665a4e7698b90bbf55102b5b76b724255239da1b` |
| 10 | `theorem` | [pow_lt_pow_right'](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/pow-lt-pow-right--c0c30a3240726bcb36f435ab.md) | 96 | `result-track:c0c30a3240726bcb36f435ab7fc4e43b56119f511a0f3573fff1a218d37dc335` |
| 11 | `theorem` | [Right.one_le_pow_of_le](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/right-one-le-pow-of-le--9f5f915c40f7ae87df452f93.md) | 106 | `result-track:9f5f915c40f7ae87df452f93bab237e866da9a6dc5b34108787fb0db934ae38a` |
| 12 | `theorem` | [Right.pow_le_one_of_le](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/right-pow-le-one-of-le--4d689498a6aa196d715f41e2.md) | 113 | `result-track:4d689498a6aa196d715f41e2e2b7611b9a7e9d20500ee79a650f84de3c4ab47c` |
| 13 | `theorem` | [Right.pow_lt_one_of_lt](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/right-pow-lt-one-of-lt--aa43e6dd36a74709394e4ce8.md) | 117 | `result-track:aa43e6dd36a74709394e4ce843e67f5ef3fb1cb5cc1f20ee4eec69d526d7ed6a` |
| 14 | `lemma` | [pow_le_pow_mul_of_sq_le_mul](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/pow-le-pow-mul-of-sq-le-mul--0357a15490c64d2cfa737100.md) | 125 | `result-track:0357a15490c64d2cfa737100bc8c459fc6c3f1f8f413b90462f28fa82eb67b69` |
| 15 | `theorem` | [StrictMono.pow_const](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/strictmono-pow-const--a876dedb747cbd7939ac7dd8.md) | 143 | `result-track:a876dedb747cbd7939ac7dd8d97f2a1f776b8ab4aab2ae7d16734f11dd6459b1` |
| 16 | `theorem` | [pow_left_strictMono](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/pow-left-strictmono--ff751d2d6369ee094aabf552.md) | 151 | `result-track:ff751d2d6369ee094aabf552e63db2279141ac143028e4905666dc9b34a3605d` |
| 17 | `lemma` | [pow_lt_pow_left'](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/pow-lt-pow-left--9ba59b986f0a114b0d8b8331.md) | 154 | `result-track:9ba59b986f0a114b0d8b8331db3602915832369c5ca8dc03fb4858ddf0245165` |
| 18 | `theorem` | [pow_le_pow_left'](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/pow-le-pow-left--32a03ae8a4487e71b92642c9.md) | 164 | `result-track:32a03ae8a4487e71b92642c9fd25cd187687a2624475a25b346f5c44d5b3ec5d` |
| 19 | `theorem` | [Monotone.pow_const](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/monotone-pow-const--638a651e0e3c5db6de1ca417.md) | 171 | `result-track:638a651e0e3c5db6de1ca41708f22f136990e3504272fba94e0a34c5a91cad91` |
| 20 | `theorem` | [pow_left_mono](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/pow-left-mono--f67f656efe010b687d091122.md) | 178 | `result-track:f67f656efe010b687d091122e7e3c6d1aee5fb4e79889e34e425c193392263de` |
| 21 | `lemma` | [pow_le_pow](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/pow-le-pow--43d5f96b791a6ada465c412b.md) | 181 | `result-track:43d5f96b791a6ada465c412b34b36db5a96f72702e69c1decb8eacc576b38672` |
| 22 | `lemma` | [le_pow_sup](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/le-pow-sup--aa55edd035362ecfe440d313.md) | 191 | `result-track:aa55edd035362ecfe440d3139290f8cf3d1b41f9e8c5e5862177670c5549f806` |
| 23 | `lemma` | [pow_inf_le](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/pow-inf-le--81a743d667c1ef9730abe354.md) | 199 | `result-track:81a743d667c1ef9730abe35445636d26e15ce975b21d8c4d6b69de5b783b991d` |
| 24 | `theorem` | [one_le_pow_iff](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/one-le-pow-iff--4854fb0de289cbe6a503106e.md) | 214 | `result-track:4854fb0de289cbe6a503106ecbbe62f4492ee735e248eccb2bf3acf88ea03720` |
| 25 | `theorem` | [pow_le_one_iff](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/pow-le-one-iff--1cf6fea06f3831e17867b766.md) | 218 | `result-track:1cf6fea06f3831e17867b7663c2f3d124a870f5f4c81cd2e3f6ca4136b2b2ad9` |
| 26 | `theorem` | [one_lt_pow_iff](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/one-lt-pow-iff--c772b92b1b259b25223ceede.md) | 222 | `result-track:c772b92b1b259b25223ceede225ae117bb9dbfe71e08e08325e6823b783e2f6c` |
| 27 | `theorem` | [pow_lt_one_iff](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/pow-lt-one-iff--b5495d87aac16d8559efa2a9.md) | 226 | `result-track:b5495d87aac16d8559efa2a9bfe3257223f8400453bafcd367cab46046c0753d` |
| 28 | `theorem` | [pow_eq_one_iff](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/pow-eq-one-iff--d31f5a25655efd2e89a883ca.md) | 230 | `result-track:d31f5a25655efd2e89a883ca699b971c65ecee24e16c4453944a46fbea7d00c3` |
| 29 | `theorem` | [pow_le_pow_iff_right'](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/pow-le-pow-iff-right--5add00baa2facfdc11d75068.md) | 241 | `result-track:5add00baa2facfdc11d7506899eb33f09574b584d4bc70c82a7187f3a01e33e9` |
| 30 | `theorem` | [pow_lt_pow_iff_right'](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/pow-lt-pow-iff-right--fba1bfbad5fcdb926c5ba764.md) | 245 | `result-track:fba1bfbad5fcdb926c5ba764476857cf76764ffeabdef9844b53231009cf24c7` |
| 31 | `theorem` | [lt_of_pow_lt_pow_left'](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/lt-of-pow-lt-pow-left--9685820631fef8c86558d05e.md) | 255 | `result-track:9685820631fef8c86558d05e1eeecbdc776fc1c06985866c9d92330c1df3c0c6` |
| 32 | `theorem` | [min_lt_of_mul_lt_sq](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/min-lt-of-mul-lt-sq--eb090f9bf6b1ee63c2c510ba.md) | 259 | `result-track:eb090f9bf6b1ee63c2c510ba5965d7fed2f99c36f536eebbed445320b3b90631` |
| 33 | `theorem` | [lt_max_of_sq_lt_mul](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/lt-max-of-sq-lt-mul--2a2d2d86ae004f71042b8fce.md) | 263 | `result-track:2a2d2d86ae004f71042b8fcec4379515b66e3eb5cfe906c9db0a60e64fb16189` |
| 34 | `theorem` | [le_of_pow_le_pow_left'](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/le-of-pow-le-pow-left--8d397347b38e9eb76127c7af.md) | 273 | `result-track:8d397347b38e9eb76127c7afa932e9ee102377f7e8a249f6fcf57d7024bdabaa` |
| 35 | `theorem` | [min_le_of_mul_le_sq](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/min-le-of-mul-le-sq--26d382ed89652beba39049c0.md) | 277 | `result-track:26d382ed89652beba39049c0405bf4fdd6d55666e94d78dd98b5d9ec500d87f5` |
| 36 | `theorem` | [le_max_of_sq_le_mul](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/le-max-of-sq-le-mul--50d56b495b4729aba29c8940.md) | 281 | `result-track:50d56b495b4729aba29c8940c35ff8af30425f2f8019b9e978f48822a3a2e690` |
| 37 | `theorem` | [Left.pow_lt_one_iff'](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/left-pow-lt-one-iff--0744c793c9ee8d898abe29c3.md) | 287 | `result-track:0744c793c9ee8d898abe29c3e427cb97becf740b6bce07f3d9ac0a2f2aa12177` |
| 38 | `theorem` | [Left.pow_lt_one_iff](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/left-pow-lt-one-iff--5132ea373cee0408a2cbeec9.md) | 292 | `result-track:5132ea373cee0408a2cbeec97a211abd4e97e9eefd21bd28d572779250c28478` |
| 39 | `theorem` | [Right.pow_lt_one_iff](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/right-pow-lt-one-iff--9ee321ccfc223dda01ce38db.md) | 296 | `result-track:9ee321ccfc223dda01ce38dbd0090c1cfc3e1f7cd84dce2d19b0a8e2a9bd54bc` |
| 40 | `theorem` | [one_le_zpow](../../../../mathematics/Algebra/Pow/Variant351136c27def36fcf69c12f07ce33f7d56cdc59792cc55a9804953a203067c78.lean/declarations/one-le-zpow--6de87870441f6e5b072374f6.md) | 310 | `result-track:6de87870441f6e5b072374f69a09e926cdaf52d23a03f1a26b02c9d207170a49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
