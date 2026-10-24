# Verification target: GRWTSK.Analysis.FunctionalAnalysis.TemperateGrowth.Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97ec26c2b3c796caa8e997a28d64d404f28af170",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97ec26c2b3c796caa8e997a28d64d404f28af170`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Bounds` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.JapaneseBracket` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasTemperateGrowth](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth--f9b53b312357f423baa77907.md) | 40 | `declaration-track:f9b53b312357f423baa7790711627160594d6623dc22d186a1e915510acc6ca1` |
| 2 | `theorem` | [hasTemperateGrowth_iff_isBigO](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-iff-isbigo--2b5360d41208ce9551ae6517.md) | 51 | `result-track:2b5360d41208ce9551ae6517f02e5fa1854e0b41079d5bda4be67325de2050e8` |
| 3 | `theorem` | [HasTemperateGrowth.isBigO](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-isbigo--7025b0b0b1fe4708dcce192e.md) | 63 | `result-track:7025b0b0b1fe4708dcce192eae10e5325cf7747bd7e164d4696de0ed4d5aa34c` |
| 4 | `theorem` | [HasTemperateGrowth.isBigO_uniform](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-isbigo-uniform--d868a451d7c1329bd3b831e9.md) | 73 | `result-track:d868a451d7c1329bd3b831e937b02b3fd8f1ebb3928770a73d887bf81985492a` |
| 5 | `theorem` | [HasTemperateGrowth.norm_iteratedFDeriv_le_uniform](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-norm-iteratedfderiv-le-uniform--9aee76f35bdf21dcc33b42b3.md) | 85 | `result-track:9aee76f35bdf21dcc33b42b39e035e2261cef42d948291faa216683aa92b300b` |
| 6 | `lemma` | [HasTemperateGrowth.of_fderiv](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-of-fderiv--ab763a9ee3e1ad852c73b4fa.md) | 98 | `result-track:ab763a9ee3e1ad852c73b4fa4a5cf9b5cfa47431d2a31644ef256ac819cec76d` |
| 7 | `lemma` | [HasTemperateGrowth.zero](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-zero--729f38c616766da39fdb8d12.md) | 110 | `result-track:729f38c616766da39fdb8d121fe47ec9403d75f748dc7b3ff1c5b758159c8207` |
| 8 | `lemma` | [HasTemperateGrowth.const](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-const--cdfd9fb75ce46ba2c1e4d095.md) | 116 | `result-track:cdfd9fb75ce46ba2c1e4d09580e751ae0cb566a3c116850ca3db69091aca36fd` |
| 9 | `lemma` | [_root_.HasCompactSupport.hasTemperateGrowth](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/root-hascompactsupport-hastemperategrowth--a80883776defac141b9135b8.md) | 121 | `result-track:a80883776defac141b9135b8d36599351069318de87313c26da7a7ebff4c6e4a` |
| 10 | `theorem` | [HasTemperateGrowth.comp'](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-comp--b0670a351db149e221f48fd2.md) | 134 | `result-track:b0670a351db149e221f48fd22942c45875857198df85b6f37f325e62886164d9` |
| 11 | `theorem` | [HasTemperateGrowth.comp](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-comp--2235f5852f8da1f8abad94b6.md) | 175 | `result-track:2235f5852f8da1f8abad94b66f2d24108beed751cbeb99e22bab30a71e7de555` |
| 12 | `theorem` | [HasTemperateGrowth.neg](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-neg--6fec2bf0da977a14d6179a4e.md) | 189 | `result-track:6fec2bf0da977a14d6179a4e43343e170cdd97be9f3ec0259fe0dd5e6582f81f` |
| 13 | `theorem` | [HasTemperateGrowth.add](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-add--b27a544cd4d06fb6d65ebcf1.md) | 195 | `result-track:b27a544cd4d06fb6d65ebcf14750a4b8f61dcb846816457070734fa85f59bb5c` |
| 14 | `theorem` | [HasTemperateGrowth.sub](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-sub--4525fb3ade06814ef8212e53.md) | 209 | `result-track:4525fb3ade06814ef8212e53ec5122bdcd91cbba86cc15d80557512b5c335672` |
| 15 | `theorem` | [HasTemperateGrowth.sum](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-sum--1880e87281a51c3e61dc3126.md) | 215 | `result-track:1880e87281a51c3e61dc3126cc3566722b6a094921f54902ab5660ff850ce72a` |
| 16 | `theorem` | [_root_.ContinuousLinearMap.bilinear_hasTemperateGrowth](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/root-continuouslinearmap-bilinear-hastemperategrowth--9f629738013c870465cda372.md) | 237 | `result-track:9f629738013c870465cda3723ce35ed9e0b109278b5c74ddf89e2a7d98331322` |
| 17 | `lemma` | [HasTemperateGrowth.id](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-id--fa8bffed2e89f96e516bc6e4.md) | 256 | `result-track:fa8bffed2e89f96e516bc6e44349e39d7e01bd45ad3cb1cfb1f571d02b4027aa` |
| 18 | `lemma` | [HasTemperateGrowth.id'](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-id--7712963c70a0580dfed2ab3e.md) | 264 | `result-track:7712963c70a0580dfed2ab3eb9e2e065186227d9f469b55d2ef0a344028d3737` |
| 19 | `theorem` | [HasTemperateGrowth.smul](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-smul--514cf92f2ad49cf6a4ff1ff0.md) | 271 | `result-track:514cf92f2ad49cf6a4ff1ff00b4cb8ec005dd206a65f66710a34331e0a87a6d5` |
| 20 | `theorem` | [HasTemperateGrowth.mul](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-mul--b6dea98b748e1c329ff7a74a.md) | 279 | `result-track:b6dea98b748e1c329ff7a74ad9a7bf85e584fc61b2cf0b277c4e149101f5fce3` |
| 21 | `theorem` | [HasTemperateGrowth.pow](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-pow--e21e36afaf71f38ab9510ff1.md) | 284 | `result-track:e21e36afaf71f38ab9510ff13b1d8c97001e7343b0edb5b1374543d686b69b0f` |
| 22 | `lemma` | [_root_.ContinuousLinearMap.hasTemperateGrowth](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/root-continuouslinearmap-hastemperategrowth--89bb4a0da6b4288a629184a1.md) | 293 | `result-track:89bb4a0da6b4288a629184a148e63ee4162c6f86411ce92dca120ae5c7a2e511` |
| 23 | `lemma` | [_root_.ContinuousLinearEquiv.hasTemperateGrowth](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/root-continuouslinearequiv-hastemperategrowth--2d323d2fc39a6ae65e17b2e2.md) | 301 | `result-track:2d323d2fc39a6ae65e17b2e2f6d5993067c6d237d6322e6c31989e0f72722e87` |
| 24 | `theorem` | [hasTemperateGrowth_inner_left](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-inner-left--d1f57f56324fbefe1b299c8c.md) | 308 | `result-track:d1f57f56324fbefe1b299c8c6d674b07aa10a354fb62cefde4c94bc85d4aa4c3` |
| 25 | `theorem` | [hasTemperateGrowth_inner_right](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-inner-right--109be05d9e5a752591b0ac57.md) | 312 | `result-track:109be05d9e5a752591b0ac57f21108178e5abbf01415b1fde4ccd2efc3dbd715` |
| 26 | `theorem` | [hasTemperateGrowth_norm_sq](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-norm-sq--15554b1b55d30434e9043efe.md) | 317 | `result-track:15554b1b55d30434e9043efedb09e519d445fd91724db2d298d3b5a89b391eac` |
| 27 | `theorem` | [hasTemperateGrowth_one_add_norm_sq_rpow](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-one-add-norm-sq-rpow--5523d5ee4eead7f1f8d8968e.md) | 329 | `result-track:5523d5ee4eead7f1f8d8968e7a655df5efa80c4552e6e9116e71f983e17a823d` |
| 28 | `theorem` | [Real.hasTemperateGrowth_sin](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/real-hastemperategrowth-sin--3d2a02857e60b940a545fed6.md) | 409 | `result-track:3d2a02857e60b940a545fed637304a0578046fc864e2c310189ada758f1a17d6` |
| 29 | `theorem` | [Real.hasTemperateGrowth_cos](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/real-hastemperategrowth-cos--743831b03b1bbbf2ba4df40a.md) | 415 | `result-track:743831b03b1bbbf2ba4df40ad2fab2cc58c1584c50cd4dabaf026673371478d6` |
| 30 | `theorem` | [Complex.hasTemperateGrowth_ofReal](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/complex-hastemperategrowth-ofreal--50c344d2cb3c5150fe9d76f1.md) | 425 | `result-track:50c344d2cb3c5150fe9d76f1d94dc042aa775513024e27b96583d762a3dfe892` |
| 31 | `theorem` | [Complex.hasTemperateGrowth_re](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/complex-hastemperategrowth-re--370e129ede5e76b14700ad63.md) | 432 | `result-track:370e129ede5e76b14700ad6378848d0f48470d0efb50b8e0ee4aa561461a2436` |
| 32 | `theorem` | [Complex.hasTemperateGrowth_im](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/complex-hastemperategrowth-im--b84d0e68bda2413da7bd08f2.md) | 436 | `result-track:b84d0e68bda2413da7bd08f2bf4a9bd8fab459a835718c3e5b48db4cb0a71c75` |
| 33 | `theorem` | [Complex.hasTemperateGrowth_exp_mul_I](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/complex-hastemperategrowth-exp-mul-i--0845bfdfca9abe63cc5c552c.md) | 441 | `result-track:0845bfdfca9abe63cc5c552cfbdeb2f48cd811b108bdfd4be541aa825fdbce67` |
| 34 | `theorem` | [RCLike.hasTemperateGrowth_ofReal](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/rclike-hastemperategrowth-ofreal--60fdb4ebb810cf87d84ea6eb.md) | 454 | `result-track:60fdb4ebb810cf87d84ea6ebabfcc8536eac5fdf6726359b73efcd5ba15f4422` |
| 35 | `theorem` | [RCLike.hasTemperateGrowth_re](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/rclike-hastemperategrowth-re--ea116d13c1581ca130af4d1f.md) | 462 | `result-track:ea116d13c1581ca130af4d1febd1f88087094f5dbf0f3092ae2a71295cf2b770` |
| 36 | `theorem` | [RCLike.hasTemperateGrowth_im](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/rclike-hastemperategrowth-im--d9b7831b00eb162f256b5e5b.md) | 467 | `result-track:d9b7831b00eb162f256b5e5b533ace20957dd1295061f62036b21fbb863f557c` |
| 37 | `class` | [HasTemperateGrowth](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth--c6d1d195683dd94290e1eca1.md) | 481 | `declaration-track:c6d1d195683dd94290e1eca1192764b7e8966ad951d1407f03ca8f1575373bf8` |
| 38 | `def` | [integrablePower](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/integrablepower--4f754a629bf49345212779bc.md) | 487 | `declaration-track:4f754a629bf49345212779bc6012a8cc1978965cebe8839dc01e5ba3ed5d6c64` |
| 39 | `lemma` | [integrable_pow_neg_integrablePower](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/integrable-pow-neg-integrablepower--55ea7c6d95f47491d6dd0b54.md) | 490 | `result-track:55ea7c6d95f47491d6dd0b541d825c6d25d09ea8451a234ebc3668fb3cb21d10` |
| 40 | `instance` | [_root_.MeasureTheory.IsFiniteMeasure.instHasTemperateGrowth](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/root-measuretheory-isfinitemeasure-insthastemperategrowth--451aa35bf3cfad306a7eb116.md) | 495 | `declaration-track:451aa35bf3cfad306a7eb1169b9b2efd9d69e698750187585c208004cdd30243` |
| 41 | `instance` | [IsAddHaarMeasure.instHasTemperateGrowth](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/isaddhaarmeasure-insthastemperategrowth--b78f821842021d4747548e32.md) | 499 | `declaration-track:b78f821842021d4747548e322667f0691267fff89fc02bab987fe88cb0579507` |
| 42 | `lemma` | [_root_.pow_mul_le_of_le_of_pow_mul_le](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/root-pow-mul-le-of-le-of-pow-mul-le--c505d8167dac0deee599ec56.md) | 507 | `result-track:c505d8167dac0deee599ec56d57be891a7bdb979423b5e20cf810861da6ef431` |
| 43 | `lemma` | [_root_.integrable_of_le_of_pow_mul_le](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/root-integrable-of-le-of-pow-mul-le--255cca0d4acdb3e6930746b9.md) | 540 | `result-track:255cca0d4acdb3e6930746b9e6e8a713492f0dfad5beaffa93b9a301920cb006` |
| 44 | `lemma` | [_root_.integral_pow_mul_le_of_le_of_pow_mul_le](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/root-integral-pow-mul-le-of-le-of-pow-mul-le--f83f258456fc03f789ba54d3.md) | 552 | `result-track:f83f258456fc03f789ba54d31f41d93e37b41f893ddc1866dbe6e8af80dcdb4c` |
| 45 | `theorem` | [HasTemperateGrowth.exists_eLpNorm_lt_top](../../../../../mathematics/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/declarations/hastemperategrowth-exists-elpnorm-lt-top--8614407d248cbb5545b0b370.md) | 567 | `result-track:8614407d248cbb5545b0b3703e3f60847d810a4af0c92c15f20818bff3aac085` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
