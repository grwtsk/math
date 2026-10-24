# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Defs.Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b53a66066a81ec017b5e50074c6e7d68d44b972",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b53a66066a81ec017b5e50074c6e7d68d44b972`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.QuadraticDiscriminant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Inner](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner--07f83e654b5f09c57b86fb6b.md) | 74 | `declaration-track:07f83e654b5f09c57b86fb6b7301757a9ea0abc1d080da5b9d9bf16150951145` |
| 2 | `class` | [InnerProductSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/innerproductspace--6db2a467cd351efbd7f36e6e.md) | 101 | `declaration-track:6db2a467cd351efbd7f36e6e1336f560738871a5307f9cc78463b9223460a535` |
| 3 | `structure` | [PreInnerProductSpace.Core](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/preinnerproductspace-core--6d7a1a9e50b7f793a5c6bb09.md) | 131 | `declaration-track:6d7a1a9e50b7f793a5c6bb0935ec7ff081c98d609b6228f5f1e13c9cddd54f8f` |
| 4 | `structure` | [InnerProductSpace.Core](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/innerproductspace-core--f680b1d49bf14197d65356d5.md) | 152 | `declaration-track:f680b1d49bf14197d65356d54186409c5359a849fa27316bc4c04b0dbe1533ed` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/instance--42335353eceb0e2c50f45408.md) | 162 | `declaration-track:42335353eceb0e2c50f454080759873e29bbb34a0b54bc8a6c51141b2aac53f4` |
| 6 | `def` | [PreInnerProductSpace.toCore](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/preinnerproductspace-tocore--d698e6768dc7b007c0bd0c6c.md) | 174 | `declaration-track:d698e6768dc7b007c0bd0c6cbd31019680c1a9996c1adef4ca54ca1dbaf50955` |
| 7 | `def` | [InnerProductSpace.toCore](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/innerproductspace-tocore--997681518f106a25c851d55d.md) | 183 | `declaration-track:997681518f106a25c851d55dc0a3bd8d1d50ebce159b774d52c428203cdc1f47` |
| 8 | `def` | [toPreInner'](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/topreinner--4ed750419799fef977f32aee.md) | 210 | `declaration-track:4ed750419799fef977f32aeecd71aa3d7e7165e20658de4b20b5857f65a16056` |
| 9 | `def` | [normSq](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/normsq--d564cd392f02400c9f156cd1.md) | 216 | `declaration-track:d564cd392f02400c9f156cd17d90e212cf2385e7a542f73bce80dbdce5d1a054` |
| 10 | `theorem` | [inner_conj_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-conj-symm--543901e15ffcf94057642cd9.md) | 222 | `result-track:543901e15ffcf94057642cd9450dc944521ed9639f1fb383e87fc40db74a2361` |
| 11 | `theorem` | [inner_self_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-self-nonneg--4f8227c95887e99473b62539.md) | 225 | `result-track:4f8227c95887e99473b625392258668db10a83b89066fa8948855358a4cc13db` |
| 12 | `theorem` | [inner_self_im](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-self-im--954e1d278aceb4ef948bbfd7.md) | 228 | `result-track:954e1d278aceb4ef948bbfd7a7db04d77466713c13f6a6e7fe95ce8d386aa6b6` |
| 13 | `theorem` | [inner_add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-add-left--dd88aed8b51c55c439188464.md) | 232 | `result-track:dd88aed8b51c55c43918846493e50d5816e0c011a33feab9b580c316a99503bd` |
| 14 | `theorem` | [inner_add_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-add-right--815603d3d84d3cc6704e6ed0.md) | 235 | `result-track:815603d3d84d3cc6704e6ed0feb7594afb8b05785c038a040d788989d716e81f` |
| 15 | `theorem` | [ofReal_normSq_eq_inner_self](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/ofreal-normsq-eq-inner-self--895f6486307b72c6d2e16c60.md) | 238 | `result-track:895f6486307b72c6d2e16c6096e4b0d8f7b48cf4b154274f429b090216efc9da` |
| 16 | `theorem` | [inner_re_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-re-symm--265e6651afff0a27a5bcab1f.md) | 242 | `result-track:265e6651afff0a27a5bcab1fbb2e73cbcba94dc16db7544c857a7e043b55a4eb` |
| 17 | `theorem` | [inner_im_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-im-symm--782fbd6f16709bfe6004c4f4.md) | 244 | `result-track:782fbd6f16709bfe6004c4f48a4a183e538b76217b4df1750677f7e5c5d3ff0e` |
| 18 | `theorem` | [inner_smul_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-smul-left--7de037defa23512ee8b3767f.md) | 246 | `result-track:7de037defa23512ee8b3767f7b05b845256ec7e79a6b6efbe3a036d17b9e6c2a` |
| 19 | `theorem` | [inner_smul_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-smul-right--bd4519b356d7ca109b53d54f.md) | 249 | `result-track:bd4519b356d7ca109b53d54f04d9c55818e69af1878fbb32ad71c3503164a387` |
| 20 | `theorem` | [inner_zero_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-zero-left--9aa263f30dc8d60a686f72a9.md) | 253 | `result-track:9aa263f30dc8d60a686f72a92fa76f78c388c8c48a5ce965d170e63fd72b6947` |
| 21 | `theorem` | [inner_zero_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-zero-right--e0ad6f64ff6e3cd1c4c8f63d.md) | 257 | `result-track:e0ad6f64ff6e3cd1c4c8f63df35fb241f11279ec4ecedd51c2f1aef9879b152c` |
| 22 | `theorem` | [inner_self_of_eq_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-self-of-eq-zero--dce94151416cf44db0c4f541.md) | 260 | `result-track:dce94151416cf44db0c4f541445f9e333300b3791c790edfd23a06b6ba937705` |
| 23 | `theorem` | [normSq_eq_zero_of_eq_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/normsq-eq-zero-of-eq-zero--1d63f460d597f3bc3d23bc01.md) | 264 | `result-track:1d63f460d597f3bc3d23bc016c29495994bdc43a381c6f3685040cd232b12e2d` |
| 24 | `theorem` | [ne_zero_of_inner_self_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/ne-zero-of-inner-self-ne-zero--d252f72247e35ba978843f88.md) | 268 | `result-track:d252f72247e35ba978843f885d9d9efd9ca3022d11b7cce8c14ae97ddee21494` |
| 25 | `theorem` | [inner_self_ofReal_re](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-self-ofreal-re--69816076bfd6f7e46bd5a53d.md) | 270 | `result-track:69816076bfd6f7e46bd5a53d82e31ecfad41cfb8a40f8e275415e5a71fdc5796` |
| 26 | `theorem` | [norm_inner_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/norm-inner-symm--80a8a046c3b2c98868f53a4b.md) | 273 | `result-track:80a8a046c3b2c98868f53a4b68007d37aa08214e6bab92ab7760cb36b5ba8e26` |
| 27 | `theorem` | [inner_neg_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-neg-left--12a34f97951e5f132451f986.md) | 275 | `result-track:12a34f97951e5f132451f9863b0481a6cf57363cf2459524582ef277ca74a622` |
| 28 | `theorem` | [inner_neg_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-neg-right--3d1d7203254d9a1b5fc08724.md) | 279 | `result-track:3d1d7203254d9a1b5fc08724ba5f0b11c912e6f087709cd0d30bfe781a2ef0e6` |
| 29 | `theorem` | [inner_sub_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-sub-left--a04ae93e58838bb48e3357c6.md) | 282 | `result-track:a04ae93e58838bb48e3357c6f71763462d155fc3b3f8b62e7d0ad16fbc49440e` |
| 30 | `theorem` | [inner_sub_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-sub-right--09d28d8e183413a99ea5db51.md) | 285 | `result-track:09d28d8e183413a99ea5db519514de9aeed38841a57c4d5377da1324c645fdc4` |
| 31 | `theorem` | [inner_mul_symm_re_eq_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-mul-symm-re-eq-norm--f5fc31c41e139b4e15536ede.md) | 288 | `result-track:f5fc31c41e139b4e15536ede16c4caf49a79fd697a1bdc07b01ef0bb6b6e8482` |
| 32 | `theorem` | [inner_add_add_self](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-add-add-self--f6fcc579736a625b9048d442.md) | 293 | `result-track:f6fcc579736a625b9048d442df8c041b29a1c5250e6194f945d79f4fc92779b3` |
| 33 | `theorem` | [inner_sub_sub_self](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-sub-sub-self--2839b4f2c56ac67232cadc24.md) | 297 | `result-track:2839b4f2c56ac67232cadc2442de2edd6d1b1c30aab152a1b37cbb72c52cc502` |
| 34 | `theorem` | [inner_smul_ofReal_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-smul-ofreal-left--77cefca23d0101da3f33563b.md) | 300 | `result-track:77cefca23d0101da3f33563b9887d5f004c0c3b3051dac27b5ab6faa25ea2f31` |
| 35 | `theorem` | [inner_smul_ofReal_right](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-smul-ofreal-right--580542b5cf1933d2390079aa.md) | 303 | `result-track:580542b5cf1933d2390079aafa88f23236d79b53cd53f47c59ff81a043347650` |
| 36 | `theorem` | [re_inner_smul_ofReal_smul_self](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/re-inner-smul-ofreal-smul-self--60e5c328091a96bed2ea1795.md) | 306 | `result-track:60e5c328091a96bed2ea1795ca2f304df09bf2765c6d0461a5eb42f79a4b6e82` |
| 37 | `lemma` | [cauchy_schwarz_aux'](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/cauchy-schwarz-aux--71d1cd725fa4638d021e4f4e.md) | 313 | `result-track:71d1cd725fa4638d021e4f4e42d9d2b007f43d80817876f79efe467c0d340270` |
| 38 | `theorem` | [cauchy_schwarz_aux](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/cauchy-schwarz-aux--1566b5019277857a06632085.md) | 333 | `result-track:1566b5019277857a0663208516882a95741c33d6bd1090642ee20b848f76834d` |
| 39 | `theorem` | [inner_mul_inner_self_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-mul-inner-self-le--222235fbaef8053f22f525af.md) | 349 | `result-track:222235fbaef8053f22f525af1a2e90b3a03c6db3fb4d172b4487b28ab256abcf` |
| 40 | `def` | [toNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/tonorm--3c3491d8c957b6947583d57f.md) | 373 | `declaration-track:3c3491d8c957b6947583d57f000bdbe7ca9a6285fca6d1624c4374e6a20ad0af` |
| 41 | `theorem` | [norm_eq_sqrt_re_inner](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/norm-eq-sqrt-re-inner--c6e212383beec93a4dc72f1d.md) | 377 | `result-track:c6e212383beec93a4dc72f1dfd74310da8c469bd28e6b0cf38d39a54169f6463` |
| 42 | `theorem` | [inner_self_eq_norm_mul_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-self-eq-norm-mul-norm--4c3222b99d3bee6750c695bb.md) | 381 | `result-track:4c3222b99d3bee6750c695bb47a7900fa1de1af46ffdd817e118761c67a81306` |
| 43 | `theorem` | [sqrt_normSq_eq_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/sqrt-normsq-eq-norm--65e648dc0cb3b60335a00c03.md) | 384 | `result-track:65e648dc0cb3b60335a00c03d823fe0f918f5fdf3b05260e0e81bca397a56460` |
| 44 | `theorem` | [norm_inner_le_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/norm-inner-le-norm--4ca4beaf6aaf2f75e8192d3b.md) | 387 | `result-track:4ca4beaf6aaf2f75e8192d3b52757acddd14c27d81292c9010543cf39c904d60` |
| 45 | `def` | [toSeminormedAddCommGroup](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/toseminormedaddcommgroup--a65192d71163481683476829.md) | 395 | `declaration-track:a65192d71163481683476829e7c381b4d5ac97c5dd271d92c33711c8606af6a5` |
| 46 | `def` | [toSeminormedSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/toseminormedspace--f07761a76ee1b49d50d119c6.md) | 414 | `declaration-track:f07761a76ee1b49d50d119c6ae46bc9867d8ec9d61e2d33ad0a8f37613c3d67c` |
| 47 | `def` | [toInner'](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/toinner--ba4f2357e7564376b2302a4f.md) | 435 | `declaration-track:ba4f2357e7564376b2302a4f32347eb020bbd758b5c35bf804062b9d6f291667` |
| 48 | `theorem` | [inner_self_eq_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-self-eq-zero--6694759d693681088c7670ae.md) | 442 | `result-track:6694759d693681088c7670ae539dcf2cdf4f57045eafa34162ac414c21fee379` |
| 49 | `theorem` | [normSq_eq_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/normsq-eq-zero--5253018af04441de64fc3bb9.md) | 445 | `result-track:5253018af04441de64fc3bb9131a9d95268020e09e51fb3ac69d6e9268a093e9` |
| 50 | `theorem` | [inner_self_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/inner-self-ne-zero--2eda18cb39e18306a1e14ca8.md) | 450 | `result-track:2eda18cb39e18306a1e14ca8f6a6756701e9f288c1c0140142db3e6ceaa39d7e` |
| 51 | `def` | [toNormedAddCommGroup](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/tonormedaddcommgroup--deaae8d7bb4f92256a39435c.md) | 456 | `declaration-track:deaae8d7bb4f92256a39435c69f2342bfbd44fddfe25b645999346abef4b4d53` |
| 52 | `def` | [toNormedSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/tonormedspace--1a387d2c2967a9cbc3db4514.md) | 476 | `declaration-track:1a387d2c2967a9cbc3db4514eca5138e3711ccc42681f1a504374975946ceb0c` |
| 53 | `def` | [InnerProductSpace.ofCore](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/innerproductspace-ofcore--708ce31cbb5decd59d2b8a0f.md) | 495 | `declaration-track:708ce31cbb5decd59d2b8a0f588afcd5c375ac3594e00b9c779d8222c2aa8be0` |
| 54 | `structure` | [HilbertSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Defs/Variantdc2bae96e3bd46a9a8767ec0273c0bbef258555dbad3bf700db75a0fc6da7272.lean/declarations/hilbertspace--12e0803e4ceb331dd7774798.md) | 508 | `declaration-track:12e0803e4ceb331dd7774798255e4fd818141317a38a8e754b123aa362d3c8e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
