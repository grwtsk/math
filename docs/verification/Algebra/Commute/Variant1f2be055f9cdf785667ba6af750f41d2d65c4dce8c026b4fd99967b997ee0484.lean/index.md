# Verification target: GRWTSK.Algebra.Commute.Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "901652875693ce25e21da9c23cadf25cdea98c6e",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/index.md) · [Full source](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `901652875693ce25e21da9c23cadf25cdea98c6e`.

Source path: `GRWTSK/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Semiconj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Units` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Bracket` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_right](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/add-right--4a269832b4c22e9a8a4e34a2.md) | 33 | `result-track:4a269832b4c22e9a8a4e34a2db59bdbbde20cabd79b392050ca707123aae23ce` |
| 2 | `theorem` | [add_left](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/add-left--d133b0e13db6c2fd472e0e07.md) | 38 | `result-track:d133b0e13db6c2fd472e0e078654f9d2bfe62115791a7471ab6735eda9baad49` |
| 3 | `theorem` | [mul_self_sub_mul_self_eq](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/mul-self-sub-mul-self-eq--fb288774f6905f01b85d40aa.md) | 43 | `result-track:fb288774f6905f01b85d40aadc0cc51d4fe956e96f5920f1e367bbb2486187be` |
| 4 | `theorem` | [mul_self_sub_mul_self_eq'](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/mul-self-sub-mul-self-eq--571eddbeaf7f9a06f76a65c3.md) | 47 | `result-track:571eddbeaf7f9a06f76a65c35d6528c6af0dcc8f8acd3085f236d2d6910cc1f8` |
| 5 | `theorem` | [mul_self_eq_mul_self_iff](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/mul-self-eq-mul-self-iff--5945119a485009828ae6d4ba.md) | 51 | `result-track:5945119a485009828ae6d4bad03c588407f10d53c6b17d824a7ecfa9730121ff` |
| 6 | `theorem` | [neg_right](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/neg-right--f283289242b252ac5e5b43d8.md) | 60 | `result-track:f283289242b252ac5e5b43d800f2d78f208f821250ed01dc5bd4bac8bb1623a1` |
| 7 | `theorem` | [neg_right_iff](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/neg-right-iff--acca24f8191549719bd4fe84.md) | 64 | `result-track:acca24f8191549719bd4fe84b3cbc702e2c20e618acd1b8f1a70d29554bc6550` |
| 8 | `theorem` | [neg_left](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/neg-left--35872f532d2eb77f9cc288b2.md) | 67 | `result-track:35872f532d2eb77f9cc288b2203753100f73e9a58f1ae97ed8fedcc5257b393c` |
| 9 | `theorem` | [neg_left_iff](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/neg-left-iff--f829dd14099960c9e914a373.md) | 71 | `result-track:f829dd14099960c9e914a37308a867d0644744e84291265a95098cb227ac5f25` |
| 10 | `theorem` | [neg_one_right](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/neg-one-right--964d81f0d90a1d71ace7049e.md) | 80 | `result-track:964d81f0d90a1d71ace7049eed2404024b5b90c089742db2bbb4a08f1be11294` |
| 11 | `theorem` | [neg_one_left](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/neg-one-left--8d445be4d080b1dd03ade6fd.md) | 83 | `result-track:8d445be4d080b1dd03ade6fd7e6455c4f72a522c39fb694107595848b6a60a00` |
| 12 | `theorem` | [sub_right](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/sub-right--555184a363ae1426f27d7a28.md) | 93 | `result-track:555184a363ae1426f27d7a28a2eb46a2f2b2cc02e50b82d9594f378e9687d169` |
| 13 | `theorem` | [sub_left](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/sub-left--99f3b2a6c763e15d7fede60d.md) | 97 | `result-track:99f3b2a6c763e15d7fede60d78ac1c9e015b3d12ddf115a57ce24eabb4d5def9` |
| 14 | `lemma` | [sq_sub_sq](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/sq-sub-sq--f2dbce739f015df0b20f2c4a.md) | 105 | `result-track:f2dbce739f015df0b20f2c4a00fa40824b0405573981ffa4224b010ad2cff150` |
| 15 | `lemma` | [sq_eq_sq_iff_eq_or_eq_neg](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/sq-eq-sq-iff-eq-or-eq-neg--84af732d6b34ee94876c0a6e.md) | 110 | `result-track:84af732d6b34ee94876c0a6ebceeff8d0eea261a4b434d4abe3e74d3ae4f6297` |
| 16 | `lemma` | [neg_one_pow_eq_or](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/neg-one-pow-eq-or--98db3b453b82b3bec5537ce7.md) | 120 | `result-track:98db3b453b82b3bec5537ce7aefbb4b29c5aafeb2a3c6a4bfcdcd8c6c1c342f1` |
| 17 | `lemma` | [neg_pow](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/neg-pow--107c1be870df7826973de28c.md) | 128 | `result-track:107c1be870df7826973de28c51934912fd5c14af8525e244d62302ea6db48036` |
| 18 | `lemma` | [neg_pow'](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/neg-pow--2ee813e69af02acef1b9aa98.md) | 131 | `result-track:2ee813e69af02acef1b9aa980249e6eba5cd5cb25979f234bcfa556f256b83e7` |
| 19 | `lemma` | [neg_sq](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/neg-sq--8967f6f0742515c162ef893d.md) | 134 | `result-track:8967f6f0742515c162ef893d533176e06e65c974b401d89885a9f0c20578bea9` |
| 20 | `lemma` | [neg_one_sq](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/neg-one-sq--d3e2db1b704e088e966e5f4e.md) | 136 | `result-track:d3e2db1b704e088e966e5f4ef3d4ce62ceb1dc53db9bb95f6cca7ad5da2c4f2f` |
| 21 | `lemma` | [neg_one_pow_mul_eq_zero_iff](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/neg-one-pow-mul-eq-zero-iff--09bf41c19a403d87b3fc39ab.md) | 147 | `result-track:09bf41c19a403d87b3fc39ab365f908782f017025fe17e6b2945b57f809a5b8e` |
| 22 | `lemma` | [mul_neg_one_pow_eq_zero_iff](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/mul-neg-one-pow-eq-zero-iff--05a9e0bd9e039daeadd85138.md) | 150 | `result-track:05a9e0bd9e039daeadd85138e8f5eacd14f981c76a7b14983e8a88c3f3be962c` |
| 23 | `lemma` | [neg_one_pow_eq_pow_mod_two](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/neg-one-pow-eq-pow-mod-two--6d3b1af5a6797f96a93f3402.md) | 153 | `result-track:6d3b1af5a6797f96a93f3402902e6a12b64a062e4413ba5ec2ef8f893405083f` |
| 24 | `lemma` | [sq_eq_one_iff](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/sq-eq-one-iff--c44b9ace2800a3cefb2d4ea2.md) | 158 | `result-track:c44b9ace2800a3cefb2d4ea2c3b339f58175e92d2fd857dcb73db99d2d315d3e` |
| 25 | `lemma` | [sq_ne_one_iff](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/sq-ne-one-iff--29c115e66c5fbcfef1f2fc8e.md) | 161 | `result-track:29c115e66c5fbcfef1f2fc8ee6bfce7b077dc7159a57a79578a62012a1d219ff` |
| 26 | `theorem` | [mul_self_sub_mul_self](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/mul-self-sub-mul-self--4be26d0dc8a3bd7c26f7445b.md) | 166 | `result-track:4be26d0dc8a3bd7c26f7445b2a94cb26bbe03fda024298ed3478c5db8e1ea26f` |
| 27 | `theorem` | [mul_self_sub_one](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/mul-self-sub-one--a14d72d6d1022d81882383c6.md) | 170 | `result-track:a14d72d6d1022d81882383c665f7c0570accf4c5cf06602b54c340629f68102b` |
| 28 | `theorem` | [mul_self_eq_mul_self_iff](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/mul-self-eq-mul-self-iff--7fac21ce62b6043a35965964.md) | 173 | `result-track:7fac21ce62b6043a3596596414ce5826fbeb3a76541136a6f14f8d091984a5d1` |
| 29 | `theorem` | [mul_self_eq_one_iff](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/mul-self-eq-one-iff--d6547cc4ca7b482a77b7bd67.md) | 177 | `result-track:d6547cc4ca7b482a77b7bd6772e873bfcce99f3ca0752241ae5d38d3a4d46371` |
| 30 | `lemma` | [sq_sub_sq](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/sq-sub-sq--338e307032bfcd7c029d77d8.md) | 184 | `result-track:338e307032bfcd7c029d77d8da89c96c80931109291d97d02699e6ca63ae4ee8` |
| 31 | `lemma` | [sub_sq](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/sub-sq--4ce2b2ab1dbb2b0b092e969c.md) | 188 | `result-track:4ce2b2ab1dbb2b0b092e969cdb0752f323040f6dac644a14321555ff9d5dc0f5` |
| 32 | `lemma` | [sub_sq'](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/sub-sq--639130ea2eceb4d1ce5bc5c6.md) | 193 | `result-track:639130ea2eceb4d1ce5bc5c66c99142863ae69ec18431f041be235b7c9b03487` |
| 33 | `lemma` | [sub_sq_comm](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/sub-sq-comm--7e0da3d4afa66a38ebc8d14f.md) | 196 | `result-track:7e0da3d4afa66a38ebc8d14fa53c49664fdc283c72ef5c65f62df8172408e611` |
| 34 | `lemma` | [sq_eq_sq_iff_eq_or_eq_neg](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/sq-eq-sq-iff-eq-or-eq-neg--437d77b5999ad968e6406512.md) | 201 | `result-track:437d77b5999ad968e64065121cd1d5b56fe1d80c8fa7f4df480b8262149cec31` |
| 35 | `lemma` | [eq_or_eq_neg_of_sq_eq_sq](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/eq-or-eq-neg-of-sq-eq-sq--d0692648357a214b0621e1db.md) | 204 | `result-track:d0692648357a214b0621e1db3278fd631788d872b179eb4b5b81c0fdd6680a42` |
| 36 | `lemma` | [sq_eq_sq_iff_eq_or_eq_neg](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/sq-eq-sq-iff-eq-or-eq-neg--599371c7f73a5db721317eda.md) | 210 | `result-track:599371c7f73a5db721317eda0ed8d9cab159d782fa9fe977fc2313fb1b6229f7` |
| 37 | `lemma` | [eq_or_eq_neg_of_sq_eq_sq](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/eq-or-eq-neg-of-sq-eq-sq--2ef4253a9b9997a17ad5ba84.md) | 213 | `result-track:2ef4253a9b9997a17ad5ba84fcc46dc8b5617b355968c48c7d19e802b9a963e4` |
| 38 | `theorem` | [inv_eq_self_iff](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/inv-eq-self-iff--3256145b7ef82cfc20508fba.md) | 223 | `result-track:3256145b7ef82cfc20508fbab782f1d8e5c1314b14b6fb592353fd5b21031434` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/instance--a04a0fb2b533cf6f91dcd9bb.md) | 237 | `declaration-track:a04a0fb2b533cf6f91dcd9bbdcc2b38a12a04033c1884fcaff96f7944cdce363` |
| 40 | `theorem` | [lie_def](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/lie-def--449f08100ac29b4197dcb931.md) | 239 | `result-track:449f08100ac29b4197dcb93198c42a0190a33a8e4c9c4563d22caf691b8cd3bb` |
| 41 | `theorem` | [commute_iff_lie_eq](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/commute-iff-lie-eq--c5fdd4ff591b2218df06c346.md) | 243 | `result-track:c5fdd4ff591b2218df06c346a1106c75249cfb44f789249b6c53ee9cbb8b92d0` |
| 42 | `theorem` | [Commute.lie_eq](../../../../mathematics/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/declarations/commute-lie-eq--c8c10f3c21133c454c454d51.md) | 245 | `result-track:c8c10f3c21133c454c454d51151d511125df3bc528416874b1a59c97ad95e564` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
