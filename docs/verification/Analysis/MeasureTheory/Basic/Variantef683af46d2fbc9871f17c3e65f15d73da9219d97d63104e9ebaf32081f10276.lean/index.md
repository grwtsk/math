# Verification target: GRWTSK.Analysis.MeasureTheory.Basic.Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b967764edb4643c0031eba20633f71a3a5358f3",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b967764edb4643c0031eba20633f71a3a5358f3`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Complex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Metric` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Real` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_exp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-exp--00cc5ebcd9d85de586d1ac3e.md) | 33 | `result-track:00cc5ebcd9d85de586d1ac3eeda3b985c8ea09340b6ef05bff10824439e20450` |
| 2 | `theorem` | [measurable_log](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-log--a59218b4bf637b47d7c096c9.md) | 37 | `result-track:a59218b4bf637b47d7c096c9adb8c4c2f8e215fca773739f64cd68b5f10c3e22` |
| 3 | `lemma` | [measurable_of_measurable_exp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-of-measurable-exp--44db0b9cac48b77533a060ef.md) | 41 | `result-track:44db0b9cac48b77533a060ef87ef70515c2c2a861d4465349673ed973121222d` |
| 4 | `lemma` | [aemeasurable_of_aemeasurable_exp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/aemeasurable-of-aemeasurable-exp--2b22f9da0e8d616beed3ef50.md) | 47 | `result-track:2b22f9da0e8d616beed3ef50efc1a317e16daf08d42ef66937cd7cc1f849e074` |
| 5 | `lemma` | [aemeasurable_of_aemeasurable_exp_mul](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/aemeasurable-of-aemeasurable-exp-mul--091ce30d8cca99392ea011a8.md) | 53 | `result-track:091ce30d8cca99392ea011a8a080d415f1149bc088ca408fb00eda2bae598dd5` |
| 6 | `theorem` | [measurable_sin](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-sin--5b398ab0b15ba534b0f1ea62.md) | 60 | `result-track:5b398ab0b15ba534b0f1ea62a055e481e6f5b55e2581870a9a36947d7c06d022` |
| 7 | `theorem` | [measurable_cos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-cos--801f2eeed5beca92a5f51f55.md) | 64 | `result-track:801f2eeed5beca92a5f51f5572f63facb9759de4886ccc9ac9b42858020b39c9` |
| 8 | `theorem` | [measurable_sinh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-sinh--78c1831103e1c58ed40b7d41.md) | 68 | `result-track:78c1831103e1c58ed40b7d41284dc92432600d454a81a4880f217c45ed632394` |
| 9 | `theorem` | [measurable_cosh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-cosh--eb02f89e1ae1897c2dee23a4.md) | 72 | `result-track:eb02f89e1ae1897c2dee23a489f7760cbdfead8b1a3c022b7cf4eee265e626a3` |
| 10 | `theorem` | [measurable_arcsin](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-arcsin--0001ea7190820fdd2da392f0.md) | 76 | `result-track:0001ea7190820fdd2da392f0cf546d11671b2ab9991c32e363c7ad4c707d06ab` |
| 11 | `theorem` | [measurable_arccos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-arccos--b9f5e2055303369f2e2659e2.md) | 80 | `result-track:b9f5e2055303369f2e2659e24e16e7994c4c9a9ac0dc8158ec005a2cc9f4aa3d` |
| 12 | `theorem` | [measurable_re](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-re--3ae0849493771738e1a37d4e.md) | 88 | `result-track:3ae0849493771738e1a37d4eef34ea9fb0360231f951958170307134212f8f53` |
| 13 | `theorem` | [measurable_im](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-im--49b064c364dd87d59fcd1737.md) | 92 | `result-track:49b064c364dd87d59fcd1737b2292647cfcec08271eae899b0949698fb4f1a73` |
| 14 | `theorem` | [measurable_ofReal](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-ofreal--02ca13e01d85a0746a34f269.md) | 96 | `result-track:02ca13e01d85a0746a34f269d63d3806d05aea655b84371fa8fdebf45b64061d` |
| 15 | `theorem` | [measurable_exp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-exp--45fbcd85138bc72b0db3e44d.md) | 100 | `result-track:45fbcd85138bc72b0db3e44dc0935ac74fb6c509a43968326d9bbcd5be1c5f7c` |
| 16 | `theorem` | [measurable_sin](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-sin--1be45af6785aec76282efe63.md) | 104 | `result-track:1be45af6785aec76282efe63abc228f99dd46eaa920124dc8bfd0e8d0dbac5b4` |
| 17 | `theorem` | [measurable_cos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-cos--93808c6c1f4763f1c7bf698d.md) | 108 | `result-track:93808c6c1f4763f1c7bf698dcec0f0499a0454ddbe1b59313cef9b12f2d42f87` |
| 18 | `theorem` | [measurable_sinh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-sinh--4c3ac1c47847174ce90a21cc.md) | 112 | `result-track:4c3ac1c47847174ce90a21ccca3f3fe912cad29057cf92ad6c3b97e61521c0fb` |
| 19 | `theorem` | [measurable_cosh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-cosh--86f684ef72a708c0c401f730.md) | 116 | `result-track:86f684ef72a708c0c401f73048c5b063cce83557ed3bf24afec9140f146490c0` |
| 20 | `theorem` | [measurable_arg](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-arg--77dbd8de79389d8335d6d83b.md) | 120 | `result-track:77dbd8de79389d8335d6d83b1579e7357c964fbd3301061c8dffa93d1d269425` |
| 21 | `theorem` | [measurable_log](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-log--ccfac07c82cf9521eab52c47.md) | 130 | `result-track:ccfac07c82cf9521eab52c47098be9891462c0ce61dc41554222d99a172fe164` |
| 22 | `theorem` | [Measurable.exp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-exp--38fc355e7c2aa85f3e1147b7.md) | 144 | `result-track:38fc355e7c2aa85f3e1147b796048f8715f251bdaa8a16242c2f3bd7fef9990b` |
| 23 | `theorem` | [Measurable.log](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-log--5a5fef1a11a0eef4002da8ae.md) | 148 | `result-track:5a5fef1a11a0eef4002da8aeface123af1b6770718f6d79293f20ec193f44fa9` |
| 24 | `theorem` | [Measurable.cos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-cos--4fe074bd0153fdb7a5b1934e.md) | 152 | `result-track:4fe074bd0153fdb7a5b1934eb4321d34bbfc7266bcea6e03df80a17eb4f866a1` |
| 25 | `theorem` | [Measurable.sin](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-sin--36dc6a7185846f417c70f190.md) | 155 | `result-track:36dc6a7185846f417c70f19027aee3c8bcf3e2e47b10d4ff1a916d339031bf0e` |
| 26 | `theorem` | [Measurable.cosh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-cosh--dcf33b2a2de364b3eb55cd99.md) | 158 | `result-track:dcf33b2a2de364b3eb55cd990a4f6a37f83fbef334d01411b8dcd34b0805755d` |
| 27 | `theorem` | [Measurable.sinh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-sinh--29d1211a9b97a22261ae3c54.md) | 161 | `result-track:29d1211a9b97a22261ae3c54dfaf474659dd84b9a315f2ee559ed1a3e4e3451c` |
| 28 | `theorem` | [Measurable.sqrt](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-sqrt--2ab55a6ece8611b98c4dd5c6.md) | 164 | `result-track:2ab55a6ece8611b98c4dd5c6ee9431d3f91124e99e27792fd1b92c35a8b499f8` |
| 29 | `lemma` | [AEMeasurable.exp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/aemeasurable-exp--2886e08ac948511277a366bb.md) | 176 | `result-track:2886e08ac948511277a366bbed03bc07a48fef08dfc0979abec3be377dd10e60` |
| 30 | `lemma` | [AEMeasurable.log](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/aemeasurable-log--0214a7bff86be945aa17bdfe.md) | 180 | `result-track:0214a7bff86be945aa17bdfe08c7a44c2d050008bbc60d76bd95c2657d34298e` |
| 31 | `lemma` | [AEMeasurable.cos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/aemeasurable-cos--de49a82590a7873072ebe29e.md) | 184 | `result-track:de49a82590a7873072ebe29ea986b86d5d152bfd62ae703b99848489c6bf0933` |
| 32 | `lemma` | [AEMeasurable.sin](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/aemeasurable-sin--53cfebe0397973d7853460cf.md) | 188 | `result-track:53cfebe0397973d7853460cf8b4ce65cfb449a0883e0059b850da1211f011086` |
| 33 | `lemma` | [AEMeasurable.cosh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/aemeasurable-cosh--11a2aa09297b1a703fb64a4d.md) | 192 | `result-track:11a2aa09297b1a703fb64a4d4025a6d040e04ae6c3b33a3770043bb787b8a625` |
| 34 | `lemma` | [AEMeasurable.sinh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/aemeasurable-sinh--2a31c2f1dd05cdc07a5d377b.md) | 196 | `result-track:2a31c2f1dd05cdc07a5d377b1be5b129332a312b05785224a467ffa30268b394` |
| 35 | `lemma` | [AEMeasurable.sqrt](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/aemeasurable-sqrt--3b71b7eba8767859bdf15156.md) | 200 | `result-track:3b71b7eba8767859bdf15156379af29ea91f16bcbcfb6f0677d6f6b4f998e937` |
| 36 | `theorem` | [Measurable.cexp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-cexp--b730cbde80afb47f4793b777.md) | 213 | `result-track:b730cbde80afb47f4793b777e1e13e2dd8959fb2b1a69dfd8a4b7d893822e362` |
| 37 | `theorem` | [Measurable.ccos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-ccos--22615a0244a329b08a40a00d.md) | 217 | `result-track:22615a0244a329b08a40a00d63fb5eeb6e66bf537a3ad5482782203aa7725017` |
| 38 | `theorem` | [Measurable.csin](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-csin--3884aa710abb0c6a9a5f259e.md) | 221 | `result-track:3884aa710abb0c6a9a5f259ef8b38ff08d83f35015a38ebb95dd319623e8017e` |
| 39 | `theorem` | [Measurable.ccosh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-ccosh--d59fa42eab1e3843b851e240.md) | 225 | `result-track:d59fa42eab1e3843b851e240a08d749f2877a9bf186c136ea5fe4648be74e2fa` |
| 40 | `theorem` | [Measurable.csinh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-csinh--e9702a48159104d1108f0977.md) | 229 | `result-track:e9702a48159104d1108f09774a97473ec5aee2bac40b65e3fadad62a3b030a02` |
| 41 | `theorem` | [Measurable.carg](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-carg--64ccd5eaaee924ad3f0c8afb.md) | 233 | `result-track:64ccd5eaaee924ad3f0c8afbcb367a5592c6a13ea02d2c9af345edb7995d112c` |
| 42 | `theorem` | [Measurable.clog](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-clog--08ddc8ddca88209f00f07eaf.md) | 237 | `result-track:08ddc8ddca88209f00f07eaf00e112783a83bf69098e27608e8470e7f998512b` |
| 43 | `lemma` | [AEMeasurable.cexp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/aemeasurable-cexp--692352c482370ff2e579ae41.md) | 250 | `result-track:692352c482370ff2e579ae416a7e0c545157cb93f020b83ff66a4c336693c954` |
| 44 | `lemma` | [AEMeasurable.ccos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/aemeasurable-ccos--8827dfd5776d3364240db27c.md) | 254 | `result-track:8827dfd5776d3364240db27cc76de14c5290991c98601770a130a82e0a20eaa3` |
| 45 | `lemma` | [AEMeasurable.csin](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/aemeasurable-csin--f40fc016195cb4ce16bf748e.md) | 258 | `result-track:f40fc016195cb4ce16bf748e156468c5c5469d4ac4853838cd3c79b824f41ac6` |
| 46 | `lemma` | [AEMeasurable.ccosh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/aemeasurable-ccosh--c4a3dbcebbe32993d8803076.md) | 262 | `result-track:c4a3dbcebbe32993d8803076b3354ea8c41356648e387ecd696840bc679c2090` |
| 47 | `lemma` | [AEMeasurable.csinh](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/aemeasurable-csinh--e70a91f43522969d9ff760a4.md) | 266 | `result-track:e70a91f43522969d9ff760a4d868e30f5acab3967059bb6d1a05e05cb798ea83` |
| 48 | `lemma` | [AEMeasurable.carg](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/aemeasurable-carg--8d640738f0ccf9dfe238b6cf.md) | 270 | `result-track:8d640738f0ccf9dfe238b6cf23439e9e27a5e31db182bc0ce5e165b405d6af1a` |
| 49 | `lemma` | [AEMeasurable.clog](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/aemeasurable-clog--7e9e72b98af1577e177cb038.md) | 274 | `result-track:7e9e72b98af1577e177cb0382686d16f9c638dc5b81195ec05e69cee7245978f` |
| 50 | `theorem` | [Measurable.complex_ofReal](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/measurable-complex-ofreal--56a5770ce6020ce7749ef929.md) | 280 | `result-track:56a5770ce6020ce7749ef929941f3b52a78d547cb32155f87348fbb7fcfc6d42` |
| 51 | `theorem` | [AEMeasurable.complex_ofReal](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/aemeasurable-complex-ofreal--8f6632de0b9c86a9eee45804.md) | 286 | `result-track:8f6632de0b9c86a9eee45804243275ae08dc39b45b3fffa9b1b6fca64d4c5a57` |
| 52 | `instance` | [Complex.hasMeasurablePow](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/complex-hasmeasurablepow--f465141fabada3eaeb9eae2d.md) | 293 | `declaration-track:f465141fabada3eaeb9eae2d206a91b4c756e7a22b1b79d20e200993fc5d4fc8` |
| 53 | `instance` | [Real.hasMeasurablePow](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/real-hasmeasurablepow--274e003f8a446984582cbc76.md) | 298 | `declaration-track:274e003f8a446984582cbc7641961150ec05f1699b32f4144e2cee85631beb5f` |
| 54 | `instance` | [NNReal.hasMeasurablePow](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/nnreal-hasmeasurablepow--bdb35311006f56af97d491a5.md) | 303 | `declaration-track:bdb35311006f56af97d491a588d2773f996c6c693906d3c0295c73d3d09be1b3` |
| 55 | `instance` | [ENNReal.hasMeasurablePow](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantef683af46d2fbc9871f17c3e65f15d73da9219d97d63104e9ebaf32081f10276.lean/declarations/ennreal-hasmeasurablepow--07ec492a7902d85bdb2776c0.md) | 306 | `declaration-track:07ec492a7902d85bdb2776c0e38ba0817f5310347f73bafd337e59de3483e40f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
