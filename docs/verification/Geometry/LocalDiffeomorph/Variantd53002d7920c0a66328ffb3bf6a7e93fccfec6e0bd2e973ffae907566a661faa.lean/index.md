# Verification target: GRWTSK.Geometry.LocalDiffeomorph.Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6538e9e5b58fcde99c1a27f672228f0f3912f1cb",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/index.md) · [Full source](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6538e9e5b58fcde99c1a27f672228f0f3912f1cb`.

Source path: `GRWTSK/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Diffeomorph` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.IsLocalHomeomorph` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PartialDiffeomorph](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/partialdiffeomorph--76dc75d11e13a8e3790ddf42.md) | 81 | `declaration-track:76dc75d11e13a8e3790ddf42034f08da5883a9029daa3227f85530320bb1293b` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/instance--eacf085877aa9c704b5d6647.md) | 90 | `declaration-track:eacf085877aa9c704b5d6647d96dd27a94c5e1ffbc34aeb478578178ba50bf2d` |
| 3 | `def` | [Diffeomorph.toPartialDiffeomorph](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/diffeomorph-topartialdiffeomorph--5195ea759cd39abd6c274417.md) | 96 | `declaration-track:5195ea759cd39abd6c274417840e076a36e4abceadf5ce4c4ee5979b65cc682e` |
| 4 | `def` | [toPartialHomeomorph](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/topartialhomeomorph--498800039f2e8bbafb558adc.md) | 109 | `declaration-track:498800039f2e8bbafb558adcb08c60c5e3465ad316fab058905be480cfd4dd97` |
| 5 | `def` | [symm](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/symm--88e30d8dcec059290674abb8.md) | 117 | `declaration-track:88e30d8dcec059290674abb8e6729b91768de8d96510b263378de19f7460451e` |
| 6 | `theorem` | [contMDiffOn](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/contmdiffon--103f0cd970fde33840c773bd.md) | 124 | `result-track:103f0cd970fde33840c773bd3352730255e0ca0ed7df389fb019f2790279eaf3` |
| 7 | `theorem` | [mdifferentiableOn](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/mdifferentiableon--3a7cf0bae9aa9c325d8f6dd5.md) | 127 | `result-track:3a7cf0bae9aa9c325d8f6dd5ab10a575cb17d6595d9e151e7361961c5d941821` |
| 8 | `theorem` | [mdifferentiableAt](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/mdifferentiableat--ebfff1f8d1c63842b9f0cdd6.md) | 130 | `result-track:ebfff1f8d1c63842b9f0cdd6105f912bb0f71f2aca32d5523faed12e2b6ef389` |
| 9 | `def` | [IsLocalDiffeomorphAt](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorphat--0a8d410df402fdfb58d1d231.md) | 145 | `declaration-track:0a8d410df402fdfb58d1d2311cdae8d79892edbb72e6163293c184273031ce1f` |
| 10 | `lemma` | [PartialDiffeomorph.isLocalDiffeomorphAt](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/partialdiffeomorph-islocaldiffeomorphat--5da7b1ee1d4fcd04d9088938.md) | 148 | `result-track:5da7b1ee1d4fcd04d908893816903af2f65829769d2fdcb7fcd386aabe988cca` |
| 11 | `def` | [localInverse](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/localinverse--ec1458c6ffb578f18fc6c05a.md) | 159 | `declaration-track:ec1458c6ffb578f18fc6c05adb9d06cc2c472c46c381df231e59513024ab52f9` |
| 12 | `lemma` | [localInverse_open_source](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/localinverse-open-source--cc7032c608578695b8b3a5b2.md) | 162 | `result-track:cc7032c608578695b8b3a5b2647412c0de1e382ffa74c0ea6c4a3c98327b4abd` |
| 13 | `lemma` | [localInverse_mem_source](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/localinverse-mem-source--5b66e28e60670f04e2d1068e.md) | 166 | `result-track:5b66e28e60670f04e2d1068ec1681c34902ab3dafd8c80259876183af465a0cd` |
| 14 | `lemma` | [localInverse_mem_target](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/localinverse-mem-target--a4fda0d8c0ed98f448c92f40.md) | 171 | `result-track:a4fda0d8c0ed98f448c92f40a3919a12acbcb0897a404308f7ff3183363a9759` |
| 15 | `lemma` | [contmdiffOn_localInverse](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/contmdiffon-localinverse--f394f5324c9c5c9382302992.md) | 175 | `result-track:f394f5324c9c5c9382302992be411971501851faad333609735d44f867828441` |
| 16 | `lemma` | [localInverse_right_inv](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/localinverse-right-inv--02abe701d70eafd10b1fce2c.md) | 179 | `result-track:02abe701d70eafd10b1fce2c60c0a261c4fec081988fbb56d2f2fdf084073a96` |
| 17 | `lemma` | [localInverse_eqOn_right](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/localinverse-eqon-right--6945adb55b9f3ecaf6e52368.md) | 187 | `result-track:6945adb55b9f3ecaf6e52368b2d6da7714f759afb25015976e62b4a4af6f64eb` |
| 18 | `lemma` | [localInverse_eventuallyEq_right](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/localinverse-eventuallyeq-right--4cfdbdea403db8304433c6c7.md) | 191 | `result-track:4cfdbdea403db8304433c6c7720c3f97d4c9de3caf27edb2f8b24124fc658c37` |
| 19 | `lemma` | [localInverse_left_inv](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/localinverse-left-inv--7dd8f24358b3a8c13f2914c7.md) | 197 | `result-track:7dd8f24358b3a8c13f2914c7808e505dba73ad8c9e20d3b004bd195d56a22d4a` |
| 20 | `lemma` | [localInverse_eqOn_left](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/localinverse-eqon-left--2fa83837b19fafbecb6b7b0f.md) | 202 | `result-track:2fa83837b19fafbecb6b7b0f2c34bcd131377fba80803c20a219395e06c1e517` |
| 21 | `lemma` | [localInverse_eventuallyEq_left](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/localinverse-eventuallyeq-left--4843b8b4641cdbfb6988b806.md) | 206 | `result-track:4843b8b4641cdbfb6988b80681581f697112cf2411388cf4e2535e9581361a3e` |
| 22 | `lemma` | [localInverse_isLocalDiffeomorphAt](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/localinverse-islocaldiffeomorphat--6e4a9abee5a9aa54b02f729f.md) | 211 | `result-track:6e4a9abee5a9aa54b02f729fa7502bbfd3bcc535e40fccb4c01c9c859d0da789` |
| 23 | `lemma` | [localInverse_contMDiffOn](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/localinverse-contmdiffon--2b91de2605a40405f8fdf68b.md) | 215 | `result-track:2b91de2605a40405f8fdf68bc83f2e238c14437156c3a198e2a2cbafc2cf01b0` |
| 24 | `lemma` | [localInverse_contMDiffAt](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/localinverse-contmdiffat--855362e701999ac30c4962d6.md) | 219 | `result-track:855362e701999ac30c4962d6f224854800eb55c37aa8c9fe1f72b6aeb85c7c08` |
| 25 | `lemma` | [localInverse_mdifferentiableAt](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/localinverse-mdifferentiableat--27613600f715867ef3835465.md) | 224 | `result-track:27613600f715867ef3835465e5fc6a13ce18108d72177a97be989a0c84bda137` |
| 26 | `def` | [IsLocalDiffeomorphOn](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorphon--50ba4313d693358c2683ae9f.md) | 232 | `declaration-track:50ba4313d693358c2683ae9fd8c4ae761b115972d27ee16f3a49b729fb087f88` |
| 27 | `def` | [IsLocalDiffeomorph](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorph--9133a7106b55a515a5e49b58.md) | 237 | `declaration-track:9133a7106b55a515a5e49b581defa88bb3874244ab3c5e04e06732a71bb75526` |
| 28 | `lemma` | [isLocalDiffeomorphOn_iff](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorphon-iff--404c4b5dfd53ffb68bb7b65f.md) | 241 | `result-track:404c4b5dfd53ffb68bb7b65f70af73a682db3f9bcce4239d3783213721d8250b` |
| 29 | `lemma` | [isLocalDiffeomorph_iff](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorph-iff--ee678ff06d1e2dffa90c76f0.md) | 245 | `result-track:ee678ff06d1e2dffa90c76f0d27fa952924bcd439b4c27aaeef25b0aea7a285b` |
| 30 | `theorem` | [isLocalDiffeomorph_iff_isLocalDiffeomorphOn_univ](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorph-iff-islocaldiffeomorphon-univ--9f38deb207117ddc5e3bbd59.md) | 249 | `result-track:9f38deb207117ddc5e3bbd59a096974d825a4cabcb6582b04a47030c729d837e` |
| 31 | `lemma` | [IsLocalDiffeomorph.isLocalDiffeomorphOn](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorph-islocaldiffeomorphon--5d1ee7477492077d7adc5584.md) | 254 | `result-track:5d1ee7477492077d7adc5584e23fe1fe7efb2cfc916d0f431ec5fa4c63a9986b` |
| 32 | `lemma` | [IsLocalDiffeomorphAt.contMDiffAt](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorphat-contmdiffat--1d09b7d7766b1aeb329156f2.md) | 264 | `result-track:1d09b7d7766b1aeb329156f20a52e2dfab84c3a29387afa8bfd760740baf40e1` |
| 33 | `lemma` | [IsLocalDiffeomorphAt.mdifferentiableAt](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorphat-mdifferentiableat--078c69390c2a8a1de9b60e42.md) | 271 | `result-track:078c69390c2a8a1de9b60e42bdd48a4513c5db9338a99ef5a882b40c62ca9c46` |
| 34 | `lemma` | [IsLocalDiffeomorphOn.contMDiffOn](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorphon-contmdiffon--a7984de031d505847b450261.md) | 276 | `result-track:a7984de031d505847b4502616bb53fe100f9c5e0f99589e9263e9c5d1e24923f` |
| 35 | `lemma` | [IsLocalDiffeomorphOn.mdifferentiableOn](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorphon-mdifferentiableon--437d443f20d65c142cf62389.md) | 281 | `result-track:437d443f20d65c142cf6238932b264dd1743e54523c7be19ab30ab9b76f638d2` |
| 36 | `lemma` | [IsLocalDiffeomorph.contMDiff](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorph-contmdiff--1ede6e011b31dcae431b66f0.md) | 286 | `result-track:1ede6e011b31dcae431b66f0ec97a143495be7d44aee76cc7e4c7b52814c8fef` |
| 37 | `lemma` | [IsLocalDiffeomorph.mdifferentiable](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorph-mdifferentiable--c68bc0f197a97a3b97a82131.md) | 290 | `result-track:c68bc0f197a97a3b97a821316dac0393fbe40a53d44aaf2ed28c2677169f8f6f` |
| 38 | `lemma` | [Diffeomorph.isLocalDiffeomorph](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/diffeomorph-islocaldiffeomorph--e131b84efe17c432dc7c6ef4.md) | 295 | `result-track:e131b84efe17c432dc7c6ef4dd5afe1222816988a1d02363084313e5118c0728` |
| 39 | `theorem` | [IsLocalDiffeomorphOn.isLocalHomeomorphOn](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorphon-islocalhomeomorphon--9f6551b763671686f587dae2.md) | 301 | `result-track:9f6551b763671686f587dae264deb78a0cecca847c54a460f63e66202658f1cc` |
| 40 | `theorem` | [IsLocalDiffeomorph.isLocalHomeomorph](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorph-islocalhomeomorph--ac78fd965069b87e70425e8e.md) | 309 | `result-track:ac78fd965069b87e70425e8e1a583e6e1ddc887a8f81cd33dbe5fb30cd809f71` |
| 41 | `lemma` | [IsLocalDiffeomorph.isOpenMap](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorph-isopenmap--3e7254fbc00c57e3c0ffec1e.md) | 316 | `result-track:3e7254fbc00c57e3c0ffec1e6603875eca577af4c77933bc90b49212f40de33d` |
| 42 | `lemma` | [IsLocalDiffeomorph.isOpen_range](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorph-isopen-range--023afa3fe1264cbf446b23c2.md) | 320 | `result-track:023afa3fe1264cbf446b23c2fb0b0fff8e00c2148239e6ed2ebfab32536ee85f` |
| 43 | `def` | [IsLocalDiffeomorph.image](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorph-image--ddfb5bc4d6184b5a2e85165e.md) | 324 | `declaration-track:ddfb5bc4d6184b5a2e85165ed7da520a29374fa9cf967d9449c5007304d25bd7` |
| 44 | `lemma` | [IsLocalDiffeomorph.image_coe](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorph-image-coe--ae85e3fce08b9d626c9d61c7.md) | 327 | `result-track:ae85e3fce08b9d626c9d61c7e87d6b986bb798faa3f40ced09939a1772cfbd00` |
| 45 | `def` | [IsLocalDiffeomorph.diffeomorph_of_bijective](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorph-diffeomorph-of-bijective--ad8abf2d86bb6e1653e5aff3.md) | 334 | `declaration-track:ad8abf2d86bb6e1653e5aff312214cc30eba99a78d03b3ba80cbc41ef34c1e8c` |
| 46 | `def` | [IsLocalDiffeomorphAt.mfderivToContinuousLinearEquiv](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorphat-mfderivtocontinuouslinearequiv--099f9c38eaea8cc7d017c252.md) | 375 | `declaration-track:099f9c38eaea8cc7d017c2523008ebf640ef3f4f8f2fb064e62e7e767aae8e07` |
| 47 | `lemma` | [IsLocalDiffeomorphAt.mfderivToContinuousLinearEquiv_coe](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorphat-mfderivtocontinuouslinearequiv-coe--726ddc0e9c2dfaf68b58b960.md) | 400 | `result-track:726ddc0e9c2dfaf68b58b9606e396bdd14c48a52961fd7d03883d22a66c306b1` |
| 48 | `def` | [Diffeomorph.mfderivToContinuousLinearEquiv](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/diffeomorph-mfderivtocontinuouslinearequiv--bf8fa1ff0db24915da2248cd.md) | 406 | `declaration-track:bf8fa1ff0db24915da2248cd79fd33b7e4fe7b07a83fadce7a1151ec1200510b` |
| 49 | `lemma` | [Diffeomorph.mfderivToContinuousLinearEquiv_coe](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/diffeomorph-mfderivtocontinuouslinearequiv-coe--7ed3e6aa315302b1fa72e95e.md) | 411 | `result-track:7ed3e6aa315302b1fa72e95ee659bbef1878bc29dbd68ce8a6d7d489d77cb12f` |
| 50 | `def` | [IsLocalDiffeomorph.mfderivToContinuousLinearEquiv](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorph-mfderivtocontinuouslinearequiv--b442f17fa366173f85126997.md) | 416 | `declaration-track:b442f17fa366173f851269978fbb47af187de6eaea036f9668cfbfae288e332b` |
| 51 | `lemma` | [IsLocalDiffeomorph.mfderivToContinuousLinearEquiv_coe](../../../../mathematics/Geometry/LocalDiffeomorph/Variantd53002d7920c0a66328ffb3bf6a7e93fccfec6e0bd2e973ffae907566a661faa.lean/declarations/islocaldiffeomorph-mfderivtocontinuouslinearequiv-coe--6a4cf99bf8c93a5cdb691b8e.md) | 421 | `result-track:6a4cf99bf8c93a5cdb691b8ed6eb66b053f8965052a07eff95df792859472f9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
