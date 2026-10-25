# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Codec.Variant51f0a3d09a0eaee08e5ac8e504c745e220db390f271734f97241d2a1040a2fd2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63e59c1589ba970e672beef861ca43242306ca62",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant51f0a3d09a0eaee08e5ac8e504c745e220db390f271734f97241d2a1040a2fd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant51f0a3d09a0eaee08e5ac8e504c745e220db390f271734f97241d2a1040a2fd2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant51f0a3d09a0eaee08e5ac8e504c745e220db390f271734f97241d2a1040a2fd2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63e59c1589ba970e672beef861ca43242306ca62`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant51f0a3d09a0eaee08e5ac8e504c745e220db390f271734f97241d2a1040a2fd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant51f0a3d09a0eaee08e5ac8e504c745e220db390f271734f97241d2a1040a2fd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LeftInverseCodec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant51f0a3d09a0eaee08e5ac8e504c745e220db390f271734f97241d2a1040a2fd2.lean/declarations/leftinversecodec--45cdc847f4df3eaf07017330.md) | 29 | `declaration-track:45cdc847f4df3eaf07017330e7cbbcb39e716f0921cf688ff6437f58c622bb10` |
| 2 | `theorem` | [encode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant51f0a3d09a0eaee08e5ac8e504c745e220db390f271734f97241d2a1040a2fd2.lean/declarations/encode-injective--9235968c54f49621778cebb8.md) | 39 | `result-track:9235968c54f49621778cebb8443f558ad3b8c82accd0c346057c0233252f8dca` |
| 3 | `def` | [ValidOutput](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant51f0a3d09a0eaee08e5ac8e504c745e220db390f271734f97241d2a1040a2fd2.lean/declarations/validoutput--cce062b8f383f32a5757e70e.md) | 47 | `declaration-track:cce062b8f383f32a5757e70ebb6da80cc762b918007390a0e7c275b6072f7ef0` |
| 4 | `def` | [ValidOutputType](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant51f0a3d09a0eaee08e5ac8e504c745e220db390f271734f97241d2a1040a2fd2.lean/declarations/validoutputtype--4d64afb064cc1f9130ff6a1d.md) | 54 | `declaration-track:4d64afb064cc1f9130ff6a1d08ec9aca865eb9e204744105d7308f475b8f834a` |
| 5 | `theorem` | [encode_decode_of_valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant51f0a3d09a0eaee08e5ac8e504c745e220db390f271734f97241d2a1040a2fd2.lean/declarations/encode-decode-of-valid--ccc402bd07de0536fd71add1.md) | 59 | `result-track:ccc402bd07de0536fd71add1b7b3da101679eb71b9ffbeff29bc223ef22638d1` |
| 6 | `def` | [sourceEquivValidOutput](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Codec/Variant51f0a3d09a0eaee08e5ac8e504c745e220db390f271734f97241d2a1040a2fd2.lean/declarations/sourceequivvalidoutput--0e0540715b07f207e224e465.md) | 68 | `declaration-track:0e0540715b07f207e224e465175bb11249d019b682088f1646408c94b3bc1df8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
