# lookahead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b33a33d1cee3d6ab88add3eb3437cd03a417f53138ca8fc7d2b5c54859e48e0e",
  "kind": "def",
  "lexical_name": "lookahead",
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
  "slug": "lookahead--da0719a8df07f7dc184878a5",
  "source": {
    "blob": "9a059aa86377ca32f2e8a24f577bdb46ff327c9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant97018ff89bd634aa98d926b5b3c9323006e7a6d3bc3b0d23ebb18cb783b8a22d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da0719a8df07f7dc184878a5418cd8a6cb2366bb1cf5221532cfb0f68fabf91a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant97018ff89bd634aa98d926b5b3c9323006e7a6d3bc3b0d23ebb18cb783b8a22d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b33a33d1cee3d6ab88add3eb3437cd03a417f53138ca8fc7d2b5c54859e48e0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lookahead : GoalM Bool := do
  unless (← getConfig).lookahead do
    return false
  if (← get).split.lookaheads.isEmpty then
    return false
  let mut postponed := []
  let mut progress := false
  let infos := (← get).split.lookaheads
  modify fun s => { s with split.lookaheads := [] }
  for info in infos do
    if (← isInconsistent) then
      return true
    match (← checkSplitStatus info) with
    | .resolved => progress := true
    | .ready _ _ true
    | .notReady => postponed := info :: postponed
    | .ready _ _ false =>
      if (← tryLookahead info.getExpr) then
        progress := true
      else
        postponed := info :: postponed
  if progress then
    modify fun s => { s with
      split.lookaheads := s.split.lookaheads ++ postponed.reverse
    }
    return true
  else
    return false

end Lean.Meta.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant97018ff89bd634aa98d926b5b3c9323006e7a6d3bc3b0d23ebb18cb783b8a22d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookahead/Variant97018ff89bd634aa98d926b5b3c9323006e7a6d3bc3b0d23ebb18cb783b8a22d.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a059aa86377ca32f2e8a24f577bdb46ff327c9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
