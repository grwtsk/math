# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnsafeQueue.Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7adb18d260593b4bd8ef758d94c9ea9505f50359",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7adb18d260593b4bd8ef758d94c9ea9505f50359`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop.Constants` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PostponedSafeRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd.lean/declarations/postponedsaferule--1483d036c5c792754902a17c.md) | 17 | `declaration-track:1483d036c5c792754902a17cd34e3022de98dbdc8fec9c41f7bafae2ac0a995e` |
| 2 | `def` | [toUnsafeRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd.lean/declarations/tounsaferule--1fea876a57e9c318e4f2d652.md) | 24 | `declaration-track:1fea876a57e9c318e4f2d652fac129b8a7b618a626e9de0401bb053fcb8b0e6f` |
| 3 | `inductive` | [UnsafeQueueEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd.lean/declarations/unsafequeueentry--b7e47171beb06116742cb92d.md) | 30 | `declaration-track:b7e47171beb06116742cb92d2ad84bfb206cf19cf13c4259111ae52b1a839604` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd.lean/declarations/instance--c87703862d5991338807647a.md) | 37 | `declaration-track:c87703862d5991338807647a6b5c9c7ff709402e39ecd60f07f685548a08f8cc` |
| 5 | `def` | [successProbability](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd.lean/declarations/successprobability--f50cf68c62127f0a5cec1924.md) | 42 | `declaration-track:f50cf68c62127f0a5cec19241c107ec4d23a5b3a821f48c7449829dd1c4a1a14` |
| 6 | `def` | [name](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd.lean/declarations/name--a44bacc99361721886f18eff.md) | 46 | `declaration-track:a44bacc99361721886f18effc4bf0f209997fba56fb5899e1bc9acd50bc15a40` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd.lean/declarations/instance--81a1fbe37913f065a54b4f0e.md) | 50 | `declaration-track:81a1fbe37913f065a54b4f0e72248fe885092834f2388e1e5105633a4d01b313` |
| 8 | `def` | [UnsafeQueue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd.lean/declarations/unsafequeue--e3597d24d90f99d5a9e5d7f7.md) | 58 | `declaration-track:e3597d24d90f99d5a9e5d7f76e35ec0248e8b3df1b63204f7e632179f0145430` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd.lean/declarations/instance--a2b30c02c2619672ecc1b11a.md) | 62 | `declaration-track:a2b30c02c2619672ecc1b11ac74208a0e7006d0c1ff377d421ec04b1a7121c1f` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd.lean/declarations/instance--3f5734de570f9e1dbc0e602c.md) | 65 | `declaration-track:3f5734de570f9e1dbc0e602ce6294ce36eb7377bd208a9066345a6ad9b24b2d7` |
| 11 | `def` | [initial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd.lean/declarations/initial--649ceaee6d784610a6d85cf1.md) | 70 | `declaration-track:649ceaee6d784610a6d85cf1ecd8528b633efb962fde5b4a09496f612a411a9a` |
| 12 | `def` | [entriesToMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd.lean/declarations/entriestomessagedata--9d3f50267dbcbabc322092ef.md) | 78 | `declaration-track:9d3f50267dbcbabc322092ef0bdd4b8752898523e6090aafee159c72e4988838` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
