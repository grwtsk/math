# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EdgeRelaxation.Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1eb7cb26696ddb1fd4437c973b1e4bec6a5afbc5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1eb7cb26696ddb1fd4437c973b1e4bec6a5afbc5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Cube.EdgeRelaxation` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Prismatic.DeltaRing` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EdgeRelaxationKernel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean/declarations/edgerelaxationkernel--890078062913f246dfda5f81.md) | 35 | `declaration-track:890078062913f246dfda5f8152fac18762b87214d20b379df19f4be34bc1392b` |
| 2 | `structure` | [DeltaEdgeRelaxation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean/declarations/deltaedgerelaxation--69951122b1e9a1a08f6910e5.md) | 49 | `declaration-track:69951122b1e9a1a08f6910e5c1551afd25fdc1c9ee0e70b486b099f5446d383f` |
| 3 | `theorem` | [deltaEdgeRelaxation_delta_compatible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean/declarations/deltaedgerelaxation-delta-compatible--2622217b3ed25df7e5dbe19b.md) | 60 | `result-track:2622217b3ed25df7e5dbe19bfd39bebd2d18f4b2649529e8061ff0e767f50cd8` |
| 4 | `structure` | [LiftCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean/declarations/liftcertificate--f0ab573a4c787855d749d8e3.md) | 78 | `declaration-track:f0ab573a4c787855d749d8e38fe74cc602ecf3483ea6d0e5b38e2fd2f97ffdfe` |
| 5 | `theorem` | [LiftCertificate.preserves_mass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean/declarations/liftcertificate-preserves-mass--51adbf5dae2ba5467863137f.md) | 95 | `result-track:51adbf5dae2ba5467863137f38c7da4229485675906f27e4b0fd646df7a97a5f` |
| 6 | `theorem` | [LiftCertificate.delta_compatible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean/declarations/liftcertificate-delta-compatible--a4fdf4e8ed7f0b9bf3d37f10.md) | 102 | `result-track:a4fdf4e8ed7f0b9bf3d37f10814a170d6a3fcce5f74023d8240454ed3b0cdd1a` |
| 7 | `theorem` | [LiftCertificate.frobenius_compatible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean/declarations/liftcertificate-frobenius-compatible--029829e02fb5c0536f4296e0.md) | 109 | `result-track:029829e02fb5c0536f4296e0a7da0f6567868b10254661d39e056d7d77eb2684` |
| 8 | `theorem` | [LiftCertificate.no_spectral_rigidity_claim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean/declarations/liftcertificate-no-spectral-rigidity-claim--b1a9b7defea68c0e9c6b98f7.md) | 116 | `result-track:b1a9b7defea68c0e9c6b98f7cd589e4c4601d8cad2abea2c90ad8c15047d7d02` |
| 9 | `def` | [LiftCertificate.certifiedForMajorProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean/declarations/liftcertificate-certifiedformajorproof--b6766d064e22205535fd8fc3.md) | 132 | `declaration-track:b6766d064e22205535fd8fc3e1a72c6b991b48ea47e03f6642f83883eb7520eb` |
| 10 | `theorem` | [LiftCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean/declarations/liftcertificate-certifiedformajorproof-of-fields--9060f69f7bafd44db9d87417.md) | 148 | `result-track:9060f69f7bafd44db9d874170cdc1c91e11a5a01dc5052fd5ea8cea914560d90` |
| 11 | `def` | [unitEdgeRelaxationKernel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean/declarations/unitedgerelaxationkernel--3d2210c4d639521ff3f27797.md) | 167 | `declaration-track:3d2210c4d639521ff3f2779784bbd1301ba508e6be348b7ed1c4254d89ea9032` |
| 12 | `def` | [unitDeltaEdgeRelaxation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean/declarations/unitdeltaedgerelaxation--c060b3c39ed0fd88931bd452.md) | 183 | `declaration-track:c060b3c39ed0fd88931bd4526be88e8fe086299ad15367fb0423ce0e502a4b9e` |
| 13 | `def` | [unitBooleanLiftCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean/declarations/unitbooleanliftcertificate--26ef55af7d05f40c0ffdf098.md) | 196 | `declaration-track:26ef55af7d05f40c0ffdf098bfc425c1fee9587729d1a833fd7725f8931f9a08` |
| 14 | `def` | [unitBooleanLiftCertificate_certificateAccessor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant658e6da7280e3eed82ee12e06ac2be485740b41189d915205e1299e6d4e8d67a.lean/declarations/unitbooleanliftcertificate-certificateaccessor--5b073bf4904682ec64a8f914.md) | 218 | `declaration-track:5b073bf4904682ec64a8f914c37261f91f3cdb3370819b6876778653f39a3780` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
