# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EdgeRelaxation.Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57efc6e9dea914e8922da405b7195cf236e56598",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57efc6e9dea914e8922da405b7195cf236e56598`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Cube.EdgeRelaxation` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Prismatic.DeltaRing` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EdgeRelaxationKernel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean/declarations/edgerelaxationkernel--ea853b683f0ef2ac4c9b6d56.md) | 27 | `declaration-track:ea853b683f0ef2ac4c9b6d569334c15fe44ef42f0c382baf61151b98599d6384` |
| 2 | `structure` | [DeltaEdgeRelaxation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean/declarations/deltaedgerelaxation--f5e698de2d69814611413df6.md) | 41 | `declaration-track:f5e698de2d69814611413df68937e0d6136581e4b54626327f9eaad5bfbe53cd` |
| 3 | `theorem` | [deltaEdgeRelaxation_delta_compatible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean/declarations/deltaedgerelaxation-delta-compatible--ad9a98470c9f6b9270609d53.md) | 52 | `result-track:ad9a98470c9f6b9270609d53465ded9800141d88fdce889850969cf4b9d2834e` |
| 4 | `structure` | [LiftCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean/declarations/liftcertificate--5b666fec5356ab123bb2bfa5.md) | 70 | `declaration-track:5b666fec5356ab123bb2bfa5729b8c8e295d922fbcf380f590982fb5dba8ee0b` |
| 5 | `theorem` | [LiftCertificate.preserves_mass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean/declarations/liftcertificate-preserves-mass--cae112038480823b253d334a.md) | 87 | `result-track:cae112038480823b253d334a9cd1badf633b03f0bf69e4f18318e9fff21b0eea` |
| 6 | `theorem` | [LiftCertificate.delta_compatible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean/declarations/liftcertificate-delta-compatible--29b98bfe3941b316776a3c19.md) | 94 | `result-track:29b98bfe3941b316776a3c19afd05bbed34aeb619e87ac6c9ba43cc753df6e1f` |
| 7 | `theorem` | [LiftCertificate.frobenius_compatible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean/declarations/liftcertificate-frobenius-compatible--69fbeee15616e8aed20be7a1.md) | 101 | `result-track:69fbeee15616e8aed20be7a1be995baa3147373129af11217e31ded5d7f3e238` |
| 8 | `theorem` | [LiftCertificate.no_spectral_rigidity_claim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean/declarations/liftcertificate-no-spectral-rigidity-claim--72ab626036ff8f2a8a8886cb.md) | 108 | `result-track:72ab626036ff8f2a8a8886cbc68d985a56181a46520696622716a5973cd5a417` |
| 9 | `def` | [LiftCertificate.certifiedForMajorProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean/declarations/liftcertificate-certifiedformajorproof--4f0bd4db0c1df36dca680013.md) | 124 | `declaration-track:4f0bd4db0c1df36dca6800136c1287450babe4bad9b562274783ea2791ed0281` |
| 10 | `theorem` | [LiftCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean/declarations/liftcertificate-certifiedformajorproof-of-fields--b9f55728c1a583c76772603d.md) | 140 | `result-track:b9f55728c1a583c76772603dfdacb3ab1969ea04cc5619773ca13daa38b24ebc` |
| 11 | `def` | [unitEdgeRelaxationKernel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean/declarations/unitedgerelaxationkernel--2632a84d12bfbe99153a5e90.md) | 159 | `declaration-track:2632a84d12bfbe99153a5e901c8040d0b35f5d957b66f91d3e2c3158ffb19bc4` |
| 12 | `def` | [unitDeltaEdgeRelaxation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean/declarations/unitdeltaedgerelaxation--dd480dec857bce0fd1dffa64.md) | 175 | `declaration-track:dd480dec857bce0fd1dffa6471fc65319ea57a755c17b07f10fc4f2957a0262f` |
| 13 | `def` | [unitBooleanLiftCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean/declarations/unitbooleanliftcertificate--5e9fdf3d489ab4d0bcacdf3c.md) | 188 | `declaration-track:5e9fdf3d489ab4d0bcacdf3c4c86574a7f59238c5ff25c5f4819126d8720e282` |
| 14 | `def` | [unitBooleanLiftCertificate_certificateAccessor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variantb9b4038e12f803bc44ccefe8b7717284c4c99d7769c7a4fd0940fb2960ef50ad.lean/declarations/unitbooleanliftcertificate-certificateaccessor--53f53da096a3e149e468e5fd.md) | 210 | `declaration-track:53f53da096a3e149e468e5fd5fbd9bbfcfd1a292e406a5b7dd5f3582d4f38664` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
