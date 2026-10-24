# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Coupling.Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a299685ac41e75d56f3163c9aeb93e987389058",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a299685ac41e75d56f3163c9aeb93e987389058`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 7; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.Transformation` — import line 8; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.WorldModel.ActiveRegion` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CouplingWeightState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/couplingweightstate--5b6ff060079e494fdcfaa094.md) | 32 | `declaration-track:5b6ff060079e494fdcfaa0949ef316264ae1c61e79ef57d55f76207469ffdeb2` |
| 2 | `theorem` | [weight_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/weight-nonnegative--a55034dcaf23457ecf3097f4.md) | 48 | `result-track:a55034dcaf23457ecf3097f4912d98121e5de01afb085f63f2e61fd62ee85778` |
| 3 | `theorem` | [weight_le_maximum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/weight-le-maximum--0928cb3a99e1d955ad3ca6a5.md) | 54 | `result-track:0928cb3a99e1d955ad3ca6a5c00f139e162bc538358d909519e6efeffa225a17` |
| 4 | `theorem` | [row_normalized](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/row-normalized--7923ee6f67e37cbc0ccc321a.md) | 60 | `result-track:7923ee6f67e37cbc0ccc321a56540eefe092a0e3677e07665fae2e847fd1a7ce` |
| 5 | `theorem` | [prohibited_edge_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/prohibited-edge-zero--f43fd2a9d031cfb72081a248.md) | 68 | `result-track:f43fd2a9d031cfb72081a24821965cea63184f17e072e0390aba729e74472d8c` |
| 6 | `structure` | [RegistryCouplingWeightState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/registrycouplingweightstate--eb98b2b5503ca9196f0f1527.md) | 79 | `declaration-track:eb98b2b5503ca9196f0f15274f8e0acd80007ccf71605a305790f03265a87086` |
| 7 | `theorem` | [RegistryCouplingWeightState.row_normalized](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/registrycouplingweightstate-row-normalized--b7254efb13df8b405fbb0adb.md) | 88 | `result-track:b7254efb13df8b405fbb0adb0deb7422fd33d44e43f213c5caa3007c27e429a3` |
| 8 | `abbrev` | [RawWeightState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/rawweightstate--7a600237d33a3499bdf1c8c3.md) | 99 | `declaration-track:7a600237d33a3499bdf1c8c3677b84c8455ea23b300c5d7ffbb18a482034bd64` |
| 9 | `structure` | [ProposedCouplingWeights](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/proposedcouplingweights--a36f9cdae9e0809c39eba231.md) | 102 | `declaration-track:a36f9cdae9e0809c39eba231d6d432f1d6fd520e93ae358da7bdb02f09fdeab7` |
| 10 | `structure` | [WeightDistance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/weightdistance--27683b00225544683a144f68.md) | 108 | `declaration-track:27683b00225544683a144f68525f0011d7bb5bc86881231ac2169ac85b4dd135` |
| 11 | `structure` | [AdmissibleProjection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/admissibleprojection--7632c18333ab5313e36c7728.md) | 115 | `declaration-track:7632c18333ab5313e36c7728f2c69b27a64eab793f843345d4bdbd37c3372a3d` |
| 12 | `theorem` | [projection_preserves_admissibility](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/projection-preserves-admissibility--884c57562bffb82de67e525c.md) | 130 | `result-track:884c57562bffb82de67e525c226dc3f864d02eb1883ff508233511e7aa35bd69` |
| 13 | `theorem` | [projection_nonexpansive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/projection-nonexpansive--0a88cd58f070d9a1166d71ff.md) | 144 | `result-track:0a88cd58f070d9a1166d71ff7da5334f169f65f5e4d4a6977b55c963af548177` |
| 14 | `structure` | [SqrtStepBoundCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/sqrtstepboundcertificate--be30129c51e3061f48890000.md) | 155 | `declaration-track:be30129c51e3061f48890000f0f26c925c51227f39eb05d873a9be7d76cf14f5` |
| 15 | `theorem` | [inv_sqrt_step_le_telescoping](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/inv-sqrt-step-le-telescoping--90cf9fc975bb1c6cf5e8eb90.md) | 163 | `result-track:90cf9fc975bb1c6cf5e8eb905348fa1ce1af3d4d9901c9b1b960ab46df79ccdd` |
| 16 | `theorem` | [cumulative_inv_sqrt_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/cumulative-inv-sqrt-le--49289240e5d5f78b0905f9ce.md) | 196 | `result-track:49289240e5d5f78b0905f9ceedbe373df41d9776feb6bdd1e0432dc3619500da` |
| 17 | `def` | [inverseSqrtStepSchedule](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/inversesqrtstepschedule--071b1d1f5ccc5f65c9ff0d25.md) | 214 | `declaration-track:071b1d1f5ccc5f65c9ff0d25d3a970bf60d4fd05de744c731bffc238d9e7a536` |
| 18 | `structure` | [SubdiffusiveTrajectory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/subdiffusivetrajectory--a7edb5d0ba7c7584aedf8e92.md) | 228 | `declaration-track:a7edb5d0ba7c7584aedf8e92449826f50e838f8d8e7afbba527b5e7bc12c4559` |
| 19 | `theorem` | [subdiffusive_displacement_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/subdiffusive-displacement-le--608f16bd1fb7f52524ddf2aa.md) | 246 | `result-track:608f16bd1fb7f52524ddf2aa3e565c21f7e6e64fb619c020c9227a76fc4abb20` |
| 20 | `structure` | [ProjectedGradientTrajectory](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/projectedgradienttrajectory--7920a446f3de3b0cbceded88.md) | 277 | `declaration-track:7920a446f3de3b0cbceded8899e0abb4ba48db97d7f998bf2d537b11905384f2` |
| 21 | `theorem` | [one_step_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/one-step-le--beea97a387c07b912eb2ba75.md) | 300 | `result-track:beea97a387c07b912eb2ba7541eddd2a4c2d4177570cde00148ce959f341c552` |
| 22 | `theorem` | [displacement_le_cumulative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/displacement-le-cumulative--0fc2ad27dcf378f2ac729bf4.md) | 354 | `result-track:0fc2ad27dcf378f2ac729bf478b6788975c4eb67281b8f56558f086e40b938c1` |
| 23 | `theorem` | [subdiffusive_displacement_le_of_projected_updates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/subdiffusive-displacement-le-of-projected-updates--fa6d986623fee007dd814844.md) | 382 | `result-track:fa6d986623fee007dd814844a2fbb65012343d66cf94c21181f46e34959e0ed5` |
| 24 | `structure` | [CouplingCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/couplingcertificate--060145cec0b6dc8f4bdf3479.md) | 403 | `declaration-track:060145cec0b6dc8f4bdf34798ff0d7ca88f8bfd56b924232481088e0a81f6147` |
| 25 | `def` | [CouplingCertificate.ValidFor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/couplingcertificate-validfor--635943b52f57ff2a237f7cf9.md) | 408 | `declaration-track:635943b52f57ff2a237f7cf942dbb56373edb88226590cc2dc037061078e476b` |
| 26 | `theorem` | [changed_graph_rejects_coupling_certificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/changed-graph-rejects-coupling-certificate--fa378fc40608fd0ff0fa2ef4.md) | 415 | `result-track:fa378fc40608fd0ff0fa2ef46b0fb9c731defd6bb21a714ed2a5098edd556906` |
| 27 | `theorem` | [changed_policy_rejects_coupling_certificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/declarations/changed-policy-rejects-coupling-certificate--d2005f52dc9ef443bc650785.md) | 424 | `result-track:d2005f52dc9ef443bc650785f0404772d3418a8073820a8df2a81466fc9a8130` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
