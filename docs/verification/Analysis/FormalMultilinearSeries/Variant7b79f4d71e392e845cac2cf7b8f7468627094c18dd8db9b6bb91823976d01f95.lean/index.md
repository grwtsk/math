# Verification target: GRWTSK.Analysis.FormalMultilinearSeries.Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af68052e1ba0514a9c88a9797fef131f9c5d5a31",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/index.md) · [Full source](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af68052e1ba0514a9c88a9797fef131f9c5d5a31`.

Source path: `GRWTSK/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Multilinear.Curry` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FormalMultilinearSeries](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/formalmultilinearseries--d6bc98fbe74321d470037f73.md) | 43 | `declaration-track:d6bc98fbe74321d470037f738bc3ef77ba0afaed42b972c95fc922eeef4d4cc7` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/instance--cee5010268723920d53bf73b.md) | 51 | `declaration-track:cee5010268723920d53bf73bcd86769b2e3e085df23e833b3a2fffa01434b5d3` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/instance--d16910c8997189f01c004b95.md) | 54 | `declaration-track:d16910c8997189f01c004b9581aff28debcdad52b54ca3e234665423afc91e74` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/instance--e7e1daf57ab2874a4125cd6e.md) | 59 | `declaration-track:e7e1daf57ab2874a4125cd6ee23ef8ddde43602eb4bfc8542f17d808dd4d2949` |
| 5 | `theorem` | [zero_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/zero-apply--f8425626e8166010f92a51c4.md) | 68 | `result-track:f8425626e8166010f92a51c45dae85119704f1853b06739e6a2b365d5d190587` |
| 6 | `theorem` | [add_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/add-apply--622fa14a321c6a8dbf1d131e.md) | 71 | `result-track:622fa14a321c6a8dbf1d131e6a2845b0ee57a313c3d6f239c5eb2d3749471726` |
| 7 | `theorem` | [smul_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/smul-apply--b9efee1f319cca422911315d.md) | 74 | `result-track:b9efee1f319cca422911315db68032d84c8adb3b42acbc519ed661527f78450e` |
| 8 | `theorem` | [ext](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/ext--7629b01de991d900d653be0e.md) | 78 | `result-track:7629b01de991d900d653be0ee373f7517cb747817c3952767f278c8ecebcba4c` |
| 9 | `theorem` | [ne_iff](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/ne-iff--c2d3d83acdbc071d0fb02fd0.md) | 81 | `result-track:c2d3d83acdbc071d0fb02fd06aabf655a3c1e5175a2b2d8dbdac9e90e488612d` |
| 10 | `def` | [prod](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/prod--30908253c7c891ff3eb9a7e8.md) | 86 | `declaration-track:30908253c7c891ff3eb9a7e87fa238bad0ee0de6f7c0ea2b2f3898aeacea51fa` |
| 11 | `def` | [pi](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/pi--579dde11df29ad05da752675.md) | 92 | `declaration-track:579dde11df29ad05da752675d2be5f5c9b5915a65ff907e37aff86bb29f9a2b0` |
| 12 | `def` | [removeZero](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/removezero--32a4dea0b48bc57259e3c0f3.md) | 100 | `declaration-track:32a4dea0b48bc57259e3c0f390aae037c52d6f0a11d3761f0541d5867a1cd665` |
| 13 | `theorem` | [removeZero_coeff_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/removezero-coeff-zero--82d9cee95ce8ce8903365947.md) | 105 | `result-track:82d9cee95ce8ce89033659476fe7b86c193677c5e3db2360e1a72a1433f6b7b9` |
| 14 | `theorem` | [removeZero_coeff_succ](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/removezero-coeff-succ--1db5e809ea405e22c83bc0b8.md) | 109 | `result-track:1db5e809ea405e22c83bc0b867fdb3d7af3c1d3028ca38d30efbf4f35cf228f4` |
| 15 | `theorem` | [removeZero_of_pos](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/removezero-of-pos--db4fc3e6fb8ab70ce6e2258c.md) | 113 | `result-track:db4fc3e6fb8ab70ce6e2258c197ff82d9ee3585c4e1b6dc4758a2a218260b475` |
| 16 | `theorem` | [congr](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/congr--cd10acae899baa303b0f02b3.md) | 120 | `result-track:cd10acae899baa303b0f02b37af390cf756479e241af3478fdc7f80225215d28` |
| 17 | `lemma` | [congr_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/congr-zero--dc7e01ad9fd0b7cba8d74041.md) | 127 | `result-track:dc7e01ad9fd0b7cba8d74041d12abdfc517cedd9d5b46d5d49119182ca5281c9` |
| 18 | `def` | [compContinuousLinearMap](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/compcontinuouslinearmap--a9ac44b6bbe922e0abb01c32.md) | 133 | `declaration-track:a9ac44b6bbe922e0abb01c32cf1590967720721c8ca6b1ca5702fc7a41022bf9` |
| 19 | `theorem` | [compContinuousLinearMap_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/compcontinuouslinearmap-apply--f2ab5d4dc45fa5092fe1ef6e.md) | 137 | `result-track:f2ab5d4dc45fa5092fe1ef6e342061bd81aca9b4ba499af52e4a957a09c6f1f6` |
| 20 | `def` | [restrictScalars](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/restrictscalars--9df2dd51b115bcce53ae25f1.md) | 147 | `declaration-track:9df2dd51b115bcce53ae25f1d1b67329f4a9eb5fd95d65f48997ab227d05a597` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/instance--75a1a4a7f56073989a8a4014.md) | 159 | `declaration-track:75a1a4a7f56073989a8a40145be4cecc10a882330602ef523880af3ea0b04bd0` |
| 22 | `theorem` | [neg_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/neg-apply--6986022cbf2ecb69046a3c54.md) | 163 | `result-track:6986022cbf2ecb69046a3c542c84417001d24a41a9ba1b7d70eda131180e71dd` |
| 23 | `theorem` | [sub_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/sub-apply--5ee3d6968831e922852ba8df.md) | 166 | `result-track:5ee3d6968831e922852ba8df0ee97247efe81821a69715ca52f560d3d4f1b9f9` |
| 24 | `def` | [shift](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/shift--f74a93ae9f22ebba29e9e5a3.md) | 182 | `declaration-track:f74a93ae9f22ebba29e9e5a38db3cc9fe95ace68b3e59ffefe23770bdf0ca99b` |
| 25 | `def` | [unshift](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/unshift--d4e0911cb57371e1154d6cbc.md) | 187 | `declaration-track:d4e0911cb57371e1154d6cbcf55deeecc604047bb89876dacbf15b33f55bd19e` |
| 26 | `theorem` | [unshift_shift](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/unshift-shift--35dc488c178604c134159b68.md) | 191 | `result-track:35dc488c178604c134159b6825108637dffa36d76bf4ec3da70d63319d47a54c` |
| 27 | `def` | [compFormalMultilinearSeries](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/compformalmultilinearseries--c08f27e63bc82040c7ba843b.md) | 211 | `declaration-track:c08f27e63bc82040c7ba843bf7ab2944767e45038844dee7041432cfcb13be02` |
| 28 | `theorem` | [compFormalMultilinearSeries_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/compformalmultilinearseries-apply--af94ff0eb1d4b8d4b7164fea.md) | 215 | `result-track:af94ff0eb1d4b8d4b7164fea4a84209a660fc5ed3d0b07a75fe18a8531eab8b2` |
| 29 | `theorem` | [compFormalMultilinearSeries_apply'](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/compformalmultilinearseries-apply--0259f7856476d98a31afb253.md) | 219 | `result-track:0259f7856476d98a31afb253f6c8a984d7ba5bc0dccb0eec9c4ba57af3a65597` |
| 30 | `def` | [toFormalMultilinearSeries](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/toformalmultilinearseries--06bb3ec0030730733dffc1e6.md) | 233 | `declaration-track:06bb3ec0030730733dffc1e626b314b33fb190fec44979a84362d7147f3785af` |
| 31 | `def` | [order](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/order--a3f549b3c31f6ebfbaa2985a.md) | 254 | `declaration-track:a3f549b3c31f6ebfbaa2985aa1ec051bd8348c4e842f6c11c092cccdecd93018` |
| 32 | `theorem` | [order_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/order-zero--3a979d996e6ff8e24d2f4215.md) | 258 | `result-track:3a979d996e6ff8e24d2f4215c13dbbc04616b701edeef1f2b1c7304e7dbc62dd` |
| 33 | `theorem` | [ne_zero_of_order_ne_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/ne-zero-of-order-ne-zero--f130a9887c61b7b5d478360f.md) | 260 | `result-track:f130a9887c61b7b5d478360f84f272b397ab5eec2c698125e2c34d5c297a6bee` |
| 34 | `theorem` | [order_eq_find](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/order-eq-find--18ddd1e6b9a03fba805263df.md) | 262 | `result-track:18ddd1e6b9a03fba805263df5b6fac06e7068686dead2346f6ab02689a501fc7` |
| 35 | `theorem` | [order_eq_find'](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/order-eq-find--876cdc46614b38461937a5b0.md) | 265 | `result-track:876cdc46614b38461937a5b0bf0da2f19b5b56cbe50a6e68197b3ab6e488ae9c` |
| 36 | `theorem` | [order_eq_zero_iff'](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/order-eq-zero-iff--06bce644c3eba6e56e5540bd.md) | 269 | `result-track:06bce644c3eba6e56e5540bd53d30b823329a324638029427d71e868feede2ce` |
| 37 | `theorem` | [order_eq_zero_iff](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/order-eq-zero-iff--8c8d7ed04905f09631a8b1da.md) | 273 | `result-track:8c8d7ed04905f09631a8b1dabfb263714fe93bc03070d91f8496955241432a02` |
| 38 | `theorem` | [apply_order_ne_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/apply-order-ne-zero--2a628a5e677d12c2f039628c.md) | 276 | `result-track:2a628a5e677d12c2f039628cc2858f1cc3e12bfc0717a9dd48f4a5c6e1157387` |
| 39 | `theorem` | [apply_order_ne_zero'](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/apply-order-ne-zero--bf8f21ed78c0f2835b9d1eb8.md) | 279 | `result-track:bf8f21ed78c0f2835b9d1eb82d96bbdaf92e9ac576eb2643d7ca7447c1750024` |
| 40 | `theorem` | [apply_eq_zero_of_lt_order](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/apply-eq-zero-of-lt-order--77e4bbdd37da30e6be92c758.md) | 282 | `result-track:77e4bbdd37da30e6be92c758ad2d81378a8e574ff7fa709cff7c5d557cdc0d2d` |
| 41 | `def` | [coeff](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/coeff--7c77fa755cb04bc0c3cb9d64.md) | 293 | `declaration-track:7c77fa755cb04bc0c3cb9d6450030a6475b53e7165c0a032b22efb634d5eb508` |
| 42 | `theorem` | [mkPiRing_coeff_eq](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/mkpiring-coeff-eq--f78e367a37cddee605cc8b18.md) | 296 | `result-track:f78e367a37cddee605cc8b180203410bf515cb96ae872721340396038c002851` |
| 43 | `theorem` | [apply_eq_prod_smul_coeff](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/apply-eq-prod-smul-coeff--79d7e3c5a512ff82a5488d8d.md) | 301 | `result-track:79d7e3c5a512ff82a5488d8d5bcbc7721be37f0f5c0bb608d385542297fa9b08` |
| 44 | `theorem` | [coeff_eq_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/coeff-eq-zero--f5a4cb3d6be2a8d3af06863b.md) | 305 | `result-track:f5a4cb3d6be2a8d3af06863bc41e10c4a8fa1cba17281e493c755e262ba69705` |
| 45 | `theorem` | [apply_eq_pow_smul_coeff](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/apply-eq-pow-smul-coeff--b24942c150abe2c8c3e2eb89.md) | 308 | `result-track:b24942c150abe2c8c3e2eb89a5f7249f84bf96161ddda5fbbcc6e4ba54d928b0` |
| 46 | `theorem` | [norm_apply_eq_norm_coef](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/norm-apply-eq-norm-coef--f4080087b1316e3a0c88a8aa.md) | 311 | `result-track:f4080087b1316e3a0c88a8aa419b7461530f4763466c7c3850ce7da8a23f2906` |
| 47 | `def` | [fslope](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/fslope--11343330e6b79a3053d52683.md) | 323 | `declaration-track:11343330e6b79a3053d526838f2dfc63d306f4df4d23fbfc44f4b3866ab2d070` |
| 48 | `theorem` | [coeff_fslope](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/coeff-fslope--fd4e2e31bb70291705dae03b.md) | 327 | `result-track:fd4e2e31bb70291705dae03ba8f1522c0a7f42dd68306fb9a6c2a84d4ec46d5d` |
| 49 | `theorem` | [coeff_iterate_fslope](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/coeff-iterate-fslope--eeefc8d09b4cc989b40ceb23.md) | 333 | `result-track:eeefc8d09b4cc989b40ceb239ef38931f55c0291798aa2561121a64edf878cb3` |
| 50 | `def` | [constFormalMultilinearSeries](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/constformalmultilinearseries--80ebb19e54997e6dcdc918e1.md) | 347 | `declaration-track:80ebb19e54997e6dcdc918e145ad97b192aef3908702610e48dcf4268bbeb0d1` |
| 51 | `theorem` | [constFormalMultilinearSeries_apply](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/constformalmultilinearseries-apply--f228819a5db46b1e7c7f9166.md) | 355 | `result-track:f228819a5db46b1e7c7f91669208aba01587b57f52bdf0df2609019e1dc9e10e` |
| 52 | `lemma` | [constFormalMultilinearSeries_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/constformalmultilinearseries-zero--78e23ddddc75ef8ff86e0bbe.md) | 361 | `result-track:78e23ddddc75ef8ff86e0bbe4c8424e93bba07f61ff8d07144881900cd35cc57` |
| 53 | `def` | [fpowerSeries](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/fpowerseries--98588c32e13b2a0feab5b692.md) | 383 | `declaration-track:98588c32e13b2a0feab5b692bd8853687883250155fc778fb7468b9e02be9959` |
| 54 | `theorem` | [fpowerSeries_apply_zero](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/fpowerseries-apply-zero--0010ae429fc5fa8a3193111b.md) | 389 | `result-track:0010ae429fc5fa8a3193111b2f2e61aa13d103781d42ef71dacc2fe49951b43d` |
| 55 | `theorem` | [fpowerSeries_apply_one](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/fpowerseries-apply-one--72ce96b9d574a77cf5569ad4.md) | 394 | `result-track:72ce96b9d574a77cf5569ad48341554715f6f923986af1ef308cd59a324313d4` |
| 56 | `theorem` | [fpowerSeries_apply_add_two](../../../../mathematics/Analysis/FormalMultilinearSeries/Variant7b79f4d71e392e845cac2cf7b8f7468627094c18dd8db9b6bb91823976d01f95.lean/declarations/fpowerseries-apply-add-two--4318281ddd02061a4498c6a2.md) | 399 | `result-track:4318281ddd02061a4498c6a298aac937314d66d150be34d0f123ad8894c246b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
