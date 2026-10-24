# Verification target: GRWTSK.Algebra.CommutativeAlgebra.RootsExtrema.Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43664163643071b24f6d0306d899056246a5b894",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43664163643071b24f6d0306d899056246a5b894`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Arcosh` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Chebyshev.Basic` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Niven` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eval_T_real_mem_Icc](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/eval-t-real-mem-icc--45d7181da8687e11e923ec78.md) | 49 | `result-track:45d7181da8687e11e923ec7878513dd23c5a38f1b458ea40be9ac3df0544e485` |
| 2 | `theorem` | [abs_eval_T_real_le_one](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/abs-eval-t-real-le-one--8416cc17b25073c59d903b07.md) | 54 | `result-track:8416cc17b25073c59d903b077c31a9f56015078705588381557d7a829b1685dc` |
| 3 | `theorem` | [one_le_eval_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/one-le-eval-t-real--5e622664165926d5c1f582f3.md) | 65 | `result-track:5e622664165926d5c1f582f3b81126e5da9987dfd31b1412fb759a5e8b8cceda` |
| 4 | `theorem` | [one_lt_eval_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/one-lt-eval-t-real--051ecbb1b28fce89372f4970.md) | 69 | `result-track:051ecbb1b28fce89372f497039d1e1db02108fac837b163100f9ffad5aa8a8e0` |
| 5 | `theorem` | [one_le_negOnePow_mul_eval_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/one-le-negonepow-mul-eval-t-real--e511b904e2383a20ba21b2b0.md) | 75 | `result-track:e511b904e2383a20ba21b2b0350a154e3321f4161328418c9cd9dc184e46ba39` |
| 6 | `theorem` | [one_lt_negOnePow_mul_eval_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/one-lt-negonepow-mul-eval-t-real--4b06835f1b61c79b73c446b7.md) | 82 | `result-track:4b06835f1b61c79b73c446b7e4358cac51f7878267777361e268a671340da489` |
| 7 | `theorem` | [one_le_abs_eval_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/one-le-abs-eval-t-real--4bf256e77137f18518022919.md) | 89 | `result-track:4bf256e77137f18518022919ba66257d423444bc4f19740d19be0884b6930be4` |
| 8 | `theorem` | [one_lt_abs_eval_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/one-lt-abs-eval-t-real--1a97fb77ba0c4638b9d8c520.md) | 95 | `result-track:1a97fb77ba0c4638b9d8c520d757b7c7b8c0953b0f91c493ecd27345280b2202` |
| 9 | `theorem` | [abs_eval_T_real_le_one_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/abs-eval-t-real-le-one-iff--d0916110e065d616a7b47518.md) | 101 | `result-track:d0916110e065d616a7b4751810e6e02d4608e1423c0929ccd57ec09635bdc67b` |
| 10 | `theorem` | [abs_eval_T_real_eq_one_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/abs-eval-t-real-eq-one-iff--80d3a14ab443729105b7cd77.md) | 105 | `result-track:80d3a14ab443729105b7cd77c39159d1b78448f4d41d347e088530d65080a762` |
| 11 | `theorem` | [eval_T_real_cos_int_mul_pi_div](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/eval-t-real-cos-int-mul-pi-div--8e48b7629864f3cd05f7c25d.md) | 127 | `result-track:8e48b7629864f3cd05f7c25da6701b1c9e39f228110fb51ef688929f170b21ec` |
| 12 | `theorem` | [eval_T_real_eq_one_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/eval-t-real-eq-one-iff--68352ad07c1600ba4dfdfa15.md) | 133 | `result-track:68352ad07c1600ba4dfdfa15d6ded1f34094700617591721e0b97cf712f93bac` |
| 13 | `theorem` | [eval_T_real_eq_neg_one_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/eval-t-real-eq-neg-one-iff--8462d02989d421a3e1c3dd0e.md) | 147 | `result-track:8462d02989d421a3e1c3dd0e26d970adbc1bef7e006987c4ed4432711c8ad117` |
| 14 | `theorem` | [roots_T_real_nodup](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/roots-t-real-nodup--fb3d426653e74e7317a2c4b1.md) | 161 | `result-track:fb3d426653e74e7317a2c4b196dad66c365d942189f09604f270274333e77e6a` |
| 15 | `theorem` | [roots_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/roots-t-real--e9952ec8f823090ea99eb22d.md) | 171 | `result-track:e9952ec8f823090ea99eb22dd42af7f701e33569479eee43d082ff3315f0fe9f` |
| 16 | `theorem` | [rootMultiplicity_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/rootmultiplicity-t-real--908e2815af3251aa6d4e2e7b.md) | 185 | `result-track:908e2815af3251aa6d4e2e7b738e1044f8b5dd856233eca6b3a573c79fe37e5d` |
| 17 | `theorem` | [roots_U_real_nodup](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/roots-u-real-nodup--0baec49ff22dc9f7656f0dc5.md) | 190 | `result-track:0baec49ff22dc9f7656f0dc5502a4222a93ce66d1fca887ee8d177a5104ddcb6` |
| 18 | `theorem` | [roots_U_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/roots-u-real--b6ff1776fe526a92b79e7278.md) | 202 | `result-track:b6ff1776fe526a92b79e7278134836d824dff146278331f0a07f534c91b6ab05` |
| 19 | `theorem` | [rootMultiplicity_U_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/rootmultiplicity-u-real--c67b9d1f34fd5074dbc95222.md) | 222 | `result-track:c67b9d1f34fd5074dbc95222cca35de00aa4f2247fd86bfa947d64df97199e13` |
| 20 | `theorem` | [isLocalMax_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/islocalmax-t-real--85b3873509fc97878520bbb1.md) | 227 | `result-track:85b3873509fc97878520bbb1230f5f8493675f671dded3af922c0cdaba919f3c` |
| 21 | `theorem` | [isLocalMin_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/islocalmin-t-real--0f3f8b3b159a91569fd110de.md) | 243 | `result-track:0f3f8b3b159a91569fd110de0afa3399731336e4d684d2bd38d898b3c3e6c29c` |
| 22 | `theorem` | [isLocalExtr_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/islocalextr-t-real--6d694a478f6cc81a2eec034b.md) | 260 | `result-track:6d694a478f6cc81a2eec034b54ca788f40eb54975f9387e1537183e1f458a6a3` |
| 23 | `theorem` | [isLocalExtr_T_real_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/islocalextr-t-real-iff--38db0c0628eac21b40c4f798.md) | 266 | `result-track:38db0c0628eac21b40c4f7988ef10de26658aede7c3973c6b399833a33dae468` |
| 24 | `theorem` | [isMaxOn_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/ismaxon-t-real--47ddfd9a44c9f4e32c1926c6.md) | 287 | `result-track:47ddfd9a44c9f4e32c1926c6742e0573e477b0ca000869546f3e5759a64c5f33` |
| 25 | `theorem` | [isMinOn_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/isminon-t-real--0febb5ffe6b00c78589b79ef.md) | 292 | `result-track:0febb5ffe6b00c78589b79ef2d56afcec335a41f7d8b478a7c578d0c776235b2` |
| 26 | `theorem` | [isExtrOn_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/isextron-t-real--e382537b777bf8e8957d23bf.md) | 298 | `result-track:e382537b777bf8e8957d23bf626fbdbc59e3b8463a5ba45f117d7d8e9cf54335` |
| 27 | `theorem` | [isExtrOn_T_real_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/isextron-t-real-iff--d7d78c4f444a27b8eca32a61.md) | 304 | `result-track:d7d78c4f444a27b8eca32a6163566ac12ea4397ec141b3b2d3f27fe36fa254ea` |
| 28 | `theorem` | [irrational_of_isRoot_T_real](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/irrational-of-isroot-t-real--2f188c1fa8639ad50114a829.md) | 323 | `result-track:2f188c1fa8639ad50114a829cadc4a199643bfb4ea3a39c3b1926520ff812a70` |
| 29 | `theorem` | [abs_iterate_derivative_T_real_le](../../../../../mathematics/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/declarations/abs-iterate-derivative-t-real-le--0238182a174fbbda41346643.md) | 340 | `result-track:0238182a174fbbda413466430fa38f82999d1e9e0793f579ac84034be9277c4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
