# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FailIfNoProgress.Variant39b19a8a639d7607721efb62766bff77376e0f4319ef1de6fed3f2738ac51e75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00a6545c4d97cb8eb0be6cd20b57b7b8cd8dbe44",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant39b19a8a639d7607721efb62766bff77376e0f4319ef1de6fed3f2738ac51e75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant39b19a8a639d7607721efb62766bff77376e0f4319ef1de6fed3f2738ac51e75.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant39b19a8a639d7607721efb62766bff77376e0f4319ef1de6fed3f2738ac51e75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00a6545c4d97cb8eb0be6cd20b57b7b8cd8dbe44`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant39b19a8a639d7607721efb62766bff77376e0f4319ef1de6fed3f2738ac51e75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant39b19a8a639d7607721efb62766bff77376e0f4319ef1de6fed3f2738ac51e75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Util` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant39b19a8a639d7607721efb62766bff77376e0f4319ef1de6fed3f2738ac51e75.lean/declarations/syntax--b71bccc0826ebf1b0aa4db89.md) | 37 | `declaration-track:b71bccc0826ebf1b0aa4db89a7922d224ae8b82f7b1954ae4cb7dcd47416aabd` |
| 2 | `def` | [lctxIsDefEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant39b19a8a639d7607721efb62766bff77376e0f4319ef1de6fed3f2738ac51e75.lean/declarations/lctxisdefeq--644606fa82ace08518ec148b.md) | 45 | `declaration-track:644606fa82ace08518ec148be6100ee09d3d0943b01f0c36c443292ae5c0f2f1` |
| 3 | `def` | [runAndFailIfNoProgress](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant39b19a8a639d7607721efb62766bff77376e0f4319ef1de6fed3f2738ac51e75.lean/declarations/runandfailifnoprogress--1b9a96eb5c5fb2c4d94edf6e.md) | 64 | `declaration-track:1b9a96eb5c5fb2c4d94edf6e01147c5b0bbc6c30e4f396f448fd65c92bca7958` |
| 4 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant39b19a8a639d7607721efb62766bff77376e0f4319ef1de6fed3f2738ac51e75.lean/declarations/elab-rules--1271629770c8cec2f4f38ac6.md) | 79 | `declaration-track:1271629770c8cec2f4f38ac6b86fb6070696b20bee8c6e51b6033127d5bb331c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
