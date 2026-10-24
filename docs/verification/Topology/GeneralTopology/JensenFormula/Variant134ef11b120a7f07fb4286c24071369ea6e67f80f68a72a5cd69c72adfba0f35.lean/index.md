# Verification target: GRWTSK.Topology.GeneralTopology.JensenFormula.Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dd78e234df51703431c913f5bc6081233542e97",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dd78e234df51703431c913f5bc6081233542e97`.

Source path: `GRWTSK/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [herglotzLogIntegrand](../../../../../mathematics/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/declarations/herglotzlogintegrand--8666daa4ab9b21b38b543b0c.md) | 42 | `declaration-track:8666daa4ab9b21b38b543b0ced456c86de786af8fa2b28161fc04532cb23743b` |
| 2 | `lemma` | [continuousAt_herglotzLogIntegrand](../../../../../mathematics/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/declarations/continuousat-herglotzlogintegrand--5ff71750e6f71be1ec8d5b13.md) | 47 | `result-track:5ff71750e6f71be1ec8d5b13acf631c72f0b55a8edb1da14ab428fdd9334aab0` |
| 3 | `lemma` | [continuous_herglotzLogIntegrand_circle](../../../../../mathematics/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/declarations/continuous-herglotzlogintegrand-circle--1fccc7c8620edb03be4e61ca.md) | 55 | `result-track:1fccc7c8620edb03be4e61ca40414dc6a9021aad38f80c602bbd6d9c8a5bb1fa` |
| 4 | `lemma` | [const_mul_norm_sub_circleMap_le_norm_sub_circleMap](../../../../../mathematics/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/declarations/const-mul-norm-sub-circlemap-le-norm-sub-circlemap--0f754aa7bb4501cac1b40165.md) | 67 | `result-track:0f754aa7bb4501cac1b401659c46e663b6641edf68c455459ccb8335c283accc` |
| 5 | `lemma` | [norm_herglotzLogIntegrand_circleMap_le](../../../../../mathematics/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/declarations/norm-herglotzlogintegrand-circlemap-le--7a8f90dcf34ff88fd571c203.md) | 85 | `result-track:7a8f90dcf34ff88fd571c203cef83479e7b6e5eec574d5f25e7d633b3a0a297a` |
| 6 | `theorem` | [herglotzLogIntegrand_circleAverage_tendsto](../../../../../mathematics/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/declarations/herglotzlogintegrand-circleaverage-tendsto--5542469a1f260ee5bf86ba7a.md) | 120 | `result-track:5542469a1f260ee5bf86ba7afcd7e9fdf1a66a19d23f236ea89aa8cfbe66cc15` |
| 7 | `theorem` | [circleAverage_re_herglotzRieszKernel_mul_log₀](../../../../../mathematics/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/declarations/circleaverage-re-herglotzrieszkernel-mul-log--7d20ee6f0214ed413dd57f5c.md) | 158 | `result-track:7d20ee6f0214ed413dd57f5cd38fbcc5a8f82e16be46a0a95639c59a7b78a503` |
| 8 | `theorem` | [circleAverage_re_herglotzRieszKernel_mul_log](../../../../../mathematics/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/declarations/circleaverage-re-herglotzrieszkernel-mul-log--e02dc4fe79b33e7aaa257461.md) | 207 | `result-track:e02dc4fe79b33e7aaa257461537748fbf34bc8b26ec5680b7bf0fe9caf8ac92e` |
| 9 | `lemma` | [circleAverage_log_norm_factorizedRational](../../../../../mathematics/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/declarations/circleaverage-log-norm-factorizedrational--ed3adeb3ea857f67afa9c334.md) | 230 | `result-track:ed3adeb3ea857f67afa9c33469b936dd47dac4859f20cb3af580e480f0078185` |
| 10 | `lemma` | [AnalyticOnNhd.circleAverage_log_norm_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/declarations/analyticonnhd-circleaverage-log-norm-of-ne-zero--c7e72320255ec205c0e5f958.md) | 263 | `result-track:c7e72320255ec205c0e5f95844f3a6a5a8f5580ca2e8eb880f469fed51cdca41` |
| 11 | `lemma` | [countingFunction_finsum_eq_finsum_add](../../../../../mathematics/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/declarations/countingfunction-finsum-eq-finsum-add--6cd80b19843e1269eb280178.md) | 275 | `result-track:6cd80b19843e1269eb280178a8e21d68de59d5a4170f653772bd83cc8dd892d7` |
| 12 | `theorem` | [MeromorphicOn.circleAverage_log_norm](../../../../../mathematics/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/declarations/meromorphicon-circleaverage-log-norm--dbd6f6b1948a81130c0245af.md) | 307 | `result-track:dbd6f6b1948a81130c0245af2fb4bb8ba2049ada55a5ebe3229109dc6825e055` |
| 13 | `theorem` | [AnalyticOnNhd.circleAverage_log_norm](../../../../../mathematics/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/declarations/analyticonnhd-circleaverage-log-norm--4c79662a06a68ea1af0b66e4.md) | 375 | `result-track:4c79662a06a68ea1af0b66e4046ee08fb9e7429893448e86402dc8e343aa2c86` |
| 14 | `theorem` | [AnalyticOnNhd.sum_divisor_le](../../../../../mathematics/Topology/GeneralTopology/JensenFormula/Variant134ef11b120a7f07fb4286c24071369ea6e67f80f68a72a5cd69c72adfba0f35.lean/declarations/analyticonnhd-sum-divisor-le--7e5483a14f338044a0ba5e9e.md) | 389 | `result-track:7e5483a14f338044a0ba5e9e9fca9f023eb8c030c9af0803c37f3d973ee677c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
