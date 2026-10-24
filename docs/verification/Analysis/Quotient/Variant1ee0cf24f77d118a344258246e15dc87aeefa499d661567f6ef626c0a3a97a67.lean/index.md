# Verification target: GRWTSK.Analysis.Quotient.Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ec3037c608383b72506667c25071d22f9fd1021",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/index.md) · [Full source](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ec3037c608383b72506667c25071d22f9fd1021`.

Source path: `GRWTSK/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Hom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_aux](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/norm-aux--ac3cf3f31481924f15c66689.md) | 102 | `result-track:ac3cf3f31481924f15c66689536fedc6685470d2822b1cdebd78315e21606f60` |
| 2 | `def` | [groupSeminorm](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/groupseminorm--63ac624d826dfeafc7c218a8.md) | 109 | `declaration-track:63ac624d826dfeafc7c218a8810319939c9483e154ed5b0b1f2d640f5b7f663d` |
| 3 | `instance` | [instNorm](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/instnorm--6ac3d1c2a6e0be6a7cfd7354.md) | 129 | `declaration-track:6ac3d1c2a6e0be6a7cfd7354daefaaf770209c4a738186cee7426ec8133be209` |
| 4 | `lemma` | [norm_eq_groupSeminorm](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/norm-eq-groupseminorm--10a8af4cd2e00707123f4d3a.md) | 132 | `result-track:10a8af4cd2e00707123f4d3a415faf7dc3ea1dbd1d74d625c5687b6d2c6ff1f5` |
| 5 | `lemma` | [norm_eq_infDist](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/norm-eq-infdist--781258bcab8e5b3cd1ec2405.md) | 135 | `result-track:781258bcab8e5b3cd1ec240559e31716df0fd437d95fbda8b2527e270515edd7` |
| 6 | `lemma` | [le_norm_iff](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/le-norm-iff--a8054262a7a443ce0864dd2c.md) | 138 | `result-track:a8054262a7a443ce0864dd2c5126f3871ea1182cd543eb0b48bf95b19151ace4` |
| 7 | `lemma` | [norm_lt_iff](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/norm-lt-iff--a123d82e8bf73ab943064ddd.md) | 142 | `result-track:a123d82e8bf73ab943064ddddb13b5d2843b3ff8b34af9d2cdbf39b8a5e48fac` |
| 8 | `lemma` | [nhds_one_hasBasis](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/nhds-one-hasbasis--19a528c7234510cfb8993b4f.md) | 146 | `result-track:19a528c7234510cfb8993b4fd92dadf2b433f5325ddd12cdeb9e10b1bdb3a609` |
| 9 | `lemma` | [norm_mk](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/norm-mk--56cd24a1af323acf98a4ca39.md) | 159 | `result-track:56cd24a1af323acf98a4ca392bbe39a6d09fac85b843935bf4de15114f64fd4f` |
| 10 | `lemma` | [norm_mk_le_norm](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/norm-mk-le-norm--c1f690df4efb8c97efe85772.md) | 166 | `result-track:c1f690df4efb8c97efe85772bde77b5a824ef398a117e1abfd57e00a8f604cba` |
| 11 | `lemma` | [norm_mk_eq_zero_iff_mem_closure](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/norm-mk-eq-zero-iff-mem-closure--7f06e6b94aa3e1fad292222a.md) | 173 | `result-track:7f06e6b94aa3e1fad292222a8019d4d235bde79a0c2894bf458ba67b2f9ec74f` |
| 12 | `lemma` | [norm_mk_eq_zero](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/norm-mk-eq-zero--d0be95b537ce2b51f236e883.md) | 181 | `result-track:d0be95b537ce2b51f236e883d2966a5a8d64b8b50e434ca31e7d84ef2144acad` |
| 13 | `lemma` | [exists_norm_mk_lt](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/exists-norm-mk-lt--44d98812bd4acbc0368a0c35.md) | 188 | `result-track:44d98812bd4acbc0368a0c35adf3b29092267a89a5ea6227fe3cca70358df178` |
| 14 | `lemma` | [exists_norm_mul_lt](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/exists-norm-mul-lt--1c9c0196cb4af3ab997ddc0b.md) | 194 | `result-track:1c9c0196cb4af3ab997ddc0ba83a2bbeba408fdac3f860b5ecc1228aff4b9a3b` |
| 15 | `instance` | [instSeminormedCommGroup](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/instseminormedcommgroup--bd8c99c1ec3314e955357654.md) | 202 | `declaration-track:bd8c99c1ec3314e95535765424d46212be0d30a00d4a055f7f1d7f25e9424402` |
| 16 | `instance` | [instNormedCommGroup](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/instnormedcommgroup--781774ccc9b8e71dd86edc2c.md) | 212 | `declaration-track:781774ccc9b8e71dd86edc2cab79e45a3cc273e566b767e94cb66d784409c288` |
| 17 | `example` | [(anonymous)](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/example--fa8009bc0db071f7c19b488a.md) | 218 | `declaration-track:fa8009bc0db071f7c19b488ad6f0acb3fa3c7428a598a9ecdff90f07c4f91c14` |
| 18 | `example` | [(anonymous)](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/example--ea8349848c39739abb928184.md) | 222 | `declaration-track:ea8349848c39739abb92818404390e755b7117dbf68d093f00f79a386df3821c` |
| 19 | `def` | [normOnQuotient](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/normonquotient--7de4b8e055ea272b95003459.md) | 233 | `declaration-track:7de4b8e055ea272b95003459c32fa5759424ad8ceada0c7a754ce69cc5b01d39` |
| 20 | `theorem` | [AddSubgroup.quotient_norm_eq](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/addsubgroup-quotient-norm-eq--6a931ba3ece6951a362f2a72.md) | 236 | `result-track:6a931ba3ece6951a362f2a72d1c5ffeff265ed8ed0ead0f4185f7c0251468af5` |
| 21 | `theorem` | [image_norm_nonempty](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/image-norm-nonempty--2ce5336eccc123de7dd6c57a.md) | 241 | `result-track:2ce5336eccc123de7dd6c57af23626a99bdeb808b3098ad1f9655eadb9ea0604` |
| 22 | `theorem` | [bddBelow_image_norm](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/bddbelow-image-norm--41fb7a7dfe1de31202fb79c1.md) | 246 | `result-track:41fb7a7dfe1de31202fb79c16a0c7ef5912ae3162853b8fce934fdec81aa9b3e` |
| 23 | `theorem` | [isGLB_quotient_norm](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/isglb-quotient-norm--3532dfebf068fa4db9f253bf.md) | 250 | `result-track:3532dfebf068fa4db9f253bf017785521248a7193c8f0f600cb31b5893324f83` |
| 24 | `theorem` | [quotient_norm_neg](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/quotient-norm-neg--74c86b0f42fd794889b145eb.md) | 256 | `result-track:74c86b0f42fd794889b145ebca3a04be230630fb9517a73d029de2c666d45e93` |
| 25 | `theorem` | [quotient_norm_sub_rev](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/quotient-norm-sub-rev--3419617d34e6e2ec1e516910.md) | 259 | `result-track:3419617d34e6e2ec1e5169106b0773ef326e57c98489daade9a6dbbad202ac5d` |
| 26 | `theorem` | [quotient_norm_mk_le](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/quotient-norm-mk-le--e1a8877b61a4559144ff4f24.md) | 264 | `result-track:e1a8877b61a4559144ff4f249beaf14d8da97aaa263f2b646821d88cd614d6ae` |
| 27 | `theorem` | [quotient_norm_mk_le'](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/quotient-norm-mk-le--54cf08bbbcf9ff2c285df857.md) | 268 | `result-track:54cf08bbbcf9ff2c285df8574d611163eeb58511a2ad2cb019cf305ab12a0ae3` |
| 28 | `theorem` | [quotient_norm_mk_eq](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/quotient-norm-mk-eq--622bfd17d7db4a2e572f9e42.md) | 271 | `result-track:622bfd17d7db4a2e572f9e42ca318859efe7a732fc578d042076081761f278c2` |
| 29 | `theorem` | [quotient_norm_nonneg](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/quotient-norm-nonneg--677919a3a19678f80ae12cd2.md) | 279 | `result-track:677919a3a19678f80ae12cd218c8e0d0c62101ad4cb66414332368f97d9351b4` |
| 30 | `theorem` | [norm_mk_nonneg](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/norm-mk-nonneg--87812d0939551e3f7ae41beb.md) | 283 | `result-track:87812d0939551e3f7ae41beb4ba1f651b8b2db1b614d11c5bb722ce0f8147cd6` |
| 31 | `theorem` | [quotient_norm_eq_zero_iff](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/quotient-norm-eq-zero-iff--d55a39751c25b7881b055eaa.md) | 288 | `result-track:d55a39751c25b7881b055eaad8245429568560b33fe06e005a76b1f84646d16f` |
| 32 | `theorem` | [norm_mk_lt](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/norm-mk-lt--aff69c87ee294765f1724a9a.md) | 294 | `result-track:aff69c87ee294765f1724a9a2b546416c699c1f0a58bd698b2dfe1e0bc72267f` |
| 33 | `theorem` | [norm_mk_lt'](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/norm-mk-lt--72b25ef6401aabc1dbc58f99.md) | 299 | `result-track:72b25ef6401aabc1dbc58f99de0fd0c4aa23e344905e0d9259791af4c3d63c84` |
| 34 | `theorem` | [quotient_norm_add_le](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/quotient-norm-add-le--e4ca5eb9332ea9bc32e91eee.md) | 303 | `result-track:e4ca5eb9332ea9bc32e91eee53c6835226872e563ac44cbb967713191a26621f` |
| 35 | `theorem` | [norm_mk_zero](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/norm-mk-zero--d36f69500dd751357ec292f5.md) | 312 | `result-track:d36f69500dd751357ec292f577416569ad2344aacebb21c0c37e4b3e91b86f01` |
| 36 | `theorem` | [norm_mk_eq_zero](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/norm-mk-eq-zero--357f9fcce3c8189a2fe64205.md) | 317 | `result-track:357f9fcce3c8189a2fe642050d7524a648619586816febbff86bf99b3ac4e176` |
| 37 | `theorem` | [quotient_nhds_basis](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/quotient-nhds-basis--7f70117726ea294ea08b198c.md) | 321 | `result-track:7f70117726ea294ea08b198c98ff2215e9807865d702dc94846427fc6d78fdf8` |
| 38 | `def` | [AddSubgroup.seminormedAddCommGroupQuotient](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/addsubgroup-seminormedaddcommgroupquotient--51e7e5870575580193779f07.md) | 328 | `declaration-track:51e7e5870575580193779f07fa29542dadda45a86fadb6da3468aff8b3d2bfb5` |
| 39 | `instance` | [AddSubgroup.normedAddCommGroupQuotient](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/addsubgroup-normedaddcommgroupquotient--eb34ae3fe83e8a7da3b60ce9.md) | 333 | `declaration-track:eb34ae3fe83e8a7da3b60ce9df5fe42520229ac1ca44b5dd2df22c176fa18cd0` |
| 40 | `def` | [normedMk](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/normedmk--9ece6369af8f4d089eee732c.md) | 341 | `declaration-track:9ece6369af8f4d089eee732c2daa1cc9ee11680a55d88ba5a948fec4e1e56311` |
| 41 | `theorem` | [normedMk.apply](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/normedmk-apply--ef8af0ec1b3059056973e02e.md) | 347 | `result-track:ef8af0ec1b3059056973e02ecc8bdcd7863ecc169a97a13edee43fd09c0ad1e7` |
| 42 | `theorem` | [surjective_normedMk](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/surjective-normedmk--82cefe9b82c479445a324834.md) | 351 | `result-track:82cefe9b82c479445a3248348b7ecff6f529e3bb7f96e8dfde1abe6d93ebe6e9` |
| 43 | `theorem` | [ker_normedMk](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/ker-normedmk--af7413c1a7283e18dee7aede.md) | 355 | `result-track:af7413c1a7283e18dee7aede9bf75c3b25c3fba35bbe89122d45534f907c3a95` |
| 44 | `theorem` | [norm_normedMk_le](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/norm-normedmk-le--37a078b931135f2f481632d3.md) | 359 | `result-track:37a078b931135f2f481632d3031c79116d8aed0c5fdbf91922525bd8bcce6e58` |
| 45 | `theorem` | [_root_.QuotientAddGroup.norm_lift_apply_le](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/root-quotientaddgroup-norm-lift-apply-le--18928aee0d0104092f59c21a.md) | 362 | `result-track:18928aee0d0104092f59c21a5687dd9c6a5ccc393d80d66891902615d3be767d` |
| 46 | `theorem` | [norm_normedMk](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/norm-normedmk--35fe9796c1ff47e56e827b2f.md) | 374 | `result-track:35fe9796c1ff47e56e827b2f302690f8ba0cacd2f2bf1af4b3bd8b72edcba0b6` |
| 47 | `theorem` | [norm_trivial_quotient_mk](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/norm-trivial-quotient-mk--2c3e28c89034b8388c62d4e7.md) | 384 | `result-track:2c3e28c89034b8388c62d4e7a1baf51bf6da6cf2f9d213f6ae612d308e1852c2` |
| 48 | `structure` | [IsQuotient](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/isquotient--83b76daf2c4e39e383fbdfae.md) | 399 | `declaration-track:83b76daf2c4e39e383fbdfae34f5bc279c558be4c8fcc6cb923293338389e247` |
| 49 | `def` | [lift](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/lift--ed8ba2fad5bc5a3014cd9d81.md) | 405 | `declaration-track:ed8ba2fad5bc5a3014cd9d81c9e00f4452f04e1baabc5709f6ec796ebd79411a` |
| 50 | `theorem` | [lift_mk](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/lift-mk--84e677f38ae85984f98c9405.md) | 410 | `result-track:84e677f38ae85984f98c94059c655e262ca280dd32eacb46937fb8cb13a9a76c` |
| 51 | `theorem` | [lift_unique](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/lift-unique--7ac0c61a38a5dd9d394b2e76.md) | 415 | `result-track:7ac0c61a38a5dd9d394b2e76c360d141eaef0e7f51e3ff3a256353c5dc5784da` |
| 52 | `theorem` | [isQuotientQuotient](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/isquotientquotient--5b12eba8cece58dc865e3964.md) | 425 | `result-track:5b12eba8cece58dc865e3964aaf6e3bd19938a9f11b064647b4f8ce668eac98c` |
| 53 | `theorem` | [IsQuotient.norm_lift](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/isquotient-norm-lift--942ad6cff4ac1660959fad97.md) | 428 | `result-track:942ad6cff4ac1660959fad97e3dde214bacae7ba9979c45f76a6b3425c46f6e8` |
| 54 | `theorem` | [IsQuotient.norm_le](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/isquotient-norm-le--75489549463a6a7c62cb8602.md) | 439 | `result-track:75489549463a6a7c62cb8602c141148be0291b3b214efe85547aebe9ba37cd15` |
| 55 | `theorem` | [norm_lift_le](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/norm-lift-le--3c06d2ffbc6bc547dab1aa7a.md) | 448 | `result-track:3c06d2ffbc6bc547dab1aa7a1b0a1688350709464eee0e5d49c6df85cdbdf1bd` |
| 56 | `theorem` | [lift_norm_le](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/lift-norm-le--f344feb8f6ec97147630ee8c.md) | 454 | `result-track:f344feb8f6ec97147630ee8c8112162f92b80aee7db05599033dba951e6b88d3` |
| 57 | `theorem` | [lift_normNoninc](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/lift-normnoninc--86ab94ff7d561eef93c65640.md) | 459 | `result-track:86ab94ff7d561eef93c65640b819ea0d48d72be596a9e6427dee7be2436f04a7` |
| 58 | `instance` | [Submodule.Quotient.seminormedAddCommGroup](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/submodule-quotient-seminormedaddcommgroup--7b62db6e6bf3895927a8bcbf.md) | 485 | `declaration-track:7b62db6e6bf3895927a8bcbfae657fcda8332c6d077d9dbce542a5b006951e00` |
| 59 | `instance` | [Submodule.Quotient.normedAddCommGroup](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/submodule-quotient-normedaddcommgroup--c03d35e9186854d57b6452b5.md) | 488 | `declaration-track:c03d35e9186854d57b6452b55124c94a0e0ddadfced15784949fe7e4f54daca4` |
| 60 | `instance` | [Submodule.Quotient.completeSpace](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/submodule-quotient-completespace--99cff8746a5763fd5557204a.md) | 492 | `declaration-track:99cff8746a5763fd5557204ad19acb2d728a800e02c7321f4adc14c82727415e` |
| 61 | `theorem` | [Submodule.Quotient.norm_mk_lt](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/submodule-quotient-norm-mk-lt--131b40f70616cd46d67391ea.md) | 497 | `result-track:131b40f70616cd46d67391ea4c53ce52ab0d92d3543070794bf09537d0177f21` |
| 62 | `theorem` | [Submodule.Quotient.norm_mk_le](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/submodule-quotient-norm-mk-le--29358b4961def0dbe8aee7c9.md) | 501 | `result-track:29358b4961def0dbe8aee7c902af5b8da593e8d39a6188db67d2df012fc89086` |
| 63 | `instance` | [Submodule.Quotient.instIsBoundedSMul](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/submodule-quotient-instisboundedsmul--4b71baf56e31c82ecd018a62.md) | 504 | `declaration-track:4b71baf56e31c82ecd018a62ec5e3a9d92dcbffba75dbbabd327af8a7bc1fadc` |
| 64 | `instance` | [Submodule.Quotient.normedSpace](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/submodule-quotient-normedspace--ceef275db236cef4c1273203.md) | 521 | `declaration-track:ceef275db236cef4c1273203e3b8f300b6defea05f2769a4ee3ba316583bbe1e` |
| 65 | `theorem` | [Ideal.Quotient.norm_mk_lt](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/ideal-quotient-norm-mk-lt--3300bce2d76d90c7851301a8.md) | 531 | `result-track:3300bce2d76d90c7851301a835f98b6bfe003678eff23a6f16b376978974322a` |
| 66 | `theorem` | [Ideal.Quotient.norm_mk_le](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/ideal-quotient-norm-mk-le--418fd8996b1898b28c243c0f.md) | 535 | `result-track:418fd8996b1898b28c243c0f3ea5391506edb9f777de91c54273f2d93222427f` |
| 67 | `instance` | [Ideal.Quotient.semiNormedCommRing](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/ideal-quotient-seminormedcommring--78d733051be11bacc01092a3.md) | 537 | `declaration-track:78d733051be11bacc01092a39dfb06fec7796eb098ce3156fc96a29b1ca436d4` |
| 68 | `instance` | [Ideal.Quotient.normedCommRing](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/ideal-quotient-normedcommring--e36ed53f8477797d475f6c18.md) | 554 | `declaration-track:e36ed53f8477797d475f6c18675b3c10976f7949b255ada621af96ec5d58961a` |
| 69 | `instance` | [Ideal.Quotient.normedAlgebra](../../../../mathematics/Analysis/Quotient/Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.lean/declarations/ideal-quotient-normedalgebra--bfc132f4bf2750e59b7ff2c0.md) | 559 | `declaration-track:bfc132f4bf2750e59b7ff2c0b6c9ca10474dac22785f42a92d59198e017ce8ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
