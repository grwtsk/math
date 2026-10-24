# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d25bd72fc79af8863b108f61742c351bb5561bd",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d25bd72fc79af8863b108f61742c351bb5561bd`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Counit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Invertible` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/mapfun--7a5568094f3f0a40a9e5d481.md) | 73 | `declaration-track:7a5568094f3f0a40a9e5d481085dd9299edcda1fd4c7b3f4c7de548bf92aa1a0` |
| 2 | `theorem` | [injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/injective--2fa6406ad84b3e1411ecc75d.md) | 78 | `result-track:2fa6406ad84b3e1411ecc75d5030d1bf5203c06b59b98572d0fe1eb767653a10` |
| 3 | `theorem` | [surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/surjective--c955333f390357d59001e6f4.md) | 83 | `result-track:c955333f390357d59001e6f4076836f93f5013462e3c4a9ada0cd93cf0ceed54` |
| 4 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/macro--158f739e30d727e297efa063.md) | 89 | `declaration-track:158f739e30d727e297efa063fe5adbdd8ba735e188a6d4683af5496235daf261` |
| 5 | `theorem` | [zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/zero--fbcc6e95baa08cc2b8764a17.md) | 106 | `result-track:fbcc6e95baa08cc2b8764a17be2876eb063ee28ca07cd9b8465be672da5727e5` |
| 6 | `theorem` | [one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/one--564ca66e9e798981c3b34b5d.md) | 108 | `result-track:564ca66e9e798981c3b34b5dbc4425773d5da1ae6a4b6a57d0c730c0faec0202` |
| 7 | `theorem` | [add](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/add--285f49eca575e29f93b4c054.md) | 110 | `result-track:285f49eca575e29f93b4c0540ab7da1cc61440c089517c4465d6d3ff8ff15219` |
| 8 | `theorem` | [sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/sub--e88472aaa1ccc279da6e8801.md) | 112 | `result-track:e88472aaa1ccc279da6e88017168c35fa9757688e81e4cc063a5615ed9adc79d` |
| 9 | `theorem` | [mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/mul--de0feca271c51aacac083e02.md) | 114 | `result-track:de0feca271c51aacac083e02ccedcdb2912722141542f21822b5fe20ca9a8ba2` |
| 10 | `theorem` | [neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/neg--5317670799c72740182c4c5a.md) | 116 | `result-track:5317670799c72740182c4c5a4c78f0f1460de5b5d76044801c923aa5bd9ca1d2` |
| 11 | `theorem` | [nsmul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/nsmul--a70ddfd36fbfc9501e5fa553.md) | 118 | `result-track:a70ddfd36fbfc9501e5fa5530074ce3247f5c3d581e490f60bfd34b59eb4bbc9` |
| 12 | `theorem` | [zsmul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/zsmul--90c535b663279f60576b16d7.md) | 120 | `result-track:90c535b663279f60576b16d79138c15583f00b4ebf6adefd44498eec6ab63b74` |
| 13 | `theorem` | [pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/pow--3cc42e720d5f19e9e5077934.md) | 122 | `result-track:3cc42e720d5f19e9e50779342ed8239ef7ddc5e0c26d6c3585687e57b4c4d93c` |
| 14 | `theorem` | [natCast](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/natcast--c8d94f588e4d5ab3b07a9b81.md) | 124 | `result-track:c8d94f588e4d5ab3b07a9b81a920428cf6f91721919c1c288c0014eaeeac462f` |
| 15 | `theorem` | [intCast](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/intcast--414eae774de60306e410e878.md) | 128 | `result-track:414eae774de60306e410e8783dd06cf95cdb9fcc4cda9487c1caab725f8c77a7` |
| 16 | `def` | [ghostFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostfun--376437675f0fb6acf93f41b8.md) | 143 | `declaration-track:376437675f0fb6acf93f41b8e458773357ee25d3d96162fbf5e05da10619e6d6` |
| 17 | `elab` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/elab--69a5a91a3e4d19689af76a68.md) | 149 | `declaration-track:69a5a91a3e4d19689af76a68036ce76a41970bac416f565fc0c953c322670dbf` |
| 18 | `theorem` | [matrix_vecEmpty_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/matrix-vecempty-coeff--52790e23acfdf99a02655c28.md) | 167 | `result-track:52790e23acfdf99a02655c284bbe503fc63da14196978811aded1c9ac191a4e5` |
| 19 | `theorem` | [ghostFun_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostfun-zero--35cf91e53632cc31e78fd17b.md) | 174 | `result-track:35cf91e53632cc31e78fd17b2fac7d988c564cd6a70ac4d5b9be089b6638a2f2` |
| 20 | `theorem` | [ghostFun_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostfun-one--4da6e8ee2430e6c2dfede692.md) | 177 | `result-track:4da6e8ee2430e6c2dfede692ca9e7420258492ebe23c9ddcc50a0d6e52d9be1e` |
| 21 | `theorem` | [ghostFun_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostfun-add--ee76eccae8743aa50e5957e2.md) | 180 | `result-track:ee76eccae8743aa50e5957e222028080c9d4d7967735d43ea0bbb9fe37f759b9` |
| 22 | `theorem` | [ghostFun_natCast](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostfun-natcast--7c5531c45707a2c2d7d9d71b.md) | 183 | `result-track:7c5531c45707a2c2d7d9d71bc3b58b970ba282d4156946a3c993a764e30c9505` |
| 23 | `theorem` | [ghostFun_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostfun-sub--6431cb00b4d7a7013344d846.md) | 187 | `result-track:6431cb00b4d7a7013344d846962fb30fb00b6d61a9c2ae54b913841520a93f8a` |
| 24 | `theorem` | [ghostFun_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostfun-mul--4bbe0192e8b9a79602d6ea28.md) | 190 | `result-track:4bbe0192e8b9a79602d6ea289f38f766452c3853f19ea9abed953aa6a26a2d6d` |
| 25 | `theorem` | [ghostFun_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostfun-neg--823b7c7110a00a747edfdec5.md) | 193 | `result-track:823b7c7110a00a747edfdec5d906a04a758b7abef8c47f640736950f80ff3978` |
| 26 | `theorem` | [ghostFun_intCast](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostfun-intcast--0242b0948fdaaab3838dd21e.md) | 195 | `result-track:0242b0948fdaaab3838dd21e7a5a1f6ac6db51d93d754c45adc78ed6a6c51f0f` |
| 27 | `lemma` | [ghostFun_nsmul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostfun-nsmul--65d80ee46279ce1097f65a8c.md) | 199 | `result-track:65d80ee46279ce1097f65a8cd36c0af3f5afb0ec1dc9e7ad1313688efa7cf013` |
| 28 | `lemma` | [ghostFun_zsmul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostfun-zsmul--762779b99c23ae3da9de8239.md) | 202 | `result-track:762779b99c23ae3da9de8239dc3c05739317949c7ed16875932fb01824950715` |
| 29 | `theorem` | [ghostFun_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostfun-pow--4969eeb57f3c04f307c04dee.md) | 205 | `result-track:4969eeb57f3c04f307c04deeb83843c9c02cf88a3dcb5fa29c71d8996ffc6874` |
| 30 | `def` | [ghostEquiv'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostequiv--6f183438efbaaaea575f546b.md) | 214 | `declaration-track:6f183438efbaaaea575f546b82a49be7052327826e77442b87acf889751dce14` |
| 31 | `def` | [comm_ring_aux₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/comm-ring-aux--5dc5b3f5ffb5ac6115a3a0e3.md) | 234 | `declaration-track:5dc5b3f5ffb5ac6115a3a0e3afbaafaebd7e63e91a7d80bebe4455ec6053ec90` |
| 32 | `abbrev` | [comm_ring_aux₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/comm-ring-aux--6a8c2120de87f62b9121b606.md) | 240 | `declaration-track:6a8c2120de87f62b9121b606feae64d75a39e2985dad9860840f15df6dd61adf` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/instance--3866be01fb41d88fa42feaf8.md) | 246 | `declaration-track:3866be01fb41d88fa42feaf8a33348ecfaae76da33428be6ee5fd49d39988c0c` |
| 34 | `def` | [map](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/map--1ceb8be2cd14a46621b9b6c4.md) | 255 | `declaration-track:1ceb8be2cd14a46621b9b6c4195d81f9f2d19191178b93cfd3fffaaf0ff6e84c` |
| 35 | `theorem` | [map_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/map-injective--dad8f7d241a955cac0647894.md) | 262 | `result-track:dad8f7d241a955cac06478942d5de55e012d5b86c2553dc64bbaed94a02ad6cc` |
| 36 | `theorem` | [map_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/map-surjective--496dc70526b75b1cac3412ec.md) | 265 | `result-track:496dc70526b75b1cac3412ec53ce72a28da4f604c9be28ddbcb727ab19a7d8ad` |
| 37 | `theorem` | [map_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/map-coeff--a968cdf93aa5367314de5782.md) | 269 | `result-track:a968cdf93aa5367314de57826b6e2627a4d28f2f95e1461d4db9c076e06e60df` |
| 38 | `def` | [ghostMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostmap--7dfa76d57d301bb38ab91a38.md) | 274 | `declaration-track:7dfa76d57d301bb38ab91a383bee128713e98c880a59b8617b11b17a7c5acf99` |
| 39 | `def` | [ghostComponent](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostcomponent--81bac16e9a07f0ef12c4624c.md) | 283 | `declaration-track:81bac16e9a07f0ef12c4624c6d10ee9ab8e70a892645877b8ce46197285eb5d2` |
| 40 | `theorem` | [ghostComponent_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostcomponent-apply--34da6979cf1c0dfb66dd90a1.md) | 286 | `result-track:34da6979cf1c0dfb66dd90a1136d0cda170b11ae1b1598802f139543184f05b7` |
| 41 | `theorem` | [ghostMap_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostmap-apply--1a6230d90d5cdba70f5fcb17.md) | 290 | `result-track:1a6230d90d5cdba70f5fcb17a8daf333d8e7960690bbed93786f992263176b59` |
| 42 | `def` | [ghostEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostequiv--ec7419c27d238410a0ade6e6.md) | 299 | `declaration-track:ec7419c27d238410a0ade6e685dc2449355e0b598e49715d134e0c09ac9c2fe8` |
| 43 | `theorem` | [ghostEquiv_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostequiv-coe--c6ef9a4ce704ac4440c8ad47.md) | 303 | `result-track:c6ef9a4ce704ac4440c8ad4757ddc80dc72e1e494e010fcae90f0e3b5e2b7eef` |
| 44 | `theorem` | [ghostMap.bijective_of_invertible](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/ghostmap-bijective-of-invertible--66a2749f3761fd6595893514.md) | 306 | `result-track:66a2749f3761fd6595893514dec41025ea2934b1335eb92120b0384d69ee52f6` |
| 45 | `def` | [constantCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/constantcoeff--e8425479f0fa60aaf3614409.md) | 313 | `declaration-track:e8425479f0fa60aaf3614409887c823fdd2b6138cb1cbef7a77c1d8c68c35f88` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variantc368192227b7728bd824a4d92098edbb58b0c33e845f9679aa0afca440e96cc9.lean/declarations/instance--b429f275a04c24a30371aac2.md) | 320 | `declaration-track:b429f275a04c24a30371aac2fc53f979e71148825adb0b4d3759bc28bc885402` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
