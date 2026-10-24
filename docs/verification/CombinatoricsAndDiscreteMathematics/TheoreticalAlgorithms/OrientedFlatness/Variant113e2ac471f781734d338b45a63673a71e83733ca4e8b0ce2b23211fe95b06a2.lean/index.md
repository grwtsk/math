# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrientedFlatness.Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "518684005eb57186e315519b6f9cf1b7049c57aa",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `518684005eb57186e315519b6f9cf1b7049c57aa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Homology.KakeyaTubeCover` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KakeyaTubeCoverCertificate.certifiedForMajorProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/kakeyatubecovercertificate-certifiedformajorproof--52e6393e3ffbb5ff6abae601.md) | 39 | `declaration-track:52e6393e3ffbb5ff6abae60122793d948ebba7f195a6a1ff0a6a1dc839536b9a` |
| 2 | `inductive` | [DyadicBoundaryKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/dyadicboundarykind--55df24e492ba133284053d6a.md) | 45 | `declaration-track:55df24e492ba133284053d6a587f8cecb0fdce357db86e5532657a02ec9955ea` |
| 3 | `structure` | [DyadicScaleDescriptor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/dyadicscaledescriptor--f49349eac9befbebf558b512.md) | 55 | `declaration-track:f49349eac9befbebf558b512ddf6f1813d0c7cddc1f196b348dfe1d1aa137594` |
| 4 | `structure` | [TransportCoefficientDescriptor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/transportcoefficientdescriptor--35ed72360cd7e9238f2951a5.md) | 69 | `declaration-track:35ed72360cd7e9238f2951a519741f145aca2243de8bb7f18427c1a948ce60bf` |
| 5 | `structure` | [CycleOrientationDescriptor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/cycleorientationdescriptor--deefb9a628256e03fbb74b49.md) | 77 | `declaration-track:deefb9a628256e03fbb74b49cf33d822d8e905aa9bb0aebb9f74fc7d72994cca` |
| 6 | `structure` | [NormalizedTransportDescriptor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/normalizedtransportdescriptor--05117c3b115bbf1e081bfe70.md) | 90 | `declaration-track:05117c3b115bbf1e081bfe70f7f728131e226778cf0aecbbca41732de7bcf458` |
| 7 | `structure` | [MultiscaleNormalizationCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/multiscalenormalizationcertificate--35e769fc9f0e1f5ed9a3f7bf.md) | 98 | `declaration-track:35e769fc9f0e1f5ed9a3f7bf65a5d2fef870c6e898177f911aa3a48c2a711830` |
| 8 | `structure` | [TubeOrientationCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/tubeorientationcertificate--ceb59fb3ba255fb6fffd9cd1.md) | 109 | `declaration-track:ceb59fb3ba255fb6fffd9cd1b97179bbbf912c415a6516127eb391a8a465362d` |
| 9 | `structure` | [PlankGluingCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/plankgluingcertificate--ead2e7933d50e7b6a4061d18.md) | 120 | `declaration-track:ead2e7933d50e7b6a4061d18847190e48d32144f4a6c923db61cab96e2c102d6` |
| 10 | `def` | [PlankGluingCertificate.plankAngleCompatibility](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/plankgluingcertificate-plankanglecompatibility--52b05feff0e37ce0e81e99ec.md) | 137 | `declaration-track:52b05feff0e37ce0e81e99ec76a7b2430717d3a5ccf14cc1b9de108c6c0dc001` |
| 11 | `def` | [PlankGluingCertificate.plankUnionVolumeLowerBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/plankgluingcertificate-plankunionvolumelowerbound--1aec83c95ef3c76c87e24877.md) | 149 | `declaration-track:1aec83c95ef3c76c87e24877f5f146012c59b7e08bc0a87ecb28ab126ebf9f6c` |
| 12 | `structure` | [HomologicalRelaxationCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/homologicalrelaxationcertificate--558c1d94b92d88a75856c205.md) | 154 | `declaration-track:558c1d94b92d88a75856c20516c5e4fb58e2a6fa5f5849204883af4fb3a54d11` |
| 13 | `structure` | [OrientedFlatnessCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/orientedflatnesscertificate--0e2cf6326c4cd737647864c1.md) | 171 | `declaration-track:0e2cf6326c4cd737647864c1677d91ea71f3ae6181764caae61432ab61a48796` |
| 14 | `def` | [OrientedFlatnessCertificate.certifiedForMajorProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/orientedflatnesscertificate-certifiedformajorproof--11917f71b7a95aeec7099270.md) | 209 | `declaration-track:11917f71b7a95aeec70992701c72502da5bf136bb24a6472f40902945201bc08` |
| 15 | `theorem` | [OrientedFlatnessCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/orientedflatnesscertificate-certifiedformajorproof-of-fields--5c51aa0645afc5935834172e.md) | 229 | `result-track:5c51aa0645afc5935834172ea69ab942baf8d2b5150a9f794df471b04af008ff` |
| 16 | `def` | [OrientedFlatnessCertificate.mitigatedTransport](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/orientedflatnesscertificate-mitigatedtransport--d0b7d4485f93363800f03a3a.md) | 257 | `declaration-track:d0b7d4485f93363800f03a3a6259634a91659a89ddb2c718c15936f064da3b3b` |
| 17 | `structure` | [KakeyaTubeCoverDescriptor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/kakeyatubecoverdescriptor--1d32e6afaac5b45a1e8b20d9.md) | 267 | `declaration-track:1d32e6afaac5b45a1e8b20d91f398e8a1c9d392b79cfde38570878f4c03b493a` |
| 18 | `structure` | [PrismaticSheafSurfaceDescriptor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/prismaticsheafsurfacedescriptor--e10ea4eb693f00213cc930de.md) | 279 | `declaration-track:e10ea4eb693f00213cc930de4e867375004509b8cb67bf781d9ee3eb13b7db97` |
| 19 | `structure` | [OrientedFlatnessSheafCompatibility](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/orientedflatnesssheafcompatibility--f0afd505872994229fd935ca.md) | 285 | `declaration-track:f0afd505872994229fd935ca0aaf2bf2166d2a308260b91d323804a9ac85d805` |
| 20 | `def` | [OrientedFlatnessSheafCompatibility.certifiedForMajorProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/orientedflatnesssheafcompatibility-certifiedformajorproof--f793432256a55d99bb451123.md) | 298 | `declaration-track:f793432256a55d99bb451123e2fdbc2697a619e95c9451ed9c60e84849fb1589` |
| 21 | `theorem` | [OrientedFlatnessSheafCompatibility.certifiedForMajorProof_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientedFlatness/Variant113e2ac471f781734d338b45a63673a71e83733ca4e8b0ce2b23211fe95b06a2.lean/declarations/orientedflatnesssheafcompatibility-certifiedformajorproof-of-fields--388e38824273a14b18dba218.md) | 305 | `result-track:388e38824273a14b18dba2180748adc982ebd6a587bd90619434e0d5ec63722d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
