# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Pointwise.Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60fcab2cc2d319dd635e81a0cb4285119d6a56c6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60fcab2cc2d319dd635e81a0cb4285119d6a56c6`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean.json)

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
| 1 | `def` | [pointwiseVAdd](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/pointwisevadd--75440bb658c239aad0669bfa.md) | 48 | `declaration-track:75440bb658c239aad0669bfa6d27de16fb049ed2e307b7d30b532c8e286f1532` |
| 2 | `lemma` | [coe_pointwise_vadd](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/coe-pointwise-vadd--d8c04f199138a68470b3a2c9.md) | 53 | `result-track:d8c04f199138a68470b3a2c99f4f419efa0f938172cc36a19b73d66645d39e5e` |
| 3 | `def` | [pointwiseAddAction](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/pointwiseaddaction--2e1aef20e418c0af54dd48c5.md) | 60 | `declaration-track:2e1aef20e418c0af54dd48c50da6153773dea19348fa44e2475dd89b37f43a8f` |
| 4 | `theorem` | [pointwise_vadd_eq_map](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/pointwise-vadd-eq-map--720c9700c993291b8389e3be.md) | 65 | `result-track:720c9700c993291b8389e3be5d8fee75952b9d62d504343518dbfc9acc5f0730` |
| 5 | `theorem` | [vadd_mem_pointwise_vadd_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/vadd-mem-pointwise-vadd-iff--80b89909ad8f78aea41ae08a.md) | 69 | `result-track:80b89909ad8f78aea41ae08a2b47df1e1b1d511f3a74ee72cc8034aefb0e1f75` |
| 6 | `theorem` | [pointwise_vadd_bot](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/pointwise-vadd-bot--463dc6d3cd4bccb59b1cdb55.md) | 73 | `result-track:463dc6d3cd4bccb59b1cdb55edee236493f08d2fd8797475949d2f76ff71f1e9` |
| 7 | `lemma` | [pointwise_vadd_top](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/pointwise-vadd-top--64d6ae32c61ef11e067f84e3.md) | 76 | `result-track:64d6ae32c61ef11e067f84e382fdc451b899bf32b56db2bb404bd392dbbc57f4` |
| 8 | `theorem` | [pointwise_vadd_direction](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/pointwise-vadd-direction--b011ddbbd7b16649d681563f.md) | 79 | `result-track:b011ddbbd7b16649d681563f05a2e44039f7d3542c89b5fdfa228bf34b7ccd75` |
| 9 | `theorem` | [pointwise_vadd_span](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/pointwise-vadd-span--6ddf35d665778d1eb26655bd.md) | 84 | `result-track:6ddf35d665778d1eb26655bdf176bc89b046dbe47235bc0f4d7579321c0e3133` |
| 10 | `theorem` | [map_pointwise_vadd](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/map-pointwise-vadd--81efc066e3af8b656018701b.md) | 87 | `result-track:81efc066e3af8b656018701b60a5bf4d3d16c6040101f9d6b54783c2bf2a65da` |
| 11 | `def` | [pointwiseSMul](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/pointwisesmul--3166c4c3bf54f1430052f01f.md) | 106 | `declaration-track:3166c4c3bf54f1430052f01f000730bb9084b336f9877fdd91ae711d816d5990` |
| 12 | `lemma` | [coe_smul](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/coe-smul--038fd705d9844a1d2aa76547.md) | 112 | `result-track:038fd705d9844a1d2aa7654737cc3ca9924636d6922ba42a9cbe25e311f20b55` |
| 13 | `lemma` | [smul_eq_map](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/smul-eq-map--368499a147a8ea4588cf01dc.md) | 114 | `result-track:368499a147a8ea4588cf01dc7a02c8ee244efe0a5d48297a8a613ee4c714fcd0` |
| 14 | `lemma` | [smul_mem_smul_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/smul-mem-smul-iff--599deb5f5d4a3538f1fb6779.md) | 117 | `result-track:599deb5f5d4a3538f1fb67791452775f5ac4db065f96a1f9fa2b92fd85467a78` |
| 15 | `lemma` | [smul_bot](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/smul-bot--6019d134e4e521a21a05504e.md) | 120 | `result-track:6019d134e4e521a21a05504e235f6f483eb312773ef6505108b0511d34a452af` |
| 16 | `lemma` | [smul_span](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/smul-span--cfa8009f73591498b726aa8d.md) | 123 | `result-track:cfa8009f73591498b726aa8d42597e236f024ccd4afa3e812f9a4f3730816edc` |
| 17 | `def` | [mulAction](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/mulaction--03be7dd6c2bb756a400f3db1.md) | 139 | `declaration-track:03be7dd6c2bb756a400f3db10c6b4f24791ae53fc448cc6a175435976fb2abeb` |
| 18 | `lemma` | [smul_mem_smul_iff_of_isUnit](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/smul-mem-smul-iff-of-isunit--e3365cdfc174d63a71b5a33f.md) | 144 | `result-track:e3365cdfc174d63a71b5a33fed0d3926222099559f70f934793db4a02cac5819` |
| 19 | `lemma` | [smul_mem_smul_iff₀](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/smul-mem-smul-iff--45163b051a2f4e9e9b57928b.md) | 147 | `result-track:45163b051a2f4e9e9b57928b3c4a74f7799aed483a6aba1b3371a86ad8aeaf97` |
| 20 | `lemma` | [smul_top](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/smul-top--7d7bb50dd02debc26b2e3c7f.md) | 151 | `result-track:7d7bb50dd02debc26b2e3c7f839385a1c91de0347c95ea26c58ae01ad90a6f9c` |
| 21 | `lemma` | [direction_smul](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Pointwise/Variantd0ebb6bc92175f0aa9a0f902fbbbf4c08b15a4e42b118e3b3f2da9318d064890.lean/declarations/direction-smul--2ed2cd1579b60d41b2125a60.md) | 162 | `result-track:2ed2cd1579b60d41b2125a601d5197a6e6cec10411b8ceea053301cc830904bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
