# performRatAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3965407f588bc53513a34a1f95a21e40a5d8811fa2c7a245031db20af90f1c60",
  "kind": "def",
  "lexical_name": "performRatAdd",
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
  "slug": "performratadd--b86efd1fd333c95292c64af6",
  "source": {
    "blob": "b8b6591954dd3adf74158525b5c3fafc522b4f8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 312,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant9a04a29d7ac7d89b715632fc180ac3dd2ef46caf2dab20a3762deb14aa5e0179.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b86efd1fd333c95292c64af6ed4980cae72c02b5dc04d90c3c3708ce96223371",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant9a04a29d7ac7d89b715632fc180ac3dd2ef46caf2dab20a3762deb14aa5e0179.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3965407f588bc53513a34a1f95a21e40a5d8811fa2c7a245031db20af90f1c60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def performRatAdd {n : Nat} (f : DefaultFormula n) (c : DefaultClause n)
    (pivot : Literal (PosFin n)) (rupHints : Array Nat) (ratHints : Array (Nat × Array Nat)) :
    DefaultFormula n × Bool :=
  if ratHintsExhaustive f pivot ratHints then
    let negC := negate c
    let (f, contradictionFound) := insertRupUnits f negC
    if contradictionFound then (f, false) -- This should be a rupAdd rather than a ratAdd
    else
      let (f, derivedLits, derivedEmpty, encounteredError) := performRupCheck f rupHints
      if encounteredError then (f, false)
      else if derivedEmpty then (f, false) -- This should be a rupAdd rather than a ratAdd
      else -- derivedEmpty is false and encounteredError is false
        let fold_fn := fun (f, allChecksPassed) ratHint =>
          if allChecksPassed then performRatCheck f (Literal.negate pivot) ratHint
          else (f, false)
        let (f, allChecksPassed) := ratHints.foldl fold_fn (f, true)
        if !allChecksPassed then (f, false)
        else
          match f with
          | ⟨clauses, rupUnits, ratUnits, assignments⟩ =>
            let assignments := restoreAssignments assignments derivedLits
            -- assignments should now be the same as it was before the performRupCheck call
            let f := clearRupUnits ⟨clauses, rupUnits, ratUnits, assignments⟩
            -- f should now be the same as it was before insertRupUnits
            (f.insert c, true)
  else (f, false)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant9a04a29d7ac7d89b715632fc180ac3dd2ef46caf2dab20a3762deb14aa5e0179.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant9a04a29d7ac7d89b715632fc180ac3dd2ef46caf2dab20a3762deb14aa5e0179.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8b6591954dd3adf74158525b5c3fafc522b4f8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
