# processArrayLit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f054105f6687155f116d2ca8383b425bb03326dafc98f8168bb83705798bba78",
  "kind": "def",
  "lexical_name": "processArrayLit",
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
  "slug": "processarraylit--daccf97534dee4240d1046f1",
  "source": {
    "blob": "b3f746082ba1cc8331c685092032854f255b087f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 737,
    "line": 705,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:daccf97534dee4240d1046f1f95f21bc33fb99e5f5009ff680599c3876c49968",
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

Occurrence: `declaration:f054105f6687155f116d2ca8383b425bb03326dafc98f8168bb83705798bba78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 705–737.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def processArrayLit (p : Problem) : MetaM (Array Problem) := do
  trace[Meta.Match.match] "array literal step"
  let x :: xs := p.vars | unreachable!
  let sizes := collectArraySizes p
  let subgoals ← caseArraySizes p.mvarId x.fvarId! sizes
  subgoals.mapIdxM fun i subgoal => do
    if h : i < sizes.size then
      let size     := sizes[i]
      let subst    := subgoal.subst
      let elems    := subgoal.elems.toList
      let newVars  := elems.map mkFVar ++ xs
      let newVars  := newVars.map fun x => x.applyFVarSubst subst
      let subex    := Example.arrayLit <| elems.map Example.var
      let examples := p.examples.map <| Example.replaceFVarId x.fvarId! subex
      let examples := examples.map <| Example.applyFVarSubst subst
      let newAlts  := p.alts.filter fun alt => match alt.patterns with
        | .arrayLit _ ps :: _  => ps.length == size
        | .inaccessible _ :: _ => true
        | _                    => unreachable!
      let newAlts := newAlts.map fun alt => alt.applyFVarSubst subst
      let newAlts := newAlts.map fun alt =>
        match alt.patterns with
        | .arrayLit _ pats :: ps => { alt with patterns := pats ++ ps }
        | .inaccessible _ :: ps  =>
          let patterns := elems.map (fun elem => .inaccessible (mkFVar elem)) ++ ps
          { alt with patterns }
        | _  => unreachable!
      return { p with mvarId := subgoal.mvarId, vars := newVars, alts := newAlts, examples := examples }
    else
      -- else branch
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean#L705).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3f746082ba1cc8331c685092032854f255b087f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
