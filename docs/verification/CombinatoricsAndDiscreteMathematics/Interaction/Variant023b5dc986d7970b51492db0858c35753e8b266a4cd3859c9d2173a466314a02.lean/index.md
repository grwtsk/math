# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interaction.Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "094f2efd54e537b8f2d8bcd239fb0723fb68c688",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `094f2efd54e537b8f2d8bcd239fb0723fb68c688`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PacketAtom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/packetatom--b38e16e57e1d007773279831.md) | 56 | `declaration-track:b38e16e57e1d007773279831393c24359d11480f5d0af706214da8cb18c70d07` |
| 2 | `instance` | [packetAtomFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/packetatomfintype--058125e5f495a783d27eff09.md) | 58 | `declaration-track:058125e5f495a783d27eff09a7e50325a34baf534e8d6bc20bc3b87204397be9` |
| 3 | `def` | [atomEntryTime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/atomentrytime--466dc0e08f9bf7f0494056a5.md) | 64 | `declaration-track:466dc0e08f9bf7f0494056a5d5a68c3736d779698a075a4a6b771a890223e485` |
| 4 | `theorem` | [atomEntryTime_eq_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/atomentrytime-eq-index--a27dcc1962f525222c7944e6.md) | 68 | `result-track:a27dcc1962f525222c7944e6475bba22e85f64d7ef63ad9819c33b4526fc9ea6` |
| 5 | `theorem` | [atomEntryTime_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/atomentrytime-le--9fe6c900287ce204ebe7a904.md) | 74 | `result-track:9fe6c900287ce204ebe7a9048eb431148b62ce5de95fb111ae4bcc13d5e32fa6` |
| 6 | `def` | [coefficientSection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/coefficientsection--722836f4a277b11fbbc57e26.md) | 80 | `declaration-track:722836f4a277b11fbbc57e265b64fb02f57474e06eec681e137c671bc59f3af9` |
| 7 | `def` | [coefficientPrefix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/coefficientprefix--26224ada8bda525b7654285f.md) | 85 | `declaration-track:26224ada8bda525b7654285f503b09f99cf98e9472a90677511ba5c9c27fe6b7` |
| 8 | `structure` | [PacketRealization](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/packetrealization--864cfbe26f5014cb3820e5f2.md) | 99 | `declaration-track:864cfbe26f5014cb3820e5f20f0cb20506b6930624b14ab91f7ef556be6e5056` |
| 9 | `structure` | [GrainRefinementAdapter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/grainrefinementadapter--e64082ceaa22bbd5aa63e6b2.md) | 116 | `declaration-track:e64082ceaa22bbd5aa63e6b2698bfa86ec56ffdd7e34827dd94eb1dcf101b167` |
| 10 | `structure` | [FiniteInteractionComplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/finiteinteractioncomplex--8c20277cdc6d4025b0bcb1c9.md) | 142 | `declaration-track:8c20277cdc6d4025b0bcb1c9de734ed0ed812a8f718ad9a54e4cf66ff964ccbd` |
| 11 | `def` | [FiniteInteractionComplex.Interacts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/finiteinteractioncomplex-interacts--be931e64a1bf5aaf11125479.md) | 158 | `declaration-track:be931e64a1bf5aaf11125479d5b167328e2bd4ab9847a0c27172baad399ce622` |
| 12 | `theorem` | [FiniteInteractionComplex.angularScale_fixed_by_scaffold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/finiteinteractioncomplex-angularscale-fixed-by-scaffold--6e65324250383a5406c1fb30.md) | 165 | `result-track:6e65324250383a5406c1fb305cdd2661b632c1c0314475cb9c5f8b6d52b11cf4` |
| 13 | `theorem` | [FiniteInteractionComplex.interacts_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/finiteinteractioncomplex-interacts-symm--4d754229a712aa073a2337fc.md) | 171 | `result-track:4d754229a712aa073a2337fc265f20a75240f5cc76297759abc6f519fe287153` |
| 14 | `theorem` | [FiniteInteractionComplex.not_interacts_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/finiteinteractioncomplex-not-interacts-self--51e8fd1a1efcfb55289693f8.md) | 180 | `result-track:51e8fd1a1efcfb55289693f82778bd22de4967a3606a9209c4677b710232b82f` |
| 15 | `structure` | [FiniteInteractionNerve](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/finiteinteractionnerve--06ab7a74e81da62f8324d604.md) | 193 | `declaration-track:06ab7a74e81da62f8324d604c5c3d753f1611ad7a105daf505310fe08c3c6229` |
| 16 | `def` | [shadingIntersection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/shadingintersection--2e5ced316c4a9f42ee345025.md) | 204 | `declaration-track:2e5ced316c4a9f42ee3450253ef3134d9a6d6f53c9ba4721f99651671d7e6fbf` |
| 17 | `def` | [RealizesShadingIntersectionNerve](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/realizesshadingintersectionnerve--c8ebc3d3a82c86d4a68fcf40.md) | 217 | `declaration-track:c8ebc3d3a82c86d4a68fcf40df9269ac7f89523e010d6155cd0c442fcf400dc8` |
| 18 | `def` | [FiniteInteractionComplex.RealizesNerveOneSkeleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/finiteinteractioncomplex-realizesnerveoneskeleton--bed0b640e7c658d3f3f67a6f.md) | 232 | `declaration-track:bed0b640e7c658d3f3f67a6f2b1db58de867d697b304c1edb8a72850ee8fbac4` |
| 19 | `def` | [FiniteInteractionComplex.clusterWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/finiteinteractioncomplex-clusterweight--da361e26d7360f77aa302f66.md) | 242 | `declaration-track:da361e26d7360f77aa302f66da8d1f61dd761c7cdaf6881e891cff2957fa99e7` |
| 20 | `theorem` | [FiniteInteractionComplex.clusterWeight_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/finiteinteractioncomplex-clusterweight-nonneg--a4012d1a10390b02abb94574.md) | 248 | `result-track:a4012d1a10390b02abb94574a9a145c0abb172f40153a441e2f52093d003ad59` |
| 21 | `def` | [FiniteInteractionComplex.IsHighConcentrationCluster](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/finiteinteractioncomplex-ishighconcentrationcluster--49d48d6eb47a329c191f1cf2.md) | 265 | `declaration-track:49d48d6eb47a329c191f1cf26a69cc06ea2321884598267701d13346f4f191a7` |
| 22 | `def` | [coefficientPacketState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/coefficientpacketstate--22bf373a3732041a0088506e.md) | 276 | `declaration-track:22bf373a3732041a0088506e72ac4301816b8dc46478c491e3f461b923632b27` |
| 23 | `def` | [correlationEnergyAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/correlationenergyat--7a8740c2b9ae375dc5514fb0.md) | 286 | `declaration-track:7a8740c2b9ae375dc5514fb01f02e16d4037806fd367d5421f6548af6fbdad7c` |
| 24 | `theorem` | [correlationEnergyAt_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/correlationenergyat-nonneg--6a068ea161e4aa3aaebd2255.md) | 292 | `result-track:6a068ea161e4aa3aaebd2255927d25bdfb6b8d2e5cc59f4d18f528466382c009` |
| 25 | `structure` | [CorrelationData](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/correlationdata--a077cc3fb674266ebc6280fd.md) | 300 | `declaration-track:a077cc3fb674266ebc6280fd65d149b7d61e471878f27861cc8368a648c4d5d8` |
| 26 | `def` | [CorrelationData.potentialAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/correlationdata-potentialat--eb2a85d16d341adda6667f95.md) | 310 | `declaration-track:eb2a85d16d341adda6667f95b20117f7a63d06e28083fcffd7a5d9401e051994` |
| 27 | `theorem` | [CorrelationData.potentialAt_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/correlationdata-potentialat-nonneg--60677c67a609ef00aa80f47c.md) | 316 | `result-track:60677c67a609ef00aa80f47cb8408900a42026da6e54726e2aaee455b885a2ff` |
| 28 | `def` | [CorrelationData.maxPotential](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/correlationdata-maxpotential--408ec61746451defdba9f69c.md) | 326 | `declaration-track:408ec61746451defdba9f69c4aa2d776a037d7ff69f32c58558ecbd798b6c8be` |
| 29 | `theorem` | [CorrelationData.potentialAt_le_maxPotential](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/correlationdata-potentialat-le-maxpotential--4d14c68c3c607ad08d56bd14.md) | 331 | `result-track:4d14c68c3c607ad08d56bd143391107e2875edd49a97056aef95791cabbe3ee2` |
| 30 | `theorem` | [CorrelationData.maxPotential_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/declarations/correlationdata-maxpotential-nonneg--e5b2f1d7dab2d48a1c7f418a.md) | 338 | `result-track:e5b2f1d7dab2d48a1c7f418a2722d522cdf786428608652c30741c72f90a0941` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
