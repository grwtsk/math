# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e1aab7da8b6a1818d9b96eee5b42a81c9d49d52",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e1aab7da8b6a1818d9b96eee5b42a81c9d49d52`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Counit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Invertible` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/mapfun--c0de4fe3fd8137d9d215f8b9.md) | 65 | `declaration-track:c0de4fe3fd8137d9d215f8b983c5b1831d448927858fdf26a763c4a38259963c` |
| 2 | `theorem` | [injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/injective--ed0b4f4d9bd5c6a970d68056.md) | 70 | `result-track:ed0b4f4d9bd5c6a970d68056db0a55dc4ae608ad15bf5a4b98c93d22406edd7b` |
| 3 | `theorem` | [surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/surjective--b4e0b4e5d0cf3ca0ab1b2456.md) | 75 | `result-track:b4e0b4e5d0cf3ca0ab1b2456f405bc0ea0d1d2fbeb9de241845c2706ca47769b` |
| 4 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/macro--7f97d4cb720c0e0bb3e54f14.md) | 81 | `declaration-track:7f97d4cb720c0e0bb3e54f14d9605fa919402e6db3c73529432f9989df156d76` |
| 5 | `theorem` | [zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/zero--8c121f884ebd2f64a6c982c9.md) | 98 | `result-track:8c121f884ebd2f64a6c982c9397eebcaa5923015559554f4c3fa0a989af545f3` |
| 6 | `theorem` | [one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/one--1e8948872e6978f363c10982.md) | 100 | `result-track:1e8948872e6978f363c109828bbe9e5604138523d55917d63052965a9b914c1c` |
| 7 | `theorem` | [add](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/add--54986005f2b7af4ab5a6fd27.md) | 102 | `result-track:54986005f2b7af4ab5a6fd270a09a8ce2c78d61f0a507080c7e9e71d9b173c80` |
| 8 | `theorem` | [sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/sub--dc923490d3fdb891de501b5d.md) | 104 | `result-track:dc923490d3fdb891de501b5d86c014af802dd085e63619bfc89002b84379ff10` |
| 9 | `theorem` | [mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/mul--d98256d7542c81f65726f4b7.md) | 106 | `result-track:d98256d7542c81f65726f4b7076f9910c959389d942bffcc3096f152a6d46b8f` |
| 10 | `theorem` | [neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/neg--1590d1851ee6ba92d48d1eed.md) | 108 | `result-track:1590d1851ee6ba92d48d1eedd288a545de1daa757cbc4e67c751f87feda6d453` |
| 11 | `theorem` | [nsmul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/nsmul--b03644caea730ed20753dc4d.md) | 110 | `result-track:b03644caea730ed20753dc4dc46301bc54a7f97e505b446a753101835b6fab65` |
| 12 | `theorem` | [zsmul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/zsmul--d4871022172d201fa4db3529.md) | 112 | `result-track:d4871022172d201fa4db3529a764a1033c5ebd683aa1bdc6338aeb90ae8afe14` |
| 13 | `theorem` | [pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/pow--1cd34e726d12eb58ac157d85.md) | 114 | `result-track:1cd34e726d12eb58ac157d85348c4a50d6c38e90bcdba68dd5e9e125e0bdd145` |
| 14 | `theorem` | [natCast](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/natcast--138253624d7e1d15046cdfef.md) | 116 | `result-track:138253624d7e1d15046cdfef140a84ef65f05ab0d7208b8557fa1c86c2d6f725` |
| 15 | `theorem` | [intCast](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/intcast--7df9392227c7b0c0cde798c1.md) | 120 | `result-track:7df9392227c7b0c0cde798c120749fbb5526d280a2d5f30666bde861653af47b` |
| 16 | `def` | [ghostFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostfun--28f1a58722fdc5c72f89e0f5.md) | 135 | `declaration-track:28f1a58722fdc5c72f89e0f5e84ffa9bb3f76b69e0b034670c3e91b21ab5a37c` |
| 17 | `elab` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/elab--8247dc1041620d8087e31336.md) | 141 | `declaration-track:8247dc1041620d8087e3133665fc206a737e2ea343d3c0766e6946b6b1235dda` |
| 18 | `theorem` | [matrix_vecEmpty_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/matrix-vecempty-coeff--76a3a6f20187aef2afccbd68.md) | 159 | `result-track:76a3a6f20187aef2afccbd6836ac59dba1bd1121129f1ac44e2e99d1a77a0357` |
| 19 | `theorem` | [ghostFun_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostfun-zero--da4ce90bc198152d8bcc753e.md) | 166 | `result-track:da4ce90bc198152d8bcc753eb953e316adc216a0629d8d49315f27a27bd2afe0` |
| 20 | `theorem` | [ghostFun_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostfun-one--dff0b0e2f169565af937a5eb.md) | 169 | `result-track:dff0b0e2f169565af937a5eb783e3fb7700f5ac5889b1bfc5f494fa62d3fa667` |
| 21 | `theorem` | [ghostFun_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostfun-add--af28e3163a1ffcf614c52a95.md) | 172 | `result-track:af28e3163a1ffcf614c52a95f06deccc29fc50aecaffbd8432f5523424a0b341` |
| 22 | `theorem` | [ghostFun_natCast](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostfun-natcast--d82c163efb2aeb63ee712eac.md) | 175 | `result-track:d82c163efb2aeb63ee712eac69a8db255bbbaa0551e321b751b36c00fc6f18b5` |
| 23 | `theorem` | [ghostFun_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostfun-sub--b27e1ccaeaf2ebc30045cf0d.md) | 179 | `result-track:b27e1ccaeaf2ebc30045cf0dfba99bac07abfb83b45fb3bfc1d7f6bfed4e4c10` |
| 24 | `theorem` | [ghostFun_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostfun-mul--8e86c15f7d773fce77879540.md) | 182 | `result-track:8e86c15f7d773fce778795400e2ed21ee246b52fc2f0140e147ed52338393a82` |
| 25 | `theorem` | [ghostFun_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostfun-neg--e1f5d56c7d473a67a913cec2.md) | 185 | `result-track:e1f5d56c7d473a67a913cec2d784852323ec8922c037c0751617520b8cde9134` |
| 26 | `theorem` | [ghostFun_intCast](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostfun-intcast--6d93606f1b371a22bac2d0bc.md) | 187 | `result-track:6d93606f1b371a22bac2d0bc7da122f4558f4a95436c5aa674e16138fa20809d` |
| 27 | `lemma` | [ghostFun_nsmul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostfun-nsmul--3e0edf3941b5ec3f4d8858be.md) | 191 | `result-track:3e0edf3941b5ec3f4d8858bef312009a6cc921ffc9a2eac230c02a1cf4c85425` |
| 28 | `lemma` | [ghostFun_zsmul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostfun-zsmul--37089b06664a79280c84b370.md) | 194 | `result-track:37089b06664a79280c84b3706c5c6bc974ffc93e50ab254737c98450b482eb3a` |
| 29 | `theorem` | [ghostFun_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostfun-pow--7aa522e915cc2b4627850008.md) | 197 | `result-track:7aa522e915cc2b4627850008cceb25b8a1099ec7690d60bcec4d50222e8b26e7` |
| 30 | `def` | [ghostEquiv'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostequiv--a27bccbdd0bc456fbc8be139.md) | 206 | `declaration-track:a27bccbdd0bc456fbc8be13905b576b809f7921fe715d4dab63c1f2c3c771fdd` |
| 31 | `def` | [comm_ring_aux₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/comm-ring-aux--e82a1cc60587652dd4672dc9.md) | 226 | `declaration-track:e82a1cc60587652dd4672dc9e367781604a755300ecf4b577e1298fd67d369ae` |
| 32 | `abbrev` | [comm_ring_aux₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/comm-ring-aux--9867f8799a979e8207bfafd6.md) | 232 | `declaration-track:9867f8799a979e8207bfafd66ad63e8de5c42d259d5e31e4f962f115a5a97d22` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/instance--31050d6e0dc6eb95bb51de18.md) | 238 | `declaration-track:31050d6e0dc6eb95bb51de1802a638328c13f5e13ffcca7e64ea25e4338dbbe0` |
| 34 | `def` | [map](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/map--ecd5c20bd6e0ad75df59483b.md) | 247 | `declaration-track:ecd5c20bd6e0ad75df59483bd114767065dd477fbb70d3db6c35933bc5e3f09a` |
| 35 | `theorem` | [map_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/map-injective--d5d0a75f1bf39b294b3dd2d0.md) | 254 | `result-track:d5d0a75f1bf39b294b3dd2d0c003b612f17f77d2e955020bd19bfbd4947842b3` |
| 36 | `theorem` | [map_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/map-surjective--5b436edbe4d22f6bc5da1d84.md) | 257 | `result-track:5b436edbe4d22f6bc5da1d843d83f3a7cc31504184ab9af926f4a6d0d1f865b4` |
| 37 | `theorem` | [map_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/map-coeff--ee27d6ce5ec4ff2e55c0718f.md) | 261 | `result-track:ee27d6ce5ec4ff2e55c0718fa90d752a109b75a146fd3853c06e0e8c20f95be7` |
| 38 | `def` | [ghostMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostmap--becc8604595d60efb144bec7.md) | 266 | `declaration-track:becc8604595d60efb144bec7c272e5c16cacc86bf388338fb91fe1e7086d6dbf` |
| 39 | `def` | [ghostComponent](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostcomponent--824610187d5cc7cd220d8c02.md) | 275 | `declaration-track:824610187d5cc7cd220d8c02e9f7e29ac845a532b958882b10450e89dec730ba` |
| 40 | `theorem` | [ghostComponent_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostcomponent-apply--ceb72a0865c0278ad967ee89.md) | 278 | `result-track:ceb72a0865c0278ad967ee8948b1ec3050a493ecc8f3189bf3147f31a78fa3ab` |
| 41 | `theorem` | [ghostMap_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostmap-apply--467946d3459b3a49bd9b60c2.md) | 282 | `result-track:467946d3459b3a49bd9b60c294dfe8b5468286c0e7442cd941da5b08d9a5f41d` |
| 42 | `def` | [ghostEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostequiv--8c3a68a760248baf46475951.md) | 291 | `declaration-track:8c3a68a760248baf46475951fb77a727c7acaff3faf3242370af30f0f290d8f8` |
| 43 | `theorem` | [ghostEquiv_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostequiv-coe--a9cee796adaefb85ff74ed26.md) | 295 | `result-track:a9cee796adaefb85ff74ed260edba3bc4127f314e97aa212925ca8fc3226bdf7` |
| 44 | `theorem` | [ghostMap.bijective_of_invertible](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/ghostmap-bijective-of-invertible--bf8aa628fb7527e454be0d27.md) | 298 | `result-track:bf8aa628fb7527e454be0d2723fa3ebbaf74ce1ee6d6dccc4956e5631d75bd2c` |
| 45 | `def` | [constantCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/constantcoeff--fb566d5ead203333eda70ff3.md) | 305 | `declaration-track:fb566d5ead203333eda70ff3d0c9b49ef69b15aa263aea53051929d731579968` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc93cd512f48dc94b6e09230eb5d1962a37a73cc62708d78ffb60e6e45f42b410.lean/declarations/instance--d597a5967426ea960ec466de.md) | 312 | `declaration-track:d597a5967426ea960ec466de9cc258ba48b5664cf5c3f4b42dd3adac9063f98a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
