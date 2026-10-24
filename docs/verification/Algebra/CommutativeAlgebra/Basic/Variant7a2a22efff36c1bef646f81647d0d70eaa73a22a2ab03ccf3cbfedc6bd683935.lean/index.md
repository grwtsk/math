# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "378ffea58f917442253b30dc389555c2c9014ee3",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `378ffea58f917442253b30dc389555c2c9014ee3`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.MvPolynomial.Counit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Invertible` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/mapfun--1d73888fbac2650353c8b97f.md) | 79 | `declaration-track:1d73888fbac2650353c8b97f567b57500b6954b3ef25a23298f647cf6463d2f9` |
| 2 | `theorem` | [injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/injective--35ae030148676f6b0a6854cc.md) | 85 | `result-track:35ae030148676f6b0a6854cce831b285c55789f92042dcba1fc62df1dc045299` |
| 3 | `theorem` | [surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/surjective--c134d29e9b07aa98dedb46e7.md) | 91 | `result-track:c134d29e9b07aa98dedb46e724490b4376967ab0991b71929f3e28ba4176363e` |
| 4 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/macro--4e3bba699f12766ab03f5f00.md) | 101 | `declaration-track:4e3bba699f12766ab03f5f002a316b15d22a7a10f2abe5fc25c189c053ec2aee` |
| 5 | `theorem` | [zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/zero--9d3fabfdc6aa7a7fc8654614.md) | 114 | `result-track:9d3fabfdc6aa7a7fc8654614ec0c0f0e7d7e24bb6198949da6250bcb89a118cc` |
| 6 | `theorem` | [one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/one--a1ff88f942e2c812f51a98dc.md) | 117 | `result-track:a1ff88f942e2c812f51a98dcd5fc0a8eb9779c2b76be7feb582196218dbc60a5` |
| 7 | `theorem` | [add](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/add--bdc1c8c5b3601e5df5777b79.md) | 120 | `result-track:bdc1c8c5b3601e5df5777b799133b6d4f6956d8c3242f30f01c1fb6e74e6e2ee` |
| 8 | `theorem` | [sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/sub--e9a18b5dcd60a8b53758e729.md) | 123 | `result-track:e9a18b5dcd60a8b53758e729a60d2b1e9b02289e65102af6a0efd644c2072576` |
| 9 | `theorem` | [mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/mul--a10b790eae1f505cb694671f.md) | 126 | `result-track:a10b790eae1f505cb694671f470094c4bab961d36a0a8928629cc6a40e7380e8` |
| 10 | `theorem` | [neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/neg--bb8b80aa1637351c4e52eb86.md) | 129 | `result-track:bb8b80aa1637351c4e52eb86ec19896d18de7ee81a127694cc850c62d8beddb0` |
| 11 | `theorem` | [nsmul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/nsmul--484d96c228869493185cf582.md) | 132 | `result-track:484d96c228869493185cf58257c49f9271588da6f92aacca784fd15879e85281` |
| 12 | `theorem` | [zsmul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/zsmul--7497492d49ea37a8b6fc9b28.md) | 135 | `result-track:7497492d49ea37a8b6fc9b286a54dd1250babc1f098623e0040c925a65e75394` |
| 13 | `theorem` | [pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/pow--7525bef14b2f74a59286de28.md) | 138 | `result-track:7525bef14b2f74a59286de28f9b3c338364976038c7c7f23b9c3ceeb2d5e1fd1` |
| 14 | `theorem` | [nat_cast](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/nat-cast--b2b40ba831bf92b366b31eea.md) | 141 | `result-track:b2b40ba831bf92b366b31eea729bb44dcac71e60db270377bd4aab2071ef7802` |
| 15 | `theorem` | [int_cast](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/int-cast--111bc4e470356efe9d3c54c2.md) | 146 | `result-track:111bc4e470356efe9d3c54c292a28ced47ab9dd0fbf4ae314cf229897b4161f5` |
| 16 | `def` | [ghostFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostfun--bd7c1da52ec4aab7358de6de.md) | 162 | `declaration-track:bd7c1da52ec4aab7358de6dea897f646b52777e3f098a6737a3110c3df9921ed` |
| 17 | `elab` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/elab--37359e03ebc5752d0b816eab.md) | 170 | `declaration-track:37359e03ebc5752d0b816eabc53406516edeb12c805bf0b1861d731ce28e469f` |
| 18 | `theorem` | [matrix_vecEmpty_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/matrix-vecempty-coeff--933a21ab5df6d28dbf0107f2.md) | 189 | `result-track:933a21ab5df6d28dbf0107f2ec387b041e77a18d7b007bf83f6485e175a81ae8` |
| 19 | `theorem` | [ghostFun_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostfun-zero--5bdd1464a7f2c9ac86595b32.md) | 194 | `result-track:5bdd1464a7f2c9ac86595b32aff189541ce09b26bd1fa2d3827aa740d68a8d05` |
| 20 | `theorem` | [ghostFun_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostfun-one--1ebcb3dd78bb93ea297f594e.md) | 197 | `result-track:1ebcb3dd78bb93ea297f594e50919c32a2a5eece85a7865361c208e2561181bf` |
| 21 | `theorem` | [ghostFun_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostfun-add--379dfef64f7d4acac00b8e6d.md) | 200 | `result-track:379dfef64f7d4acac00b8e6db10e6f68e4247631c6fb6f110447de3cff2832e5` |
| 22 | `theorem` | [ghostFun_nat_cast](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostfun-nat-cast--3a5380b0443ef41a53ef8075.md) | 203 | `result-track:3a5380b0443ef41a53ef80750674e2b072224a59d747552dc4bb29995b62b8f1` |
| 23 | `theorem` | [ghostFun_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostfun-sub--a64b36e611e09f81e4af49d1.md) | 208 | `result-track:a64b36e611e09f81e4af49d17790d186b3bff12355174e2ec3d6d4e0fda84d05` |
| 24 | `theorem` | [ghostFun_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostfun-mul--7f5ca81a702031647797b0d6.md) | 211 | `result-track:7f5ca81a702031647797b0d6203061131ee2e9532d806422af2a71f70c54f35b` |
| 25 | `theorem` | [ghostFun_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostfun-neg--72996cd368f2906320f66006.md) | 214 | `result-track:72996cd368f2906320f66006d6383346a6ba94cf3bc08b1cf54d5d64a05ec3c8` |
| 26 | `theorem` | [ghostFun_int_cast](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostfun-int-cast--138faf4a986821900660eb4b.md) | 216 | `result-track:138faf4a986821900660eb4b8234e86226b13c523afd59f00f6050ad7f92e45c` |
| 27 | `theorem` | [ghostFun_nsmul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostfun-nsmul--eb17b59af98ee4df67211814.md) | 220 | `result-track:eb17b59af98ee4df67211814e426b4649f0c0c85203c49fb4e7ee7c442519992` |
| 28 | `theorem` | [ghostFun_zsmul](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostfun-zsmul--73fbad17394c71b8116dc12a.md) | 225 | `result-track:73fbad17394c71b8116dc12ac57199751b99339732761f183c0430596d352556` |
| 29 | `theorem` | [ghostFun_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostfun-pow--cec905273c7ec05a8f2874ba.md) | 230 | `result-track:cec905273c7ec05a8f2874bad9cbc96cac86dfc524f5e060e11cfc1b0a1acc2b` |
| 30 | `def` | [ghostEquiv'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostequiv--61aee52133553b82d22f0a09.md) | 239 | `declaration-track:61aee52133553b82d22f0a0931a72057f1af9ca257d338c7a9b23a2f95b67b45` |
| 31 | `def` | [comm_ring_aux₁](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/comm-ring-aux--9a675215a33d6fa7422a3fd6.md) | 256 | `declaration-track:9a675215a33d6fa7422a3fd61ac730982902b3a082c238d018845953024c9e0e` |
| 32 | `def` | [comm_ring_aux₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/comm-ring-aux--907806d21739621d91125647.md) | 264 | `declaration-track:907806d21739621d9112564712274a3a02afd0a359f650386ac87167ea9cd960` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/instance--db9a8a9f0232c386d8f75b4a.md) | 272 | `declaration-track:db9a8a9f0232c386d8f75b4ab725b674825c709e29cd6bea48ed8116b03d88eb` |
| 34 | `def` | [map](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/map--a1ee2e58169c418a1e04c769.md) | 281 | `declaration-track:a1ee2e58169c418a1e04c7694cff20357a6197986c6d494287836809256e0fae` |
| 35 | `theorem` | [map_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/map-injective--bbd3a3d9724d8067c17f2215.md) | 289 | `result-track:bbd3a3d9724d8067c17f22157512a524037d57e064ee4fe4989c91ffb2679b92` |
| 36 | `theorem` | [map_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/map-surjective--a65722eebf0fdc2b6c971e56.md) | 293 | `result-track:a65722eebf0fdc2b6c971e56b7da6e405bbe348bdce67733eb0f13baff701222` |
| 37 | `theorem` | [map_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/map-coeff--d0b28939769bb87d1424fbf9.md) | 298 | `result-track:d0b28939769bb87d1424fbf93f43e3586248f586849a216427ca4312390e919e` |
| 38 | `def` | [ghostMap](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostmap--ceab5d6043f1b3ddb570a914.md) | 304 | `declaration-track:ceab5d6043f1b3ddb570a9145ce169adef03684fae1273cd923d8696c6950232` |
| 39 | `def` | [ghostComponent](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostcomponent--eca5ac840a701f863924cffd.md) | 314 | `declaration-track:eca5ac840a701f863924cffd9e0c50c81ed836ea97b05a8a1731a0975f902431` |
| 40 | `theorem` | [ghostComponent_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostcomponent-apply--b543026b06bcd9fc5bf27452.md) | 318 | `result-track:b543026b06bcd9fc5bf274528c7e25ca54166a741b82e0937405fa33755022aa` |
| 41 | `theorem` | [ghostMap_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostmap-apply--6f7a953e0dc4ba70f45a899e.md) | 323 | `result-track:6f7a953e0dc4ba70f45a899e51048e25e9ad7ddc1ad909e80b361bed55b3e493` |
| 42 | `def` | [ghostEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostequiv--9d96605ab8c4477b1313849a.md) | 333 | `declaration-track:9d96605ab8c4477b1313849afbe54d83e9f2cc476d027cc8224327afb9942dde` |
| 43 | `theorem` | [ghostEquiv_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostequiv-coe--0a26fdd6bc065be6f9ae27cc.md) | 338 | `result-track:0a26fdd6bc065be6f9ae27cc98f12267618aaea813f09995dc6dad1bb4e1f4df` |
| 44 | `theorem` | [ghostMap.bijective_of_invertible](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/ghostmap-bijective-of-invertible--31e9e98787454175f0f5316f.md) | 342 | `result-track:31e9e98787454175f0f5316fb1d9eb3a115429520bf536f7974a3c516a767efb` |
| 45 | `def` | [constantCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/constantcoeff--fef4a38ddc79d0d9b691c2d2.md) | 350 | `declaration-track:fef4a38ddc79d0d9b691c2d2313e97b663517a6554d8a466d4647aaeeb75e0f8` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant7a2a22efff36c1bef646f81647d0d70eaa73a22a2ab03ccf3cbfedc6bd683935.lean/declarations/instance--362daadbf8b93373789f6aeb.md) | 358 | `declaration-track:362daadbf8b93373789f6aeb91d4871eaf3e5210b16783bde65f314510a9232e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
