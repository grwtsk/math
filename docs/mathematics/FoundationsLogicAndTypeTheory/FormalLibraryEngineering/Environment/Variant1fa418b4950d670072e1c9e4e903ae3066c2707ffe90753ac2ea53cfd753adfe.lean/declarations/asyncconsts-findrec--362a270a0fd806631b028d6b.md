# AsyncConsts.findRec?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ddba143e2aaebc3f8fbe208f9eb840cdb9a3aebe0845190779abb81b175f3cf9",
  "kind": "def",
  "lexical_name": "AsyncConsts.findRec?",
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
  "slug": "asyncconsts-findrec--362a270a0fd806631b028d6b",
  "source": {
    "blob": "59e340aebe9944d1482e6aba5da1f8ec52a51fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 492,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:362a270a0fd806631b028d6b3f1a47c9d2b43f7742b72401f7972c9f017379d7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ddba143e2aaebc3f8fbe208f9eb840cdb9a3aebe0845190779abb81b175f3cf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def AsyncConsts.findRec? (aconsts : AsyncConsts) (declName : Name) : Option AsyncConst := do
  let c ← aconsts.findPrefix? declName
  if c.constInfo.name == declName then
    return c
  -- If privacy is the only difference between `declName` and `findPrefix?` result, we can assume
  -- `declName` does not exist according to the `add` invariant
  guard <| privateToUserName c.constInfo.name != privateToUserName declName
  let aconsts ← c.aconsts.get
  AsyncConsts.findRec? aconsts declName

/-- Like `findRec?`; allocating tasks is (currently?) too costly to do always. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e340aebe9944d1482e6aba5da1f8ec52a51fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
