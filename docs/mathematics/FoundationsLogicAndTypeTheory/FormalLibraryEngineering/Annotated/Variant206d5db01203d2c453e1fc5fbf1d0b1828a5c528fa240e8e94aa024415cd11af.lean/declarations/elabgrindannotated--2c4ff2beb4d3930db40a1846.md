# elabGrindAnnotated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cc4f0d1a1bf929a13b0da3a52349ab73b5777b1feae7181a51f99aae1b91ee5",
  "kind": "def",
  "lexical_name": "elabGrindAnnotated",
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
  "slug": "elabgrindannotated--2c4ff2beb4d3930db40a1846",
  "source": {
    "blob": "6c3ff668c46525940a6b230d68647e4c36c4b805",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Annotated/Variant206d5db01203d2c453e1fc5fbf1d0b1828a5c528fa240e8e94aa024415cd11af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c4ff2beb4d3930db40a1846d14fdc52097a16cc0a59a8f8bc2aa69c748f3032",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Annotated/Variant206d5db01203d2c453e1fc5fbf1d0b1828a5c528fa240e8e94aa024415cd11af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cc4f0d1a1bf929a13b0da3a52349ab73b5777b1feae7181a51f99aae1b91ee5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabGrindAnnotated : CommandElab := fun stx => do
  let `(grind_annotated $dateStr) := stx | throwUnsupportedSyntax

  -- Extract the date string value
  let dateValue := dateStr.getString

  -- Validate that the date is in YYYY-MM-DD format using Std.Time
  match PlainDate.parse dateValue with
  | .error err =>
    throwError "Invalid date format: {err}\nExpected format: YYYY-MM-DD (e.g., \"2025-01-15\")"
  | .ok _ =>
    -- Date is valid, mark the current module as grind-annotated
    let modName ← getMainModule
    modifyEnv (grindAnnotatedExt.addEntry · modName)

end Lean.Elab.Tactic.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Annotated/Variant206d5db01203d2c453e1fc5fbf1d0b1828a5c528fa240e8e94aa024415cd11af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Annotated/Variant206d5db01203d2c453e1fc5fbf1d0b1828a5c528fa240e8e94aa024415cd11af.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c3ff668c46525940a6b230d68647e4c36c4b805` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
