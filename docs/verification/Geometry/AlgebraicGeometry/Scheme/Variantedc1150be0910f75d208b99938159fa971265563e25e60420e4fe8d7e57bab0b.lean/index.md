# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Scheme.Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d04853b05049acf9ec8298481993c79c9cab0d4",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d04853b05049acf9ec8298481993c79c9cab0d4`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.ProjectiveSpectrum.StructureSheaf` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.GammaSpecAdjunction` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Radical` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/macro--26760896dc3b5cfd26468325.md) | 132 | `declaration-track:26760896dc3b5cfd26468325dda0d4248a2ede438dbc512b88f54df18b60f9a7` |
| 2 | `def` | [carrier](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/carrier--49ffc5fb20b303fdef164648.md) | 176 | `declaration-track:49ffc5fb20b303fdef164648f7f3915a0daebe8a042997c3ec079daa75719d80` |
| 3 | `theorem` | [mk_mem_carrier](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/mk-mem-carrier--1fddceeaa26a688f4465f429.md) | 181 | `result-track:1fddceeaa26a688f4465f4295329f3da42d6fe5054c3734429e6458dce0ad895` |
| 4 | `theorem` | [isPrime_carrier](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/isprime-carrier--26de350018ed5f0d64ffd802.md) | 192 | `result-track:26de350018ed5f0d64ffd8029e299e4af2500a1d5c61dec8c72bfb9ca25e8425` |
| 5 | `def` | [toFun](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/tofun--2820b84622d763fe43082834.md) | 204 | `declaration-track:2820b84622d763fe430828347421d6802919eff126da38e2468b04865a85239f` |
| 6 | `theorem` | [preimage_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/preimage-basicopen--30429da0969ad60713120474.md) | 212 | `result-track:30429da0969ad607131204745fb1c64d22419bdf613c228b06c92f2c05e1af11` |
| 7 | `def` | [toSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/tospec--34d1f30310fd9d1214c37344.md) | 224 | `declaration-track:34d1f30310fd9d1214c37344701d126de5d049b349da7ea9ca3ae34f1baa3b55` |
| 8 | `lemma` | [toSpec_preimage_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/tospec-preimage-basicopen--4e9598928d07fa4d8ca6c5ff.md) | 235 | `result-track:4e9598928d07fa4d8ca6c5ffd78795aec52d5400a49bbcb00e44426cb4aa06f4` |
| 9 | `macro` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/macro--0d06b347b781ffd1c65244f2.md) | 255 | `declaration-track:0d06b347b781ffd1c65244f2b26b09a6aa88fffc6c6e2a77751ac48b13fd21e8` |
| 10 | `macro` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/macro--8105f8c2b4f3660a848776e3.md) | 259 | `declaration-track:8105f8c2b4f3660a848776e3aab479ff0354d5163cd4cc71ea192ceb44aff942` |
| 11 | `def` | [carrier](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/carrier--f5410c95d7331723acebdc0d.md) | 275 | `declaration-track:f5410c95d7331723acebdc0dd0683bb08b016c2837ade03ff23fa3973a93379e` |
| 12 | `theorem` | [mem_carrier_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/mem-carrier-iff--cf9d40c222fd4c55a3ccc594.md) | 279 | `result-track:cf9d40c222fd4c55a3ccc594db131bdf61bbcb97da0b3c23ff0748357eb1dae0` |
| 13 | `theorem` | [mem_carrier_iff'](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/mem-carrier-iff--0502ee502b5ca3aea1460459.md) | 285 | `result-track:0502ee502b5ca3aea1460459acd5a22106ae55d5383bedafb60f09f9f8e07643` |
| 14 | `theorem` | [mem_carrier_iff_of_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/mem-carrier-iff-of-mem--9b359011e2bb821412dd9fbc.md) | 299 | `result-track:9b359011e2bb821412dd9fbc8001bcddedfcad57ab9e28e247fee3170fe5d0fb` |
| 15 | `theorem` | [mem_carrier_iff_of_mem_mul](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/mem-carrier-iff-of-mem-mul--089f49208529ad7fc13f16de.md) | 312 | `result-track:089f49208529ad7fc13f16dec9483b360c131d6c9de025ace0e1bde814006ac5` |
| 16 | `theorem` | [num_mem_carrier_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/num-mem-carrier-iff--b1a8aa0f7f781f5c1d58da6e.md) | 324 | `result-track:b1a8aa0f7f781f5c1d58da6eb365a56c62b2bd3fd1252868ca05e5cad0fbf917` |
| 17 | `theorem` | [carrier.add_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/carrier-add-mem--4055ac8d079d61d8ce81f0a4.md) | 336 | `result-track:4055ac8d079d61d8ce81f0a43c0f0bc06e5cf205727a221029535972fdaf778f` |
| 18 | `theorem` | [carrier.zero_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/carrier-zero-mem--41f0cb44ce938ec3124f870d.md) | 390 | `result-track:41f0cb44ce938ec3124f870d2cad01f377389f4325b3afe147d430c8b11d5ca3` |
| 19 | `theorem` | [carrier.smul_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/carrier-smul-mem--c8b4b96447b5512533bf355c.md) | 396 | `result-track:c8b4b96447b5512533bf355c06f55a7b7e5a842727af482fe46f71359690741d` |
| 20 | `def` | [carrier.asIdeal](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/carrier-asideal--09c0bb7b6ae805a122af7239.md) | 427 | `declaration-track:09c0bb7b6ae805a122af7239fd2bd07f9bd1df1f089fbe9c778fc0088c5bf0fe` |
| 21 | `theorem` | [carrier.asIdeal.homogeneous](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/carrier-asideal-homogeneous--2f5bc317a7bc836294e46412.md) | 434 | `result-track:2f5bc317a7bc836294e464124944c1256004959e0dc75829313eca3702a4570b` |
| 22 | `def` | [carrier.asHomogeneousIdeal](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/carrier-ashomogeneousideal--fd806db3ad572378e2422f74.md) | 443 | `declaration-track:fd806db3ad572378e2422f74387b62abddbd0c0277f1f0bddb00c428f43fb472` |
| 23 | `theorem` | [carrier.denom_notMem](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/carrier-denom-notmem--9d6b2536cb988cd234d6e9b6.md) | 446 | `result-track:9d6b2536cb988cd234d6e9b672da5ef2a72e4cd2b89e8a08f2daacdba94f08e5` |
| 24 | `theorem` | [carrier.relevant](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/carrier-relevant--95e1e0b4b275293acf5b72a5.md) | 459 | `result-track:95e1e0b4b275293acf5b72a5d9c62a4c5693d0848aa4aca95dada300bd221abc` |
| 25 | `theorem` | [carrier.asIdeal.ne_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/carrier-asideal-ne-top--f932fd443a72a820f1b2e316.md) | 462 | `result-track:f932fd443a72a820f1b2e3167bac31608d6f9b1b32022376e02ef4160e55346a` |
| 26 | `theorem` | [carrier.asIdeal.prime](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/carrier-asideal-prime--0ce6cfb948b2d2b7cc615c90.md) | 465 | `result-track:0ce6cfb948b2d2b7cc615c904241ab7cb3eb9adc31cd6d98c3616829ad3722f4` |
| 27 | `def` | [toFun](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/tofun--4035596337ce8c572b4c767a.md) | 487 | `declaration-track:4035596337ce8c572b4c767a4d6928fa17cb70f2bcab1e02692931338b7fa8ce` |
| 28 | `lemma` | [toSpec_fromSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/tospec-fromspec--7f283b5deecb54a9eca34229.md) | 496 | `result-track:7f283b5deecb54a9eca34229699423f0f422ebfdbd81aff884d742b909601b59` |
| 29 | `lemma` | [fromSpec_toSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/fromspec-tospec--702235db7be08cb08e95638f.md) | 509 | `result-track:702235db7be08cb08e95638fd341311708eae776cd4cab5f99d91fade9a2a485` |
| 30 | `lemma` | [toSpec_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/tospec-injective--3eb2aa095f786d75af3a8fd8.md) | 516 | `result-track:3eb2aa095f786d75af3a8fd8da842010659e6be3bf85a3c46a7b9e9a5405224d` |
| 31 | `lemma` | [toSpec_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/tospec-surjective--09b332028390183e74d1cab6.md) | 522 | `result-track:09b332028390183e74d1cab6e629af4be46b1d527837ca9f099aff3e91a4081b` |
| 32 | `lemma` | [toSpec_bijective](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/tospec-bijective--c64f04ce06984c8d7cc1e730.md) | 527 | `result-track:c64f04ce06984c8d7cc1e73046c5e9bb93c21a5f6de9d4d3c70d6dfadfd4fd16` |
| 33 | `lemma` | [image_basicOpen_eq_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/image-basicopen-eq-basicopen--1c907f27b70cae6e2cd0f6ab.md) | 539 | `result-track:1c907f27b70cae6e2cd0f6ab34926933204deb76b86c06a5ff5c2bc19d0cee94` |
| 34 | `def` | [fromSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/fromspec--75412440d9612d049f586922.md) | 555 | `declaration-track:75412440d9612d049f586922141c8740af295a4e5de61bec7a7e8611992de9b6` |
| 35 | `def` | [projIsoSpecTopComponent](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/projisospectopcomponent--ab6bc75d181086cd635229f4.md) | 581 | `declaration-track:ab6bc75d181086cd635229f45c5372e61f2c3c1b12058e8bf51f8d0998b04f38` |
| 36 | `def` | [awayToSection](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/awaytosection--7e2768916d2afa39da3a682f.md) | 596 | `declaration-track:7e2768916d2afa39da3a682fde16e2445551c2681f6f3f17b6820a86b6d7037b` |
| 37 | `lemma` | [awayToSection_germ](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/awaytosection-germ--9814fb8f632c8ffeeabc8687.md) | 612 | `result-track:9814fb8f632c8ffeeabc8687efd4aa3764fece9da51fe8f53d2caedf70d2f8c6` |
| 38 | `lemma` | [awayToSection_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/awaytosection-apply--f23aaca45bfd25e10ab28039.md) | 620 | `result-track:f23aaca45bfd25e10ab2803957adb3fbacfdde2461d89ac7968dc3a408b7b162` |
| 39 | `def` | [awayToΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/awayto--d0ba4dcf9b48e7e751f43afc.md) | 636 | `declaration-track:d0ba4dcf9b48e7e751f43afc37a024b01468b7fccb5c60f998450643b85492e8` |
| 40 | `lemma` | [awayToΓ_ΓToStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/awayto-tostalk--d4acaf0012be3c6eab9fc98b.md) | 640 | `result-track:d4acaf0012be3c6eab9fc98b721750a7613d784331ff242e4d77493f0c9ff9f2` |
| 41 | `def` | [toSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/tospec--806ff0146242a53fa5f3879d.md) | 656 | `declaration-track:806ff0146242a53fa5f3879d19a65860ee20a57180a5c8c60ed73ab3082b6f56` |
| 42 | `lemma` | [toSpec_base_apply_eq_comap](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/tospec-base-apply-eq-comap--6e3082bffa6df62e222741cd.md) | 662 | `result-track:6e3082bffa6df62e222741cd5ddbde2d264ed9534ae988e88951ba502a73dbbc` |
| 43 | `lemma` | [toSpec_base_apply_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/tospec-base-apply-eq--710b272a3aeddfc38f3b453c.md) | 672 | `result-track:710b272a3aeddfc38f3b453c6674f4d465a5c735e0780cceac3f8eb4c6f77581` |
| 44 | `lemma` | [toSpec_base_isIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/tospec-base-isiso--6c45e96ae262754ac1d15d10.md) | 683 | `result-track:6c45e96ae262754ac1d15d104ffcb1383c5e90c5bf6d3aeb52a73fbff7ca08d8` |
| 45 | `lemma` | [mk_mem_toSpec_base_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/mk-mem-tospec-base-apply--821ba90fab1f97c9c40bd8de.md) | 688 | `result-track:821ba90fab1f97c9c40bd8def8a8e7f0f95097da98395df018082e78f4f2e852` |
| 46 | `lemma` | [toSpec_preimage_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/tospec-preimage-basicopen--364cdf794a6ca9c70b10626b.md) | 694 | `result-track:364cdf794a6ca9c70b10626b874ef08f7b7a88b9c84123f117e05006ca87ba7e` |
| 47 | `lemma` | [toOpen_toSpec_val_c_app](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/toopen-tospec-val-c-app--719816c4ceffdbed5c95b2eb.md) | 703 | `result-track:719816c4ceffdbed5c95b2eb277631ba30a1e4929845ac5a29ec7a35995949e4` |
| 48 | `lemma` | [toStalk_stalkMap_toSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/tostalk-stalkmap-tospec--57a466d9fb64c45acecda3c2.md) | 709 | `result-track:57a466d9fb64c45acecda3c250117d045e8dc64fff8f06d370d695fbf04f5982` |
| 49 | `lemma` | [isLocalization_atPrime](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/islocalization-atprime--d18b2063c71dcf4d6a10d02d.md) | 724 | `result-track:d18b2063c71dcf4d6a10d02d1493701f349474a5db12dd4691591fa36aca73c3` |
| 50 | `def` | [specStalkEquiv](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/specstalkequiv--2ecb3b42309ffd7fe15e260b.md) | 783 | `declaration-track:2ecb3b42309ffd7fe15e260b36efa7dca6af91c22ce98461c7a55149254d87cd` |
| 51 | `lemma` | [toStalk_specStalkEquiv](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/tostalk-specstalkequiv--a5016e9d5a8d3acd24567c28.md) | 795 | `result-track:a5016e9d5a8d3acd24567c2899c28eab051cc9bce46f88c58795d17c208b760a` |
| 52 | `lemma` | [stalkMap_toSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/stalkmap-tospec--f97c6449596fabd98ca9a52b.md) | 807 | `result-track:f97c6449596fabd98ca9a52bffa7fd150fcc07366d4fccd901db576dda2a115d` |
| 53 | `lemma` | [isIso_toSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/isiso-tospec--216ad612f86bd654d53fbb28.md) | 818 | `result-track:216ad612f86bd654d53fbb28b78629b2a64ac37052594005ac67d5dc58d03b28` |
| 54 | `def` | [projIsoSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/projisospec--9ddb70969634e8d778e4dfa1.md) | 835 | `declaration-track:9ddb70969634e8d778e4dfa1232d5626f12488b4339e2b4fe2d63428bccd3cb3` |
| 55 | `def` | [«Proj»](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/declarations/proj--d9faecc8af4e07c5750a4f66.md) | 842 | `declaration-track:d9faecc8af4e07c5750a4f66b4fc1754b96d7e190b9adeae97852bd0bceaf182` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
