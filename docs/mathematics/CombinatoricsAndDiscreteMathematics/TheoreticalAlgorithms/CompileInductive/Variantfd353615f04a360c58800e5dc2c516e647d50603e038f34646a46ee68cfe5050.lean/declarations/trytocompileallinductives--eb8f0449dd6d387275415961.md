# tryToCompileAllInductives

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc7ab68a5be9b6ad354cb5beb6a1da0de12f3c86c03e95670c531991d9ae7246",
  "kind": "def",
  "lexical_name": "tryToCompileAllInductives",
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
  "slug": "trytocompileallinductives--eb8f0449dd6d387275415961",
  "source": {
    "blob": "edb0be030d31d8145b38113cfed958a1e398c5be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompileInductive/Variantfd353615f04a360c58800e5dc2c516e647d50603e038f34646a46ee68cfe5050.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb8f0449dd6d3872754159612abec5cd2ab1c3cf9d30689a3d9f1bcc2e25a605",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompileInductive/Variantfd353615f04a360c58800e5dc2c516e647d50603e038f34646a46ee68cfe5050.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc7ab68a5be9b6ad354cb5beb6a1da0de12f3c86c03e95670c531991d9ae7246`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tryToCompileAllInductives : TermElabM Unit := do
  let ivs := (← getEnv).constants.toList.filterMap fun | (_, .inductInfo iv) => some iv | _ => none
  let mut success : Nat := 0
  for iv in ivs do
    try
      withCurrHeartbeats <| Mathlib.Util.compileInductive iv
      success := success + 1
    catch | e => logError m!"[{iv.name}] {e.toMessageData}"
  modifyThe Core.State fun s =>
    { s with messages.unreported := s.messages.unreported.filter (·.severity != .warning) }
  modifyThe Core.State fun s => { s with messages := s.messages.errorsToWarnings }
  logInfo m!"{success} / {ivs.length}"

-- #eval Command.liftTermElabM tryToCompileAllInductives
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompileInductive/Variantfd353615f04a360c58800e5dc2c516e647d50603e038f34646a46ee68cfe5050.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompileInductive/Variantfd353615f04a360c58800e5dc2c516e647d50603e038f34646a46ee68cfe5050.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edb0be030d31d8145b38113cfed958a1e398c5be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
