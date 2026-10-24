# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SubmatrixSurgeryTests.Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42ed060cb40370a035f1cf1d51ed1236e6767425",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42ed060cb40370a035f1cf1d51ed1236e6767425`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.SubmatrixSurgery` — import line 6; external provider; requires a separately pinned dependency.
- `BinaryMatrix.IntegralPermutationLift` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sampleMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/samplematrix--c4619e0889264b4798eca6da.md) | 21 | `declaration-track:c4619e0889264b4798eca6da5eab6b765f21355e397892a3f3124aa95f7ee313` |
| 2 | `def` | [sampleLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/samplelocus--184a616ab8beaf08d1750889.md) | 24 | `declaration-track:184a616ab8beaf08d1750889866371944354f93010eba572fcfd737002440a5a` |
| 3 | `def` | [replacement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/replacement--943d82359cc23ae4aac93d44.md) | 28 | `declaration-track:943d82359cc23ae4aac93d441981da2ac9cfc7fe8651a52d38175a5363cebc35` |
| 4 | `def` | [sampleSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/samplesurgery--ba0a2b79daee14291e719892.md) | 32 | `declaration-track:ba0a2b79daee14291e7198922e9e244e5966d7a04ff8fdc2a95560994a734926` |
| 5 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--d4d2a164bdd19b313f608c7d.md) | 35 | `declaration-track:d4d2a164bdd19b313f608c7dbf88df2d8981708786efc90d3a50b42e3ab62b9d` |
| 6 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--5b5a15cfb83b94dd66c56bfd.md) | 37 | `declaration-track:5b5a15cfb83b94dd66c56bfd4d203cd68b5adb6b1b05d16ceda4db5aed6a689d` |
| 7 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--ed769e784e0cf0e3ba58031c.md) | 39 | `declaration-track:ed769e784e0cf0e3ba58031cb953412fd10b823d23f91bca56f4cfd55d18043d` |
| 8 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--d96199fd5980517425fce2e0.md) | 41 | `declaration-track:d96199fd5980517425fce2e0fd1b609b15d4c1aa21a174a4380056d42e0bfee5` |
| 9 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--e8046a692eb9352a216081b0.md) | 43 | `declaration-track:e8046a692eb9352a216081b00a1eea4fc7ecbdb34dc072d81a068fff1c4bdd3f` |
| 10 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--02a4576efc46cbba6292a22e.md) | 45 | `declaration-track:02a4576efc46cbba6292a22efb0bff3b14babf4d778c7c5355f444c14e9cb8f0` |
| 11 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--8029bd7af802ecb42a4f9dcf.md) | 47 | `declaration-track:8029bd7af802ecb42a4f9dcf47c3d1b5a79cbe872408c3877bf7bbfeda4d71fb` |
| 12 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--70b06280ccae7defdfa6e4ce.md) | 51 | `declaration-track:70b06280ccae7defdfa6e4ce18595a671018e1075833a475225d50ec4131d661` |
| 13 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--5556318e22c7ba21c49c6488.md) | 53 | `declaration-track:5556318e22c7ba21c49c648812450e3a3f642a84ec2d3cc807db88f5823ad3fe` |
| 14 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--6139eda1fb630be16d6660ad.md) | 55 | `declaration-track:6139eda1fb630be16d6660ad8723cc4939bb62cd27f331ca7d07338e735db60d` |
| 15 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--473b86c8324def020d5af1fe.md) | 57 | `declaration-track:473b86c8324def020d5af1fee84fd2ac65df56893b3f9a785681f8e8a98ab566` |
| 16 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--8f08301e08ff10c7366d92b9.md) | 59 | `declaration-track:8f08301e08ff10c7366d92b9ac1652c780aaf47f588b7b0f562864fc99efa18c` |
| 17 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--54036d664772cf047e2077f1.md) | 62 | `declaration-track:54036d664772cf047e2077f159e6c5e1b4b5d8d9c53c721b4d464bfd64d77522` |
| 18 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--b916a19ba53ed5ede24f3228.md) | 67 | `declaration-track:b916a19ba53ed5ede24f3228151051952e67b3331daea73dd14d7000a69a2d08` |
| 19 | `def` | [sampleMatrixMut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/samplematrixmut--840adf5e5b3fc513963657cc.md) | 74 | `declaration-track:840adf5e5b3fc513963657ccd72a6a67c5d5524f0401b7bb35c634381f0fef8c` |
| 20 | `def` | [replacementMut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/replacementmut--fa5d81753dcd3e6c7ea3d782.md) | 77 | `declaration-track:fa5d81753dcd3e6c7ea3d782f5e8883baedf0a8d2180fe1d15ebb6b9a7b5cf2d` |
| 21 | `def` | [sampleRuntimeSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/sampleruntimesurgery--2f11311d432f440b916df807.md) | 81 | `declaration-track:2f11311d432f440b916df807f8b1ab7d9923685e7beeeba72a2dd498459a2dec` |
| 22 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--60aa5988bd275e200829a131.md) | 85 | `declaration-track:60aa5988bd275e200829a131d17730312c9fb406a14c0537be3fcfbdb8a08ea3` |
| 23 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--ac3406f860209dd3da586a70.md) | 87 | `declaration-track:ac3406f860209dd3da586a70c084ec0e13c66e9179e30c448d9a90907bd12d23` |
| 24 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--5d2d63f628d84d3d9b3438a2.md) | 89 | `declaration-track:5d2d63f628d84d3d9b3438a21ff97751a77b07b58829816e1bc145d08073304a` |
| 25 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--48cf47c221273e1b010f3bb6.md) | 102 | `declaration-track:48cf47c221273e1b010f3bb60d84b8303fb4619ebe9de5ce5d9d75f82fabb191` |
| 26 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--55da4077acbbcb02dd8d482e.md) | 107 | `declaration-track:55da4077acbbcb02dd8d482e9e3ee465ee7c4a306a9d78eb5be34689e68f8028` |
| 27 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--f96fb48bfc7f9b5b4a1122c8.md) | 112 | `declaration-track:f96fb48bfc7f9b5b4a1122c808406a480956fb2c35521e6cef6e855a399c22e8` |
| 28 | `def` | [boolFinTwo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/boolfintwo--6c114cfefb83387e95607207.md) | 119 | `declaration-track:6c114cfefb83387e95607207492dd4a549decb3bb34c33bece166a670438e27d` |
| 29 | `def` | [boolNotInvolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/boolnotinvolution--bf672d0b1fe4b0d342b1c015.md) | 127 | `declaration-track:bf672d0b1fe4b0d342b1c01590dbfe31c27fc542d20bb9aaae3a2ffae079ef6e` |
| 30 | `def` | [boolProjection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/boolprojection--7a177cc2eab484884b28b668.md) | 134 | `declaration-track:7a177cc2eab484884b28b668fc37de0ccec3e7ef4758f80a9f7c9a8e7fa293f8` |
| 31 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--9764ad84fe2cd9ae3640e993.md) | 137 | `declaration-track:9764ad84fe2cd9ae3640e99358471a095ceb83dcfd2ca17bc53235f496e0a083` |
| 32 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--9ac88d53124480946bfb40e2.md) | 139 | `declaration-track:9ac88d53124480946bfb40e260d4c591fe1a1e8e035f9b655d5400c6b0b11194` |
| 33 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variantbc8f33e59a01eddb2d44850156e561ba25175ef3c5758af90e8b9299da72ca76.lean/declarations/example--e29fa5f1f4f75173894c5304.md) | 142 | `declaration-track:e29fa5f1f4f75173894c53047f5d5c1011ac9efdb2b5339abe8a36ae0ca7c670` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
