# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Basic.Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0c85e101a7ed87f0db7dd9138ac26966ba93d1d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0c85e101a7ed87f0db7dd9138ac26966ba93d1d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Complex.FiniteDimensional` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [poissonMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/poissonmeasure--e22d4d06e6a0c69807e84ff0.md) | 41 | `declaration-track:e22d4d06e6a0c69807e84ff063f7cf84065109a34abcc283c1dcd7d912820ea6` |
| 2 | `lemma` | [poissonMeasure_singleton](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/poissonmeasure-singleton--7156e31d28d2ef20b82fdc20.md) | 50 | `result-track:7156e31d28d2ef20b82fdc204ef3a8cb6db87de39b63dc6d8bf70be373b3f614` |
| 3 | `lemma` | [poissonMeasure_real_singleton](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/poissonmeasure-real-singleton--aafafab73b9b9c6ea7cd5747.md) | 54 | `result-track:aafafab73b9b9c6ea7cd57470a9ec9b1985bfa338d3b86b43226b980ae8e5cd6` |
| 4 | `lemma` | [poissonMeasure_real_singleton_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/poissonmeasure-real-singleton-pos--854037c3f16073110fca4e45.md) | 58 | `result-track:854037c3f16073110fca4e4582990ee317c87d7d9f9e72da06d8d21e24338006` |
| 5 | `lemma` | [hasSum_one_poissonMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/hassum-one-poissonmeasure--0dd7f73cb5d447bc2f20bb85.md) | 63 | `result-track:0dd7f73cb5d447bc2f20bb85f6cc26d517386fba98bb8d2c3c7d9fde977c7d00` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/instance--fc92b12c09cef67416a31704.md) | 68 | `declaration-track:fc92b12c09cef67416a31704a333d989b48e153801da970766dad16161e3b5f8` |
| 7 | `lemma` | [integrable_poissonMeasure_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/integrable-poissonmeasure-iff--e90c4052ee3351d8b585cb2a.md) | 76 | `result-track:e90c4052ee3351d8b585cb2aaf789e5f8440710de9e1c9ac317446175628d9ba` |
| 8 | `lemma` | [integrable_map_cast_poissonMeasure_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/integrable-map-cast-poissonmeasure-iff--77a66e30709b8de986a05075.md) | 82 | `result-track:77a66e30709b8de986a050758278c27871da8e59dcfd4276a4ab918287e74069` |
| 9 | `lemma` | [hasSum_integral_poissonMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/hassum-integral-poissonmeasure--1040fe9c54b749359c0b3c34.md) | 88 | `result-track:1040fe9c54b749359c0b3c342740f480b6e12f2e8666e7ec26b6b521d9013fdc` |
| 10 | `lemma` | [integral_poissonMeasure'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/integral-poissonmeasure--329351ad1da45d0ed864e02e.md) | 104 | `result-track:329351ad1da45d0ed864e02e25e147be0ac0269f8e3a53155ec3db1d1f726a5e` |
| 11 | `lemma` | [integral_map_cast_poissonMeasure'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/integral-map-cast-poissonmeasure--c0c030fcedcfbf831356a885.md) | 109 | `result-track:c0c030fcedcfbf831356a885820a5f96c1bcf3787122f3ea11abb8f2724616c8` |
| 12 | `lemma` | [integral_poissonMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/integral-poissonmeasure--02ee52868f7e63d0c14ac89d.md) | 122 | `result-track:02ee52868f7e63d0c14ac89d63505319a8e123a299534f75dade84b7a2ea1293` |
| 13 | `lemma` | [integral_map_cast_poissonMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/integral-map-cast-poissonmeasure--116e0349e0b61595702e3e0a.md) | 128 | `result-track:116e0349e0b61595702e3e0a30de00df86eff3d294af2ef6fdf5c9f059faf9f5` |
| 14 | `lemma` | [charFun_map_cast_poissonMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/charfun-map-cast-poissonmeasure--9e1bd917e69444f9911f140a.md) | 141 | `result-track:9e1bd917e69444f9911f140a9ea6c73b212aa81761267d3a50354b2e8565c1e3` |
| 15 | `theorem` | [map_cast_poissonMeasure_conv_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/map-cast-poissonmeasure-conv-real--da341ba46a378bc0532b069d.md) | 167 | `result-track:da341ba46a378bc0532b069d41e6724e33405fb0ce3c4722afbb3b1e93beb419` |
| 16 | `theorem` | [poissonMeasure_conv_poissonMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/poissonmeasure-conv-poissonmeasure--1585b56548ce56961aa39aa8.md) | 174 | `result-track:1585b56548ce56961aa39aa832ff5ddee3c0710ef77e976ac079ee2a05c04692` |
| 17 | `theorem` | [map_cast_poissonMeasure_conv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/map-cast-poissonmeasure-conv--67613b549495107e30f778aa.md) | 180 | `result-track:67613b549495107e30f778aad54577d3c60907a04321f3d66b43f343522c0d10` |
| 18 | `theorem` | [IndepFun.hasLaw_add_poissonMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/indepfun-haslaw-add-poissonmeasure--ba8260794d4c7b1b45e1f609.md) | 187 | `result-track:ba8260794d4c7b1b45e1f6098677d6756609d306f2d21e3f2ec888a317143d0c` |
| 19 | `theorem` | [IndepFun.hasLaw_add_map_cast_poissonMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/indepfun-haslaw-add-map-cast-poissonmeasure--ef5cd0219cbb59b98f83613c.md) | 196 | `result-track:ef5cd0219cbb59b98f83613ce8258477a0214901e67219091fdb8eef162b71e6` |
| 20 | `def` | [poissonPMFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/poissonpmfreal--565c2397e8af058fa75e6b64.md) | 210 | `declaration-track:565c2397e8af058fa75e6b6442014796e263fe3278c302dfa8896d768524963c` |
| 21 | `lemma` | [poissonPMFReal_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/poissonpmfreal-pos--05c101a52980e96277203273.md) | 216 | `result-track:05c101a52980e962772032733f4a640cf1c1aab0f9a2decb84c3c431fb037619` |
| 22 | `lemma` | [poissonPMFReal_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/poissonpmfreal-nonneg--c0780941a5911d2e58f5b32e.md) | 221 | `result-track:c0780941a5911d2e58f5b32e9710c5aa15f1a7ceaaae4f5d64779318e6d66d4d` |
| 23 | `def` | [poissonPMF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/poissonpmf--d0a832e08c77b62d1b4c7538.md) | 228 | `declaration-track:d0a832e08c77b62d1b4c7538f748a23e5a5933d54f59e868c0141e62a10f0a51` |
| 24 | `lemma` | [poissonPMFReal_ofReal_eq_poissonPMF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/poissonpmfreal-ofreal-eq-poissonpmf--4eaab541d55d0a8b0624aca3.md) | 235 | `result-track:4eaab541d55d0a8b0624aca3bbc918f5e788b846aa08af1c16b315d2a42b0347` |
| 25 | `lemma` | [measurable_poissonPMFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/measurable-poissonpmfreal--dfa9e40b13b419fdaff0773e.md) | 240 | `result-track:dfa9e40b13b419fdaff0773ed5cebbb9cc8b682e8d7dc4c5724971b02f823d03` |
| 26 | `lemma` | [stronglyMeasurable_poissonPMFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/declarations/stronglymeasurable-poissonpmfreal--807593f003a19f8b0c29acc2.md) | 243 | `result-track:807593f003a19f8b0c29acc2fb64b44219981897ad8d611712bb30590c2b900d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
