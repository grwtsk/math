# Verification target: GRWTSK.Algebra.Basic.Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3a317ffc4aafcc9e4204e5f16639e3e1a7b21a3",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3a317ffc4aafcc9e4204e5f16639e3e1a7b21a3`.

Source path: `GRWTSK/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.RightExactness` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Cotangent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra.Extension](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/algebra-extension--7732c207f132e4c2ca109c4c.md) | 51 | `declaration-track:7732c207f132e4c2ca109c4cd1492223fbf57c62b1e092ff2d5f3089a812deda` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/instance--0c3733c2210fc737dbe68f4c.md) | 73 | `declaration-track:0c3733c2210fc737dbe68f4c5aaa34c61ab2dded0c47546af7aecc8f700e45d7` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/instance--4854757585cf24868d544336.md) | 76 | `declaration-track:4854757585cf24868d544336c4540fa5767b72c04b9a23ae108a5e6ef237d742` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/instance--77f85ed2309dfdc889b7c9c6.md) | 79 | `declaration-track:77f85ed2309dfdc889b7c9c68ee60a58b1c3eb3fd052674a3cc954222a08d9c4` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/instance--d479767b3e73cb5a8887669b.md) | 86 | `declaration-track:d479767b3e73cb5a8887669b87663bb26e8838afdec38eb6d8cf5c6d1308b510` |
| 6 | `lemma` | [σ_smul](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/smul--7e37141973fca328ba4a71b0.md) | 92 | `result-track:7e37141973fca328ba4a71b001a3b1f4509b37f8eab57f7dd06157980b10a8d2` |
| 7 | `lemma` | [σ_injective](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/injective--419810a81036d954e18c9534.md) | 95 | `result-track:419810a81036d954e18c95347d97d722159d573c8999947ea45364e014ff5d9c` |
| 8 | `lemma` | [algebraMap_surjective](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/algebramap-surjective--51000bb6c9f5205f877f7c0c.md) | 99 | `result-track:51000bb6c9f5205f877f7c0c604d97f32ebdfc744b25ad7363d845620972c805` |
| 9 | `def` | [ofSurjective](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/ofsurjective--4c7c744c7e93ed95ca5da018.md) | 106 | `declaration-track:4c7c744c7e93ed95ca5da018c62163cdce401437c416a2909cfb4f05192c557c` |
| 10 | `def` | [self](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/self--8aad722e2053dc30d3b2887d.md) | 118 | `declaration-track:8aad722e2053dc30d3b2887dc070c83ae9d9e1ea82c25856bc59bef261f0b72f` |
| 11 | `abbrev` | [ker](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/ker--6f41a59047ffa384f96dc758.md) | 124 | `declaration-track:6f41a59047ffa384f96dc758dd97e0643ba70e0f4d1571ffef04292edbcb205c` |
| 12 | `def` | [localization](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/localization--9f1ec72069797a8cf47263b5.md) | 136 | `declaration-track:9f1ec72069797a8cf47263b5d09c70065277557ccb87b0031d2075da0b1700f7` |
| 13 | `def` | [baseChange](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/basechange--4213df7a3bb537ccb7ac19ae.md) | 161 | `declaration-track:4213df7a3bb537ccb7ac19ae4e8131149f7ce50cfc2ea13b502b66a7c7573738` |
| 14 | `structure` | [Hom](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/hom--63534785686e8318c902d95a.md) | 190 | `declaration-track:63534785686e8318c902d95a1140daa67eca42fef8ab25c5ad70d598b012bb68` |
| 15 | `def` | [Hom.toAlgHom](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/hom-toalghom--580336fc601fb0f28ee56bcb.md) | 204 | `declaration-track:580336fc601fb0f28ee56bcbbf0adc2ef62a39bed8216d312585a0507a83a666` |
| 16 | `lemma` | [Hom.toAlgHom_apply](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/hom-toalghom-apply--7f36522ef1eca673d7af98ec.md) | 210 | `result-track:7f36522ef1eca673d7af98ec88026315200b94677bec39e825e21a5ddea0c075` |
| 17 | `def` | [Hom.id](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/hom-id--bf6371a8969318359126a6cf.md) | 217 | `declaration-track:bf6371a8969318359126a6cf8e00f58869fd1aa72143bec94f5d9e556d5b6968` |
| 18 | `lemma` | [Hom.toAlgHom_id](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/hom-toalghom-id--b942c177f734c10ae2591ef5.md) | 220 | `result-track:b942c177f734c10ae2591ef517ddc06ad9799fdae5e67cfdb306fc147fdf8214` |
| 19 | `def` | [Hom.comp](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/hom-comp--be41c7f93a9899bd226753be.md) | 227 | `declaration-track:be41c7f93a9899bd226753bec49675532c7655a79348c14fb4cf679a53506147` |
| 20 | `lemma` | [Hom.comp_id](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/hom-comp-id--d26479ec4f9af70797fab352.md) | 233 | `result-track:d26479ec4f9af70797fab352a74600aa37d5846e974a68aafb70b94afd72e4b5` |
| 21 | `lemma` | [Hom.id_comp](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/hom-id-comp--fa6c5dfd9a0cc69dfcf2d9b6.md) | 236 | `result-track:fa6c5dfd9a0cc69dfcf2d9b62b63ba870b9cb748d9bc3a9033b83479b997e72d` |
| 22 | `def` | [Hom.mapKer](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/hom-mapker--bb8f2693c8e52d9a6f10ba80.md) | 241 | `declaration-track:bb8f2693c8e52d9a6f10ba800a7e680fe48acaf21405ab5ba50dbcfbe097bfbd` |
| 23 | `def` | [infinitesimal](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/infinitesimal--19180bba8e7ee5a4406ed520.md) | 257 | `declaration-track:19180bba8e7ee5a4406ed5209e3a23aaa3c4ed235a3dfaa4bec6aa12d33721e0` |
| 24 | `def` | [toInfinitesimal](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/toinfinitesimal--3bc082946d4071bf3fd972d5.md) | 264 | `declaration-track:3bc082946d4071bf3fd972d5a42793a67351ef93f57a84df41e02402f8f08fa4` |
| 25 | `lemma` | [ker_infinitesimal](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/ker-infinitesimal--e31e55ba4e9fd673f28b93d9.md) | 269 | `result-track:e31e55ba4e9fd673f28b93d9ce81ac0dce9323ad6a0d17fee3f01d889d354b78` |
| 26 | `def` | [Cotangent](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/cotangent--596d1aaee8e6668d680c3e17.md) | 280 | `declaration-track:596d1aaee8e6668d680c3e17a9b8ceb1f40ce9dc50addb35fe6bf979033e1d9e` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/instance--d671270367bf87bd671b3751.md) | 283 | `declaration-track:d671270367bf87bd671b375154ef8db8113946fe586419e840105f9d2c5b61cc` |
| 28 | `def` | [Cotangent.of](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/cotangent-of--f0919cb87002a18243ca4a17.md) | 288 | `declaration-track:f0919cb87002a18243ca4a173ea306633e9153e3e5c441bf7220fd698264ce85` |
| 29 | `def` | [Cotangent.val](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/cotangent-val--91764ec101ad11abd32fcf14.md) | 291 | `declaration-track:91764ec101ad11abd32fcf14bb6e6c23436deaad8644ca459cbc5601c426d497` |
| 30 | `lemma` | [Cotangent.ext](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/cotangent-ext--2a46105a7626f089039e0849.md) | 294 | `result-track:2a46105a7626f089039e0849c3b0459ad49e0a2e9869d04106e56d507c2c3b89` |
| 31 | `lemma` | [val_add](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/val-add--8ff427ac54f2855482698318.md) | 300 | `result-track:8ff427ac54f28554826983186c2052151279fe7c3c093317e4edb905e4e8023a` |
| 32 | `lemma` | [val_zero](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/val-zero--84a76af6126584d8320ee025.md) | 301 | `result-track:84a76af6126584d8320ee0255116d50ba12110a918ed19112ddce30eebb855ad` |
| 33 | `lemma` | [of_add](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/of-add--6a5a5bda98bb26365404e621.md) | 302 | `result-track:6a5a5bda98bb26365404e621615695af641dbd10a2027be8cd26e4d25218a760` |
| 34 | `lemma` | [of_zero](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/of-zero--d26f4d9a964695c6cbc71c7e.md) | 303 | `result-track:d26f4d9a964695c6cbc71c7e2566c4afbe499b53088c495c1f958c29083ca20d` |
| 35 | `lemma` | [of_val](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/of-val--22dc473cb321cfd74639aef3.md) | 304 | `result-track:22dc473cb321cfd74639aef34eb4487a50dc3e21df568c6d02a34f5179f5bd88` |
| 36 | `lemma` | [val_of](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/val-of--4046dd45b8dbb44ab63f404e.md) | 305 | `result-track:4046dd45b8dbb44ab63f404e39e4f1f672d8e45394fbd19d4076f811f2118104` |
| 37 | `lemma` | [val_sub](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/val-sub--aa170a97dbef6d8ad67f5e9c.md) | 306 | `result-track:aa170a97dbef6d8ad67f5e9c6b2d39e6fb718a1790c4f35e6109815c226ce6a4` |
| 38 | `lemma` | [Cotangent.smul_eq_zero_of_mem](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/cotangent-smul-eq-zero-of-mem--2bed8c6f3418b8a780575cf2.md) | 310 | `result-track:2bed8c6f3418b8a780575cf2b7a610762c6a6dc3900d523aaaa165e05c48b216` |
| 39 | `instance` | [Cotangent.module](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/cotangent-module--21728b03b69fc5b5a9cadd94.md) | 319 | `declaration-track:21728b03b69fc5b5a9cadd944709afd7c0be60d4de06303a635c8af71077daa8` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/instance--4671d31e62b7370d30b9ece7.md) | 335 | `declaration-track:4671d31e62b7370d30b9ece79711fb61e0bcdf2fb8fa24b8c3612348fdcdf170` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/instance--727e24d1b5f053cb7f1c150d.md) | 338 | `declaration-track:727e24d1b5f053cb7f1c150d9ef1029af93b0a9f2b546a51bdad8e09e9614544` |
| 42 | `lemma` | [Cotangent.val_smul'''](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/cotangent-val-smul--0a5a317865d88d45e053fc16.md) | 347 | `result-track:0a5a317865d88d45e053fc16647cb6e1d08079097d7d19615989b9207117e532` |
| 43 | `lemma` | [Cotangent.val_smul](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/cotangent-val-smul--edb4682544e78bba2358a15c.md) | 352 | `result-track:edb4682544e78bba2358a15c0c66ba7847400954c168489b605ffb7153a726fe` |
| 44 | `lemma` | [Cotangent.val_smul'](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/cotangent-val-smul--d9a4474ad49ad5e770df5ce7.md) | 356 | `result-track:d9a4474ad49ad5e770df5ce716c70a29f23be69a474c6cb65d784f015b5e6eda` |
| 45 | `lemma` | [Cotangent.val_smul''](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/cotangent-val-smul--541d8cfdd57200e368d1f374.md) | 362 | `result-track:541d8cfdd57200e368d1f3748e786ecd56b432da2699f22187b47ab98546cae4` |
| 46 | `def` | [Cotangent.mk](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/cotangent-mk--8e5b92d50ce5a9fa143c7acf.md) | 366 | `declaration-track:8e5b92d50ce5a9fa143c7acf40b7dad5a4a32a0a4350ed4ca45bf5c9eab867e5` |
| 47 | `lemma` | [Cotangent.val_mk](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/cotangent-val-mk--51f8d82f57d994c45c288e3f.md) | 372 | `result-track:51f8d82f57d994c45c288e3f4304181a71480dd84e1b59e40ed26a5bcba53720` |
| 48 | `lemma` | [Cotangent.mk_surjective](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/cotangent-mk-surjective--5537318a8cd3b033f2e48d70.md) | 374 | `result-track:5537318a8cd3b033f2e48d7019793f1dca531a9f46a66f96bdb5f38d3037917c` |
| 49 | `lemma` | [Cotangent.mk_eq_zero_iff](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/cotangent-mk-eq-zero-iff--d142eb5515de2b95477db175.md) | 377 | `result-track:d142eb5515de2b95477db175fd69a7e10a4209c51c2e0bcdbc59d2caf8940633` |
| 50 | `def` | [Cotangent.map](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/cotangent-map--580cfe1a3461801764f8c7ac.md) | 388 | `declaration-track:580cfe1a3461801764f8c7acb876acff7d885128eca782a484a4a09ee4e7c127` |
| 51 | `lemma` | [Cotangent.map_mk](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/cotangent-map-mk--5938a683670282b14047fdcc.md) | 405 | `result-track:5938a683670282b14047fdcc944fc4a4c1476029dd0dd9c0ee04a06ded1b9a4c` |
| 52 | `lemma` | [Cotangent.map_id](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/cotangent-map-id--70723d6c3e70a4015c5d49f9.md) | 411 | `result-track:70723d6c3e70a4015c5d49f9017dcf534210c3426e848b224727686285231807` |
| 53 | `lemma` | [Cotangent.map_comp](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/cotangent-map-comp--0dc60f53efb9796ca3649405.md) | 421 | `result-track:0dc60f53efb9796ca36494053709bcbb21b265336ede182cfd80c21969309302` |
| 54 | `lemma` | [Cotangent.finite](../../../../mathematics/Algebra/Basic/Variant18e8703c0e2255560e76442f305cdec99ba37354025273a887b9e19ad546c779.lean/declarations/cotangent-finite--b3a2b563b9d486a3da33b93e.md) | 428 | `result-track:b3a2b563b9d486a3da33b93e78cacdc6dfa63dfafc7f85bde6ef8a9582874466` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
