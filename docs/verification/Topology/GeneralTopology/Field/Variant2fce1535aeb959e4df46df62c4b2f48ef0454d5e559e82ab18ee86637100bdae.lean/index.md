# Verification target: GRWTSK.Topology.GeneralTopology.Field.Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b65d4979f389411fe345b3bfb83d9042d8cffc67",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b65d4979f389411fe345b3bfb83d9042d8cffc67`.

Source path: `GRWTSK/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Pointwise.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Field` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Group` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsTopologicalRing.of_norm](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/istopologicalring-of-norm--aede740c00aefcc033c55053.md) | 29 | `result-track:aede740c00aefcc033c55053f6adc167caa7056a0abb175c749cf715a5acb07d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/instance--3babc60a92d2444c0d9c23d8.md) | 58 | `declaration-track:3babc60a92d2444c0d9c23d8028730a3c6e1d42316a8fa9b265499269ccca08e` |
| 3 | `theorem` | [Filter.Tendsto.atTop_mul_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/filter-tendsto-attop-mul-pos--bcdc9ef1904e5767d7fae3ec.md) | 64 | `result-track:bcdc9ef1904e5767d7fae3ec5a371585c1ed815b15b14e26ed30147ad4e86d87` |
| 4 | `theorem` | [Filter.Tendsto.pos_mul_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/filter-tendsto-pos-mul-attop--50437254e233884f93310e4c.md) | 78 | `result-track:50437254e233884f93310e4c87035a1df7cd76330024bdb5963f82937dee096b` |
| 5 | `theorem` | [Filter.Tendsto.atTop_mul_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/filter-tendsto-attop-mul-neg--87617f4f5ac4878c8c47c5e0.md) | 87 | `result-track:87617f4f5ac4878c8c47c5e04ac8f79a50a66c667e0b7b84c34b3da3a4e0e93c` |
| 6 | `theorem` | [Filter.Tendsto.neg_mul_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/filter-tendsto-neg-mul-attop--e189b4ed4ee45ae1db66a5b6.md) | 95 | `result-track:e189b4ed4ee45ae1db66a5b66379467fbb63ce28e9a48fc8761bd8843a5fb29b` |
| 7 | `theorem` | [Filter.Tendsto.atBot_mul_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/filter-tendsto-atbot-mul-pos--30877202d3e525bee59d05f6.md) | 101 | `result-track:30877202d3e525bee59d05f604e644248ff46a582a1e889126f161697b259604` |
| 8 | `theorem` | [Filter.Tendsto.atBot_mul_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/filter-tendsto-atbot-mul-neg--6255fd26b75c4bead025ef55.md) | 111 | `result-track:6255fd26b75c4bead025ef558a2be8055b27ca3ee00d0f2afe611d6c13bd4aae` |
| 9 | `theorem` | [Filter.Tendsto.pos_mul_atBot](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/filter-tendsto-pos-mul-atbot--765023a750c6e9e1777c05d4.md) | 118 | `result-track:765023a750c6e9e1777c05d49036cd51dbfa476921535e1ecb15734ab99e6fd9` |
| 10 | `theorem` | [Filter.Tendsto.neg_mul_atBot](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/filter-tendsto-neg-mul-atbot--8001b1383f0a79ce1ac68449.md) | 127 | `result-track:8001b1383f0a79ce1ac68449f045b14f81f34e1cbb11f7aa3d906f7e21367852` |
| 11 | `lemma` | [inv_atTop₀](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/inv-attop--38d99f2190dada0837618e2a.md) | 132 | `result-track:38d99f2190dada0837618e2af85235120424afc96777269d655bf92b2f416711` |
| 12 | `lemma` | [inv_atBot₀](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/inv-atbot--e770a9c55a7c4b8319fbbbdb.md) | 137 | `result-track:e770a9c55a7c4b8319fbbbdbee799bd7c546dec87a761dd6ac592700e5421df8` |
| 13 | `lemma` | [inv_nhdsGT_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/inv-nhdsgt-zero--f7c1a7b14907a827a766d775.md) | 142 | `result-track:f7c1a7b14907a827a766d775ff25531d6e658cd61fe4b61bccd5b89214a4514e` |
| 14 | `lemma` | [inv_nhdsLT_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/inv-nhdslt-zero--870d72b9a171510f6dd40d93.md) | 147 | `result-track:870d72b9a171510f6dd40d9399027504aa5bd087ab7cd1755847990d89827610` |
| 15 | `theorem` | [tendsto_inv_nhdsGT_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/tendsto-inv-nhdsgt-zero--bb1a75c870d8acf8b1ecc9ca.md) | 151 | `result-track:bb1a75c870d8acf8b1ecc9cabadb3e681860186e259d42c21217b9f798f917a6` |
| 16 | `theorem` | [tendsto_inv_atTop_nhdsGT_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/tendsto-inv-attop-nhdsgt-zero--e40b4fd13871d1fbeb7d5be9.md) | 158 | `result-track:e40b4fd13871d1fbeb7d5be9c7ff996c095caf0a2754ec53ddb8483a6edc6084` |
| 17 | `theorem` | [tendsto_inv_atTop_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/tendsto-inv-attop-zero--51819dbbb2dce6c4a3305e81.md) | 164 | `result-track:51819dbbb2dce6c4a3305e81a28195a7dbac36a476339ba45b54101cb00411be` |
| 18 | `theorem` | [tendsto_inv_nhdsLT_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/tendsto-inv-nhdslt-zero--1cc7b7b6b210d38c03258e32.md) | 168 | `result-track:1cc7b7b6b210d38c03258e32fcab51962c46b526870f649211786dba0d4eb213` |
| 19 | `theorem` | [tendsto_inv_atBot_nhdsLT_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/tendsto-inv-atbot-nhdslt-zero--614b0aed3224e999e7f20532.md) | 175 | `result-track:614b0aed3224e999e7f20532f658245a7c821db407f2afcccb33395e2862620d` |
| 20 | `theorem` | [tendsto_inv_atBot_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/tendsto-inv-atbot-zero--84860c168faf12bb9e689500.md) | 181 | `result-track:84860c168faf12bb9e68950081ff5d43b147d56bfb4d85aa972ce36e0bfb1939` |
| 21 | `theorem` | [Filter.Tendsto.div_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/filter-tendsto-div-attop--392820bf10c588495760371c.md) | 184 | `result-track:392820bf10c588495760371c3d1982827f822ca124ab7b86c7609f061a7c2de5` |
| 22 | `theorem` | [Filter.Tendsto.div_atBot](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/filter-tendsto-div-atbot--17567094c44c5845b421819e.md) | 189 | `result-track:17567094c44c5845b421819eb697cd3c94ed05dbdf9f5d9aec31e99c2d38930f` |
| 23 | `lemma` | [Filter.Tendsto.const_div_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/filter-tendsto-const-div-attop--326680bb4f2c422e8e9ad1e3.md) | 194 | `result-track:326680bb4f2c422e8e9ad1e3c3cc46b24c8574fc52623a4453684db6a47e33e8` |
| 24 | `lemma` | [Filter.Tendsto.const_div_atBot](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/filter-tendsto-const-div-atbot--14c94b1079ad7d322447644f.md) | 198 | `result-track:14c94b1079ad7d322447644fa21dec8e6a9c458ce5829a247fac4b78d3046def` |
| 25 | `theorem` | [Filter.Tendsto.inv_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/filter-tendsto-inv-tendsto-attop--c48fbe3302426f9f3bc68649.md) | 202 | `result-track:c48fbe3302426f9f3bc68649cea671ca64e42eb71da0b7ba1a27edfedf56bd1a` |
| 26 | `theorem` | [Filter.Tendsto.inv_tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/filter-tendsto-inv-tendsto-atbot--61fe29d250a4ba71d17d6b56.md) | 205 | `result-track:61fe29d250a4ba71d17d6b56ba300ec85917e55e77199bd761e8f7f1bd9e9185` |
| 27 | `theorem` | [Filter.Tendsto.inv_tendsto_nhdsGT_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/filter-tendsto-inv-tendsto-nhdsgt-zero--dd7c0a141c98bcdfc04fb8e7.md) | 208 | `result-track:dd7c0a141c98bcdfc04fb8e7bbd5298644e5fc795bea3a7907a593870f9102c8` |
| 28 | `theorem` | [Filter.Tendsto.inv_tendsto_nhdsLT_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/filter-tendsto-inv-tendsto-nhdslt-zero--b2120807dcd54b69c825c8c2.md) | 214 | `result-track:b2120807dcd54b69c825c8c2b5b14a37fde537ffbd1a78c780e9ed55e7ab6118` |
| 29 | `theorem` | [bdd_le_mul_tendsto_zero'](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/bdd-le-mul-tendsto-zero--9689ec0d6c1a63a0358150f3.md) | 219 | `result-track:9689ec0d6c1a63a0358150f31267137faa74f36d98d34af2d3818cbf327f45f7` |
| 30 | `theorem` | [bdd_le_mul_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/bdd-le-mul-tendsto-zero--5967ebbb7c9c8bd5269f7e8b.md) | 233 | `result-track:5967ebbb7c9c8bd5269f7e8b9a906bab9293f31c673a140a00f88d6dde6d4926` |
| 31 | `theorem` | [tendsto_bdd_div_atTop_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/tendsto-bdd-div-attop-nhds-zero--1c1b16f397f20da3eaa4ea13.md) | 245 | `result-track:1c1b16f397f20da3eaa4ea1304e3b3d20f0c89787a8ece641e4fdac2dca8a092` |
| 32 | `theorem` | [tendsto_pow_neg_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/tendsto-pow-neg-attop--d28f72656ed64795e9019a0e.md) | 253 | `result-track:d28f72656ed64795e9019a0ee1f2935e8502cb26c180fd18f1be47a0a3710cd1` |
| 33 | `theorem` | [tendsto_zpow_atTop_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/tendsto-zpow-attop-zero--62ff08570723ba08fee24483.md) | 257 | `result-track:62ff08570723ba08fee2448344589fcb71b42beabe11b5e469d917444ac91ae5` |
| 34 | `theorem` | [tendsto_const_mul_zpow_atTop_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/tendsto-const-mul-zpow-attop-zero--6d5da566e99d138751dcf154.md) | 263 | `result-track:6d5da566e99d138751dcf154a948e1e62c430872179fc5b15e20b7e88bfcd9ec` |
| 35 | `theorem` | [tendsto_const_mul_pow_nhds_iff'](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/tendsto-const-mul-pow-nhds-iff--d062f01a07acc98cafc0d0fe.md) | 267 | `result-track:d062f01a07acc98cafc0d0fea3370f5282be59ac77009028c31c2ef6fc2c025a` |
| 36 | `theorem` | [tendsto_const_mul_pow_nhds_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/tendsto-const-mul-pow-nhds-iff--1fa636cad1311ecbe1efbafd.md) | 278 | `result-track:1fa636cad1311ecbe1efbafdeb7b275b56ed5fa46e19e17634776a63de8a07c7` |
| 37 | `theorem` | [tendsto_const_mul_zpow_atTop_nhds_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/tendsto-const-mul-zpow-attop-nhds-iff--68cde13429bdf946ce3158c2.md) | 282 | `result-track:68cde13429bdf946ce3158c2db92a162f050f6bfb083794e7af2fa89159c86c1` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/instance--035538c006e36a0f75de2ead.md) | 298 | `declaration-track:035538c006e36a0f75de2ead5cf99b7f0cc79fc29d48facd388d21fa4e03d3e6` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/instance--68e94bdcbabe83a75bd69d5e.md) | 311 | `declaration-track:68e94bdcbabe83a75bd69d5eff2595c8ec21424794e935ae18c174f5e3793af7` |
| 40 | `theorem` | [comap_mulLeft_nhdsGT_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/comap-mulleft-nhdsgt-zero--db00c7ba714c839813cdd702.md) | 318 | `result-track:db00c7ba714c839813cdd7020c9242f62192c1542f358ad42cee451153b343b5` |
| 41 | `theorem` | [eventually_nhdsGT_zero_mul_left](../../../../../mathematics/Topology/GeneralTopology/Field/Variant2fce1535aeb959e4df46df62c4b2f48ef0454d5e559e82ab18ee86637100bdae.lean/declarations/eventually-nhdsgt-zero-mul-left--06d0a97fc5a5b26848f3b898.md) | 327 | `result-track:06d0a97fc5a5b26848f3b8982644183ff61de24454d5de5b2ead204ea6b227bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
