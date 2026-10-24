# Verification target: GRWTSK.Algebra.Basic.Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9f4eb1822f6f3c353935709a6efa094db2e78ff",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9f4eb1822f6f3c353935709a6efa094db2e78ff`.

Source path: `GRWTSK/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Nontriviality` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ne_zero](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/ne-zero--50366db182c8f486a8f14cb3.md) | 30 | `result-track:50366db182c8f486a8f14cb35800bd35391475c94c29fab381e19887a5ad3a24` |
| 2 | `theorem` | [mul_left_eq_zero](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/mul-left-eq-zero--44a95eedcb84ca545dbeee72.md) | 37 | `result-track:44a95eedcb84ca545dbeee72516a70723d8d42ff16302c22528c3cb42f65332f` |
| 3 | `theorem` | [mul_right_eq_zero](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/mul-right-eq-zero--3ce57c4065bed55af5fd2c69.md) | 42 | `result-track:3ce57c4065bed55af5fd2c69ac7d7e5b4bff457fd5cca9c225fa93fcf121bc06` |
| 4 | `theorem` | [ne_zero](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/ne-zero--88275620af04c74f97e79da1.md) | 50 | `result-track:88275620af04c74f97e79da1e7a81c85f7115b20193d5c927d81aef8a4b467c7` |
| 5 | `theorem` | [mul_right_eq_zero](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/mul-right-eq-zero--0b67c06f026b8200f287e0f0.md) | 55 | `result-track:0b67c06f026b8200f287e0f04b3c3c0731a1a974f2ccefbc42952abb049a5031` |
| 6 | `theorem` | [mul_left_eq_zero](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/mul-left-eq-zero--77d11e78438311d4feaa911e.md) | 60 | `result-track:77d11e78438311d4feaa911e9282d6b651ad3b5f00c36ebfafb3a7fdbb03f7b3` |
| 7 | `theorem` | [isUnit_zero_iff](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/isunit-zero-iff--ebbf84b02b1c4af8e3690c6d.md) | 68 | `result-track:ebbf84b02b1c4af8e3690c6d6c1cfe073e68a52f7d475b8650509c9cfc65b1c7` |
| 8 | `theorem` | [not_isUnit_zero](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/not-isunit-zero--0643e973ca6a10b031c1f81c.md) | 74 | `result-track:0643e973ca6a10b031c1f81cb4089e46cc0837a8be08d9ecb292d8b1ba956abb` |
| 9 | `def` | [inverse](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/inverse--2b9974922d8cbd9e5859c9d5.md) | 88 | `declaration-track:2b9974922d8cbd9e5859c9d5674455c61ca972dd4c9c1bf49223e2f389901c23` |
| 10 | `theorem` | [inverse_unit](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/inverse-unit--940cf8285b70022c2cf776e7.md) | 93 | `result-track:940cf8285b70022c2cf776e7f511eb73e2f64b1017247d9c2b975e1b3068b791` |
| 11 | `theorem` | [inverse_non_unit](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/inverse-non-unit--9b15b550133ffdb93b4c2af9.md) | 99 | `result-track:9b15b550133ffdb93b4c2af9228952336b79cde8bae88daa6d20ab780ee07d05` |
| 12 | `theorem` | [mul_inverse_cancel](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/mul-inverse-cancel--b4f538267edc28b8f41bc0f7.md) | 103 | `result-track:b4f538267edc28b8f41bc0f7d08ec0754ec71f1aaee1b724daf7f7b2817c6331` |
| 13 | `theorem` | [inverse_mul_cancel](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/inverse-mul-cancel--4ddf62e4cb0cc3a3bb657ac8.md) | 108 | `result-track:4ddf62e4cb0cc3a3bb657ac88d46a415ec180cc7a814965e095473abd08e9fed` |
| 14 | `theorem` | [mul_inverse_cancel_right](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/mul-inverse-cancel-right--14d4c46c905affcc9e209b74.md) | 113 | `result-track:14d4c46c905affcc9e209b74ce5ed79d79e609b5942cf22f1659be733e44bb9d` |
| 15 | `theorem` | [inverse_mul_cancel_right](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/inverse-mul-cancel-right--ebe0f233b6203d791acc659b.md) | 117 | `result-track:ebe0f233b6203d791acc659bcd66fd2cbc8325784a9a93ecff18e741b29c91a4` |
| 16 | `theorem` | [mul_inverse_cancel_left](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/mul-inverse-cancel-left--c781ac34eb486a9d1d22cec2.md) | 121 | `result-track:c781ac34eb486a9d1d22cec219fa6a234b6f5451785b624540ae8d4153fadb03` |
| 17 | `theorem` | [inverse_mul_cancel_left](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/inverse-mul-cancel-left--cb1beb4b7282c927110b4023.md) | 125 | `result-track:cb1beb4b7282c927110b40231acbad0826184b63cf8d0dbb3af67b44273cee6e` |
| 18 | `theorem` | [inverse_mul_eq_iff_eq_mul](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/inverse-mul-eq-iff-eq-mul--a13c26dc8f1a567b60737bf5.md) | 129 | `result-track:a13c26dc8f1a567b60737bf58bd2d9461e9985320ffbdd50f2732c7e19342712` |
| 19 | `theorem` | [eq_mul_inverse_iff_mul_eq](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/eq-mul-inverse-iff-mul-eq--4678dac9a9ba94f09e71d754.md) | 134 | `result-track:4678dac9a9ba94f09e71d754a73f0fd535bf9492196244207e4652dad2a82f17` |
| 20 | `theorem` | [inverse_one](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/inverse-one--f7bc170385e684654bbc8788.md) | 142 | `result-track:f7bc170385e684654bbc87881053c8c93ae114af97237ae9ead05ca0f70da406` |
| 21 | `theorem` | [inverse_zero](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/inverse-zero--4d3006d420e8a5746878b1d6.md) | 147 | `result-track:4d3006d420e8a5746878b1d6b8f491803f84e536f97939198b98e1e0974ba97e` |
| 22 | `theorem` | [IsUnit.ring_inverse](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/isunit-ring-inverse--39af0618484e49c4cea31924.md) | 156 | `result-track:39af0618484e49c4cea31924d95bc704cd16e4b376250901317406368c5b87f2` |
| 23 | `theorem` | [isUnit_ring_inverse](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/isunit-ring-inverse--877fbb0e22bffce486be2c77.md) | 161 | `result-track:877fbb0e22bffce486be2c777ee4e25b26bc09402a912e08c8c9d1af1b1a9863` |
| 24 | `def` | [mk0](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/mk0--dd0dabfbcb3c02b2cb1305c1.md) | 182 | `declaration-track:dd0dabfbcb3c02b2cb1305c18c1cfeb0adaec12d7181640bc02e62f59a7b386d` |
| 25 | `theorem` | [mk0_one](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/mk0-one--23b29ce4475d1b45328b4bcf.md) | 187 | `result-track:23b29ce4475d1b45328b4bcffd6409a050494142209be8d19a2dd67982ae54e4` |
| 26 | `theorem` | [val_mk0](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/val-mk0--fb12783bcec0625aa5f44198.md) | 193 | `result-track:fb12783bcec0625aa5f44198b74d993df497527a637d566c02d53b8b68536a1f` |
| 27 | `theorem` | [mk0_val](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/mk0-val--b5a008a9b5196e9d0f17f1b7.md) | 198 | `result-track:b5a008a9b5196e9d0f17f1b7ac09d10c222a8ebce81eb0531c534565f965fba1` |
| 28 | `theorem` | [mul_inv'](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/mul-inv--ec5acc37c0bb67f24a86260f.md) | 203 | `result-track:ec5acc37c0bb67f24a86260fc17fc4327a6bf15ce3f81825d62cbff1e1847af4` |
| 29 | `theorem` | [inv_mul'](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/inv-mul--123cddedf70d2d2754f1c2a8.md) | 208 | `result-track:123cddedf70d2d2754f1c2a883ae3429334ffd162283c0455acea0e4a34c0f80` |
| 30 | `theorem` | [mk0_inj](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/mk0-inj--4d5bff8f9e234189f70328cb.md) | 213 | `result-track:4d5bff8f9e234189f70328cb4f7f18411b182f8142148ceb2e06789b4a38d151` |
| 31 | `theorem` | [exists0](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/exists0--a4ee868c55d857c73b71fff1.md) | 218 | `result-track:a4ee868c55d857c73b71fff106ce526f5cef49b4ccf8e7914411afc101eacf04` |
| 32 | `theorem` | [exists0'](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/exists0--2bb552428e98c86ff0517c25.md) | 225 | `result-track:2bb552428e98c86ff0517c252df84f8f1f0e5525ed0ec2e320313ecfbefd2c2b` |
| 33 | `theorem` | [exists_iff_ne_zero](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/exists-iff-ne-zero--58203ac396d80aa3449fdd56.md) | 232 | `result-track:58203ac396d80aa3449fdd56fa6d56767e86c4364cb4bd0280698c611f7cbb4b` |
| 34 | `theorem` | [_root_.GroupWithZero.eq_zero_or_unit](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/root-groupwithzero-eq-zero-or-unit--e3f8e93c3c08037ebe765747.md) | 235 | `result-track:e3f8e93c3c08037ebe7657474665b141bc0656c1db687e8414b7e1b1c929f03a` |
| 35 | `theorem` | [IsUnit.mk0](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/isunit-mk0--07335e05c91f3c20bab9a20c.md) | 249 | `result-track:07335e05c91f3c20bab9a20cfc1c105f580f1f7e0dd643685d91ec1c4eff06de` |
| 36 | `theorem` | [isUnit_iff_ne_zero](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/isunit-iff-ne-zero--9ac6ece38135848a3d2bb965.md) | 253 | `result-track:9ac6ece38135848a3d2bb96504bf89813636f2407e9e1a7d164019e70ade83c0` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/instance--63c630b8e5d337e8a5ca6a40.md) | 265 | `declaration-track:63c630b8e5d337e8a5ca6a40ed6130d6939388147e8c2e403c88a49d1002113e` |
| 38 | `theorem` | [Units.mk0_mul](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/units-mk0-mul--3f1b590f28b3e42ce0c308a1.md) | 275 | `result-track:3f1b590f28b3e42ce0c308a1d14d89a1028c6103d05986995c36a862050e94ff` |
| 39 | `theorem` | [div_ne_zero](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/div-ne-zero--ddb30ca3191642718a2ba4a3.md) | 281 | `result-track:ddb30ca3191642718a2ba4a3e2a5799acb1e4911e81e672659e60657a92d443a` |
| 40 | `theorem` | [div_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/div-eq-zero-iff--f2f1ed04299eb3e3c47e767a.md) | 287 | `result-track:f2f1ed04299eb3e3c47e767a0f0540f372ac90845657653c08704d45910af0e1` |
| 41 | `theorem` | [div_ne_zero_iff](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/div-ne-zero-iff--ac59f4341dacdf1e93ecb69f.md) | 290 | `result-track:ac59f4341dacdf1e93ecb69f24903ccbf57c222f92433ab84675cf1a998ad827` |
| 42 | `theorem` | [Ring.inverse_eq_inv](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/ring-inverse-eq-inv--4119acf77939d30d152f8070.md) | 294 | `result-track:4119acf77939d30d152f80709de51cc677e62a4b1a47f4c1a978fcafdfa9d793` |
| 43 | `theorem` | [Ring.inverse_eq_inv'](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/ring-inverse-eq-inv--4df453696213f20702039e96.md) | 301 | `result-track:4df453696213f20702039e96f0c82eb71f621de01f3e62f2a74ac5b3a48ab922` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/instance--bdc8a049bc4e16276fb00265.md) | 313 | `declaration-track:bdc8a049bc4e16276fb002659d3e2f44a1f190b766501ba8d898d92a94f5f0d2` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/instance--c600eb495d20bec60e2c1435.md) | 320 | `declaration-track:c600eb495d20bec60e2c14355f55d0fe551a4508486b0c7ee8083492b73575c1` |
| 46 | `def` | [groupWithZeroOfIsUnitOrEqZero](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/groupwithzeroofisunitoreqzero--bad48586d9e4bac0828f3829.md) | 334 | `declaration-track:bad48586d9e4bac0828f382919cb3cbfc7ca753de180c7a68fbc5e5fe87fb31e` |
| 47 | `def` | [commGroupWithZeroOfIsUnitOrEqZero](../../../../mathematics/Algebra/Basic/Variant1195f8cb658009e2204ff41184be54e1f92019ab4b552db16ca126344c54bfd0.lean/declarations/commgroupwithzeroofisunitoreqzero--fa92a79f9ce9e7c0f3768bce.md) | 347 | `declaration-track:fa92a79f9ce9e7c0f3768bcecaefa2febea2f5d3a87866ba784a0005b3dd4ac4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
