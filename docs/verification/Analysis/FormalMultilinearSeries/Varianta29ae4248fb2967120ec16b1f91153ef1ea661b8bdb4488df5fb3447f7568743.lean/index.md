# Verification target: GRWTSK.Analysis.FormalMultilinearSeries.Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "755d41859fea7f1bae103aaed3c64b99a75a43d3",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/index.md) · [Full source](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `755d41859fea7f1bae103aaed3c64b99a75a43d3`.

Source path: `GRWTSK/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Multilinear.Curry` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FormalMultilinearSeries](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/formalmultilinearseries--6a6b1d75f0d8a77d7d62a54e.md) | 51 | `declaration-track:6a6b1d75f0d8a77d7d62a54ec4af6abfdf3b2909d28ff77ace9bedb400896177` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/instance--907808e92eb0146c6aca57db.md) | 59 | `declaration-track:907808e92eb0146c6aca57db67e34595ca3184a44297f29e3e939a0a8b47dbaf` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/instance--b33791b2fefd1de189aae4e3.md) | 62 | `declaration-track:b33791b2fefd1de189aae4e3594e93b77d424fac1ff30ef67b84fca2a4749e4a` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/instance--cf32313cd5a1ce17cba7ddb5.md) | 67 | `declaration-track:cf32313cd5a1ce17cba7ddb54d0468314ff25df763b57e8d47bb30f9de998132` |
| 5 | `theorem` | [zero_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/zero-apply--1d2f75d0af0593aae2ce9a5f.md) | 76 | `result-track:1d2f75d0af0593aae2ce9a5fac298a0eadd5f12df4f7bae9b81eb0dc99dd9ac5` |
| 6 | `theorem` | [add_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/add-apply--aebb0aa3935da3fdaadf98c2.md) | 79 | `result-track:aebb0aa3935da3fdaadf98c2d6bb1181f1e86c21d7f09b2c035309bd2fc0ab1e` |
| 7 | `theorem` | [smul_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/smul-apply--9c5bb843d7d5c2d3ba8e5157.md) | 82 | `result-track:9c5bb843d7d5c2d3ba8e51572fbf7f9fb651dbdef6f49ae322981c99e2ea5d4c` |
| 8 | `theorem` | [ext](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/ext--d22f4da129e3d376b023f8ca.md) | 86 | `result-track:d22f4da129e3d376b023f8ca3492b1bc58255b9031213baae8e85389b2569edb` |
| 9 | `theorem` | [ne_iff](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/ne-iff--c4b8ff313c66d0f2fc7b5348.md) | 89 | `result-track:c4b8ff313c66d0f2fc7b534845f9ade9029b35526efbc7047ec6283e9673d42a` |
| 10 | `def` | [prod](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/prod--eefc591374b17be7bbc45430.md) | 94 | `declaration-track:eefc591374b17be7bbc45430d4d209f43a928e420c93051bd4e072c03b7e2a79` |
| 11 | `def` | [pi](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/pi--a433fdd3ea9dee2c4db73699.md) | 100 | `declaration-track:a433fdd3ea9dee2c4db73699a2fb0a3b0a351a836e970c60613499f8006a0aee` |
| 12 | `def` | [removeZero](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/removezero--e03841d7c1069c311a7547aa.md) | 108 | `declaration-track:e03841d7c1069c311a7547aa7f89ddecee6df8b3fb0126bcbf6a20a857b1be60` |
| 13 | `theorem` | [removeZero_coeff_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/removezero-coeff-zero--e1e4bc6e093d767d925d343c.md) | 113 | `result-track:e1e4bc6e093d767d925d343cc447d7707d090dead855e084e311dc0f10d14b1b` |
| 14 | `theorem` | [removeZero_coeff_succ](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/removezero-coeff-succ--daf0054f9e4a99a80b5ab02e.md) | 117 | `result-track:daf0054f9e4a99a80b5ab02ed6fa6f37cd8b0de1eaa40280d1c347dbe7300bda` |
| 15 | `theorem` | [removeZero_of_pos](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/removezero-of-pos--490f5da24f9de8a6d84a1f76.md) | 121 | `result-track:490f5da24f9de8a6d84a1f7671ee69dfada5ec02e794ac1ed150b83303d7f4ab` |
| 16 | `theorem` | [congr](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/congr--1d0537305900311e865b8a78.md) | 128 | `result-track:1d0537305900311e865b8a7856f39c2675644126ee8261d1afb8e1baed2e5db6` |
| 17 | `lemma` | [congr_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/congr-zero--f2b13b5849ac2f2b261178b5.md) | 135 | `result-track:f2b13b5849ac2f2b261178b57bc9f188acba309a6de6653a32d39dff522f16d2` |
| 18 | `def` | [compContinuousLinearMap](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/compcontinuouslinearmap--a485675711580ac145794738.md) | 141 | `declaration-track:a485675711580ac1457947382f0acdb3f1d2efcb4f0c9a7dc2c1316df1708629` |
| 19 | `theorem` | [compContinuousLinearMap_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/compcontinuouslinearmap-apply--0baa88b26872b5c810a4ce6e.md) | 145 | `result-track:0baa88b26872b5c810a4ce6e4ceefc7317c3fab48ca16b7668751454612217a9` |
| 20 | `def` | [restrictScalars](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/restrictscalars--ba1cf1e5ad9352b79d066b89.md) | 155 | `declaration-track:ba1cf1e5ad9352b79d066b89cb360d32b401ea513417ea16476429ca8a5c82a5` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/instance--9f26815df2e22802828b399c.md) | 167 | `declaration-track:9f26815df2e22802828b399cf8982212e6256d9c11e02c348e0afad430ce62bd` |
| 22 | `theorem` | [neg_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/neg-apply--076e8acbf34258d5b0966802.md) | 171 | `result-track:076e8acbf34258d5b09668022cc3c641b30d83c279e8462ff459aa7532d11be5` |
| 23 | `theorem` | [sub_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/sub-apply--81996b35efade4cbb6d5d413.md) | 174 | `result-track:81996b35efade4cbb6d5d41305ef7a6fcf427b5b06a114efa195b627f014ca3e` |
| 24 | `def` | [shift](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/shift--ec0f0dc3f855915bb717b4c6.md) | 190 | `declaration-track:ec0f0dc3f855915bb717b4c6ef2a4afd552c2b7078eb7dcf84e13384af0f2581` |
| 25 | `def` | [unshift](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/unshift--12a18c86d663c68d76398076.md) | 195 | `declaration-track:12a18c86d663c68d76398076012cb396c63a337f57ad0585e3fae73867b3aaba` |
| 26 | `theorem` | [unshift_shift](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/unshift-shift--e32a7b45006b0ee63845c063.md) | 199 | `result-track:e32a7b45006b0ee63845c063c177d70144df7e6ccbb17d1493f6b4da1d8e078c` |
| 27 | `def` | [compFormalMultilinearSeries](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/compformalmultilinearseries--933bfdce74511eaab1c8e895.md) | 219 | `declaration-track:933bfdce74511eaab1c8e895f4e2185d7da374f8c2557104bdff9169b4bc44a8` |
| 28 | `theorem` | [compFormalMultilinearSeries_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/compformalmultilinearseries-apply--23d1195b919724944a5d1777.md) | 223 | `result-track:23d1195b919724944a5d17776cc9a0b6918be044411f65f9b1122768724c89e7` |
| 29 | `theorem` | [compFormalMultilinearSeries_apply'](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/compformalmultilinearseries-apply--e83b2ad93c0085632cb7f0f5.md) | 227 | `result-track:e83b2ad93c0085632cb7f0f5422b9d10468370daea56029b83d751fd9c09694d` |
| 30 | `def` | [toFormalMultilinearSeries](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/toformalmultilinearseries--b157d228294e5cab0ee860db.md) | 241 | `declaration-track:b157d228294e5cab0ee860db21f15224914cb9685c9d7999eabd42088c87bb2a` |
| 31 | `def` | [order](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/order--c62b647767d3c99fe6d1795e.md) | 262 | `declaration-track:c62b647767d3c99fe6d1795eb7040e064d0f54d22bf6151d58e5b1a6aea22049` |
| 32 | `theorem` | [order_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/order-zero--f5332b078f26e2525cb4d7ac.md) | 266 | `result-track:f5332b078f26e2525cb4d7ac527ef1e5901c5d4af7f5ac3807076da81905f750` |
| 33 | `theorem` | [ne_zero_of_order_ne_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/ne-zero-of-order-ne-zero--dd29dd5c4592d512fd229877.md) | 268 | `result-track:dd29dd5c4592d512fd229877b43120c289a2961f6a732667575013853a9d50d1` |
| 34 | `theorem` | [order_eq_find](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/order-eq-find--968a3b661d35e11143e178b0.md) | 270 | `result-track:968a3b661d35e11143e178b02555d4a5ca3a9c6f22fc3e6f35a0e418c6361751` |
| 35 | `theorem` | [order_eq_find'](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/order-eq-find--b72070b161c9a08622e844db.md) | 273 | `result-track:b72070b161c9a08622e844db7c38a074eb897a804de808131ec51008bf8cafc6` |
| 36 | `theorem` | [order_eq_zero_iff'](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/order-eq-zero-iff--b7b755fafd4c70a6342f4446.md) | 277 | `result-track:b7b755fafd4c70a6342f4446794760c0e9bac485dd50526545dde7e2f31990ff` |
| 37 | `theorem` | [order_eq_zero_iff](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/order-eq-zero-iff--ef1631a10852c8698aeb7246.md) | 281 | `result-track:ef1631a10852c8698aeb7246a8f0155f509014ab70e661ce5e353b63d150faf3` |
| 38 | `theorem` | [apply_order_ne_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/apply-order-ne-zero--b4f342eac7f3c6011f6bb344.md) | 284 | `result-track:b4f342eac7f3c6011f6bb344a682c5faa7886a54eb1a241ca40c8fb42c8bd0cf` |
| 39 | `theorem` | [apply_order_ne_zero'](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/apply-order-ne-zero--3fcb7029cab06f947b760182.md) | 287 | `result-track:3fcb7029cab06f947b7601829222841d0816f60657ef30832a08f164f4558999` |
| 40 | `theorem` | [apply_eq_zero_of_lt_order](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/apply-eq-zero-of-lt-order--4cca32389512c209ad8de14b.md) | 290 | `result-track:4cca32389512c209ad8de14bd469811fe433c54ef88555077489c5e2279d0490` |
| 41 | `def` | [coeff](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/coeff--30eb877d2869b19ce645c34c.md) | 301 | `declaration-track:30eb877d2869b19ce645c34cf1275b654b8e08684a292b4f9ab91dc7cdb7aa01` |
| 42 | `theorem` | [mkPiRing_coeff_eq](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/mkpiring-coeff-eq--7af6659896b97b58250a91f5.md) | 304 | `result-track:7af6659896b97b58250a91f5b7bd6359480d421f23a2c974288e218d8be44e28` |
| 43 | `theorem` | [apply_eq_prod_smul_coeff](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/apply-eq-prod-smul-coeff--f10fa5d5df8b462edf9e4949.md) | 309 | `result-track:f10fa5d5df8b462edf9e4949a890fa3970bb3f49b85d152aa93b2261119089cb` |
| 44 | `theorem` | [coeff_eq_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/coeff-eq-zero--337fc85a80f7e7bed6db6fb9.md) | 313 | `result-track:337fc85a80f7e7bed6db6fb95dcb1ffcbe38f6b25ef58a54838486c0810225ae` |
| 45 | `theorem` | [apply_eq_pow_smul_coeff](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/apply-eq-pow-smul-coeff--82d9cb223b7cea48847f3670.md) | 316 | `result-track:82d9cb223b7cea48847f3670a01a14c36d905ca21e8a310ac2ce8da5254b9bc2` |
| 46 | `theorem` | [norm_apply_eq_norm_coef](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/norm-apply-eq-norm-coef--ba5dfbf0a7748e93eb9d5b2a.md) | 319 | `result-track:ba5dfbf0a7748e93eb9d5b2a345813e0d085e6e629773715882313c7d70379a2` |
| 47 | `def` | [fslope](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/fslope--04602ac73e5ff00828c3e54e.md) | 331 | `declaration-track:04602ac73e5ff00828c3e54e14929b3c29833180060601c5c2185f22ef50e017` |
| 48 | `theorem` | [coeff_fslope](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/coeff-fslope--6a64ebbb5f4fa4fc20928397.md) | 335 | `result-track:6a64ebbb5f4fa4fc20928397ca2710a03ed1a45d48bef6732f0582101768230b` |
| 49 | `theorem` | [coeff_iterate_fslope](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/coeff-iterate-fslope--c88781c1ac8dddaac5d1fc8c.md) | 341 | `result-track:c88781c1ac8dddaac5d1fc8cca1c370baa69a4c149491330f1de408478786705` |
| 50 | `def` | [constFormalMultilinearSeries](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/constformalmultilinearseries--da040c9c3072180d6819142f.md) | 355 | `declaration-track:da040c9c3072180d6819142fa2901d90361469c795b9a61ff52c2fdfa339c111` |
| 51 | `theorem` | [constFormalMultilinearSeries_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/constformalmultilinearseries-apply--7aafa94ae664466230cad103.md) | 363 | `result-track:7aafa94ae664466230cad103e92551eda5a3527c35739631f9d2738ae2587382` |
| 52 | `lemma` | [constFormalMultilinearSeries_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/constformalmultilinearseries-zero--cb876436bd3c360489030ac7.md) | 369 | `result-track:cb876436bd3c360489030ac7bfde202bb8dcc67ca3e024407b15cdebab346347` |
| 53 | `def` | [fpowerSeries](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/fpowerseries--58b6f1907737aee204914279.md) | 391 | `declaration-track:58b6f1907737aee2049142791e4323aeeded7970e377ff7342defd2077536f38` |
| 54 | `theorem` | [fpowerSeries_apply_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/fpowerseries-apply-zero--23b3ff55c0e2a26dac76ba80.md) | 397 | `result-track:23b3ff55c0e2a26dac76ba80b517aa376c35219b5f0d86657649dc344643103c` |
| 55 | `theorem` | [fpowerSeries_apply_one](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/fpowerseries-apply-one--08e40a14c3657d6a6c23cd4e.md) | 402 | `result-track:08e40a14c3657d6a6c23cd4ea7315729be70147712477ee5d88e53ce276355e1` |
| 56 | `theorem` | [fpowerSeries_apply_add_two](../../../../mathematics/Analysis/FormalMultilinearSeries/Varianta29ae4248fb2967120ec16b1f91153ef1ea661b8bdb4488df5fb3447f7568743.lean/declarations/fpowerseries-apply-add-two--0397584c4938bee6b0ace1c2.md) | 407 | `result-track:0397584c4938bee6b0ace1c2b4145fb8ec4230658b058e76e66f761102a3a5ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
