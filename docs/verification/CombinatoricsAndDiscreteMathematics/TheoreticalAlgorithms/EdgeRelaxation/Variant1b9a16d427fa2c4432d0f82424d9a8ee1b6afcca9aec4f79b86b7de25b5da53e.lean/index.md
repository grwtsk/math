# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EdgeRelaxation.Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cbd6932ba63d96e444186cf7be92ad2dd3d2156",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cbd6932ba63d96e444186cf7be92ad2dd3d2156`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.EdgeRelaxation` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Prismatic.DeltaRing` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EdgeRelaxationKernel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e.lean/declarations/edgerelaxationkernel--71a0498b727d436ada9e3102.md) | 35 | `declaration-track:71a0498b727d436ada9e3102b49b3db78dd52f4186ff2a705977cbbdc66780ac` |
| 2 | `structure` | [DeltaEdgeRelaxation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e.lean/declarations/deltaedgerelaxation--dd9a4b234acaeb8f29fb8026.md) | 49 | `declaration-track:dd9a4b234acaeb8f29fb80266a9ed99c44cc67c814f7403ddeb0ebb4c85522ee` |
| 3 | `theorem` | [deltaEdgeRelaxation_delta_compatible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e.lean/declarations/deltaedgerelaxation-delta-compatible--df44504cde69dca7a497952f.md) | 60 | `result-track:df44504cde69dca7a497952f170b2f4fd58ba5583ddb3cd15e774af739fbd8d4` |
| 4 | `structure` | [LiftCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e.lean/declarations/liftcertificate--ab92e440e395d0541d3a6581.md) | 78 | `declaration-track:ab92e440e395d0541d3a6581fea1a70876aab0b0c44ab23a19ba63304d109459` |
| 5 | `theorem` | [LiftCertificate.preserves_mass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e.lean/declarations/liftcertificate-preserves-mass--041bd93cfba0bff06956bd91.md) | 95 | `result-track:041bd93cfba0bff06956bd91c5c88804eb58acad29c97c2e937dbbb657e00512` |
| 6 | `theorem` | [LiftCertificate.delta_compatible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e.lean/declarations/liftcertificate-delta-compatible--dbde75fd43ae78d5620e34f5.md) | 102 | `result-track:dbde75fd43ae78d5620e34f53b36f711d9e5637079f19cc540bbed8f1fd0fdb7` |
| 7 | `theorem` | [LiftCertificate.frobenius_compatible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e.lean/declarations/liftcertificate-frobenius-compatible--95cf3e556dee2b6e0790b42b.md) | 109 | `result-track:95cf3e556dee2b6e0790b42b6ced036f2d1e02d558263ea04428ca6bb34ba3fd` |
| 8 | `theorem` | [LiftCertificate.no_spectral_rigidity_claim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e.lean/declarations/liftcertificate-no-spectral-rigidity-claim--f46e3d8186bbdecbec5e21bd.md) | 116 | `result-track:f46e3d8186bbdecbec5e21bd5fc42a9d1b8b20b4d59f612751a2ea12227a8a76` |
| 9 | `def` | [LiftCertificate.certifiedForMajorProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e.lean/declarations/liftcertificate-certifiedformajorproof--928c3c68e59275ed47245bda.md) | 132 | `declaration-track:928c3c68e59275ed47245bdaf4e500be95a953c4113f53487f6e4bc7fd3cd31a` |
| 10 | `theorem` | [LiftCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e.lean/declarations/liftcertificate-certifiedformajorproof-of-fields--5cc7521a9dcfa92a7349f2ab.md) | 148 | `result-track:5cc7521a9dcfa92a7349f2abd3e32382e9485bf3faaf421a0e02da27ff72b573` |
| 11 | `def` | [unitEdgeRelaxationKernel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e.lean/declarations/unitedgerelaxationkernel--1b9cf77d7d9d770424959c9e.md) | 167 | `declaration-track:1b9cf77d7d9d770424959c9e1f5bb643f6913035063c5ae8a646897878aeff4f` |
| 12 | `def` | [unitDeltaEdgeRelaxation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e.lean/declarations/unitdeltaedgerelaxation--781747b4c9374f21b5d2a32b.md) | 183 | `declaration-track:781747b4c9374f21b5d2a32b7fd927066ff82f76df376aba74caa5f4c5ed8d7d` |
| 13 | `def` | [unitBooleanLiftCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e.lean/declarations/unitbooleanliftcertificate--fbe1dd9f12019d34c3beecd6.md) | 196 | `declaration-track:fbe1dd9f12019d34c3beecd6895f90e0a96f8d8688abb410e016060cc095dbcb` |
| 14 | `def` | [unitBooleanLiftCertificate_certificateAccessor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant1b9a16d427fa2c4432d0f82424d9a8ee1b6afcca9aec4f79b86b7de25b5da53e.lean/declarations/unitbooleanliftcertificate-certificateaccessor--ee7bcdb7a992cb548b625aae.md) | 218 | `declaration-track:ee7bcdb7a992cb548b625aae873bb4564bab42f95cb3b70dd5fa862e3ee16242` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
