# evalShowCases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c507f63fd64587208b2755cb76838c75f90f54aa8069860bc4e63a01954fccff",
  "kind": "def",
  "lexical_name": "evalShowCases",
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
  "slug": "evalshowcases--bbb1fd4dfc1c0c521280b09d",
  "source": {
    "blob": "98310d2b247b37cc5343654a76bc15e6ebd2ee4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbb1fd4dfc1c0c521280b09de187afd943bdcb673b1e6ad1fc7d5944a58cee8d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c507f63fd64587208b2755cb76838c75f90f54aa8069860bc4e63a01954fccff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_grind_tactic showCases] def evalShowCases : GrindTactic := fun stx => withMainContext do
  let `(grind| show_cases $[$filter?]?) := stx | throwUnsupportedSyntax
  let filter ← elabFilter filter?
  let { candidates, numDigits } ← liftGoalM <| getSplitCandidateAnchors filter.eval
  if candidates.isEmpty then
    throwError "no case splits"
  let msgs := candidates.map fun { anchor,  e, .. } =>
    .trace { cls := `split } m!"#{anchorToString numDigits anchor} := {e}" #[]
  let msg := MessageData.trace { cls := `splits, collapsed := false } "Case split candidates" msgs
  logInfo msg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant3f4c81418d3eb8d3b8a2a152148a2f349f8218c384869cb99111ccdc20ec5e0c.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98310d2b247b37cc5343654a76bc15e6ebd2ee4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
