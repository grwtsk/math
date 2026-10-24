# Verification target: GRWTSK.Topology.GeneralTopology.Hindman.Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98ae06fd9e57ec6ba1a45c2da36442ec32bb7c2e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98ae06fd9e57ec6ba1a45c2da36442ec32bb7c2e`.

Source path: `GRWTSK/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean.json)

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
| 1 | `def` | [Ultrafilter.mul](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/declarations/ultrafilter-mul--42a36b69a1f315310e4ec629.md) | 62 | `declaration-track:42a36b69a1f315310e4ec62925f87d90568e8f6f0bc70556c6beeb443bdf7cdf` |
| 2 | `theorem` | [Ultrafilter.eventually_mul](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/declarations/ultrafilter-eventually-mul--37aff918e69fb8a106d11652.md) | 70 | `result-track:37aff918e69fb8a106d116522cce1399447402a6e73e8ad0fe52edce7740bdbf` |
| 3 | `def` | [Ultrafilter.semigroup](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/declarations/ultrafilter-semigroup--98bf3b92ec6c00cdb757e973.md) | 78 | `declaration-track:98bf3b92ec6c00cdb757e973edea1d8c056a695034e3d3660e074f6cba3fee26` |
| 4 | `theorem` | [Ultrafilter.continuous_mul_left](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/declarations/ultrafilter-continuous-mul-left--ff08d86d7da35291ae7d3b3d.md) | 88 | `result-track:ff08d86d7da35291ae7d3b3de9fc64b0837711804682a0d16c4868f1925095dc` |
| 5 | `inductive` | [FS](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/declarations/fs--bb25f622cac6c01f83e77ee3.md) | 97 | `declaration-track:bb25f622cac6c01f83e77ee36d0c6dca382fe79af18ade50a849c4b445f7bd87` |
| 6 | `inductive` | [FP](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/declarations/fp--0222d2643f87359ecde5c9b2.md) | 105 | `declaration-track:0222d2643f87359ecde5c9b2b8532cb224fcaeb1b22e406ad30f790ee4e7308a` |
| 7 | `theorem` | [FP.mul](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/declarations/fp-mul--51a6d219a6b60538ab8f1f48.md) | 114 | `result-track:51a6d219a6b60538ab8f1f4874d74dc7e5ba8041f8aefe97d871a2c08d01f356` |
| 8 | `theorem` | [exists_idempotent_ultrafilter_le_FP](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/declarations/exists-idempotent-ultrafilter-le-fp--f4e36c650628362b99f374f2.md) | 131 | `result-track:f4e36c650628362b99f374f234051416e7585b55bb1eaa33b0a00085a322f922` |
| 9 | `theorem` | [exists_FP_of_large](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/declarations/exists-fp-of-large--7c115086652fa80b25f85fa7.md) | 161 | `result-track:7c115086652fa80b25f85fa7f5fc43cd367ef5f874140728e0ce53b79f22faea` |
| 10 | `theorem` | [FP_partition_regular](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/declarations/fp-partition-regular--fffde01d0905809ac160d715.md) | 201 | `result-track:fffde01d0905809ac160d715874ab0975e6cae3a4cd773b59b7acfc1b4385ff6` |
| 11 | `theorem` | [exists_FP_of_finite_cover](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/declarations/exists-fp-of-finite-cover--7df9f31b8c6ac916bf922d47.md) | 212 | `result-track:7df9f31b8c6ac916bf922d4794b98c43cd2cf725bb2b9475eec8b959c3fde166` |
| 12 | `theorem` | [FP_drop_subset_FP](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/declarations/fp-drop-subset-fp--676666a0b2a41592c8aff0c7.md) | 220 | `result-track:676666a0b2a41592c8aff0c727f33128581a617d3ada9d2c2afc7c1381b56c82` |
| 13 | `theorem` | [FP.singleton](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/declarations/fp-singleton--f35f408b87faa213b56cf2a3.md) | 229 | `result-track:f35f408b87faa213b56cf2a3ddc7994b946c64206d104842bff1263e8737929d` |
| 14 | `theorem` | [FP.mul_two](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/declarations/fp-mul-two--01a697fbef7964cff3bd9f20.md) | 235 | `result-track:01a697fbef7964cff3bd9f20adf503050741648b67c4fe8615fed9a7e548a103` |
| 15 | `theorem` | [FP.finsetProd](../../../../../mathematics/Topology/GeneralTopology/Hindman/Variant9c3327b9ebedd8b4d3442caf61877b9c7c25d17b572a5268c369f96b775d0370.lean/declarations/fp-finsetprod--9c1959100c9b78c4ec4603eb.md) | 247 | `result-track:9c1959100c9b78c4ec4603ebed1ea974fb6116ca7aaf825662e9d5230156a908` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
