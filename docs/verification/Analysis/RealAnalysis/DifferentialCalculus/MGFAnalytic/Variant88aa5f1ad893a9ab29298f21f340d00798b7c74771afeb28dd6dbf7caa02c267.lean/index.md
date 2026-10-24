# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MGFAnalytic.Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5118630963a7330f69dc335ed0975a70442368b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5118630963a7330f69dc335ed0975a70442368b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean.json)

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
| 1 | `lemma` | [hasDerivAt_integral_pow_mul_exp_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/hasderivat-integral-pow-mul-exp-real--f95b009330486f73f83ff778.md) | 50 | `result-track:f95b009330486f73f83ff778b3b6f6a4a8ea842bfd6364818be6ba96aecb969f` |
| 2 | `lemma` | [hasDerivAt_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/hasderivat-mgf--f37c584df4632f242c196b6f.md) | 69 | `result-track:f37c584df4632f242c196b6f2f21a6c25a6b5148b9d2bae89e00ae53692e8bec` |
| 3 | `lemma` | [hasDerivAt_iteratedDeriv_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/hasderivat-iteratedderiv-mgf--6f5573c48410f40ae05b3324.md) | 75 | `result-track:6f5573c48410f40ae05b33240673bc003c887b140249027448a5f3b195a752df` |
| 4 | `lemma` | [iteratedDeriv_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/iteratedderiv-mgf--cbb897ff5b39d8443be556a6.md) | 91 | `result-track:cbb897ff5b39d8443be556a664328535cd7843a9ee519c84099435669cc59a9c` |
| 5 | `lemma` | [iteratedDeriv_mgf_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/iteratedderiv-mgf-zero--4317d81d153aeeaa09ab7280.md) | 100 | `result-track:4317d81d153aeeaa09ab72806791f44aed95d0b43389615acf47cfae21038c7a` |
| 6 | `lemma` | [deriv_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/deriv-mgf--849c2a8b2690f7d7ad84f2a4.md) | 106 | `result-track:849c2a8b2690f7d7ad84f2a4be51556ecaede28fc90bd9b9d74bc7de11fba1cb` |
| 7 | `lemma` | [deriv_mgf_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/deriv-mgf-zero--12cf734a2d31df4004b9dd7f.md) | 110 | `result-track:12cf734a2d31df4004b9dd7fef6f33b0d9c44214304200a4494c6e2849cf381f` |
| 8 | `lemma` | [analyticAt_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/analyticat-mgf--93087a1f39ebe0812ef77780.md) | 118 | `result-track:93087a1f39ebe0812ef7778037dae32c2a67c4ada93b4522568de5a92a97119b` |
| 9 | `lemma` | [analyticOnNhd_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/analyticonnhd-mgf--38ee8ec98bf9355dce7c3a1e.md) | 123 | `result-track:38ee8ec98bf9355dce7c3a1e98b8e4aa7c9e69b7480efb43fe66114dfcd94174` |
| 10 | `lemma` | [analyticOn_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/analyticon-mgf--8347eef85bf29dee9d286b82.md) | 128 | `result-track:8347eef85bf29dee9d286b821ce26572093998d0e0f70e7ec3dd9501e5d6a9e7` |
| 11 | `lemma` | [hasFPowerSeriesAt_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/hasfpowerseriesat-mgf--5983b40b13c0dd7118f99b2c.md) | 131 | `result-track:5983b40b13c0dd7118f99b2ca1f16955fb00aac123e59f49cf3019dc5732dec9` |
| 12 | `lemma` | [differentiableAt_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/differentiableat-mgf--4479651524ddfac1350ce4f5.md) | 138 | `result-track:4479651524ddfac1350ce4f5e19076b3ff583b5bc8478cc4994ecb62bc4f249c` |
| 13 | `lemma` | [differentiableOn_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/differentiableon-mgf--8f0a10bfe114527f6f4ae2e4.md) | 141 | `result-track:8f0a10bfe114527f6f4ae2e450e21275b43b27b9e76421629f8e63f605439a48` |
| 14 | `lemma` | [continuousOn_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/continuouson-mgf--d29cc3dc5e905f0b9e6f1bc4.md) | 145 | `result-track:d29cc3dc5e905f0b9e6f1bc46b4fa7c8c946a0d6f9ddaa3258759198e1d6e9b0` |
| 15 | `lemma` | [continuous_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/continuous-mgf--223e1e9722232b4e10f4b72b.md) | 148 | `result-track:223e1e9722232b4e10f4b72b10c6a4b7a976e96609ebb7af50176aedb6ec704c` |
| 16 | `lemma` | [analyticOnNhd_iteratedDeriv_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/analyticonnhd-iteratedderiv-mgf--e43b513f52d92ff736fce517.md) | 157 | `result-track:e43b513f52d92ff736fce51730ba66fd2ea9ea90b6bc85ab43a4f2826bca0504` |
| 17 | `lemma` | [analyticOn_iteratedDeriv_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/analyticon-iteratedderiv-mgf--e3db467a55869abbd3e1a41d.md) | 162 | `result-track:e3db467a55869abbd3e1a41d5c2e244b431a339e256d03f746fb9c00d7f11a78` |
| 18 | `lemma` | [analyticAt_iteratedDeriv_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/analyticat-iteratedderiv-mgf--b4a8ddc134938b5d1e0eadf9.md) | 166 | `result-track:b4a8ddc134938b5d1e0eadf9632f8e62439ce56d950578d2eac8857ddf4601e8` |
| 19 | `lemma` | [differentiableAt_iteratedDeriv_mgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/differentiableat-iteratedderiv-mgf--5ef4262d2067ae47762d38a0.md) | 170 | `result-track:5ef4262d2067ae47762d38a07335855ad72ad01d839a646f28c0576473636e7c` |
| 20 | `lemma` | [analyticAt_cgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/analyticat-cgf--a8f97778b3342da91449e762.md) | 178 | `result-track:a8f97778b3342da91449e762c80774e12a9f853e47682734941e9983a215804c` |
| 21 | `lemma` | [analyticOnNhd_cgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/analyticonnhd-cgf--1feff347e1d0c80da87cffe5.md) | 184 | `result-track:1feff347e1d0c80da87cffe5471febfde39bc31903e752bae28154ba81b036cc` |
| 22 | `lemma` | [analyticOn_cgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/analyticon-cgf--1f1bead7e8492c1217be0d35.md) | 189 | `result-track:1f1bead7e8492c1217be0d3513a57fcb1ccdd576825daef63a5e2f5610268a6f` |
| 23 | `lemma` | [deriv_cgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/deriv-cgf--0f534e58d70da40e2ea46337.md) | 196 | `result-track:0f534e58d70da40e2ea46337718b9314f42a68287ec55b3114ea0a1ff99079ee` |
| 24 | `lemma` | [deriv_cgf_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/deriv-cgf-zero--36104d8bb271ff0dc6874e78.md) | 208 | `result-track:36104d8bb271ff0dc6874e78560416b9deae7f457bc5da6567220ccc4b15b6cd` |
| 25 | `lemma` | [iteratedDeriv_two_cgf](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/iteratedderiv-two-cgf--554bfd19e602b012b3eb8a90.md) | 211 | `result-track:554bfd19e602b012b3eb8a90b9b4366108d1e50c67d6ecdbf65eca8309744a70` |
| 26 | `lemma` | [iteratedDeriv_two_cgf_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/iteratedderiv-two-cgf-eq-integral--66886e57fde870d6b9911196.md) | 247 | `result-track:66886e57fde870d6b9911196f93d6c0d16d82d58acb21fb10cbad47a4ab7be68` |
| 27 | `lemma` | [exists_cgf_eq_iteratedDeriv_two_cgf_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MGFAnalytic/Variant88aa5f1ad893a9ab29298f21f340d00798b7c74771afeb28dd6dbf7caa02c267.lean/declarations/exists-cgf-eq-iteratedderiv-two-cgf-mul--593fcf7bec1513f640a0586c.md) | 286 | `result-track:593fcf7bec1513f640a0586c2beea7075ffa2440a5f273e8b511938960dcc657` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
