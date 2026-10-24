# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Convolution.Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "351dbf2acb09384ff55c47c28d0cc5ffac1097b7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `351dbf2acb09384ff55c47c28d0cc5ffac1097b7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mconv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/mconv--adc7686b5c76e3e495c7a690.md) | 35 | `declaration-track:adc7686b5c76e3e495c7a69055009e91d16089296b383e245933da0bdbe266cc` |
| 2 | `theorem` | [lintegral_mconv_eq_lintegral_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/lintegral-mconv-eq-lintegral-prod--a75897f823b7eb3237281e78.md) | 45 | `result-track:a75897f823b7eb3237281e7853a9726bed17a330251ad70b8a6b1e909411527f` |
| 3 | `theorem` | [lintegral_mconv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/lintegral-mconv--9bd16db5161f54f166a67261.md) | 51 | `result-track:9bd16db5161f54f166a6726105029fb44425589a1127153ef503c864c1c550ae` |
| 4 | `lemma` | [dirac_mconv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/dirac-mconv--e4d985fa5158b9436ce24d45.md) | 57 | `result-track:e4d985fa5158b9436ce24d45f1da6e16ef3d714f1ef49d60e603e885748a305a` |
| 5 | `lemma` | [mconv_dirac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/mconv-dirac--e2f419db9b685aea24d2a6e5.md) | 64 | `result-track:e2f419db9b685aea24d2a6e53b23eba04d39e488729ff372d291cff9619cf56f` |
| 6 | `lemma` | [dirac_mconv_dirac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/dirac-mconv-dirac--b95561086b0e5ad073240280.md) | 71 | `result-track:b95561086b0e5ad073240280e22985db6890df4a9c487843a5b13bca6ff97037` |
| 7 | `theorem` | [dirac_one_mconv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/dirac-one-mconv--2903fa6af591aa5b5a0da3ba.md) | 78 | `result-track:2903fa6af591aa5b5a0da3bae32e93ce42a649432b4222c302b96dc9c630bc34` |
| 8 | `theorem` | [mconv_dirac_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/mconv-dirac-one--59365b7762012d178e06ec06.md) | 85 | `result-track:59365b7762012d178e06ec064960a0abf4505cf79230719f397be12ea67498b7` |
| 9 | `theorem` | [zero_mconv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/zero-mconv--9d1406efca2758409ed58d70.md) | 92 | `result-track:9d1406efca2758409ed58d70ffe932a65a304aaee27eeb9a9662132dde55e097` |
| 10 | `theorem` | [mconv_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/mconv-zero--d92fc9d647ab0e063491fb22.md) | 99 | `result-track:d92fc9d647ab0e063491fb2227230bb2d4a046df1ec21de172248384f57c912b` |
| 11 | `theorem` | [mconv_smul_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/mconv-smul-left--8f9d2ff63dafb249919d1333.md) | 106 | `result-track:8f9d2ff63dafb249919d1333703dcbc39abab96d4bd8399c78bc90c49b37014c` |
| 12 | `theorem` | [mconv_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/mconv-add--e15110621a64e4ecc47d80e7.md) | 112 | `result-track:e15110621a64e4ecc47d80e701dd912f342f1b07d37b79bd669607aa3f648f5a` |
| 13 | `theorem` | [add_mconv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/add-mconv--ca7cf500f12b440ad385409c.md) | 119 | `result-track:ca7cf500f12b440ad385409ce39502c1ca4116936515323fccfb9f6c51ec3532` |
| 14 | `theorem` | [mconv_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/mconv-comm--40cd69ff03d40209d3554fcd.md) | 127 | `result-track:40cd69ff03d40209d3554fcd890c2e3fae7b51645a2dff22d310e34f5ef00668` |
| 15 | `instance` | [sfinite_mconv_of_sfinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/sfinite-mconv-of-sfinite--28eaab5ed4c84fecd794c881.md) | 136 | `declaration-track:28eaab5ed4c84fecd794c8817b5560863c49a71e5b1ee839b52282fb9e67fc7a` |
| 16 | `instance` | [finite_of_finite_mconv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/finite-of-finite-mconv--7ffc3c894324d4e341bdb50c.md) | 140 | `declaration-track:7ffc3c894324d4e341bdb50c82d3eab4ad409dbd26a422e325905dc922500b68` |
| 17 | `theorem` | [mconv_assoc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/mconv-assoc--70871a6748c9e451364e2721.md) | 149 | `result-track:70871a6748c9e451364e2721f3afb22abf1d57349a503268b57e692fa2836bcc` |
| 18 | `instance` | [probabilitymeasure_of_probabilitymeasures_mconv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/probabilitymeasure-of-probabilitymeasures-mconv--7e166ce527dfc7feb601aea0.md) | 160 | `declaration-track:7e166ce527dfc7feb601aea0be7e9509adb1f61fc5592d50039d54906aede955` |
| 19 | `theorem` | [mconv_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/mconv-absolutelycontinuous--c1dd9fbb8f468fe1c72410ce.md) | 167 | `result-track:c1dd9fbb8f468fe1c72410cee4188367b15888a3500caca3637a32cbe0362ba1` |
| 20 | `lemma` | [map_mconv_monoidHom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/map-mconv-monoidhom--6ea85cab360c56e47bf02c04.md) | 181 | `result-track:6ea85cab360c56e47bf02c04cfca7d07c95001927468889e0409e0c7beb48e01` |
| 21 | `lemma` | [map_conv_continuousLinearMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/declarations/map-conv-continuouslinearmap--f4d8ad62250f5e2884aed9df.md) | 192 | `result-track:f4d8ad62250f5e2884aed9df8b6c1e50ee6ffed7622baec7626555c02511a12e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
