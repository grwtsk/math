# eraseUsedTactics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c526696f399c8777ae0054046cb37bfd7c783b31d44e51716c5ca8141e9487d",
  "kind": "def",
  "lexical_name": "eraseUsedTactics",
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
  "slug": "eraseusedtactics--ff786caf34d8c25620495132",
  "source": {
    "blob": "32680b1216e1250efa1a7dec1bc99a1ae856e42f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variant30fceb1dab4b2f7b0707c33ee8c0c66e628509b7ae026bbbf6fe54e246942e27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff786caf34d8c256204951323617a3fdb4c6862fbfaa555c2499de025404000d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variant30fceb1dab4b2f7b0707c33ee8c0c66e628509b7ae026bbbf6fe54e246942e27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c526696f399c8777ae0054046cb37bfd7c783b31d44e51716c5ca8141e9487d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def eraseUsedTactics (exceptions : Std.HashSet SyntaxNodeKind) : InfoTree → M Unit
  | .node i c => do
    if let .ofTacticInfo i := i then
      let stx := i.stx
      let kind := stx.getKind
      if let some r := stx.getRange? true then
        if exceptions.contains kind
        -- if the tactic is allowed to not change the goals
        then modify (·.erase r)
        else
        -- if the goals have changed
        if i.goalsAfter != i.goalsBefore
        then modify (·.erase r)
        -- bespoke check for `swap_var`: the only change that it does is
        -- in the usernames of local declarations, so we check the names before and after
        else
        if (kind == `Mathlib.Tactic.«tacticSwap_var__,,») &&
                (getNames i.mctxBefore != getNames i.mctxAfter)
        then modify (·.erase r)
    eraseUsedTacticsList exceptions c
  | .context _ t => eraseUsedTactics exceptions t
  | .hole _ => pure ()

end

/-- The main entry point to the unused tactic linter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variant30fceb1dab4b2f7b0707c33ee8c0c66e628509b7ae026bbbf6fe54e246942e27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variant30fceb1dab4b2f7b0707c33ee8c0c66e628509b7ae026bbbf6fe54e246942e27.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32680b1216e1250efa1a7dec1bc99a1ae856e42f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
