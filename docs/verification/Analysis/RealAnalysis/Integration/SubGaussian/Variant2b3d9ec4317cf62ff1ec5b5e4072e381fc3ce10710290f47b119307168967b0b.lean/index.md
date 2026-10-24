# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SubGaussian.Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f30fb70372fb70e2c30f4919426178cc4ee9c7ed",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f30fb70372fb70e2c30f4919426178cc4ee9c7ed`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Condexp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Moments.MGFAnalytic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Kernel.HasSubgaussianMGF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/kernel-hassubgaussianmgf--b87d5cf741ac48b42b764366.md) | 143 | `declaration-track:b87d5cf741ac48b42b7643663f84d97ec8a8be52b4080ddf401654c793d46a71` |
| 2 | `lemma` | [aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/aestronglymeasurable--4d7e3e1bf5094abb7e765e38.md) | 152 | `result-track:4d7e3e1bf5094abb7e765e381496a5dcec2a3ae4e3f675a72e113c7c2b44edd9` |
| 3 | `lemma` | [ae_integrable_exp_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/ae-integrable-exp-mul--4486bc6fb1b080ee6e1a6c09.md) | 157 | `result-track:4486bc6fb1b080ee6e1a6c09825f3deaa3a6f60e71e5646d9eef3a72e4180b49` |
| 4 | `lemma` | [ae_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/ae-aestronglymeasurable--15eed6ed08439c8971ef87b7.md) | 161 | `result-track:15eed6ed08439c8971ef87b7e62a7ba6d844dc6d0d4bdc62ffb171aafca19be5` |
| 5 | `lemma` | [ae_forall_integrable_exp_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/ae-forall-integrable-exp-mul--d70d64e1da158cb144eb847e.md) | 167 | `result-track:d70d64e1da158cb144eb847e126a999a1e10586b176788dbc70f958b85b446e0` |
| 6 | `lemma` | [memLp_exp_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/memlp-exp-mul--ce9840afc79423a44643e2ca.md) | 175 | `result-track:ce9840afc79423a44643e2ca78553191586b6f6cbacdf1e902de702bdc0705b1` |
| 7 | `lemma` | [cgf_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/cgf-le--5e60963ab845e886b3b2e916.md) | 190 | `result-track:5e60963ab845e886b3b2e916283ff20815fef32c6593e2862ef166811fc5bc6d` |
| 8 | `lemma` | [isFiniteMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/isfinitemeasure--8f1b28f951ccffd55aaa3f17.md) | 203 | `result-track:8f1b28f951ccffd55aaa3f1791445e4e7f2832379051082e4b654952db4f3443` |
| 9 | `lemma` | [measure_univ_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/measure-univ-le-one--40234ad044bc2a7e6b040a85.md) | 208 | `result-track:40234ad044bc2a7e6b040a852c6755f8c22886c5d32684ea1eda441bca270e07` |
| 10 | `lemma` | [of_rat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/of-rat--28e24b77b352ee40e0743b1b.md) | 217 | `result-track:28e24b77b352ee40e0743b1b79bdfa8f6bab23afbc855597ab03b8e456add478` |
| 11 | `lemma` | [fun_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/fun-zero--4a163a4893b4b8dc39613060.md) | 233 | `result-track:4a163a4893b4b8dc396130604c04254e0b690c4d000e33a94a40e7be18884550` |
| 12 | `lemma` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/zero--d65b7e92d2da7c4701a63b6d.md) | 239 | `result-track:d65b7e92d2da7c4701a63b6d37ee79e646b3bdc49785a77dc07711cadbc291e0` |
| 13 | `lemma` | [zero_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/zero-kernel--6ddaf0fe05619b5eff0c184a.md) | 242 | `result-track:6ddaf0fe05619b5eff0c184aa77bfafe7a23511db90586cb6d93fd8d8a6f978f` |
| 14 | `lemma` | [zero_measure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/zero-measure--118a2d732664e2df0850963e.md) | 248 | `result-track:118a2d732664e2df0850963e94790e39685a40ac4112fbd4eb3cfb0a2d1c067e` |
| 15 | `lemma` | [congr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/congr--27bb143072938297bb39d0cd.md) | 250 | `result-track:27bb143072938297bb39d0cd277d1d3f48eb72987b446db438af913c5bdefb74` |
| 16 | `lemma` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.KernelHasSubgaussianMGF.Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.ProbabilityTheory.Kernel.HasSubgaussianMGF_congr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/root-grwtsk-analysis-realanalysis-integration-kernelhassubgaussianmgf-va--c8611a3ef529e2c8316bb75c.md) | 261 | `result-track:c8611a3ef529e2c8316bb75c4da2298e8640dc06907b5eebb5ed2b946fda61d0` |
| 17 | `lemma` | [of_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/of-map--f085ed240b7d42f0c51f8dd8.md) | 265 | `result-track:f085ed240b7d42f0c51f8dd8dc6f4a6a5370ea39226d5c8990cabcc783e91ef5` |
| 18 | `lemma` | [measure_ge_le_exp_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/measure-ge-le-exp-add--59c20913a5528582410211a4.md) | 282 | `result-track:59c20913a5528582410211a42b3b9e6e40afd0bb513c96c88883f95a8a1a4f68` |
| 19 | `lemma` | [measure_ge_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/measure-ge-le--f4a5d4fa365283ecfc461e43.md) | 293 | `result-track:f4a5d4fa365283ecfc461e43d5c61b2f1fb85ed6ae9501c2e721eab83384f5a7` |
| 20 | `lemma` | [prodMkLeft_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/prodmkleft-compprod--64c5d84c1cce805958bdaab0.md) | 313 | `result-track:64c5d84c1cce805958bdaab07be4bdff5cbfd020f36e1ecac92eb6e365b3e253` |
| 21 | `lemma` | [integrable_exp_add_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/integrable-exp-add-compprod--1b811b60a54b20ec3004089a.md) | 327 | `result-track:1b811b60a54b20ec3004089a3ecf6c9a6485dec34196bcd6f0ea8f8e00784f28` |
| 22 | `lemma` | [add_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/add-compprod--56270750050201fd78a5315f.md) | 350 | `result-track:56270750050201fd78a5315f44d981fee44176a2ff923f8e7c31a90e4d1c78c9` |
| 23 | `lemma` | [add_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/add-comp--ddaaf79aa51b0f721586b479.md) | 380 | `result-track:ddaaf79aa51b0f721586b479a15ae0d3bb298ac0258beecfc4846e2afec2cc7a` |
| 24 | `def` | [HasCondSubgaussianMGF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/hascondsubgaussianmgf--5e2dd13a23189cdce73e5039.md) | 408 | `declaration-track:5e2dd13a23189cdce73e5039c8bd2e772ce7cd778250d66b503704253d6ae6fe` |
| 25 | `lemma` | [mgf_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/mgf-le--3bcce5fbe910cfc90deb85d5.md) | 414 | `result-track:3bcce5fbe910cfc90deb85d50cca078524806095e743252274c47d8db0e3d61d` |
| 26 | `lemma` | [cgf_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/cgf-le--c72ec0551515940c869442d5.md) | 418 | `result-track:c72ec0551515940c869442d5d9a8b0c0460c24d454b21ff14dd9ccc010810640` |
| 27 | `lemma` | [ae_trim_condExp_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/ae-trim-condexp-le--28f945924f55e1e835ca9038.md) | 422 | `result-track:28f945924f55e1e835ca90385dbe9e32a4e521efdc3c2cce0021464134be5ccf` |
| 28 | `lemma` | [ae_condExp_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/ae-condexp-le--e64e978099daf082963a6d33.md) | 430 | `result-track:e64e978099daf082963a6d331f54286871a2736279e81fce14546af2176646f5` |
| 29 | `lemma` | [fun_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/fun-zero--fcbb9162a5790f7a0418d0a8.md) | 435 | `result-track:fcbb9162a5790f7a0418d0a85897bf7d1add79c2ccaac2bc49b7733714eabc23` |
| 30 | `lemma` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/zero--52ed4a5aefdbb41e640317bf.md) | 438 | `result-track:52ed4a5aefdbb41e640317bf5b1e17a86b06b7b429dc6179e72dad140892facf` |
| 31 | `lemma` | [memLp_exp_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/memlp-exp-mul--457dbf174b33a16275a99199.md) | 440 | `result-track:457dbf174b33a16275a9919971af718f476eeaa555a0e7b31b0197ec1da587d8` |
| 32 | `lemma` | [integrable_exp_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/integrable-exp-mul--df3e688cfbc5d8c562151be3.md) | 444 | `result-track:df3e688cfbc5d8c562151be3908e8f4142148efd326761533879600dfbac2ba0` |
| 33 | `structure` | [HasSubgaussianMGF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/hassubgaussianmgf--2bd588b18a46b6f02532c5d7.md) | 465 | `declaration-track:2bd588b18a46b6f02532c5d7b06c6a732d4351bf9019d196fc39c091aa4133fc` |
| 34 | `lemma` | [HasSubgaussianMGF_iff_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/hassubgaussianmgf-iff-kernel--fd5baaea20e1cb8b0429b35e.md) | 469 | `result-track:fd5baaea20e1cb8b0429b35ef8c8d2371c42d0c0235821bde8fdbb05110af9fb` |
| 35 | `lemma` | [aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/aestronglymeasurable--e035ecb993dbb9d6cf3a783a.md) | 476 | `result-track:e035ecb993dbb9d6cf3a783a9a78aecbea993116c5c0727d03fd625704257237` |
| 36 | `lemma` | [aemeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/aemeasurable--3c97af6188d2880a2bf3b6d5.md) | 480 | `result-track:3c97af6188d2880a2bf3b6d590a4ca45533b66857593a484d2979ae26e3f8ed2` |
| 37 | `lemma` | [congr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/congr--f7e8782dd8158ae6f12ec02c.md) | 483 | `result-track:f7e8782dd8158ae6f12ec02c1070a9155876667884c58aab2c5bd82da7658c00` |
| 38 | `lemma` | [memLp_exp_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/memlp-exp-mul--de8cc39c0d51c9a8276cd934.md) | 489 | `result-track:de8cc39c0d51c9a8276cd9341e73765d7ca16511d485308c376b9a15ae4745cd` |
| 39 | `lemma` | [cgf_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/cgf-le--9b2c2a12ec4a7ad9fdb37848.md) | 494 | `result-track:9b2c2a12ec4a7ad9fdb378486f33d7c6a65f1c60bac7082e499c2406e1e3b956` |
| 40 | `lemma` | [fun_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/fun-zero--2ac74c88f3a2d0aee8d0af9a.md) | 499 | `result-track:2ac74c88f3a2d0aee8d0af9a287d458b0b0931c43adb166c8b1a9b6ff62d1449` |
| 41 | `lemma` | [zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/zero--de6c3bf0f5fd8f5953386aed.md) | 503 | `result-track:de6c3bf0f5fd8f5953386aed00d5231e854c7f6c05206dd85a73b3836730c986` |
| 42 | `lemma` | [of_map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/of-map--e5a692230a06e12f367a94f7.md) | 505 | `result-track:e5a692230a06e12f367a94f70b30da2e806c7a701eebaf20f2aeb42def3e2d54` |
| 43 | `lemma` | [trim](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/trim--b51c8f1f22dffa8404f89f55.md) | 515 | `result-track:b51c8f1f22dffa8404f89f55031b2f4c87785003968eca0058f6cb5db859eba9` |
| 44 | `lemma` | [measure_ge_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/measure-ge-le--7bb841f35b4728dc6b0938e8.md) | 528 | `result-track:7bb841f35b4728dc6b0938e8e67f17645532bf73fd90ce1f30bab1f1c207fe1e` |
| 45 | `lemma` | [add_of_indepFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/add-of-indepfun--93325117d725b88a3d2072a5.md) | 537 | `result-track:93325117d725b88a3d2072a51013ce41054d42fdb7bd1f284e323ce871b0c919` |
| 46 | `lemma` | [sum_of_iIndepFun_of_forall_aemeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/sum-of-iindepfun-of-forall-aemeasurable--c6a526c68c8daea248d7cc57.md) | 556 | `result-track:c6a526c68c8daea248d7cc575adae58216ee86dcddb5ae3c0b9322236796e7eb` |
| 47 | `lemma` | [sum_of_iIndepFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/sum-of-iindepfun--3a303b8437d1c3f5d5561b48.md) | 573 | `result-track:3a303b8437d1c3f5d5561b482c0bc68e36fdb4cc37ba970f8864b63bef66c2ca` |
| 48 | `lemma` | [measure_sum_ge_le_of_iIndepFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/measure-sum-ge-le-of-iindepfun--71e53385bda3115ab67ad8e3.md) | 585 | `result-track:71e53385bda3115ab67ad8e3505334443805de3f4b88e58e53c0c9a54ded4fd4` |
| 49 | `lemma` | [measure_sum_range_ge_le_of_iIndepFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/measure-sum-range-ge-le-of-iindepfun--3a2d19f87e3f49427451e3fb.md) | 592 | `result-track:3a2d19f87e3f49427451e3fb798480c9400571a3c22f6d278ab891533d6df0eb` |
| 50 | `lemma` | [HasSubgaussianMGF_add_of_HasCondSubgaussianMGF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/hassubgaussianmgf-add-of-hascondsubgaussianmgf--7a844fd7a9fbd5803352bf74.md) | 613 | `result-track:7a844fd7a9fbd5803352bf74865027aac7db0d331e426abf0d6481d63a6c5e06` |
| 51 | `lemma` | [HasSubgaussianMGF_sum_of_HasCondSubgaussianMGF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/hassubgaussianmgf-sum-of-hascondsubgaussianmgf--e6001f9784901513a3f59bf6.md) | 637 | `result-track:e6001f9784901513a3f59bf6c0df19459d81d3c3ec34dd4b9b380aac3cae7830` |
| 52 | `lemma` | [measure_sum_ge_le_of_HasCondSubgaussianMGF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SubGaussian/Variant2b3d9ec4317cf62ff1ec5b5e4072e381fc3ce10710290f47b119307168967b0b.lean/declarations/measure-sum-ge-le-of-hascondsubgaussianmgf--968ecca8e6c4982b67c667e0.md) | 657 | `result-track:968ecca8e6c4982b67c667e0d7d36907d4b3c22319c5236411c6eb346471f0ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
