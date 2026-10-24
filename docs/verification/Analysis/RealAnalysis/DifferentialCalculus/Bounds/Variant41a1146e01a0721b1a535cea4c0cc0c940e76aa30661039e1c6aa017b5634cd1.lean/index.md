# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Bounds.Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b22d7d3ae7887e57f48d1a13aeb7544a1a69277",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b22d7d3ae7887e57f48d1a13aeb7544a1a69277`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sin_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/sin-lt--49d8ce59e8662bb604b122a5.md) | 43 | `result-track:49d8ce59e8662bb604b122a542478e5403d03261866ecc63adb76b4c0c6927f0` |
| 2 | `lemma` | [sin_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/sin-le--477877b1f2ef25e3f0d7ba0f.md) | 55 | `result-track:477877b1f2ef25e3f0d7ba0f5dde2e027216c668085717eca08dc4691d60b147` |
| 3 | `lemma` | [lt_sin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/lt-sin--0381ec4625f3be03457b1d44.md) | 60 | `result-track:0381ec4625f3be03457b1d44b769acb41aa217189e48c0502bd1bf56a0941477` |
| 4 | `lemma` | [le_sin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/le-sin--6e523e9b4726e917995bbc30.md) | 61 | `result-track:6e523e9b4726e917995bbc30bcafc91392a16adb2bfb6699571cc9b296f88601` |
| 5 | `theorem` | [lt_sin_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/lt-sin-mul--3202aed942abbdd7a560aa26.md) | 63 | `result-track:3202aed942abbdd7a560aa260edba63a7b474c5e50de5ffc36f7b0f5b51197cd` |
| 6 | `theorem` | [le_sin_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/le-sin-mul--3be908c49cc77a7a60ccc803.md) | 68 | `result-track:3be908c49cc77a7a60ccc803f70776e163ac272da4276fe92dc35ce22db6b2a2` |
| 7 | `theorem` | [mul_lt_sin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/mul-lt-sin--c2b3e11829a3e65ddac16a68.md) | 73 | `result-track:c2b3e11829a3e65ddac16a68a05429d7d2e0ec0ca7399eb317cd978190b69e05` |
| 8 | `theorem` | [mul_le_sin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/mul-le-sin--8cdee0377cf4194e1470653e.md) | 83 | `result-track:8cdee0377cf4194e1470653e9a0fa071bc12d863f51222f8e07a92360cb50ac3` |
| 9 | `lemma` | [sin_le_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/sin-le-mul--536b8fdba7e68dc09655217f.md) | 90 | `result-track:536b8fdba7e68dc09655217fd2fae4ee554e62c5bfac2a1395f2f7a876949ab2` |
| 10 | `lemma` | [mul_abs_le_abs_sin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/mul-abs-le-abs-sin--14b9fadafe646103edbc83ad.md) | 94 | `result-track:14b9fadafe646103edbc83ad16000499abd68d15df7405849824175bee9799b0` |
| 11 | `lemma` | [sin_sq_lt_sq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/sin-sq-lt-sq--b3ab6ec3233a1c35c2c78890.md) | 100 | `result-track:b3ab6ec3233a1c35c2c7889094689dbdee1fc224c13c843d7d5f5f3698305af2` |
| 12 | `lemma` | [sin_sq_le_sq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/sin-sq-le-sq--b16a5d54fbc2dd615f5d3ba0.md) | 111 | `result-track:b16a5d54fbc2dd615f5d3ba059c81aa80296866151a10ede5f3f38f2e7ca03c6` |
| 13 | `lemma` | [abs_sin_lt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/abs-sin-lt-abs--223db5f559431e302a71d752.md) | 116 | `result-track:223db5f559431e302a71d7520d1564302eee7136b6d64da2dda2002c99eb0217` |
| 14 | `lemma` | [abs_sin_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/abs-sin-le-abs--4fb8519ab0b4c7bc6f870559.md) | 117 | `result-track:4fb8519ab0b4c7bc6f8705595988859a587a263971dfcc115e91b2727fa83228` |
| 15 | `lemma` | [one_sub_sq_div_two_lt_cos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/one-sub-sq-div-two-lt-cos--8bb6d2d1ba8459439151443a.md) | 119 | `result-track:8bb6d2d1ba8459439151443a74b23592fa897c6916290fd573269919826badb6` |
| 16 | `lemma` | [one_sub_sq_div_two_le_cos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/one-sub-sq-div-two-le-cos--ffced2a692a7f5630620d6d5.md) | 124 | `result-track:ffced2a692a7f5630620d6d550756d1b785bb0db075d167fd4fa12fd9dd081f6` |
| 17 | `lemma` | [one_sub_mul_le_cos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/one-sub-mul-le-cos--94917430fe107c6aea2e9489.md) | 130 | `result-track:94917430fe107c6aea2e9489595caf49668033e31c46404b6fd8313041126dd5` |
| 18 | `lemma` | [one_add_mul_le_cos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/one-add-mul-le-cos--01824dec69079007f12c1f37.md) | 135 | `result-track:01824dec69079007f12c1f3777dec49259781d35f71d26114bf2ec50d4a31dd6` |
| 19 | `lemma` | [cos_le_one_sub_mul_cos_sq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/cos-le-one-sub-mul-cos-sq--aff83523b7248194a2864e42.md) | 138 | `result-track:aff83523b7248194a2864e42d2d5218ed876d225240fe42eea1bc585e1419b48` |
| 20 | `theorem` | [sin_gt_sub_cube](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/sin-gt-sub-cube--41d67efa9bf7c535708d2e47.md) | 150 | `result-track:41d67efa9bf7c535708d2e47750afc18400bf852b3c83530d737c56f1125fcfc` |
| 21 | `theorem` | [sin_ge_sub_cube](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/sin-ge-sub-cube--3058201dc75e7d9ab8db7368.md) | 164 | `result-track:3058201dc75e7d9ab8db736829836f5d97dcce139bc2e31825cc9f880216fa4f` |
| 22 | `theorem` | [abs_sub_sin_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/abs-sub-sin-le--b3b0b6b20cff99aa9d30a468.md) | 170 | `result-track:b3b0b6b20cff99aa9d30a46879d933a73a1a67b02693bd1a74cd202bcaf332d2` |
| 23 | `theorem` | [deriv_tan_sub_id](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/deriv-tan-sub-id--450d4bfbdb1e371ecf9ebe7e.md) | 176 | `result-track:450d4bfbdb1e371ecf9ebe7e2b7db6a13dfb818ca2e2b27859d11b19231f743e` |
| 24 | `theorem` | [lt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/lt-tan--284110036302b5022cdfb441.md) | 184 | `result-track:284110036302b5022cdfb441bc1c3634d41a2621df15d44b55af8974e66425bc` |
| 25 | `theorem` | [le_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/le-tan--16f02c7a04c6c27f31728420.md) | 215 | `result-track:16f02c7a04c6c27f31728420a86a44af26f65f8b6c16169f7b3ffc933c24ad96` |
| 26 | `theorem` | [arctan_lt_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/arctan-lt-self--c5626ddfd5dcd853708d0fef.md) | 224 | `result-track:c5626ddfd5dcd853708d0fef226152edc0bc61f769f40161bd9dec13dbe189db` |
| 27 | `theorem` | [arctan_le_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/arctan-le-self--367a15fe23fc1470bd447949.md) | 227 | `result-track:367a15fe23fc1470bd447949c450e29c3e4b1ac7bd817bddc5f4ef27b92f27e5` |
| 28 | `theorem` | [self_lt_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/self-lt-arctan--b4c43a26e6ebaffef8a7a820.md) | 232 | `result-track:b4c43a26e6ebaffef8a7a8200dae527a964292c04d3844f2a125ef1fcd928ed9` |
| 29 | `theorem` | [self_le_arctan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/self-le-arctan--42fe344beb1a1459b6a78add.md) | 235 | `result-track:42fe344beb1a1459b6a78add7a42f07706dda759d51c369f21247fdfc1d17231` |
| 30 | `theorem` | [abs_arctan_lt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/abs-arctan-lt-abs--1c8ac65ccc883d7d26ab0d31.md) | 238 | `result-track:1c8ac65ccc883d7d26ab0d313e3360f88ea663ba7b9a444a737d847d49bc98fa` |
| 31 | `theorem` | [abs_arctan_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/abs-arctan-le-abs--ba3c71236e0319395f598769.md) | 241 | `result-track:ba3c71236e0319395f598769cda29a2ab53937b1aee8929c5d4c48125e5b4432` |
| 32 | `theorem` | [cos_lt_one_div_sqrt_sq_add_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/cos-lt-one-div-sqrt-sq-add-one--f227b49e21726b5c29b1e5f2.md) | 244 | `result-track:f227b49e21726b5c29b1e5f2f3f7ba5a38eadf6e30811f92095f12ba47aa46b0` |
| 33 | `theorem` | [cos_le_one_div_sqrt_sq_add_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/cos-le-one-div-sqrt-sq-add-one--616c6f5b720cf01edb853e9c.md) | 267 | `result-track:616c6f5b720cf01edb853e9ce989a5341c4e743806cdf532b74236afef29ce16` |
| 34 | `theorem` | [lipschitzWith_sin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/lipschitzwith-sin--3ecc108de79227dfb37d824d.md) | 273 | `result-track:3ecc108de79227dfb37d824d3e4eecd16d62ef94787eada37a4536601afce522` |
| 35 | `theorem` | [lipschitzWith_cos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/lipschitzwith-cos--1465e1797b198e7984b32f68.md) | 276 | `result-track:1465e1797b198e7984b32f685c38f62da11b9b6450005780c10bf8736e3126c2` |
| 36 | `theorem` | [abs_sin_sub_sin_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/abs-sin-sub-sin-le--84db150ad7a6dbdeb73543d7.md) | 279 | `result-track:84db150ad7a6dbdeb73543d784c531e54e0aaa22058b9795e31e861aaae910ce` |
| 37 | `theorem` | [abs_cos_sub_cos_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/abs-cos-sub-cos-le--2d66fbb30fd23ec85913ac42.md) | 282 | `result-track:2d66fbb30fd23ec85913ac42a52480121b5b7f5a1238f9dbb79453296f5010c9` |
| 38 | `theorem` | [norm_exp_I_mul_ofReal_sub_one_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/norm-exp-i-mul-ofreal-sub-one-le--6a0ef6deb521b2f6ebbdb8e6.md) | 285 | `result-track:6a0ef6deb521b2f6ebbdb8e6c2d3eb9978e9380503b00dd5708b10ca432e6a54` |
| 39 | `theorem` | [enorm_exp_I_mul_ofReal_sub_one_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/enorm-exp-i-mul-ofreal-sub-one-le--7ac15db1778a1e0cb6cbf584.md) | 292 | `result-track:7ac15db1778a1e0cb6cbf5846a1e81d29297ae352dfa61ac36637551b439a61a` |
| 40 | `theorem` | [nnnorm_exp_I_mul_ofReal_sub_one_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variant41a1146e01a0721b1a535cea4c0cc0c940e76aa30661039e1c6aa017b5634cd1.lean/declarations/nnnorm-exp-i-mul-ofreal-sub-one-le--015f55f37a4bc10fd127be36.md) | 296 | `result-track:015f55f37a4bc10fd127be36a5a74deea8d49df3e809775d83c56725e5045612` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
