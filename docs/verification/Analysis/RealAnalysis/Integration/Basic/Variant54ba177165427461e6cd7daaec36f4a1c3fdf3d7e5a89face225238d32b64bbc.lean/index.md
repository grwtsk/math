# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Basic.Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "554a83145af74304a7379839dd02180c4d22c6b8",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `554a83145af74304a7379839dd02180c4d22c6b8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Complex.FiniteDimensional` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [poissonMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/poissonmeasure--f8548d6e4bb641db5e4c6daa.md) | 49 | `declaration-track:f8548d6e4bb641db5e4c6daae20c72e0a7cc28986e20e10d328bdaecf4d2ddb7` |
| 2 | `lemma` | [poissonMeasure_singleton](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/poissonmeasure-singleton--4743982fcbdac897ffd6dead.md) | 58 | `result-track:4743982fcbdac897ffd6deadd3a8695e8635b38d243207623251fbc91799199e` |
| 3 | `lemma` | [poissonMeasure_real_singleton](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/poissonmeasure-real-singleton--a3de07b8853ea1a0ec6b2379.md) | 62 | `result-track:a3de07b8853ea1a0ec6b23798dbb1614006b909e92058a989ff3ce09cdc90b55` |
| 4 | `lemma` | [poissonMeasure_real_singleton_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/poissonmeasure-real-singleton-pos--1c1e18706618babdd3c881b0.md) | 66 | `result-track:1c1e18706618babdd3c881b0c1fd07622f5bbb1f8867a14ab6a9bf5eda4b1a6e` |
| 5 | `lemma` | [hasSum_one_poissonMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/hassum-one-poissonmeasure--2f3e3d442a5363e05ae0ab39.md) | 71 | `result-track:2f3e3d442a5363e05ae0ab39de7e828aa7e4aeaba68ca800fdd862f33ca9960e` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/instance--615094f7b6749c9ca5e24895.md) | 76 | `declaration-track:615094f7b6749c9ca5e2489519ddb170773c0795d9b3d4f96dda3467a11e68f6` |
| 7 | `lemma` | [integrable_poissonMeasure_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/integrable-poissonmeasure-iff--c276dcd269f6032569dc65bd.md) | 84 | `result-track:c276dcd269f6032569dc65bdc8d61fb8e3d054f35a94c182c1f2782ee91fa05a` |
| 8 | `lemma` | [integrable_map_cast_poissonMeasure_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/integrable-map-cast-poissonmeasure-iff--2672350bd8504d620ce67c9a.md) | 90 | `result-track:2672350bd8504d620ce67c9a3b748b6f05e04067722de55c9734e0931a958c6a` |
| 9 | `lemma` | [hasSum_integral_poissonMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/hassum-integral-poissonmeasure--82616dda245323ea5b332b30.md) | 96 | `result-track:82616dda245323ea5b332b301822151eaf58d491e97f7422bb859cf8fe7a1ffa` |
| 10 | `lemma` | [integral_poissonMeasure'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/integral-poissonmeasure--8867bf5c1a44cdd8bd304b8e.md) | 112 | `result-track:8867bf5c1a44cdd8bd304b8eb432d9c7d694f56dbed36bf51e1baaff57d8ee4b` |
| 11 | `lemma` | [integral_map_cast_poissonMeasure'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/integral-map-cast-poissonmeasure--94cabfa573adb41703aa7c73.md) | 117 | `result-track:94cabfa573adb41703aa7c735fa037d4a4dfaa5208c09f12598a8a3871633ccb` |
| 12 | `lemma` | [integral_poissonMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/integral-poissonmeasure--37853584a53bb1d0cca2eff2.md) | 130 | `result-track:37853584a53bb1d0cca2eff20e62a84af637bc47df19cc51613a260fc5230dc0` |
| 13 | `lemma` | [integral_map_cast_poissonMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/integral-map-cast-poissonmeasure--136542eb20869703bd69954d.md) | 136 | `result-track:136542eb20869703bd69954d04de07bc03395c058aaa4a41fe176939c43e06f0` |
| 14 | `lemma` | [charFun_map_cast_poissonMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/charfun-map-cast-poissonmeasure--45ee87cd7294ea07e0b88ae5.md) | 149 | `result-track:45ee87cd7294ea07e0b88ae5fbeda9bec6bd569f3789f35ee5f46d906b240d46` |
| 15 | `theorem` | [map_cast_poissonMeasure_conv_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/map-cast-poissonmeasure-conv-real--f96e2a33d3eb661954411a09.md) | 175 | `result-track:f96e2a33d3eb661954411a09372286837a532b68fb7623f4e67a322507542d97` |
| 16 | `theorem` | [poissonMeasure_conv_poissonMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/poissonmeasure-conv-poissonmeasure--95348fbce1454e79e6849a43.md) | 182 | `result-track:95348fbce1454e79e6849a4379eb4e750546b752a2e6bec11ab6323b535e62ff` |
| 17 | `theorem` | [map_cast_poissonMeasure_conv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/map-cast-poissonmeasure-conv--b3f5d539318d0a2b363e1b20.md) | 188 | `result-track:b3f5d539318d0a2b363e1b20fd112c6472925ad02d72f9a76a954be8439b88bb` |
| 18 | `theorem` | [IndepFun.hasLaw_add_poissonMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/indepfun-haslaw-add-poissonmeasure--c89f7caf80b2be965712415b.md) | 195 | `result-track:c89f7caf80b2be965712415b15278cca0d0083ea38c2ec1d6f4b4cb7c6892521` |
| 19 | `theorem` | [IndepFun.hasLaw_add_map_cast_poissonMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/indepfun-haslaw-add-map-cast-poissonmeasure--3a5959d9873d39f5373189f0.md) | 204 | `result-track:3a5959d9873d39f5373189f06fe62f0898d2a820a41aaa9944e5c940f8098519` |
| 20 | `def` | [poissonPMFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/poissonpmfreal--6e3b66e4b51629b708cbc024.md) | 218 | `declaration-track:6e3b66e4b51629b708cbc024e1fc69ba1e5cb15544f8f44cca995e32d4aabd2a` |
| 21 | `lemma` | [poissonPMFReal_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/poissonpmfreal-pos--b5f49afb74e035dbe710abcf.md) | 224 | `result-track:b5f49afb74e035dbe710abcfdda7f9022b065bd24a4f455c56f124ce017ed722` |
| 22 | `lemma` | [poissonPMFReal_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/poissonpmfreal-nonneg--8c262f4d2d7783a13f2b7873.md) | 229 | `result-track:8c262f4d2d7783a13f2b78739ccd254593c1ccb405fa2c07514d9b24e25475ab` |
| 23 | `def` | [poissonPMF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/poissonpmf--14180e95708d725c7239271f.md) | 236 | `declaration-track:14180e95708d725c7239271f6d3bc1d722a3d8f8a65ccaad8855b0d6e0c2ef50` |
| 24 | `lemma` | [poissonPMFReal_ofReal_eq_poissonPMF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/poissonpmfreal-ofreal-eq-poissonpmf--4f5d01b8a0e4bdf64388cb78.md) | 243 | `result-track:4f5d01b8a0e4bdf64388cb78091eb12a8b8d9b3a04ae5f8b54c929e5749ef4d1` |
| 25 | `lemma` | [measurable_poissonPMFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/measurable-poissonpmfreal--016db8af8457dd6a281d031e.md) | 248 | `result-track:016db8af8457dd6a281d031e9644cd1fec1664d840343c7b568b9f3277b4a79a` |
| 26 | `lemma` | [stronglyMeasurable_poissonPMFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean/declarations/stronglymeasurable-poissonpmfreal--ede018d3d8953d876c35febc.md) | 251 | `result-track:ede018d3d8953d876c35febc257191f39736a3265aada9ee22b9d7f396cc52dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
