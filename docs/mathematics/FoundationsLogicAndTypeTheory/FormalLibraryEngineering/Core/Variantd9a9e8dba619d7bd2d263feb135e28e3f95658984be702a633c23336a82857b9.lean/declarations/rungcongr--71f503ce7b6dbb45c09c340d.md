# runGCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8892b031be7317117e8e8d963e0f602fff0ef77621276cd061b7d53c2cccb16f",
  "kind": "def",
  "lexical_name": "runGCongr",
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
  "slug": "rungcongr--71f503ce7b6dbb45c09c340d",
  "source": {
    "blob": "d699139254f5b9e8aca76feedf3c9ea7c32fc88d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 907,
    "line": 877,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71f503ce7b6dbb45c09c340d424421c1dcd4465e5a9e56c5a59eebbb9ed6ac87",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8892b031be7317117e8e8d963e0f602fff0ef77621276cd061b7d53c2cccb16f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 877–907.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runGCongr (g : MVarId) (template : Option Term) (patterns? : Option (TSyntaxArray `rintroPat)) :
    TermElabM State := do
  g.withContext do
  let type ← withReducible g.getType'
  let some (_rel, lhs, _rhs) := getRel type
    | throwError "gcongr failed, not a relation"
  -- The patterns from the `with x y z` list
  let patterns := (patterns?.getD #[]).toList
  -- Time to actually run the core tactic `Lean.MVarId.gcongr`!
  let (progress, s) ← do
    let some e := template | g.gcongr none |>.run patterns
    if let some depth := e.raw.isNatLit? then
      g.gcongr none depth |>.run patterns
    else
      -- Elaborate the template (e.g. `x * ?_ + _`)
      -- First, we replace occurrences of `?_` with `gcongrHole% ?_`
      let e ← e.raw.replaceM fun stx =>
        if stx.isOfKind ``Parser.Term.syntheticHole then `(gcongrHole% _%$stx) else pure none
      let patt ← withTheReader Term.Context ({ · with
        ignoreTCFailures := true, errToSorry := false }) <| Term.elabTerm e (← inferType lhs)
      unless containsHoleAnnotation patt do
        throwError "invalid pattern {patt}, it doesn't contain any `?_`"
      unless ← withReducible <| isDefEq patt lhs do
        throwError "invalid pattern {patt}, it does not match with {lhs}"
      let patt ← instantiateMVars patt
      let g ← g.replaceTargetDefEq (updateRel type patt true)
      g.gcongr true |>.run patterns
  unless progress do
    throwError "`gcongr` did not make progress.\n\n{g}"
  return s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean#L877).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d699139254f5b9e8aca76feedf3c9ea7c32fc88d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
