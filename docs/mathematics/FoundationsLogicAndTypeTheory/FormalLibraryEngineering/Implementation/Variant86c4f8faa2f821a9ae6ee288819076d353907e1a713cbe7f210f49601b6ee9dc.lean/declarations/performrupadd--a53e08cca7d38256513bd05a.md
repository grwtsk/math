# performRupAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2aacd91dfc628f49a9f2354efdf174eaa616a390b537293820ab0506fd9b185",
  "kind": "def",
  "lexical_name": "performRupAdd",
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
  "slug": "performrupadd--a53e08cca7d38256513bd05a",
  "source": {
    "blob": "e39db78893de5fadc3b6b5de70d7d1370645e196",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 219,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant86c4f8faa2f821a9ae6ee288819076d353907e1a713cbe7f210f49601b6ee9dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a53e08cca7d38256513bd05a5c93b511ae276afea270d625d6b0159bdbc9f39b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant86c4f8faa2f821a9ae6ee288819076d353907e1a713cbe7f210f49601b6ee9dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2aacd91dfc628f49a9f2354efdf174eaa616a390b537293820ab0506fd9b185`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def performRupAdd {n : Nat} (f : DefaultFormula n) (c : DefaultClause n) (rupHints : Array Nat) :
    DefaultFormula n × Bool :=
  let negC := negate c
  let (f, foundContradiction) := insertRupUnits f negC
  if foundContradiction then
    let f := clearRupUnits f
    (f.insert c, true)
  else
    let (f, derivedLits, derivedEmpty, encounteredError) := performRupCheck f rupHints
    if encounteredError then
      (f, false)
    else if !derivedEmpty then
      (f, false)
    else -- derivedEmpty is true and encounteredError is false
      let ⟨clauses, rupUnits, ratUnits, assignments⟩ := f
      let assignments := restoreAssignments assignments derivedLits
      -- assignments should now be the same as it was before the performRupCheck call
      let f := clearRupUnits ⟨clauses, rupUnits, ratUnits, assignments⟩
      -- f should now be the same as it was before insertRupUnits
      (f.insert c, true)

/-- Returns an array of indices corresponding to clauses that contain the negation of l -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant86c4f8faa2f821a9ae6ee288819076d353907e1a713cbe7f210f49601b6ee9dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Implementation/Variant86c4f8faa2f821a9ae6ee288819076d353907e1a713cbe7f210f49601b6ee9dc.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e39db78893de5fadc3b6b5de70d7d1370645e196` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
