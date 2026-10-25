# reorderVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e28f3d95187642fa215db9db45aedaccba0c3164e9cd65fa0373505f7e33a3f",
  "kind": "def",
  "lexical_name": "reorderVars",
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
  "slug": "reordervars--f54478bc4dc90b358521e995",
  "source": {
    "blob": "2cae6808e6ea65ba2a295f4ad877fd7c69157b28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f54478bc4dc90b358521e995848764b6f54047b31c9aeebed438508852a32db9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e28f3d95187642fa215db9db45aedaccba0c3164e9cd65fa0373505f7e33a3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reorderVars : GoalM Unit := do
  let s ← get'
  if s.vars.isEmpty then return () -- nothing to reorder
  /-
  We currently reorder variables at most once.
  It is feasible to implement dynamic variable reordering, but we would have to
  store a trail of vars and varMaps.

  The other option is change our representation and relax the assumption our polynomials are
  sorted. It is unclear how it will impact performance.
  -/
  unless s.vars'.isEmpty do return ()
  checkInvariants
  let new2old ← sortVars
  let old2new := mkPermInv new2old
  -- We save the constraints to reinsert them later.
  let dvds := s.dvds.foldl (init := #[]) fun
    | dvds, none => dvds
    | dvds, some c => dvds.push c
  let dvds := dvds.map (·.reorder old2new)
  let ineqs := s.lowers.foldl (init := #[]) (·.append ·.toArray)
  let ineqs := s.uppers.foldl (init := ineqs) (·.append ·.toArray)
  let ineqs := ineqs.map (·.reorder old2new)
  let diseqs := s.diseqs.foldl (init := #[]) (·.append ·.toArray)
  let diseqs := diseqs.map (·.reorder old2new)
  modify' fun s => { s with
    vars        := reorderVarMap s.vars new2old
    varMap      := s.varMap.map fun x => old2new[x]!
    vars'       := s.vars
    varMap'     := s.varMap
    natDef      := s.natDef.map fun x => old2new[x]!
    dvds        := s.dvds.map fun _ => none
    lowers      := s.lowers.map fun _ => {}
    uppers      := s.uppers.map fun _ => {}
    diseqs      := s.diseqs.map fun _ => {}
    elimEqs     := reorderVarMap s.elimEqs new2old |>.map fun c? => (·.reorder old2new) <$> c?
    elimStack   := s.elimStack.map fun x => old2new[x]!
    occurs      := s.occurs.map fun _ => {}
    diseqSplits := {}
  }
  for c in dvds do c.assert
  for c in ineqs do c.assert
  for c in diseqs do c.assert
  trace[grind.debug.lia.search.reorder] "new2old: {new2old}"
  trace[grind.debug.lia.search.reorder] "old2new: {old2new}"
  checkInvariants

end Lean.Meta.Grind.Arith.Cutsat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReorderVars/Variant24f716472513e48a2c79ff1e46d9e0c349ecc1b2675491f9c16c5036d9c5e55e.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cae6808e6ea65ba2a295f4ad877fd7c69157b28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
