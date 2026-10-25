# rintroContinue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9760e242fa16af87ec722c4eeb29b9d16bda204db0cb9ee1e8844d15b8fb177a",
  "kind": "def",
  "lexical_name": "rintroContinue",
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
  "slug": "rintrocontinue--d40681e48b6b10733d6478f2",
  "source": {
    "blob": "12e86ccedbef509addf70d63a92bd5a1c1de1256",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 508,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant38416bd431978e039946335b9811f96439abbdcc6d7fd5d3557aadc8992ddfdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d40681e48b6b10733d6478f256443c90c3e61dc82e88e1983cd0df01e6f8327d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant38416bd431978e039946335b9811f96439abbdcc6d7fd5d3557aadc8992ddfdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9760e242fa16af87ec722c4eeb29b9d16bda204db0cb9ee1e8844d15b8fb177a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def rintroContinue (g : MVarId) (fs : FVarSubst) (clears : Array FVarId)
    (ref : Syntax) (pats : TSyntaxArray `rintroPat) (ty? : Option Term) (a : α)
    (cont : MVarId → FVarSubst → Array FVarId → α → TermElabM α) : TermElabM α := do
  g.withContext (loop 0 g fs clears a)
where
  /-- Runs `rintroContinue` on `pats[i...*]` -/
  loop i g fs clears a := do
    if h : i < pats.size then
      rintroCore g fs clears a ref pats[i] ty? (loop (i+1))
    else cont g fs clears a

end

/--
The implementation of the `rintro` tactic. It takes a list of patterns `pats` and
an optional type ascription `ty?` and introduces the patterns, resulting in zero or more goals.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant38416bd431978e039946335b9811f96439abbdcc6d7fd5d3557aadc8992ddfdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RCases/Variant38416bd431978e039946335b9811f96439abbdcc6d7fd5d3557aadc8992ddfdc.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12e86ccedbef509addf70d63a92bd5a1c1de1256` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
