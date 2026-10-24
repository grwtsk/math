# Verification target: GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8017b7c3bff8fc295716a810cc6321a5cb6c2d43",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/HolomorphicMultiplierNorm.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8017b7c3bff8fc295716a810cc6321a5cb6c2d43`.

Source path: `GRWTSK/Analysis/Operator/HolomorphicMultiplierNorm.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/HolomorphicMultiplierNorm.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Topology.ContinuousMap.Bounded.Normed` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundedFunction](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/boundedfunction--f13649ffc2d0232db017403c.md) | 35 | `declaration-track:f13649ffc2d0232db017403cdd93bfee972175e622b45c06926e8ec118ec4cc2` |
| 2 | `theorem` | [boundedFunction_apply](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/boundedfunction-apply--d87bfa9d0589ead59fca41f3.md) | 39 | `result-track:d87bfa9d0589ead59fca41f3a533ff637be8931573908360a0ae3cef86a0a79f` |
| 3 | `def` | [boundedFunctionHom](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/boundedfunctionhom--76ec8fb0896ffc4fe0181955.md) | 43 | `declaration-track:76ec8fb0896ffc4fe0181955c2d2ef1daab9c4c1004201fc9813e2d4bef6cccc` |
| 4 | `theorem` | [boundedFunctionHom_injective](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/boundedfunctionhom-injective--e4efe52cf39c8f6f3faec328.md) | 50 | `result-track:e4efe52cf39c8f6f3faec32894719ce4fb8e0796a4c4dba6d34ee11fb1a0f26b` |
| 5 | `theorem` | [boundedFunction_smul](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/boundedfunction-smul--14ebc73bd25e429b69a169a2.md) | 57 | `result-track:14ebc73bd25e429b69a169a24cc83339b0814029051f72e809dafde1d31819e7` |
| 6 | `instance` | [symbolNormedCommRing](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/symbolnormedcommring--a47e19d85b9a65ce312acfd3.md) | 63 | `declaration-track:a47e19d85b9a65ce312acfd33e7cab969e63b092f6724051f65615816bc32ddf` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/instance--029a193d590f0c060391e165.md) | 67 | `declaration-track:029a193d590f0c060391e16518fe5ccbd3d728bfa00ab10bb5fd7ed70b43e8a5` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/instance--fe3e468f63551685638aa3e8.md) | 71 | `declaration-track:fe3e468f63551685638aa3e8fdb0e2fe29b59ddb58935e1348a4509855cbc934` |
| 9 | `instance` | [symbolNormedAlgebra](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/symbolnormedalgebra--53f3e7143e5979a898b0d922.md) | 75 | `declaration-track:53f3e7143e5979a898b0d92297aff34618f69db714b992f744ae9d9f1a0060f2` |
| 10 | `theorem` | [symbolTopology_coherent](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/symboltopology-coherent--ff3da74989a492eb43f86949.md) | 82 | `result-track:ff3da74989a492eb43f86949d62e614dbb0ddc4c1149ca29fa1a3476f889a740` |
| 11 | `theorem` | [norm_eq_boundedFunction](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/norm-eq-boundedfunction--2f052c0db121a5382c7674e7.md) | 86 | `result-track:2f052c0db121a5382c7674e73989d891f6bbc0009381874501e6070891f622a4` |
| 12 | `theorem` | [norm_eq_infimum](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/norm-eq-infimum--105062f558df5788fc1f4a08.md) | 90 | `result-track:105062f558df5788fc1f4a08f4e0cd7cbab4ae8977da8155f2bf85324601b489` |
| 13 | `theorem` | [norm_value_le](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/norm-value-le--75b3e24796feb75375222671.md) | 94 | `result-track:75b3e24796feb75375222671936d61ea66792a90dd2dbbf4b1f4d69d272383e9` |
| 14 | `theorem` | [norm_le_iff](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/norm-le-iff--da17e09ea5b48ed65713ee00.md) | 97 | `result-track:da17e09ea5b48ed65713ee00a436f3d15d6f2a1605f295c44f6ecd8fe0835730` |
| 15 | `theorem` | [norm_sub_le_iff](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/norm-sub-le-iff--16a091e2ed2dff3e6cc54660.md) | 102 | `result-track:16a091e2ed2dff3e6cc54660297cd51940c797000b0422fc2a8ad5807a01e6c9` |
| 16 | `theorem` | [norm_constants](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/norm-constants--7a47024dc8e3bfee22572326.md) | 107 | `result-track:7a47024dc8e3bfee225723265a5783d06b315cecacac803460f9098a61014384` |
| 17 | `def` | [functionLinearIsometry](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/functionlinearisometry--b177a4bcccdd2899769f3b10.md) | 115 | `declaration-track:b177a4bcccdd2899769f3b1078afa5bc8cec1840f03c224003d809225f03f8e9` |
| 18 | `theorem` | [functionLinearIsometry_apply](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/functionlinearisometry-apply--963e9dfc76215c4dc9e54bca.md) | 122 | `result-track:963e9dfc76215c4dc9e54bca619015f021a2095247fb43c3b8e41b4ad647a783` |
| 19 | `def` | [evaluation](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/evaluation--27a6fc6642318a24527d8308.md) | 126 | `declaration-track:27a6fc6642318a24527d8308ad6100f03a6f3ffa53c641e66b9477eae1b5674a` |
| 20 | `theorem` | [evaluation_apply](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/evaluation-apply--bd4ea45ee38ce8afd4e66abe.md) | 132 | `result-track:bd4ea45ee38ce8afd4e66abe4cd02385308852cb02a1f506c4a08def375e804d` |
| 21 | `theorem` | [valueMap_continuous](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/valuemap-continuous--3f48590878c8d26f89d442d0.md) | 136 | `result-track:3f48590878c8d26f89d442d04b6cb9abb64bad4a1f9049975fa06b89050bb055` |
| 22 | `theorem` | [forgetHolomorphic_continuous](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/forgetholomorphic-continuous--a5c89729535cc15607134673.md) | 141 | `result-track:a5c89729535cc15607134673ae90c58ff4cd88e036a877deccc5846325f7ef0d` |
| 23 | `theorem` | [completedRepresentation_norm_le](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/completedrepresentation-norm-le--bd1a3ecbbbcd3e8d5d7872f8.md) | 148 | `result-track:bd1a3ecbbbcd3e8d5d7872f873685ea0a4d413dffa12bf16767abdca229028c9` |
| 24 | `theorem` | [quotientRepresentation_norm_le](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/quotientrepresentation-norm-le--1afbcce4b991f990957276fa.md) | 153 | `result-track:1afbcce4b991f990957276fa966e07f9d5e75eda9f12859ed06cc7db016127d3` |
| 25 | `def` | [quotientRepresentationCLM](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/quotientrepresentationclm--7c578de4fff776c885166a2c.md) | 162 | `declaration-track:7c578de4fff776c885166a2c65110fa8070aa01949eb18ad9461d97e2b75d6a7` |
| 26 | `def` | [completedRepresentationCLM](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/completedrepresentationclm--e42e0f740cd5ec1001f55cff.md) | 168 | `declaration-track:e42e0f740cd5ec1001f55cffeaec8b9907693305639727b38c9bf41d4c3a60b7` |
| 27 | `theorem` | [quotientRepresentationCLM_apply](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/quotientrepresentationclm-apply--164ea4ddb53c15a67b1e743a.md) | 174 | `result-track:164ea4ddb53c15a67b1e743a85538f70b471030eae66e7244166e8369b068bac` |
| 28 | `theorem` | [completedRepresentationCLM_apply](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/completedrepresentationclm-apply--3efa7d5b87fecec7926f81e6.md) | 178 | `result-track:3efa7d5b87fecec7926f81e6a14705ae82c5a822d7d9777075da470b83ff95bc` |
| 29 | `theorem` | [quotientRepresentationCLM_toLinearMap](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/quotientrepresentationclm-tolinearmap--8d066c22c3cf05d4a35bbd02.md) | 183 | `result-track:8d066c22c3cf05d4a35bbd0207677268a51ad0479030d89b1a02bce69f07bc2b` |
| 30 | `theorem` | [completedRepresentationCLM_toLinearMap](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/completedrepresentationclm-tolinearmap--7103d03ab12174d90d517a2e.md) | 188 | `result-track:7103d03ab12174d90d517a2e5fd4f922d9654ff4c41350f09283cd0639602816` |
| 31 | `theorem` | [quotientRepresentationCLM_norm_le](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/quotientrepresentationclm-norm-le--bde33f2411009855afd974d6.md) | 193 | `result-track:bde33f2411009855afd974d6088a9f67a4f393818fb978cd956d9426867c2c47` |
| 32 | `theorem` | [completedRepresentationCLM_norm_le](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/completedrepresentationclm-norm-le--1264db8da642fe990742b30e.md) | 199 | `result-track:1264db8da642fe990742b30ebfe74a00abe56044553924dcea7029508a68ab87` |
| 33 | `theorem` | [completedRepresentation_sub_norm_le](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/completedrepresentation-sub-norm-le--c5ae615fd51114380643c008.md) | 206 | `result-track:c5ae615fd51114380643c0087cace5edc35deeffd4d0451ef6a5964e5510185d` |
| 34 | `theorem` | [completedRepresentation_continuous](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/completedrepresentation-continuous--8085e01e9572f1b24e27dbb7.md) | 212 | `result-track:8085e01e9572f1b24e27dbb78581a2f5adbc255bd64f33805e4d75636bd8f112` |
| 35 | `theorem` | [completedRepresentation_tendsto](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/completedrepresentation-tendsto--2ee94886eb85193616a13730.md) | 217 | `result-track:2ee94886eb85193616a1373045c9452e755aa0c1d043ca4bf54c9344036a2f02` |
| 36 | `theorem` | [completedRepresentationCLM_gauge](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/completedrepresentationclm-gauge--ead18d7c65528b84dc5a4f45.md) | 225 | `result-track:ead18d7c65528b84dc5a4f457e0e2c4d0b28d362e50497e8b1f12c1b2379c378` |
| 37 | `theorem` | [empty_symbol_eq_zero](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/empty-symbol-eq-zero--457662860882ce443c57d82c.md) | 232 | `result-track:457662860882ce443c57d82cacab3f7f4cc64bae1caab6230c0bd8f9ac68f1b7` |
| 38 | `theorem` | [empty_symbol_norm](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/empty-symbol-norm--aea4a774993b10d0c9f92d37.md) | 235 | `result-track:aea4a774993b10d0c9f92d37e7bdda5600a8c93ce128b40cf3067d3996aa64ff` |
| 39 | `theorem` | [strict_operator_norm_loss](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/declarations/strict-operator-norm-loss--3e98df33f232e291201cb089.md) | 244 | `result-track:3e98df33f232e291201cb0890b76414fd7b75ac0643cacb7d9d7e800c80cf091` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
