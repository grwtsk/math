# CognitiveAgent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4592ed41d4ce4dc57125e6dc9399620cb3e01cc42c1f193bc7f7bee7a68950fb",
  "kind": "class",
  "lexical_name": "CognitiveAgent",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "cognitiveagent--f0a49c9e74fd68f890b12079",
  "source": {
    "blob": "4d1b68a2c4a75ccce5f7dbac1641b4c8b1a06294",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CognitiveAgent20250705182346/Variantd817fa5a9adfc761b3524fbe6ae0aac165d2f81fe230ac4f2899558bdbebb6ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0a49c9e74fd68f890b12079ef07f34c26e71dec703831e5450d7ed587deac9b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CognitiveAgent20250705182346/Variantd817fa5a9adfc761b3524fbe6ae0aac165d2f81fe230ac4f2899558bdbebb6ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4592ed41d4ce4dc57125e6dc9399620cb3e01cc42c1f193bc7f7bee7a68950fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class CognitiveAgent (α : Type) where
  /-- Perceive an external user input and possibly mutate internal state. -/
  perceive : α → UserInputEvent → α

  /-- Determine if the agent is in a mode where it should respond. -/
  shouldRespond : α → Bool

  /-- Generate a plan (text) given a user prompt and optional dialogue context. -/
  plan : α → (prompt : String) → (ctx : Option DialogueContext) → (thread : Option String) → Option String

  /-- Critique the current dialogue flow versus a target profile.
      Returns a possibly compressed dialogue context and similarity score. -/
  critiqueFlow : α → DialogueContext → FlowProfile → Option (DialogueContext × Float)

  /-- Perform an action based on a plan, producing output text. -/
  act : α → (plan : String) → Option String

end Cognition.Agents
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CognitiveAgent20250705182346/Variantd817fa5a9adfc761b3524fbe6ae0aac165d2f81fe230ac4f2899558bdbebb6ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CognitiveAgent20250705182346/Variantd817fa5a9adfc761b3524fbe6ae0aac165d2f81fe230ac4f2899558bdbebb6ec.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d1b68a2c4a75ccce5f7dbac1641b4c8b1a06294` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
