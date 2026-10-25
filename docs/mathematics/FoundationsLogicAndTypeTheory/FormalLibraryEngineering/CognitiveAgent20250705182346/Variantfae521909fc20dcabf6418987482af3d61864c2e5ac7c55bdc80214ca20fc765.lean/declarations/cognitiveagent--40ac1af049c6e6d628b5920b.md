# CognitiveAgent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15e90c18bed0de405d1de751ed173546104ae094daa1dc1848bd69008dcdd06e",
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
  "slug": "cognitiveagent--40ac1af049c6e6d628b5920b",
  "source": {
    "blob": "5195a418e62a8786a5ace052f9c6a57ef5a7ae08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CognitiveAgent20250705182346/Variantfae521909fc20dcabf6418987482af3d61864c2e5ac7c55bdc80214ca20fc765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40ac1af049c6e6d628b5920bf3e723668f8e7a8d6627b625a9868da74d48e95a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CognitiveAgent20250705182346/Variantfae521909fc20dcabf6418987482af3d61864c2e5ac7c55bdc80214ca20fc765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15e90c18bed0de405d1de751ed173546104ae094daa1dc1848bd69008dcdd06e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–36.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CognitiveAgent20250705182346/Variantfae521909fc20dcabf6418987482af3d61864c2e5ac7c55bdc80214ca20fc765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CognitiveAgent20250705182346/Variantfae521909fc20dcabf6418987482af3d61864c2e5ac7c55bdc80214ca20fc765.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5195a418e62a8786a5ace052f9c6a57ef5a7ae08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
