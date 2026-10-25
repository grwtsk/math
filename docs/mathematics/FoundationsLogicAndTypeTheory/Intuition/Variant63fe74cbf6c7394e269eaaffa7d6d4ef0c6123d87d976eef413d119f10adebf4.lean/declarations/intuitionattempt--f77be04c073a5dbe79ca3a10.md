# IntuitionAttempt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a467c37bf015522b099ac4ad8eaf19ebdc0fc6c2333ace765b1345b7a4f2b571",
  "kind": "structure",
  "lexical_name": "IntuitionAttempt",
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
  "slug": "intuitionattempt--f77be04c073a5dbe79ca3a10",
  "source": {
    "blob": "58cc05ef4322ca95433e7acf42369bb06884c4c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Intuition/Variant63fe74cbf6c7394e269eaaffa7d6d4ef0c6123d87d976eef413d119f10adebf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f77be04c073a5dbe79ca3a1085c8723784433e4b8ed7dfae4f04d3f6b308f060",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Intuition/Variant63fe74cbf6c7394e269eaaffa7d6d4ef0c6123d87d976eef413d119f10adebf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a467c37bf015522b099ac4ad8eaf19ebdc0fc6c2333ace765b1345b7a4f2b571`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IntuitionAttempt where
  /-- Replay identity: a repeated identity must not count twice in executable history. -/
  eventIdentity : String
  /-- Priority that generated this attempt. -/
  priority : IntuitionPriority
  /-- Explicit operational result, not object truth. -/
  outcome : AttemptOutcome
  /-- Counterevidence/provenance identities retained after failures. -/
  evidence : List String
  /-- Actual finite work charged for this attempt. -/
  spent : ℕ
  deriving DecidableEq, Repr

/-- Replaying the same explicit input into a deterministic ranking rule has the same output. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Intuition/Variant63fe74cbf6c7394e269eaaffa7d6d4ef0c6123d87d976eef413d119f10adebf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Intuition/Variant63fe74cbf6c7394e269eaaffa7d6d4ef0c6123d87d976eef413d119f10adebf4.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58cc05ef4322ca95433e7acf42369bb06884c4c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
