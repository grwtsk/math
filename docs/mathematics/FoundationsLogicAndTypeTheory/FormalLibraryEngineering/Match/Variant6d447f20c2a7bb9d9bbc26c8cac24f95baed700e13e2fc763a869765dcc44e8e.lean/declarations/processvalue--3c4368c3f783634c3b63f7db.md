# processValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef92a8220505da09a00144c605892cd1eb4e49758f214aea28854546c84e2801",
  "kind": "def",
  "lexical_name": "processValue",
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
  "slug": "processvalue--3c4368c3f783634c3b63f7db",
  "source": {
    "blob": "b3f746082ba1cc8331c685092032854f255b087f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 668,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c4368c3f783634c3b63f7dba4e972f9095f8397f753e3f9ba3471e6b174862b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef92a8220505da09a00144c605892cd1eb4e49758f214aea28854546c84e2801`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 668–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def processValue (p : Problem) : MetaM (Array Problem) := do
  trace[Meta.Match.match] "value step"
  let x :: xs := p.vars | unreachable!
  let values := collectValues p
  let needHyps := !triviallyComplete p || p.alts.any (!·.notAltIdxs.isEmpty)
  let subgoals ← caseValues p.mvarId x.fvarId! values (needHyps := needHyps)
  subgoals.mapIdxM fun i subgoal => do
    trace[Meta.Match.match] "processValue subgoal\n{MessageData.ofGoal subgoal.mvarId}"
    if h : i < values.size then
      let value := values[i]
      -- (x = value) branch
      let subst := subgoal.subst
      trace[Meta.Match.match] "processValue subst: {subst.map.toList.map fun p => mkFVar p.1}, {subst.map.toList.map fun p => p.2}"
        let examples := p.examples.map <| Example.replaceFVarId x.fvarId! (Example.val value)
      let examples := examples.map <| Example.applyFVarSubst subst
      let newAlts  := p.alts.filter fun alt => match alt.patterns with
        | .val v          :: _ => v == value
        | .inaccessible _ :: _ => true
        | _                    => unreachable!
      let newAlts := newAlts.map fun alt => alt.applyFVarSubst subst
      let newAlts := newAlts.map fun alt => match alt.patterns with
        | .val _          :: ps => { alt with patterns := ps }
        | .inaccessible _ :: ps => { alt with patterns := ps }
        | _                     => unreachable!
      let newVars := xs.map fun x => x.applyFVarSubst subst
      return { p with mvarId := subgoal.mvarId, vars := newVars, alts := newAlts, examples := examples }
    else
      -- else branch for value
      let newAlts := p.alts.filter isFirstPatternInaccessible
      return { p with mvarId := subgoal.mvarId, alts := newAlts, vars := x::xs }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean#L668).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3f746082ba1cc8331c685092032854f255b087f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
