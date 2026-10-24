# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47b1f6a4e97cda80da0302274e9e39568ef91485",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47b1f6a4e97cda80da0302274e9e39568ef91485`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Unbundled.Pow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Parity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Bound.Attribute` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsSquare.nonneg](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/issquare-nonneg--a888c8fa620011e3a1f3b18b.md) | 22 | `result-track:a888c8fa620011e3a1f3b18b85a3567dd4339723243dafcb0c20f787a2f5041d` |
| 2 | `theorem` | [map_neg_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/map-neg-one--9ea5cd8ab4a0dd7f5bdd1e2b.md) | 32 | `result-track:9ea5cd8ab4a0dd7f5bdd1e2b4cbcddfe24f86df01e0ebb6bb6fb530ad1a9d58e` |
| 3 | `theorem` | [map_neg](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/map-neg--75a232f1f2a67fb31454a826.md) | 36 | `result-track:75a232f1f2a67fb31454a8268e0ce6fc33921062ea75f39b44c8a77ef4037faa` |
| 4 | `theorem` | [map_sub_swap](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/map-sub-swap--56afb930b2942a1f8af9bf98.md) | 38 | `result-track:56afb930b2942a1f8af9bf982e38b753cfdbcb4d7d37f2b382ca167829fb538c` |
| 5 | `theorem` | [pow_add_pow_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/pow-add-pow-le--a4e590cfa4f0c4d6096bdd1e.md) | 46 | `result-track:a4e590cfa4f0c4d6096bdd1ef0fd4483b3dd3bf70ebbac3dde9486ccf6635d84` |
| 6 | `theorem` | [pow_le_pow_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/pow-le-pow-left--0a32fa72e287a596a2b6e568.md) | 68 | `result-track:0a32fa72e287a596a2b6e56863e7a4e43162d520f9c016f5d70d0930d7b56e99` |
| 7 | `lemma` | [pow_add_pow_le'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/pow-add-pow-le--3ffc3ac02f8cbbf6420f31a0.md) | 71 | `result-track:3ffc3ac02f8cbbf6420f31a0a6032585d98c696287e3eeaa2232d6ee64d9bd58` |
| 8 | `theorem` | [pow_lt_pow_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/pow-lt-pow-left--b2cfca80a8cba6617cb086f7.md) | 83 | `result-track:b2cfca80a8cba6617cb086f7659b735f0813e5990b1b2792cd1fb7b73b68c0f4` |
| 9 | `lemma` | [pow_left_strictMonoOn](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/pow-left-strictmonoon--49cf9cad5c3861c17902d868.md) | 87 | `result-track:49cf9cad5c3861c17902d868805d7c6f385610dce60c80c7cf9dbe7d2f000d4f` |
| 10 | `lemma` | [pow_right_strictMono](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/pow-right-strictmono--609118964681fdcf65795294.md) | 91 | `result-track:609118964681fdcf657952943835cc221a62d142670ccb32bf5eb3cc4772767c` |
| 11 | `theorem` | [pow_lt_pow_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/pow-lt-pow-right--ecdf2870191c751ef20dec00.md) | 95 | `result-track:ecdf2870191c751ef20dec00c1622d8e4344b8c8e8b184b60bff838fc91965d4` |
| 12 | `lemma` | [pow_lt_pow_iff_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/pow-lt-pow-iff-right--158bcf268b94308559439a15.md) | 99 | `result-track:158bcf268b94308559439a15d9df639cc22ca966d14e6d9f13162e8dedeb04ce` |
| 13 | `lemma` | [pow_le_pow_iff_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/pow-le-pow-iff-right--5ba03d60c26abad6e73a5280.md) | 102 | `result-track:5ba03d60c26abad6e73a52807dd95dc1e251078a50a7807717e7b144f2ea1391` |
| 14 | `theorem` | [lt_self_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/lt-self-pow--e6377aa0e469ad141f4ee546.md) | 105 | `result-track:e6377aa0e469ad141f4ee546ceec7e738c5984c41e5e0d4042bf79ee34f48855` |
| 15 | `theorem` | [pow_right_strictAnti](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/pow-right-strictanti--59b0dbd6c245048c0c186ea4.md) | 108 | `result-track:59b0dbd6c245048c0c186ea45ed7e02eb38d950ea2a940caf653761f0425448e` |
| 16 | `theorem` | [pow_lt_pow_iff_right_of_lt_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/pow-lt-pow-iff-right-of-lt-one--147325e991c200a1506430e0.md) | 112 | `result-track:147325e991c200a1506430e0ec1522da3c8920de622bfe22672bb812da4a9a51` |
| 17 | `theorem` | [pow_lt_pow_right_of_lt_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/pow-lt-pow-right-of-lt-one--a95e68f6a4e30ae1cdb40875.md) | 116 | `result-track:a95e68f6a4e30ae1cdb408759bcfc62740f5aefd3a775ce22c430c09bda1a4db` |
| 18 | `theorem` | [pow_lt_self_of_lt_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/pow-lt-self-of-lt-one--8051ec810b73224df871d67f.md) | 120 | `result-track:8051ec810b73224df871d67fccf03ac9a94c70316627a0bb78b663c14269bfe2` |
| 19 | `lemma` | [sq_pos_of_neg](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/sq-pos-of-neg--3e6e30494954a77406bbd8d5.md) | 128 | `result-track:3e6e30494954a77406bbd8d5efbf1d098a902cb9b7771cc7e409f0673af5fe14` |
| 20 | `lemma` | [pow_le_pow_iff_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/pow-le-pow-iff-left--ce2a1a688700d567bb42e381.md) | 136 | `result-track:ce2a1a688700d567bb42e38179f38c6716c094a9642e20327c70bbb9ebf81778` |
| 21 | `lemma` | [pow_lt_pow_iff_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/pow-lt-pow-iff-left--c510d006981209faf155635b.md) | 140 | `result-track:c510d006981209faf155635b3bb060e780691528932d1e0be16214eca868e179` |
| 22 | `lemma` | [pow_right_injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/pow-right-injective--24bfbed7e24ea3cb9f9c1265.md) | 144 | `result-track:24bfbed7e24ea3cb9f9c1265daf8700c6c93786c8ea6862bd9fd9d243a2ef60c` |
| 23 | `lemma` | [pow_right_inj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/pow-right-inj--e0f941b74793f1935a785972.md) | 148 | `result-track:e0f941b74793f1935a7859728d42253e6057f4b6948b3abe650216157463d51d` |
| 24 | `theorem` | [sq_le_one_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/sq-le-one-iff--35650f6c7aa617b1d3063bfc.md) | 151 | `result-track:35650f6c7aa617b1d3063bfc7678d80dfe0bc694788e57e6d5e08fd8963d14b8` |
| 25 | `theorem` | [sq_lt_one_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/sq-lt-one-iff--467a398051fb3f69cc549e57.md) | 154 | `result-track:467a398051fb3f69cc549e57bbc1c230b41dcb387e6e89a9cbe6aa15fc10c287` |
| 26 | `theorem` | [one_le_sq_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/one-le-sq-iff--9b878cf4918dbad3fa47bc5e.md) | 157 | `result-track:9b878cf4918dbad3fa47bc5e9f27b5637471129c7ef0450218b2d192e51a3896` |
| 27 | `theorem` | [one_lt_sq_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/one-lt-sq-iff--0d89fa95aa99930293f47dbe.md) | 160 | `result-track:0d89fa95aa99930293f47dbe3f6455e521dd0c3214db68cb1c8882f7547ca7c4` |
| 28 | `theorem` | [lt_of_pow_lt_pow_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/lt-of-pow-lt-pow-left--fb3e2dba54c7314a54196505.md) | 163 | `result-track:fb3e2dba54c7314a5419650500075ae7cf6b8dc0723ff8a099aac9dbead5d678` |
| 29 | `theorem` | [le_of_pow_le_pow_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/le-of-pow-le-pow-left--2edc78c31678fb4c54882bc4.md) | 167 | `result-track:2edc78c31678fb4c54882bc4a9faa63771abd9a2761d08d7fdad5f9de9719ee9` |
| 30 | `theorem` | [sq_eq_sq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/sq-eq-sq--a9db1a87f6b3c7cbec450134.md) | 171 | `result-track:a9db1a87f6b3c7cbec45013478b4e9e057418a8731c90562b3f87d4a0b1c00cb` |
| 31 | `theorem` | [lt_of_mul_self_lt_mul_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/lt-of-mul-self-lt-mul-self--fd7a91886433c314109adc07.md) | 174 | `result-track:fd7a91886433c314109adc076389eef705f07e52efae95b82057dafb080a8642` |
| 32 | `def` | [IsNonarchimedean](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/isnonarchimedean--21e868692018b7e70ba55b79.md) | 179 | `declaration-track:21e868692018b7e70ba55b7983bb569cd58b64f6bfedee4cb2c1786d07d61a71` |
| 33 | `lemma` | [add_sq_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/add-sq-le--69fde74e6e798b41971260fa.md) | 193 | `result-track:69fde74e6e798b41971260faa91b4cd8cefc32f0f33435d6046f32cfb727f376` |
| 34 | `lemma` | [add_pow_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/add-pow-le--44d571445baf209118794711.md) | 204 | `result-track:44d571445baf20911879471182893f5d024986080270a0ff48ec96b96e1fce88` |
| 35 | `lemma` | [Even.add_pow_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/even-add-pow-le--1874f0cca4637b2c094003a7.md) | 222 | `result-track:1874f0cca4637b2c094003a78220022d9d8bf12d1fd553f606ffba46f575e160` |
| 36 | `lemma` | [Even.pow_nonneg](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/even-pow-nonneg--24ae53c5125962078f2dbf22.md) | 238 | `result-track:24ae53c5125962078f2dbf2241d9405cb45d3d07c88a9d7bbd8b81c4b57cdaea` |
| 37 | `lemma` | [Even.pow_pos](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/even-pow-pos--1f826d9949dfc19c83b33508.md) | 241 | `result-track:1f826d9949dfc19c83b335082189f85b869c42e918fb6e892f005bfc29a8f0a2` |
| 38 | `lemma` | [Even.pow_pos_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/even-pow-pos-iff--85d732947955c5498f0f8ebc.md) | 244 | `result-track:85d732947955c5498f0f8ebc0fd30f21908a9c2fe9326bbfade93136903b5f5d` |
| 39 | `lemma` | [Odd.pow_neg_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/odd-pow-neg-iff--d9ec21f170d7d3684460acdb.md) | 247 | `result-track:d9ec21f170d7d3684460acdbfba5a028ef7fd2ee2ee24021ea9d63b01bef2fe2` |
| 40 | `lemma` | [Odd.pow_nonneg_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/odd-pow-nonneg-iff--032e6ab792eb86df8e833c32.md) | 253 | `result-track:032e6ab792eb86df8e833c3255a41b3162d77b436aec174395b8029984dea63e` |
| 41 | `lemma` | [Odd.pow_nonpos_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/odd-pow-nonpos-iff--8a78a27d150871929c4ad04d.md) | 256 | `result-track:8a78a27d150871929c4ad04d7abd851897a23d1396e79867781ea121d431841f` |
| 42 | `lemma` | [Odd.pow_pos_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/odd-pow-pos-iff--260a7cf8750a30158f5ac008.md) | 260 | `result-track:260a7cf8750a30158f5ac008f7d96defad9cba1c8240fd1ba2a19d6bb4246ac0` |
| 43 | `lemma` | [Odd.strictMono_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/odd-strictmono-pow--9f142728b614022c4e02a0c8.md) | 265 | `result-track:9f142728b614022c4e02a0c828ea5b358f2f22c32b9ce858ace5d1641a3e850c` |
| 44 | `lemma` | [Odd.pow_injective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/odd-pow-injective--fbda8d20cf4ce341825433ff.md) | 285 | `result-track:fbda8d20cf4ce341825433ff0193dcd2eede16c5c1fe10d9aa9e5f3909b9148e` |
| 45 | `lemma` | [Odd.pow_lt_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/odd-pow-lt-pow--e4ba2549b88a51a049ba86d5.md) | 288 | `result-track:e4ba2549b88a51a049ba86d51c72dc838becd64fba4d756af9832b23dccc3964` |
| 46 | `lemma` | [Odd.pow_le_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/odd-pow-le-pow--d9d7b2c8cb12066888c00928.md) | 291 | `result-track:d9d7b2c8cb12066888c00928cfa6a935a3d13d1b276234581c64c3465b3994fa` |
| 47 | `lemma` | [Odd.pow_inj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/odd-pow-inj--aa08e84597a20fbfe79d1422.md) | 294 | `result-track:aa08e84597a20fbfe79d1422d296dbc8870439efe188e2314f511a09aa066b3a` |
| 48 | `lemma` | [sq_pos_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/sq-pos-iff--6a6dcc705c32d2c4a964629f.md) | 297 | `result-track:6a6dcc705c32d2c4a964629f8ad443ee48f1625ed9ca111aa5a0e3d09faab12e` |
| 49 | `lemma` | [pow_four_le_pow_two_of_pow_two_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantf7118e747a1e40d50ff01f9b4409dd1735d97f17124c50a0784d00829d8a836f.lean/declarations/pow-four-le-pow-two-of-pow-two-le--6f37e4ac7e9bb8c0d8cf78d8.md) | 302 | `result-track:6f37e4ac7e9bb8c0d8cf78d837303cc69df7b41d9475bc3b61bcef5f61e4a5b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
