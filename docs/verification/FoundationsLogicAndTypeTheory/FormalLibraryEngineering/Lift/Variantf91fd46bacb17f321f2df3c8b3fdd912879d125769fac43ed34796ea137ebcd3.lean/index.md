# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lift.Variantf91fd46bacb17f321f2df3c8b3fdd912879d125769fac43ed34796ea137ebcd3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ae0dd2a511fa1260641b2eacf4fde44c9bf5f27",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variantf91fd46bacb17f321f2df3c8b3fdd912879d125769fac43ed34796ea137ebcd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variantf91fd46bacb17f321f2df3c8b3fdd912879d125769fac43ed34796ea137ebcd3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variantf91fd46bacb17f321f2df3c8b3fdd912879d125769fac43ed34796ea137ebcd3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ae0dd2a511fa1260641b2eacf4fde44c9bf5f27`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variantf91fd46bacb17f321f2df3c8b3fdd912879d125769fac43ed34796ea137ebcd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variantf91fd46bacb17f321f2df3c8b3fdd912879d125769fac43ed34796ea137ebcd3.lean.json)

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
| 1 | `class` | [CanLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variantf91fd46bacb17f321f2df3c8b3fdd912879d125769fac43ed34796ea137ebcd3.lean/declarations/canlift--76448676c45d9879c81b0278.md) | 28 | `declaration-track:76448676c45d9879c81b027839b2c717dad2b9a91090ea31d50565f874a6e6b8` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variantf91fd46bacb17f321f2df3c8b3fdd912879d125769fac43ed34796ea137ebcd3.lean/declarations/instance--4275d7a134a1cba0e4e97bdc.md) | 32 | `declaration-track:4275d7a134a1cba0e4e97bdca16d88dacd3d68e1c32c90f7ead3b38f57f1cb41` |
| 3 | `instance` | [Pi.canLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variantf91fd46bacb17f321f2df3c8b3fdd912879d125769fac43ed34796ea137ebcd3.lean/declarations/pi-canlift--9dfb397a98fe0dd7eb485d21.md) | 36 | `declaration-track:9dfb397a98fe0dd7eb485d21c2b65cf3791592f4a8ed9d41b7183c61b7df90e3` |
| 4 | `instance` | [Prod.instCanLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variantf91fd46bacb17f321f2df3c8b3fdd912879d125769fac43ed34796ea137ebcd3.lean/declarations/prod-instcanlift--23aa60287e465919ec16d0fc.md) | 43 | `declaration-track:23aa60287e465919ec16d0fc1d0422d510a0b1ebf7d97495ecdd406eb44d7eeb` |
| 5 | `theorem` | [Subtype.exists_pi_extension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variantf91fd46bacb17f321f2df3c8b3fdd912879d125769fac43ed34796ea137ebcd3.lean/declarations/subtype-exists-pi-extension--8ecf0c5f6a9ebdb8b78bbb57.md) | 52 | `result-track:8ecf0c5f6a9ebdb8b78bbb571abd3bcfb7a54e53c0af6c2c1e77df09c6625408` |
| 6 | `instance` | [PiSubtype.canLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variantf91fd46bacb17f321f2df3c8b3fdd912879d125769fac43ed34796ea137ebcd3.lean/declarations/pisubtype-canlift--9cdda833a2cdceac335fbf65.md) | 59 | `declaration-track:9cdda833a2cdceac335fbf65f1b3d776577da8af897d01604a241d6527bebe7d` |
| 7 | `instance` | [PiSubtype.canLift'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variantf91fd46bacb17f321f2df3c8b3fdd912879d125769fac43ed34796ea137ebcd3.lean/declarations/pisubtype-canlift--bd7df4509282a61b635d1963.md) | 64 | `declaration-track:bd7df4509282a61b635d1963cd1afa41ff9612099b5406fa6b90cbaf6913b031` |
| 8 | `instance` | [Subtype.canLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variantf91fd46bacb17f321f2df3c8b3fdd912879d125769fac43ed34796ea137ebcd3.lean/declarations/subtype-canlift--3166eb995e9d652632862554.md) | 68 | `declaration-track:3166eb995e9d6526328625545230176605057319acad8f61a7a350002d96325e` |
| 9 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variantf91fd46bacb17f321f2df3c8b3fdd912879d125769fac43ed34796ea137ebcd3.lean/declarations/syntax--f1c46927f697b4928624b788.md) | 145 | `declaration-track:f1c46927f697b4928624b78824f5c39583feaf7f30c97085eab6140b69cdd8d0` |
| 10 | `def` | [Lift.getInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variantf91fd46bacb17f321f2df3c8b3fdd912879d125769fac43ed34796ea137ebcd3.lean/declarations/lift-getinst--82729341d2e71cde0cc82088.md) | 149 | `declaration-track:82729341d2e71cde0cc82088886a08259073e7a3163f1fad4b4388e5bf997eb5` |
| 11 | `def` | [Lift.main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variantf91fd46bacb17f321f2df3c8b3fdd912879d125769fac43ed34796ea137ebcd3.lean/declarations/lift-main--0986115de55459c2df2f63c4.md) | 157 | `declaration-track:0986115de55459c2df2f63c441fbde3a01d68d88f4ce2a66c5f45c1def0b92c6` |
| 12 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variantf91fd46bacb17f321f2df3c8b3fdd912879d125769fac43ed34796ea137ebcd3.lean/declarations/elab-rules--b4e4ee3d6b71c3417af9b184.md) | 208 | `declaration-track:b4e4ee3d6b71c3417af9b18488c04ec1534a2890e3677b5558a0192ce9fa4c10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
