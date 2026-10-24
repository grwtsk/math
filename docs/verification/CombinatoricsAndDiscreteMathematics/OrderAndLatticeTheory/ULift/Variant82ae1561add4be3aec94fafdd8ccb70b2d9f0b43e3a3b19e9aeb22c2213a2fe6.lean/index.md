# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ULift.Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "337628c09bcfd9a626f9c0a32ea84112dc2f7a59",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `337628c09bcfd9a626f9c0a32ea84112dc2f7a59`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.ULift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/instance--61c786726554759ba0302b3f.md) | 31 | `declaration-track:61c786726554759ba0302b3ffc388f574051f462b92f29094809d641e9ead84c` |
| 2 | `theorem` | [up_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/up-le--83b2ab8aa7b5d4135eeb002e.md) | 33 | `result-track:83b2ab8aa7b5d4135eeb002e6cacd735b1f4ff47f2464277182606982d5090a5` |
| 3 | `theorem` | [down_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/down-le--beeb445a79aee8ebc38e6123.md) | 34 | `result-track:beeb445a79aee8ebc38e61239fbf8331c3ad7f7d9e7aeedb50e84b64daf60f01` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/instance--f20a76dd6817c72d90491a40.md) | 36 | `declaration-track:f20a76dd6817c72d90491a4041f9c8bb2c1d04f0bf882d7687779011dbe04fed` |
| 5 | `theorem` | [up_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/up-lt--6256dd79ceb9a867c626e154.md) | 38 | `result-track:6256dd79ceb9a867c626e15478036a243fc2e243193ad289dc6d38c2068dde7f` |
| 6 | `theorem` | [down_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/down-lt--d7fb1cc79168c150dc36b395.md) | 39 | `result-track:d7fb1cc79168c150dc36b39547b7b1e802faeec4a8bad82624598d777a35f844` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/instance--fcb7d13851494c379750196a.md) | 41 | `declaration-track:fcb7d13851494c379750196a253c32b9d4e0e8f67010ea317cfb85aaef27b3be` |
| 8 | `theorem` | [up_beq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/up-beq--788ffcf627ff991cc822bb9f.md) | 43 | `result-track:788ffcf627ff991cc822bb9ff6269bb4d2354e33d94036a2b4eb3bd16136ca5f` |
| 9 | `theorem` | [down_beq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/down-beq--e8d8d1a0b5c6440ead4d0c30.md) | 44 | `result-track:e8d8d1a0b5c6440ead4d0c3010fda5fa4c52f69357d8b7847302a55a75c83ea7` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/instance--d770379cd2ed7c9016ce7252.md) | 46 | `declaration-track:d770379cd2ed7c9016ce72520d05be0608fda096d86638548d3d04cbf0f8efee` |
| 11 | `theorem` | [up_compare](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/up-compare--c194bb601f490a444fb17119.md) | 48 | `result-track:c194bb601f490a444fb171191e61728a0d136785b5c84d01e5a8441a0fcb23c5` |
| 12 | `theorem` | [down_compare](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/down-compare--155f5966881d592314af299a.md) | 49 | `result-track:155f5966881d592314af299a607ebe643637214c8c2c0a0fa50ced82bc522287` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/instance--e86a8ce22738ccd7561ffd97.md) | 52 | `declaration-track:e86a8ce22738ccd7561ffd973bdb2e0211fb4c22dbd773ed14c467ca3d69b57c` |
| 14 | `theorem` | [up_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/up-sup--befdc640185a7116d6fb55a1.md) | 54 | `result-track:befdc640185a7116d6fb55a1f074e5a5136308951391a632face1ce59b2d834a` |
| 15 | `theorem` | [down_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/down-sup--bc705e3442a12c37b9264194.md) | 55 | `result-track:bc705e3442a12c37b92641945129e20bc809b32c9abc0e44ea4933c763622f3c` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/instance--f9f299c586ee3f3e9f1dec10.md) | 57 | `declaration-track:f9f299c586ee3f3e9f1dec10d41f39283b7bbfd4ded9a6b034cbf68d0611f08b` |
| 17 | `theorem` | [up_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/up-inf--a3a7f888b22ca4ab26425b5a.md) | 59 | `result-track:a3a7f888b22ca4ab26425b5a9fd045a5a64495f659268ad908d9096ab155a625` |
| 18 | `theorem` | [down_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/down-inf--7292629bca4394c319550123.md) | 60 | `result-track:7292629bca4394c31955012312a1db0f4aecddf1062e7a84542aa258b2bd8397` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/instance--f2ccbebd232701566ebccd56.md) | 62 | `declaration-track:f2ccbebd232701566ebccd56cea99d9dfea740d5347a4c5972c2462043dbebf9` |
| 20 | `theorem` | [up_sdiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/up-sdiff--ff7b9f00825523cf7e6a1698.md) | 64 | `result-track:ff7b9f00825523cf7e6a1698940e5962802d2e4b1bcb9d443e0d671c83759987` |
| 21 | `theorem` | [down_sdiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/down-sdiff--bf748261047c0f43c4ac8475.md) | 65 | `result-track:bf748261047c0f43c4ac8475ac20a6b2d35d19d6bad9461adefeecc89764499f` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/instance--8302de009f2737a36c31de33.md) | 67 | `declaration-track:8302de009f2737a36c31de337cb312498fd7df72d7271463715688a02eaa2fe8` |
| 23 | `theorem` | [up_compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/up-compl--7ac6c4e44f8f2834e8268846.md) | 69 | `result-track:7ac6c4e44f8f2834e8268846a7ff160f67cf5a63a47c932624ed0c4173e8cb8c` |
| 24 | `theorem` | [down_compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/down-compl--6949280402131eea7087348e.md) | 70 | `result-track:6949280402131eea7087348ed30291fa67504e01078efba833f8c1f5ebd01383` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/instance--65768448ea155b8fb35f150a.md) | 72 | `declaration-track:65768448ea155b8fb35f150a443228941318352773afcfb21fa70320ef25f9b1` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/instance--d2645e2fc8ba8f7a84a15df0.md) | 75 | `declaration-track:d2645e2fc8ba8f7a84a15df0ace0da3b2af330643dfe6ca612450a315a58b657` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/instance--3b413014996970e79470a304.md) | 78 | `declaration-track:3b413014996970e79470a304ed16bc33cf16c528d3941557fa542066ac05b820` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/instance--a2d23f3e3eaed91a71c11ee8.md) | 81 | `declaration-track:a2d23f3e3eaed91a71c11ee87e0e2f20b1e5755d0c4571ac58a69d3f26a29797` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/instance--52f9f84e4822056080780b09.md) | 84 | `declaration-track:52f9f84e4822056080780b0998d933a54f1252fd8815d69a34fe4d20665ad710` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/instance--b2f96fbe240b49de06eaa41b.md) | 87 | `declaration-track:b2f96fbe240b49de06eaa41b4cf4ddea2f39c02457c8c19d2f9a9cbde8c53ffc` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/instance--7f039ce897fa1b8829206425.md) | 91 | `declaration-track:7f039ce897fa1b8829206425cb07b584f9197f272cec0fdbe8476562598bf9e7` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ULift/Variant82ae1561add4be3aec94fafdd8ccb70b2d9f0b43e3a3b19e9aeb22c2213a2fe6.lean/declarations/instance--0e5e3a5f24c493f43a46b210.md) | 94 | `declaration-track:0e5e3a5f24c493f43a46b210a2f02f4b988a50ad5ee20f3b7aad1f52ad9fc9d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
