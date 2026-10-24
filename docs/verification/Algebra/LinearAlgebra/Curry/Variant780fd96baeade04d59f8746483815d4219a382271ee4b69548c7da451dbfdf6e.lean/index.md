# Verification target: GRWTSK.Algebra.LinearAlgebra.Curry.Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e71025235973c20399e21b8685010bbbf7b27c16",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e71025235973c20399e21b8685010bbbf7b27c16`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Sort` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LinearMap.uncurryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/linearmap-uncurryleft--dc33a4a4f90acc24d301d1fc.md) | 64 | `declaration-track:dc33a4a4f90acc24d301d1fc541bed7a2bc8129c6915a3a6e6c0c779a54dc088` |
| 2 | `theorem` | [LinearMap.uncurryLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/linearmap-uncurryleft-apply--305164d8e6e93ab5106712fb.md) | 71 | `result-track:305164d8e6e93ab5106712fbc413479c26f7c781cf5b8ed9c9bd25a3d7f53563` |
| 3 | `def` | [MultilinearMap.curryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/multilinearmap-curryleft--4e7c93141b747f68773e1307.md) | 77 | `declaration-track:4e7c93141b747f68773e130789d402719061a28d31d10c322a4537acf07648ff` |
| 4 | `theorem` | [MultilinearMap.curryLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/multilinearmap-curryleft-apply--5202f8c6fd7e087cc2113e6e.md) | 88 | `result-track:5202f8c6fd7e087cc2113e6e56844db6cea088e71d0833a2d628b7d3ce1a0258` |
| 5 | `theorem` | [LinearMap.curry_uncurryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/linearmap-curry-uncurryleft--1ee44b81ec9e753cdf97ce06.md) | 93 | `result-track:1ee44b81ec9e753cdf97ce06e6f37fb879f142ff98f5da7577f9bbcd3eeff537` |
| 6 | `theorem` | [MultilinearMap.uncurry_curryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/multilinearmap-uncurry-curryleft--47a591ddbd525264c92eec59.md) | 100 | `result-track:47a591ddbd525264c92eec59665eccc35c53ea61461ec8797ef8b8e0d302d079` |
| 7 | `def` | [multilinearCurryLeftEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/multilinearcurryleftequiv--4ff908768d6e93eba57314c4.md) | 114 | `declaration-track:4ff908768d6e93eba57314c43c2a837b62e5b551c487b9d18421dff2a1d60eb7` |
| 8 | `def` | [MultilinearMap.uncurryRight](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/multilinearmap-uncurryright--4c7800d3fefca4de270efe87.md) | 131 | `declaration-track:4c7800d3fefca4de270efe8749264294c2187f681a81a45c25bf0bd0e0e170b3` |
| 9 | `theorem` | [MultilinearMap.uncurryRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/multilinearmap-uncurryright-apply--58748a40f9a9105355daf4f0.md) | 139 | `result-track:58748a40f9a9105355daf4f0b4dd6a886f739ffe61d30a6b6b83ca80a955b832` |
| 10 | `def` | [MultilinearMap.curryRight](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/multilinearmap-curryright--1e404f2685be643c9da66578.md) | 147 | `declaration-track:1e404f2685be643c9da66578e619a8efca8fe619a961188968b69ef7dd53d7f7` |
| 11 | `theorem` | [MultilinearMap.curryRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/multilinearmap-curryright-apply--a7c635e3e3225296156cab6e.md) | 155 | `result-track:a7c635e3e3225296156cab6e1741ed62be7c3e01f33a2c9fb1ee8fe363cb2da1` |
| 12 | `theorem` | [MultilinearMap.curry_uncurryRight](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/multilinearmap-curry-uncurryright--8e26a5f142a5b6a63f9c2d8e.md) | 160 | `result-track:8e26a5f142a5b6a63f9c2d8e94c8cf1b1c6624c1f160f5f721b861ec5328a6d6` |
| 13 | `theorem` | [MultilinearMap.uncurry_curryRight](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/multilinearmap-uncurry-curryright--197019e4f5930efed11487da.md) | 168 | `result-track:197019e4f5930efed11487da30879e2477f1f2b7b06e5d77a42f769945a99d79` |
| 14 | `def` | [multilinearCurryRightEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/multilinearcurryrightequiv--ea0abfcf564a3d026eb2e640.md) | 182 | `declaration-track:ea0abfcf564a3d026eb2e6402e66d85f545c336eb1f647c92ebfffa0aec6006c` |
| 15 | `def` | [LinearMap.uncurryMid](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/linearmap-uncurrymid--367c3930f1f2b3913bdbe92a.md) | 198 | `declaration-track:367c3930f1f2b3913bdbe92ac2afbaf2693b22f09158aa6ab6cd4d5552e51eed` |
| 16 | `def` | [MultilinearMap.curryMid](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/multilinearmap-currymid--ba0d4bb6265634a20a4fc7bd.md) | 207 | `declaration-track:ba0d4bb6265634a20a4fc7bd9eb9ee438147ae8a3ef867a984cebde09186cdd4` |
| 17 | `theorem` | [LinearMap.curryMid_uncurryMid](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/linearmap-currymid-uncurrymid--aa00b5ca8a142424d68f832d.md) | 214 | `result-track:aa00b5ca8a142424d68f832d6ef6aee50b7612c4ba08c8a6a953905842522213` |
| 18 | `theorem` | [MultilinearMap.uncurryMid_curryMid](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/multilinearmap-uncurrymid-currymid--5c3c569ce17de78dc0783d87.md) | 219 | `result-track:5c3c569ce17de78dc0783d87edbcb53eb651aa686d5f5255258ba4608dc34b42` |
| 19 | `def` | [MultilinearMap.curryMidLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/multilinearmap-currymidlinearequiv--05256e1424e1707ad1ec1eb5.md) | 226 | `declaration-track:05256e1424e1707ad1ec1eb58c9c14c59c593985bc2f033415fa9ac9bae70745` |
| 20 | `def` | [currySum](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/currysum--240c7d4eabf83289d25e407c.md) | 244 | `declaration-track:240c7d4eabf83289d25e407c671eb836a329d3af75215d3a278457388e44aae3` |
| 21 | `theorem` | [currySum_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/currysum-apply--29a4de647ba4b5d617f58417.md) | 256 | `result-track:29a4de647ba4b5d617f58417d672fba3488c7a7e455267fd77dabe40adf6f5ef` |
| 22 | `theorem` | [currySum_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/currysum-apply--2e72854d5a385eca4e1549d1.md) | 261 | `result-track:2e72854d5a385eca4e1549d18fc99577d421c66dabe5365abf5783c840f6c03b` |
| 23 | `lemma` | [currySum_add](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/currysum-add--4b2450cbd28706c19d7fe3b0.md) | 267 | `result-track:4b2450cbd28706c19d7fe3b0d9d9081674bdae37da6e00f928690797808de97c` |
| 24 | `lemma` | [currySum_smul](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/currysum-smul--18b7cf2230736f4dfad6d105.md) | 271 | `result-track:18b7cf2230736f4dfad6d105baa214b02c57cd32576ed26825a1cc6746e8df75` |
| 25 | `def` | [uncurrySum](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/uncurrysum--25442e92881d4fbc910a3764.md) | 278 | `declaration-track:25442e92881d4fbc910a376424b30f65b01c2420579c48e955c7481b807c3f17` |
| 26 | `theorem` | [uncurrySum_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/uncurrysum-apply--83033203a844134568694fec.md) | 293 | `result-track:83033203a844134568694fec3f2f6af87c25ad3147fbbbd7e25d79f411499a81` |
| 27 | `lemma` | [uncurrySum_add](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/uncurrysum-add--9c94033cdcf9a7a72e2dfdef.md) | 300 | `result-track:9c94033cdcf9a7a72e2dfdef346af8ae009db7b70aafdcc29dcfffc8819a1645` |
| 28 | `lemma` | [uncurrySum_smul](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/uncurrysum-smul--7eef64e1134c0e2b65ba58b0.md) | 306 | `result-track:7eef64e1134c0e2b65ba58b07bb5e08ceade6e89e2fe50bff2fd26a45368cdcd` |
| 29 | `lemma` | [uncurrySum_currySum](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/uncurrysum-currysum--e83a490b4b41a6bf653230e3.md) | 315 | `result-track:e83a490b4b41a6bf653230e3ad69a11cc30891cc6b59df97d08ede28f4e8f999` |
| 30 | `lemma` | [currySum_uncurrySum](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/currysum-uncurrysum--d1b5ef1fb2fe1e93ddd705aa.md) | 323 | `result-track:d1b5ef1fb2fe1e93ddd705aa5b0ce85e4262f2e2363099dc8ea56089d5b69f06` |
| 31 | `def` | [currySumEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/currysumequiv--fec6cb0f7596c0c4a93f9701.md) | 333 | `declaration-track:fec6cb0f7596c0c4a93f97015ad94a4c37edc00b2ba34027aa8348eb82b5a654` |
| 32 | `theorem` | [coe_currySumEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/coe-currysumequiv--89b70ace7731e386881338da.md) | 344 | `result-track:89b70ace7731e386881338da7cd6306a4adb18c98fc80dcaff85207523d3e36d` |
| 33 | `theorem` | [coe_currySumEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/coe-currysumequiv-symm--e7475f1a422096ad2e5a75f5.md) | 348 | `result-track:e7475f1a422096ad2e5a75f5fcd3e3e63f5650abe57ef47b38b40338547337f7` |
| 34 | `def` | [curryFinFinset](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/curryfinfinset--3730bd46ec11f5e4c4296cad.md) | 357 | `declaration-track:3730bd46ec11f5e4c4296cad94f8679df3324e99cb8280c3c65587869f7dab75` |
| 35 | `theorem` | [curryFinFinset_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/curryfinfinset-apply--39a7b4b9e5caee98adb21fa3.md) | 366 | `result-track:39a7b4b9e5caee98adb21fa3cc5cad1ae817b260ac2c545b29b7c881be986f58` |
| 36 | `theorem` | [curryFinFinset_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/curryfinfinset-symm-apply--b550595600181bef4dfd4823.md) | 373 | `result-track:b550595600181bef4dfd48237774dba7f5e1fab5f5cfbf167efc27917d611e77` |
| 37 | `theorem` | [curryFinFinset_symm_apply_piecewise_const](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/curryfinfinset-symm-apply-piecewise-const--137011560e13f7eac6db24b1.md) | 382 | `result-track:137011560e13f7eac6db24b1253de7aaa2f32dc91f3edf741ed06bff81e4a73f` |
| 38 | `theorem` | [curryFinFinset_symm_apply_const](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/curryfinfinset-symm-apply-const--253b1501e21d30b75316ee68.md) | 397 | `result-track:253b1501e21d30b75316ee68bc499f03be2f40adb29462990eed9ddd9409c948` |
| 39 | `theorem` | [curryFinFinset_apply_const](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant780fd96baeade04d59f8746483815d4219a382271ee4b69548c7da451dbfdf6e.lean/declarations/curryfinfinset-apply-const--22fe7478a10099e03d123e3b.md) | 403 | `result-track:22fe7478a10099e03d123e3b55a217114c17a6186e7854dfbd20765809c28d54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
