# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Length.Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ee1ce90caefbc97ce422900bcacfcc9e72ae0bf",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ee1ce90caefbc97ce422900bcacfcc9e72ae0bf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coxeter.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_word_with_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/exists-word-with-prod--018aea1b641d418f7aad1901.md) | 73 | `result-track:018aea1b641d418f7aad19010859de3be15b3a422ed9074deea890ca72a4a929` |
| 2 | `def` | [length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/length--977752c647d830ccbcfee26d.md) | 80 | `declaration-track:977752c647d830ccbcfee26d9da58aff0d176e9bd29f3f95a74e59918376a962` |
| 3 | `theorem` | [exists_reduced_word](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/exists-reduced-word--5a0c54bc64c119d70a51cadb.md) | 84 | `result-track:5a0c54bc64c119d70a51cadb3f2d267106e98127884ed5c76605c1f98a9abeee` |
| 4 | `theorem` | [length_wordProd_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/length-wordprod-le--bbdabe4a1460783e0ccfa3cc.md) | 90 | `result-track:bbdabe4a1460783e0ccfa3cc3d040f098a91087fc5dab7b39bdf5b4537b58f18` |
| 5 | `theorem` | [length_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/length-one--2342727d63397d09df2ff691.md) | 93 | `result-track:2342727d63397d09df2ff69122fe70ad724edc3448172320ff5abd1ec67e2f0e` |
| 6 | `theorem` | [length_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/length-eq-zero-iff--5030c387331d53e5c3ea8dee.md) | 96 | `result-track:5030c387331d53e5c3ea8dee2043e845c4f93399f97f05bf4eb187ebea7bc245` |
| 7 | `theorem` | [length_inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/length-inv--c7bbec59314c5581c84f64b6.md) | 106 | `result-track:c7bbec59314c5581c84f64b6ea1e0ac3578ad193687b1c5392b0561829c5c94b` |
| 8 | `theorem` | [length_mul_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/length-mul-le--e924ea72bbe283d1f690c405.md) | 115 | `result-track:e924ea72bbe283d1f690c405abcb07b332a3fab64c5d69905d3699733e135725` |
| 9 | `theorem` | [length_mul_ge_length_sub_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/length-mul-ge-length-sub-length--0afcc09848e233006d713459.md) | 122 | `result-track:0afcc09848e233006d7134594cdfa34f6d44e521a73afd6e38abffd06020e6a3` |
| 10 | `theorem` | [length_mul_ge_length_sub_length'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/length-mul-ge-length-sub-length--eb365c89433ed91e0a6f43ed.md) | 126 | `result-track:eb365c89433ed91e0a6f43ed4b80e6a542a86700bf43b546646e564603b1bba5` |
| 11 | `theorem` | [length_mul_ge_max](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/length-mul-ge-max--33a45045c59761a08510cc65.md) | 130 | `result-track:33a45045c59761a08510cc6575e2a04307c61538b0cc1654cd41ddd5a82b835c` |
| 12 | `def` | [lengthParity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/lengthparity--ae2c7df39e4321d1ef5f6478.md) | 136 | `declaration-track:ae2c7df39e4321d1ef5f64786491a3294ba9f902fce0b0f46696900d88c3ddbd` |
| 13 | `theorem` | [lengthParity_simple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/lengthparity-simple--ce234f752371a95d9c61a3b5.md) | 140 | `result-track:ce234f752371a95d9c61a3b518527d5f03dc9310ebb1dd94b68fa3a15511eae3` |
| 14 | `theorem` | [lengthParity_comp_simple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/lengthparity-comp-simple--fae466a428f130d4896bfe8b.md) | 143 | `result-track:fae466a428f130d4896bfe8b72f1ae501930a3a9009856ce809375eff12eb7c3` |
| 15 | `theorem` | [lengthParity_eq_ofAdd_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/lengthparity-eq-ofadd-length--e85fc0d885ddaf3b8324e5f4.md) | 146 | `result-track:e85fc0d885ddaf3b8324e5f48e3bf342b198d574a3fa47178325962c423b3eb4` |
| 16 | `theorem` | [length_mul_mod_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/length-mul-mod-two--5092f9fa8795456adbede1b4.md) | 152 | `result-track:5092f9fa8795456adbede1b4535238ad2b9a749a17f248782c470d29e652c0b1` |
| 17 | `theorem` | [length_simple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/length-simple--95b5414c38449ce44dc91659.md) | 157 | `result-track:95b5414c38449ce44dc9165967a8298526b7dbdb97ba0c136916d9350dda05b1` |
| 18 | `theorem` | [length_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/length-eq-one-iff--2fe90a1e5f59fd524f650d46.md) | 167 | `result-track:2fe90a1e5f59fd524f650d461c54a33cc4b0d1c3b37eb9790cdd58d46f430c58` |
| 19 | `theorem` | [length_mul_simple_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/length-mul-simple-ne--a8d9222837e1d1dc8f38f7ce.md) | 176 | `result-track:a8d9222837e1d1dc8f38f7cecf47020a2d3ad3f65e795db1ca5f9be3d98ee3b4` |
| 20 | `theorem` | [length_simple_mul_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/length-simple-mul-ne--390b6291eca4aa95d08cf131.md) | 186 | `result-track:390b6291eca4aa95d08cf131de32a5f7dcf6abd2047c556f10635302671d4eaf` |
| 21 | `theorem` | [length_mul_simple](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/length-mul-simple--b0df6ee262a9bf6dff26b43a.md) | 192 | `result-track:b0df6ee262a9bf6dff26b43a99d8d238afa2e52821526ebb1de4391a3576b998` |
| 22 | `theorem` | [length_simple_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/length-simple-mul--76bb3359728a417a8cae2992.md) | 208 | `result-track:76bb3359728a417a8cae2992fad4bd61a1eb8016b47bafefae7c1ac60e1a2c3f` |
| 23 | `def` | [IsReduced](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/isreduced--b213fd5a804ab085cc7a1443.md) | 217 | `declaration-track:b213fd5a804ab085cc7a14431e182938c8b2addc857f5fd191cf364ce54322c3` |
| 24 | `theorem` | [isReduced_reverse_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/isreduced-reverse-iff--d1d02f8640461c49a4704b28.md) | 220 | `result-track:d1d02f8640461c49a4704b287fb8e8851162c8104ff6edbcd2ac775f0bfc82dc` |
| 25 | `theorem` | [IsReduced.reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/isreduced-reverse--0601730fda736d870bdae13a.md) | 223 | `result-track:0601730fda736d870bdae13a34151e9181b7d235498b6286f6efa8749da16acf` |
| 26 | `theorem` | [exists_reduced_word'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/exists-reduced-word--6b84deb86fb86771b4941e31.md) | 227 | `result-track:6b84deb86fb86771b4941e3180a00f3601b2c8c019c1b17b685dcdb1bf0f5802` |
| 27 | `theorem` | [isReduced_take_and_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/isreduced-take-and-drop--688e83d7b36d163d511efedc.md) | 232 | `result-track:688e83d7b36d163d511efedc5e9e560c0ec73b3065d0977c15a1103c1c815d7c` |
| 28 | `theorem` | [IsReduced.take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/isreduced-take--a0fb3a786749ff96721174c6.md) | 245 | `result-track:a0fb3a786749ff96721174c650f05e78b653980d55134d3eb32088f91f82da9c` |
| 29 | `theorem` | [IsReduced.drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/isreduced-drop--fcedf3fd6159b0a8ed263fc1.md) | 249 | `result-track:fcedf3fd6159b0a8ed263fc13eefb233dae14db8857058f56490cf4a24042b21` |
| 30 | `theorem` | [not_isReduced_alternatingWord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/not-isreduced-alternatingword--77b4bdcdf42e36c68abcae9d.md) | 253 | `result-track:77b4bdcdf42e36c68abcae9deb72ff2b7d7aec8da726feb9ed2683578d9092fc` |
| 31 | `def` | [IsLeftDescent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/isleftdescent--02a59d6930285900dd817cf4.md) | 280 | `declaration-track:02a59d6930285900dd817cf40b85806d7ad954a8a722245c4524c453e48a444c` |
| 32 | `def` | [IsRightDescent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/isrightdescent--963fc411e634c7d1d1db93dc.md) | 283 | `declaration-track:963fc411e634c7d1d1db93dccc44c18bb38bc5c646e2f5675184799840248b73` |
| 33 | `theorem` | [not_isLeftDescent_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/not-isleftdescent-one--d26cd623903808bb6bdf6c73.md) | 285 | `result-track:d26cd623903808bb6bdf6c73de1749154e44b477197dba0632327113b4166040` |
| 34 | `theorem` | [not_isRightDescent_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/not-isrightdescent-one--f52f8b97ee7490ab058aa362.md) | 287 | `result-track:f52f8b97ee7490ab058aa3624a58a774b48aa345012eb1ba64d9684ba3ef49f8` |
| 35 | `theorem` | [isLeftDescent_inv_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/isleftdescent-inv-iff--c2a713a9b4f4291104e51c9c.md) | 289 | `result-track:c2a713a9b4f4291104e51c9c1ee5ee47c05f9e62e7a9605f4492fb73d2be643d` |
| 36 | `theorem` | [isRightDescent_inv_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/isrightdescent-inv-iff--0ac7615091787601c7d0bc01.md) | 295 | `result-track:0ac7615091787601c7d0bc019faccc066c06786b5ff0d83a8b0f8330269ba6c2` |
| 37 | `theorem` | [exists_leftDescent_of_ne_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/exists-leftdescent-of-ne-one--b53af00a2360a0dcd2619a82.md) | 299 | `result-track:b53af00a2360a0dcd2619a82591e6eb9c4b2fff7eb7a0b5ac79249a203f74cd0` |
| 38 | `theorem` | [exists_rightDescent_of_ne_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/exists-rightdescent-of-ne-one--bfe3738b663ba28229591aed.md) | 309 | `result-track:bfe3738b663ba28229591aed782e8c4ce79b2947f78505d064a0f5982703ecbb` |
| 39 | `theorem` | [isLeftDescent_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/isleftdescent-iff--1dbbec20bc6fb9ed491776af.md) | 314 | `result-track:1dbbec20bc6fb9ed491776af0ddeee6ca690b10145de4405f8f5b064b4a370a1` |
| 40 | `theorem` | [not_isLeftDescent_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/not-isleftdescent-iff--13255bb773aa32ca85a157d8.md) | 322 | `result-track:13255bb773aa32ca85a157d8d5d2a4672d343c09305d7ef33c5a7dc81092d329` |
| 41 | `theorem` | [isRightDescent_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/isrightdescent-iff--debb56430321f3efe8c25e1a.md) | 330 | `result-track:debb56430321f3efe8c25e1a3a446f4a10ed7a9061927c11a9ee61679153a152` |
| 42 | `theorem` | [not_isRightDescent_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/not-isrightdescent-iff--0bb2eff69316e485e36528db.md) | 338 | `result-track:0bb2eff69316e485e36528dbb0c15fc1f4eae116d142c1cd62633306695245f4` |
| 43 | `theorem` | [isLeftDescent_iff_not_isLeftDescent_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/isleftdescent-iff-not-isleftdescent-mul--5d3daa3ee5a2b48a5e5c8f3f.md) | 346 | `result-track:5d3daa3ee5a2b48a5e5c8f3f77dfa9d0f392e7c3f59edf1dfbfa1bc54aaf6882` |
| 44 | `theorem` | [isRightDescent_iff_not_isRightDescent_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/declarations/isrightdescent-iff-not-isrightdescent-mul--685882feab60a1ff9f7d78ca.md) | 351 | `result-track:685882feab60a1ff9f7d78cae7ce3004d6b8c6bb3f8b114e25c25c434e75487c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
