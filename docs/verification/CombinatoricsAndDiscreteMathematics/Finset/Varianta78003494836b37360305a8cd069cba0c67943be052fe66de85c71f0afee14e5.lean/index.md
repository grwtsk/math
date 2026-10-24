# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfbed18a3983f49061eb7e15ba37c3bb26213058",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfbed18a3983f49061eb7e15ba37c3bb26213058`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Fold` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Multiset` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/lcm--66a6c27e6561bceb13b6919f.md) | 51 | `declaration-track:66a6c27e6561bceb13b6919fff1cfeffe5a3fa4f5eb6daf1e41b5271e3b2b1b0` |
| 2 | `theorem` | [lcm_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/lcm-def--903f000a45fce26583f0b25a.md) | 56 | `result-track:903f000a45fce26583f0b25a9aa3400d623ee0756d608bad28b1b3ab2df758a1` |
| 3 | `theorem` | [lcm_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/lcm-empty--131ba32fd838d1cd382b0662.md) | 60 | `result-track:131ba32fd838d1cd382b066235d7f859f5672a96ecceaaad93472b97a850ae46` |
| 4 | `theorem` | [lcm_dvd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/lcm-dvd-iff--d25eb734cdf9c5372924fcf5.md) | 64 | `result-track:d25eb734cdf9c5372924fcf59fe145f168cab1495cdffd6e3becaf05b9a7488c` |
| 5 | `theorem` | [lcm_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/lcm-dvd--61cd03aeaf1e96f65457ac94.md) | 69 | `result-track:61cd03aeaf1e96f65457ac944c7a2b76b40785f44ddb7561b1715005492bb747` |
| 6 | `theorem` | [dvd_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/dvd-lcm--a3a79018257257c1e12498f7.md) | 72 | `result-track:a3a79018257257c1e12498f741f0544622663f73a2292e5e4787b82e4eff6524` |
| 7 | `theorem` | [lcm_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/lcm-insert--70d21e04318404c8c2124d03.md) | 76 | `result-track:70d21e04318404c8c2124d0352eefe4d9cf35eeb0d4223567c97cc33cb4c442f` |
| 8 | `theorem` | [lcm_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/lcm-singleton--58fd1adbda727159556d28ca.md) | 84 | `result-track:58fd1adbda727159556d28ca3a29eecb8012ce1f1d118ff1c53ef83a7282535d` |
| 9 | `theorem` | [normalize_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/normalize-lcm--a2113a2a746696b774b61898.md) | 88 | `result-track:a2113a2a746696b774b618982fe265fbab48c2932ac3dcc58df5ca634ea5084f` |
| 10 | `theorem` | [lcm_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/lcm-union--dcac41221313d35e1b84f573.md) | 90 | `result-track:dcac41221313d35e1b84f573325a94bbbef5ac54879305f5d9834c40118ec2e0` |
| 11 | `theorem` | [lcm_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/lcm-congr--348387f640bd4e190f4ea091.md) | 94 | `result-track:348387f640bd4e190f4ea091e5241a93d22f2cbb3b5eefa16032996c860a9d9d` |
| 12 | `theorem` | [lcm_mono_fun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/lcm-mono-fun--9bd4a2ecd5dec91b11195d5b.md) | 99 | `result-track:9bd4a2ecd5dec91b11195d5b642917eb7dfa898b1e69df05ebb5c84fdd7d3aaa` |
| 13 | `theorem` | [lcm_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/lcm-mono--6d18879a136e3ad5afce94e4.md) | 102 | `result-track:6d18879a136e3ad5afce94e403f1cab74b18a5a55c953a6c9886985d77a7d447` |
| 14 | `theorem` | [lcm_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/lcm-image--b300324be05155b1859c0b4d.md) | 105 | `result-track:b300324be05155b1859c0b4d37ea4580c0066ba8a310d3ecc07dc86bfd91c711` |
| 15 | `theorem` | [lcm_eq_lcm_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/lcm-eq-lcm-image--9fb5afa56fdc9a097901f70f.md) | 109 | `result-track:9fb5afa56fdc9a097901f70f0c52873e5f77c984ff10f017ad4bafa85609fed4` |
| 16 | `theorem` | [lcm_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/lcm-eq-zero-iff--38cec4bd1f890246c6e7925f.md) | 112 | `result-track:38cec4bd1f890246c6e7925f71e589b295d78c1130b063738321094e449200ef` |
| 17 | `def` | [gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/gcd--af9426a079494734a7acae21.md) | 124 | `declaration-track:af9426a079494734a7acae21aef7c467cbf483919c40cf06b5d5982f7fc39c75` |
| 18 | `theorem` | [gcd_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/gcd-def--77ffcc71bcdc5100925b21ef.md) | 129 | `result-track:77ffcc71bcdc5100925b21ef33ae22ae3192b2fe6b287f6b988362c7c9c486fe` |
| 19 | `theorem` | [gcd_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/gcd-empty--85e24fb835b2e925021ce81e.md) | 133 | `result-track:85e24fb835b2e925021ce81e1911b56baad2c4089aacafa4bef5cfc0677ab405` |
| 20 | `theorem` | [dvd_gcd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/dvd-gcd-iff--dbdbb4ded92573e577e0dca5.md) | 136 | `result-track:dbdbb4ded92573e577e0dca5ee1f841dd7a8126889825067ae1fdd589259e161` |
| 21 | `theorem` | [gcd_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/gcd-dvd--0021a32d4e97a1cc10caefb4.md) | 141 | `result-track:0021a32d4e97a1cc10caefb47a1622e13dbc3942442db1a681cb2baed46b1425` |
| 22 | `theorem` | [dvd_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/dvd-gcd--48f7d1ecc9eb7c834894d996.md) | 144 | `result-track:48f7d1ecc9eb7c834894d996f66014d064bba71d787b2edd4b8f03196bcf9cbd` |
| 23 | `theorem` | [gcd_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/gcd-insert--a4100d9d1737bfbbc25962b3.md) | 148 | `result-track:a4100d9d1737bfbbc25962b3827aff77dcf2f9458e77eadd5eae069a38cbb4db` |
| 24 | `theorem` | [gcd_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/gcd-singleton--03b96be224d12ef6b1cbe2eb.md) | 156 | `result-track:03b96be224d12ef6b1cbe2eba797c63a6597d53a2920b4050b5489611efc09db` |
| 25 | `theorem` | [normalize_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/normalize-gcd--627c95213f3d4715a94d3b31.md) | 160 | `result-track:627c95213f3d4715a94d3b312d0cf8620141db8a3141c8793c7827215c5dc79f` |
| 26 | `theorem` | [gcd_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/gcd-union--bdabd7913ddc2f0da847f0d4.md) | 162 | `result-track:bdabd7913ddc2f0da847f0d44e9ebb2239a715de7c64cfe0f7a6e924959aa063` |
| 27 | `theorem` | [gcd_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/gcd-congr--6ff68d8050ae7dda9e6a2bc9.md) | 166 | `result-track:6ff68d8050ae7dda9e6a2bc94756bae2653b47f41dc4999d7520f3c1681358b1` |
| 28 | `theorem` | [gcd_mono_fun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/gcd-mono-fun--c62338e58d676b59598d9ee1.md) | 171 | `result-track:c62338e58d676b59598d9ee1e2c6c315b20ee18581fd4ce6cece56e7172e01b9` |
| 29 | `theorem` | [gcd_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/gcd-mono--f785b861fe4bb739d3a0e8ad.md) | 174 | `result-track:f785b861fe4bb739d3a0e8ad85a149510725c8bca9c8b1c857bbd3daa405a421` |
| 30 | `theorem` | [gcd_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/gcd-image--43968da343d848d35ae63b82.md) | 177 | `result-track:43968da343d848d35ae63b82bb763738c2c02c63ee4c306032db084cc6f21e86` |
| 31 | `theorem` | [gcd_eq_gcd_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/gcd-eq-gcd-image--69abdd7a6d1d3249127d8d86.md) | 181 | `result-track:69abdd7a6d1d3249127d8d86e201c8fc0329cfeed888a798a1178a8bdc6a300d` |
| 32 | `theorem` | [gcd_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/gcd-eq-zero-iff--bacadaf43592b5796e1bd056.md) | 184 | `result-track:bacadaf43592b5796e1bd056fc73c17b313f87f01f6c668e9de8268373573a31` |
| 33 | `theorem` | [gcd_eq_gcd_filter_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/gcd-eq-gcd-filter-ne-zero--ff158a81985a2c7a7e36ab4c.md) | 197 | `result-track:ff158a81985a2c7a7e36ab4c98f82e64c410cd90ae01c386ec97930eb2e31804` |
| 34 | `theorem` | [gcd_mul_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/gcd-mul-left--a96fa71abb088c9b12340a74.md) | 212 | `result-track:a96fa71abb088c9b12340a74a52db54cfb3c0b46ca4143577f9dacdfdf0329bc` |
| 35 | `theorem` | [gcd_mul_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/gcd-mul-right--7a725a04432fc2cbcb079dbc.md) | 220 | `result-track:7a725a04432fc2cbcb079dbc5f7d32e1977ad1458879ed5c7f64c2140d2f8113` |
| 36 | `theorem` | [extract_gcd'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/extract-gcd--d24b9d33ef14877c1653d19b.md) | 228 | `result-track:d24b9d33ef14877c1653d19b67d7705d51e14048349bd7e7382d06e3aaf28259` |
| 37 | `theorem` | [extract_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/extract-gcd--8f484c7608338315854e0700.md) | 235 | `result-track:8f484c7608338315854e0700982311093e1fac9ee7407ca61338d7415547f624` |
| 38 | `lemma` | [gcd_div_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/gcd-div-eq-one--1d909f188f58d88caa5495d4.md) | 252 | `result-track:1d909f188f58d88caa5495d490358f02369dad8b01047638c289855a131b526d` |
| 39 | `lemma` | [gcd_div_id_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/gcd-div-id-eq-one--42724687a0f01344f6e53456.md) | 258 | `result-track:42724687a0f01344f6e534562e025e3743843a27551781596f970882effac124` |
| 40 | `theorem` | [gcd_eq_of_dvd_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Varianta78003494836b37360305a8cd069cba0c67943be052fe66de85c71f0afee14e5.lean/declarations/gcd-eq-of-dvd-sub--d203c277d4a87396f7757fc1.md) | 271 | `result-track:d203c277d4a87396f7757fc189f7de55d1b723c141a2588921e506ce048539bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
