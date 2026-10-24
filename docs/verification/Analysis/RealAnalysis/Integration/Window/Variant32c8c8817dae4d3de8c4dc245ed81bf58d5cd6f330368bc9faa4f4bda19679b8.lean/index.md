# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Window.Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Taper.Basic` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Norms` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Decay` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.Functional` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [phiD](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/phid--1caafda341bbdec92b5d9809.md) | 38 | `declaration-track:1caafda341bbdec92b5d9809595129d48fff73412b06fd890271b86a39ce3c35` |
| 2 | `theorem` | [phiD_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/phid-even--2479e2a322a00f0f5fef2e70.md) | 45 | `result-track:2479e2a322a00f0f5fef2e70372b78f2f420c8f16a3ad921b042ce993bc21c99` |
| 3 | `theorem` | [phiD_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/phid-nonneg--1e81340c3ac0f04324fcd3fb.md) | 50 | `result-track:1e81340c3ac0f04324fcd3fb7bb50771f2fbfe8dac3028f8439981486fc6b895` |
| 4 | `theorem` | [phiD_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/phid-le-one--1908fb40a8933191866165b2.md) | 53 | `result-track:1908fb40a8933191866165b21165d9c001318e2858171256295cc3c321733cb0` |
| 5 | `theorem` | [phiD_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/phid-eq-zero--d495891736cbabbd50fd8973.md) | 62 | `result-track:d495891736cbabbd50fd89734d26a28c690a759b1f8923449e3ffe71b765fa50` |
| 6 | `theorem` | [cos_factor_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/cos-factor-ge--4665da9854e50ecac61ddcf6.md) | 69 | `result-track:4665da9854e50ecac61ddcf6d8e3661cdf095177639e0650c4fb24904fa0a329` |
| 7 | `theorem` | [phiD_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/phid-contdiff--5061578adccc594c930f258c.md) | 88 | `result-track:5061578adccc594c930f258c1491b4da7ea4a3771a1dd9655dd48d5dbf891c27` |
| 8 | `theorem` | [phiD_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/phid-antitoneon--ae30319bb2e88d75fd69e9ea.md) | 140 | `result-track:ae30319bb2e88d75fd69e9ea51511a7d54d6ebf1a7fbb8f28e97e95b42465898` |
| 9 | `theorem` | [integral_abs_deriv_le_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/integral-abs-deriv-le-two--5c10f06869a09fba0de3380e.md) | 178 | `result-track:5c10f06869a09fba0de3380e70db84fceb43edd5c84302d1df86ff70119e405a` |
| 10 | `theorem` | [integral_abs_deriv_phiD_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/integral-abs-deriv-phid-le--7d6a0e6bca65491571f95d55.md) | 257 | `result-track:7d6a0e6bca65491571f95d5540a772f607365bed5efa09b240baa0516d29c2f5` |
| 11 | `theorem` | [integral_abs_deriv_phiD_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/integral-abs-deriv-phid-sq-le--02a6cf739047f8b3f4d34499.md) | 266 | `result-track:02a6cf739047f8b3f4d34499bdd8fe6775aade553de0325dd00d1704b98a3893` |
| 12 | `def` | [cDT](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/cdt--f87121771616c23b75ab2a51.md) | 286 | `declaration-track:f87121771616c23b75ab2a518c1b6740c5d681c3cf60e24ffe3b09eb407ed3b8` |
| 13 | `theorem` | [phiD_sq_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/phid-sq-eq--7fff87f1bb4cb8277074ff24.md) | 291 | `result-track:7fff87f1bb4cb8277074ff242fa9f70c0d0f630cea94b429f795b8ee71f7d79b` |
| 14 | `theorem` | [hasDerivAt_cosFactor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/hasderivat-cosfactor--e12069ef70d3103b8bf1276b.md) | 307 | `result-track:e12069ef70d3103b8bf1276bda01e89342b697830eb978db1db26a82a17469fa` |
| 15 | `theorem` | [hasDerivAt_cosFactor'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/hasderivat-cosfactor--e070c8794c31bc606f6e8c0a.md) | 317 | `result-track:e070c8794c31bc606f6e8c0a89dc596f7acd6ecfaf5141be7f3ca90068ea7d7a` |
| 16 | `theorem` | [integral_abs_eq_setIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/integral-abs-eq-setintegral--dbf3a9855ef4edfeb2556825.md) | 329 | `result-track:dbf3a9855ef4edfeb2556825d7595875ea2fe988e5ddb877ce42551d276a935f` |
| 17 | `theorem` | [deriv2_eq_zero_outside](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/deriv2-eq-zero-outside--79a41d3e5d833cb2e1d4dd33.md) | 344 | `result-track:79a41d3e5d833cb2e1d4dd33a417cd0802623a4b774dafdd4aa2e431d4168c52` |
| 18 | `theorem` | [integral_abs_deriv2_phiD_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/integral-abs-deriv2-phid-sq-le--879abf5bec21ac1134e85879.md) | 357 | `result-track:879abf5bec21ac1134e85879e83f30f9b0da939a8bb203c4e4e38465ca9d69ac` |
| 19 | `theorem` | [integral_abs_deriv2_phiD_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/integral-abs-deriv2-phid-le--4479c91062d28c3455fdce6d.md) | 610 | `result-track:4479c91062d28c3455fdce6d8a09515b39a1df389cb4bdaa462e2200c55e588d` |
| 20 | `theorem` | [edge_estimate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/edge-estimate--b75c39441dca2eca0c30baa1.md) | 989 | `result-track:b75c39441dca2eca0c30baa109a672f88f0632c0c24cdeab9a43d125e3afe1f1` |
| 21 | `theorem` | [integral_scale](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/integral-scale--39d13e528c2d6970983ce348.md) | 1087 | `result-track:39d13e528c2d6970983ce348c4f7a20e53491925dae55958820560a7aae0ce0a` |
| 22 | `theorem` | [aD_close](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/ad-close--56ad37510d4142d3a6625892.md) | 1094 | `result-track:56ad37510d4142d3a6625892fd48e1f5ac79d624a8ef28f7d239aac6d67a1362` |
| 23 | `theorem` | [bD_close](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/bd-close--aea254655a53b2a21f084ea4.md) | 1143 | `result-track:aea254655a53b2a21f084ea466390d9f8a618c0cb0ef9e19c2bf780c48efa1f9` |
| 24 | `def` | [Cfun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/cfun--aa3d61016d175d9042fe7c92.md) | 1211 | `declaration-track:aa3d61016d175d9042fe7c92afc5be6ce59348bc55f0c940f6ff605393449949` |
| 25 | `theorem` | [integral_cos_overlap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/integral-cos-overlap--194a66950207bc8999a1cdf3.md) | 1217 | `result-track:194a66950207bc8999a1cdf3d240c2ab5742d2c6e308f43924fa02292a0fbaea` |
| 26 | `theorem` | [integral_Cfun_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/integral-cfun-moment--0598c2e8742ba8665f73f37d.md) | 1261 | `result-track:0598c2e8742ba8665f73f37ddeeabe9a52a6ef56396dc8d51728695e7679df2b` |
| 27 | `def` | [sharpW](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/sharpw--2f09bd2243fb16987e49d703.md) | 1335 | `declaration-track:2f09bd2243fb16987e49d703804ea5c9cbf7d6952f5f04592751932e8e50aecd` |
| 28 | `theorem` | [sharp_autocorr_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/sharp-autocorr-eq--b545a471bcf6730680a2451c.md) | 1339 | `result-track:b545a471bcf6730680a2451c267dc4dbbb90cdd70a59f8cf12cbf1807141ff95` |
| 29 | `theorem` | [integral_abs_phiDsq_sub_sharp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/integral-abs-phidsq-sub-sharp--6cc77c514eb8f806ca509507.md) | 1365 | `result-track:6cc77c514eb8f806ca50950788111cd2f348740532c6ed6f9bfeefb91e6cf851` |
| 30 | `theorem` | [autocorr_phiDsq_close](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/autocorr-phidsq-close--8001d13f11cde5c4fcf97690.md) | 1478 | `result-track:8001d13f11cde5c4fcf97690ff2439afef15f7300ed34941fc5df3ce528414fe` |
| 31 | `theorem` | [jD_close](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/jd-close--d1447b5d6d1288c36a417bfa.md) | 1608 | `result-track:d1447b5d6d1288c36a417bfad03265c878440a4da56998f950caedab2310439b` |
| 32 | `theorem` | [autocorr_eq_conv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/autocorr-eq-conv--c4c686f369af1ae02437e2c2.md) | 1682 | `result-track:c4c686f369af1ae02437e2c285c193012a6871f7a80ad534cedf9998269630c7` |
| 33 | `theorem` | [autocorr_deriv_facts](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/autocorr-deriv-facts--348ba93fc2bb26e4933151ee.md) | 1703 | `result-track:348ba93fc2bb26e4933151ee1ecb32c6d16ebfaa438024592642dc6a7549c583` |
| 34 | `theorem` | [gD_deriv_facts](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/declarations/gd-deriv-facts--6bc26cb047ebe250800cd9aa.md) | 1750 | `result-track:6bc26cb047ebe250800cd9aac0cd38f32f30ded9e7bf6b1c6bf7c0787a4b2c29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
