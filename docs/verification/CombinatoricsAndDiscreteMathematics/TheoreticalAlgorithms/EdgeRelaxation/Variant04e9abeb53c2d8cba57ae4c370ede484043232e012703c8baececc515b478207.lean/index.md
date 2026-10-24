# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EdgeRelaxation.Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "956fef1e9be6061413bbff4637236d7320baf8d3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `956fef1e9be6061413bbff4637236d7320baf8d3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.EdgeRelaxation` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Prismatic.DeltaRing` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EdgeRelaxationKernel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207.lean/declarations/edgerelaxationkernel--89d68bc22b2840abc0b9f296.md) | 27 | `declaration-track:89d68bc22b2840abc0b9f2965b44290b316c363726693f0a119a6b44ae4f2c75` |
| 2 | `structure` | [DeltaEdgeRelaxation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207.lean/declarations/deltaedgerelaxation--b1de7330ddf39ba97fe98aa5.md) | 41 | `declaration-track:b1de7330ddf39ba97fe98aa5896b931f47bc6d700ab1dd3bdfdfe05b4ef20f1c` |
| 3 | `theorem` | [deltaEdgeRelaxation_delta_compatible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207.lean/declarations/deltaedgerelaxation-delta-compatible--79b82fd59ecfd1e6bd77fe4d.md) | 52 | `result-track:79b82fd59ecfd1e6bd77fe4d4886f305152e2206cb1204c5354db7f1a0465ab4` |
| 4 | `structure` | [LiftCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207.lean/declarations/liftcertificate--ea10d565aa056760605f8be9.md) | 70 | `declaration-track:ea10d565aa056760605f8be91c1cdcb3cc46b154e72b61dc19599a639f120470` |
| 5 | `theorem` | [LiftCertificate.preserves_mass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207.lean/declarations/liftcertificate-preserves-mass--10ddf56fefcb5f1f9bcaf2bb.md) | 87 | `result-track:10ddf56fefcb5f1f9bcaf2bbe2079dc8870223cc9537fff8d50bea3bf98b5556` |
| 6 | `theorem` | [LiftCertificate.delta_compatible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207.lean/declarations/liftcertificate-delta-compatible--230231a7faf8566e4a799b70.md) | 94 | `result-track:230231a7faf8566e4a799b70e3b3ca0233104b709c2ff0ec040497e6ca673c67` |
| 7 | `theorem` | [LiftCertificate.frobenius_compatible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207.lean/declarations/liftcertificate-frobenius-compatible--71a1f56eb205705c2257e2d9.md) | 101 | `result-track:71a1f56eb205705c2257e2d9318281680ea405ba2814e8ec9892107c8af5a3c5` |
| 8 | `theorem` | [LiftCertificate.no_spectral_rigidity_claim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207.lean/declarations/liftcertificate-no-spectral-rigidity-claim--0b46099c4a37f01b88ea2e2a.md) | 108 | `result-track:0b46099c4a37f01b88ea2e2a78eac60e91dc419f63a30fa2bcef05608fe3da74` |
| 9 | `def` | [LiftCertificate.certifiedForMajorProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207.lean/declarations/liftcertificate-certifiedformajorproof--46eda51fbc66e53a6717c712.md) | 124 | `declaration-track:46eda51fbc66e53a6717c7124642052351e15a012743876f17e59bdfc490498d` |
| 10 | `theorem` | [LiftCertificate.certifiedForMajorProof_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207.lean/declarations/liftcertificate-certifiedformajorproof-of-fields--76992e56194e918d1da31991.md) | 140 | `result-track:76992e56194e918d1da31991e7f1c72e02754a8da8d591760ff0ec999a85df4a` |
| 11 | `def` | [unitEdgeRelaxationKernel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207.lean/declarations/unitedgerelaxationkernel--96db014d311694ebf5dbe438.md) | 159 | `declaration-track:96db014d311694ebf5dbe438f3481345fdff08a05502d370b47c70ecde011a70` |
| 12 | `def` | [unitDeltaEdgeRelaxation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207.lean/declarations/unitdeltaedgerelaxation--a79bc2588921feb98335b283.md) | 175 | `declaration-track:a79bc2588921feb98335b283f6e85f07c68ed39e2dae4969ab471511d84717fe` |
| 13 | `def` | [unitBooleanLiftCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207.lean/declarations/unitbooleanliftcertificate--ee7d5c8d5fdb072fbf946d33.md) | 188 | `declaration-track:ee7d5c8d5fdb072fbf946d332a23822354a6481131cc2efd3606c890f9222f9c` |
| 14 | `def` | [unitBooleanLiftCertificate_certificateAccessor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant04e9abeb53c2d8cba57ae4c370ede484043232e012703c8baececc515b478207.lean/declarations/unitbooleanliftcertificate-certificateaccessor--6ceedfbc7121a8bb25336a86.md) | 210 | `declaration-track:6ceedfbc7121a8bb25336a86eb84b77896ce342201fe79c7289bcafac1f4cd8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
