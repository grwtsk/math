# elabPatterns

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2e76f0adf89ff05ca27ddc841ee9a00cf4f3f81202d48eecedf4f52cf1b46fa",
  "kind": "def",
  "lexical_name": "elabPatterns",
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
  "slug": "elabpatterns--a9352486b7f5c6f58c8c8718",
  "source": {
    "blob": "ab2b4b57363560ab4a981fdcc553128bf077e7d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 368,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9352486b7f5c6f58c8c871824738e7e5504bad5251abeb2a43f7efbe15313a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2e76f0adf89ff05ca27ddc841ee9a00cf4f3f81202d48eecedf4f52cf1b46fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabPatterns (patternStxs : Array Syntax) (numDiscrs : Nat) (matchType : Expr) : ExceptT PatternElabException TermElabM (Array Expr × Expr) :=
  withReader (fun ctx => { ctx with implicitLambda := false }) do
    let origMatchType := matchType
    let mut patterns  := #[]
    let mut matchType := matchType
    let patternStxs ← checkNumPatterns numDiscrs patternStxs
    for h : idx in *...patternStxs.size do
      let patternStx := patternStxs[idx]
      matchType ← whnf matchType
      match matchType with
      | Expr.forallE _ d b _ =>
        let pattern ← do
          let s ← saveState
          try
            liftM <| withSynthesize <| withPatternElabConfig <| elabTermEnsuringType patternStx d
          catch ex : Exception =>
            -- Discard info trees to remove any named-argument hints (they are generated anew when re-elaborating)
            s.restore (restoreInfo := true)
            match (← liftM <| commitIfNoErrors? <| withPatternElabConfig do elabTermAndSynthesize patternStx (← eraseIndices d)) with
            | some pattern =>
              match (← findDiscrRefinementPath pattern d |>.run) with
              | some path =>
                restoreState s
                -- Wrap the type mismatch exception for the "discriminant refinement" feature.
                throwThe PatternElabException { ex := ex, patternIdx := idx, pathToIndex := path }
              | none => restoreState s; throw ex
            | none => throw ex
        matchType := b.instantiate1 pattern
        patterns  := patterns.push pattern
      | _ => throwError "Failed to elaborate match expression: Inferred {idx} discriminants, but more were found"
    return (patterns, matchType)

open Meta.Match (Pattern Pattern.var Pattern.inaccessible Pattern.ctor Pattern.as Pattern.val Pattern.arrayLit AltLHS MatcherResult)

namespace ToDepElimPattern

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab2b4b57363560ab4a981fdcc553128bf077e7d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
