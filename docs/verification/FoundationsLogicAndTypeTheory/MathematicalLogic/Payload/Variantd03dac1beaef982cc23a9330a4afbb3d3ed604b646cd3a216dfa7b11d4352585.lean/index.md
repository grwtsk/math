# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Payload.Variantd03dac1beaef982cc23a9330a4afbb3d3ed604b646cd3a216dfa7b11d4352585

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a23e3b4a02a2d827c2863466b0e2b0d9651bd383",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variantd03dac1beaef982cc23a9330a4afbb3d3ed604b646cd3a216dfa7b11d4352585.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variantd03dac1beaef982cc23a9330a4afbb3d3ed604b646cd3a216dfa7b11d4352585.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variantd03dac1beaef982cc23a9330a4afbb3d3ed604b646cd3a216dfa7b11d4352585.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a23e3b4a02a2d827c2863466b0e2b0d9651bd383`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variantd03dac1beaef982cc23a9330a4afbb3d3ed604b646cd3a216dfa7b11d4352585.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variantd03dac1beaef982cc23a9330a4afbb3d3ed604b646cd3a216dfa7b11d4352585.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PayloadDescriptor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variantd03dac1beaef982cc23a9330a4afbb3d3ed604b646cd3a216dfa7b11d4352585.lean/declarations/payloaddescriptor--a71ff5a63a1d3ecc9c1c3c1b.md) | 20 | `declaration-track:a71ff5a63a1d3ecc9c1c3c1b706fbf2cfaf4d84fffbf18da78eab03e9d32db7d` |
| 2 | `def` | [PayloadDescriptor.Valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variantd03dac1beaef982cc23a9330a4afbb3d3ed604b646cd3a216dfa7b11d4352585.lean/declarations/payloaddescriptor-valid--087592df8b7284dcd6538331.md) | 30 | `declaration-track:087592df8b7284dcd6538331c025005b5af9b2d9b894ecfef85e1d1ed6c38349` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variantd03dac1beaef982cc23a9330a4afbb3d3ed604b646cd3a216dfa7b11d4352585.lean/declarations/instance--3a98c3642b30843e6ae763b1.md) | 40 | `declaration-track:3a98c3642b30843e6ae763b128188e30ecf1b8885bd396d7aebb499f72d45d7b` |
| 4 | `def` | [verifyPayloadDescriptor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variantd03dac1beaef982cc23a9330a4afbb3d3ed604b646cd3a216dfa7b11d4352585.lean/declarations/verifypayloaddescriptor--eac19d15af96dba89365860b.md) | 44 | `declaration-track:eac19d15af96dba89365860b50d7410a76cab65899615c0c38c28cb6d42d600d` |
| 5 | `theorem` | [verifyPayloadDescriptor_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variantd03dac1beaef982cc23a9330a4afbb3d3ed604b646cd3a216dfa7b11d4352585.lean/declarations/verifypayloaddescriptor-sound--f336a725c8aaf138141adee6.md) | 49 | `result-track:f336a725c8aaf138141adee642004590d2732ad17254d23943bcc368a412a833` |
| 6 | `structure` | [PayloadCodec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variantd03dac1beaef982cc23a9330a4afbb3d3ed604b646cd3a216dfa7b11d4352585.lean/declarations/payloadcodec--94117e755148a3b7710b1bee.md) | 55 | `declaration-track:94117e755148a3b7710b1bee6777d960e5b5e0e16a99fcbfc294112329870f43` |
| 7 | `structure` | [PayloadSemantics](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variantd03dac1beaef982cc23a9330a4afbb3d3ed604b646cd3a216dfa7b11d4352585.lean/declarations/payloadsemantics--c68e73f9a11b2df52208b2ab.md) | 62 | `declaration-track:c68e73f9a11b2df52208b2ab3e738013f8728824fd8dd1a4f37bab91b075e31a` |
| 8 | `theorem` | [expectedUpdate_preserves_revision](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variantd03dac1beaef982cc23a9330a4afbb3d3ed604b646cd3a216dfa7b11d4352585.lean/declarations/expectedupdate-preserves-revision--675c4500b731f52ed4c5c68a.md) | 72 | `result-track:675c4500b731f52ed4c5c68ae2d1e32de203ae797b2dfeda8cf5ef1b4aec1fde` |
| 9 | `theorem` | [expectedUpdate_preserves_invariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Payload/Variantd03dac1beaef982cc23a9330a4afbb3d3ed604b646cd3a216dfa7b11d4352585.lean/declarations/expectedupdate-preserves-invariant--e58b40171de4a98b2b0244e0.md) | 79 | `result-track:e58b40171de4a98b2b0244e0c9442f95fb149aa6e3d69fcd4896398b9a9bed2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
