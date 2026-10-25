# MatchState.pushFold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88c21596a4864a5b4c04f700af0aac8363787e1ccb8e7bf1d44dd9a869e27e4c",
  "kind": "def",
  "lexical_name": "MatchState.pushFold",
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
  "slug": "matchstate-pushfold--4a1065f2b41d1beddfbd15c2",
  "source": {
    "blob": "3d15d52cfba8de9c4ea41db34c6bf6b8df224524",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variante5dc1c82dbde4155dd425e5f06eb8dfed77f58aa61b86cadad618eef25c5c426.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a1065f2b41d1beddfbd15c2bbbef9f8266b28bd7baeb857da9d149916bf48b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variante5dc1c82dbde4155dd425e5f06eb8dfed77f58aa61b86cadad618eef25c5c426.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88c21596a4864a5b4c04f700af0aac8363787e1ccb8e7bf1d44dd9a869e27e4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MatchState.pushFold (s : MatchState) (name : Name) (t : Term) : MatchState :=
  let ts := (s.getFoldArray name).push t
  {s with foldState := s.foldState.insert name ts}

/-- Matcher that assigns the current `SubExpr` into the match state;
if a value already exists, then it checks for equality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variante5dc1c82dbde4155dd425e5f06eb8dfed77f58aa61b86cadad618eef25c5c426.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Notation3/Variante5dc1c82dbde4155dd425e5f06eb8dfed77f58aa61b86cadad618eef25c5c426.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d15d52cfba8de9c4ea41db34c6bf6b8df224524` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
