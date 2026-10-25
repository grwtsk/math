# superposeAC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48f55f6bfef524591748d71e5ff1a7f5f60f4a9cb25a62e2f44825b6628703c8",
  "kind": "def",
  "lexical_name": "superposeAC",
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
  "slug": "superposeac--b73dfee720c93aefbdc1f24a",
  "source": {
    "blob": "54d943aebbad215d727cdaf18f258cb43887aea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 396,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant6511a0a10444c671904c3b880f2417a88fbf49a3ac503a6b2986bafd5774a8cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b73dfee720c93aefbdc1f24a502f88a14b437645ec8f91ef59cfba221a2ad843",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant6511a0a10444c671904c3b880f2417a88fbf49a3ac503a6b2986bafd5774a8cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48f55f6bfef524591748d71e5ff1a7f5f60f4a9cb25a62e2f44825b6628703c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def superposeAC (ts a : ACApps) (tsEqa : DelayedExpr) : CCM Unit := do
  let .apps op args := ts | return
  for hi : i in [:args.size] do
    if i == 0 || args[i] != (args[i - 1]'(Nat.lt_of_le_of_lt (i.sub_le 1) hi.2.1)) then
      let some ent := (← get).acEntries[args[i]]? | failure
      let occs := ent.RLHSOccs
      for tr in occs do
        let .apps optr _ := tr | continue
        unless optr == op do continue
        let some (b, trEqb) := (← get).acR[tr]? | failure
        let tArgs := ts.intersection tr
        guard !tArgs.isEmpty
        let t := ACApps.mkApps op tArgs
        let sArgs := ts.diff t
        guard !sArgs.isEmpty
        let rArgs := tr.diff t
        guard !rArgs.isEmpty
        let s := ACApps.mkApps op sArgs
        let r := ACApps.mkApps op rArgs
        let ra := ACApps.mkFlatApps op r a
        let sb := ACApps.mkFlatApps op s b
        let some true := (← get).opInfo[op]? | failure
        let raEqsb ← mkACSuperposeProof ra sb a b r s ts tr tsEqa trEqb
        modifyACTodo fun todo => todo.push (ra, sb, raEqsb)
        let ccs ← get
        trace[Debug.Meta.Tactic.cc.ac] group <|
          let rw₁ :=
            paren (ccs.ppACApps ts ++ ofFormat (Format.line ++ "-->" ++ .line) ++ ccs.ppACApps a)
          let rw₂ :=
            paren (ccs.ppACApps tr ++ ofFormat (Format.line ++ "-->" ++ .line) ++ ccs.ppACApps b)
          let eq :=
            paren (ccs.ppACApps ra ++ ofFormat (Format.line ++ "-->" ++ .line) ++ ccs.ppACApps sb)
          "superpose: " ++ nest 11 (group
            (rw₁ ++ ofFormat (Format.line ++ "with" ++ .line) ++ rw₂) ++
              ofFormat (Format.line ++ ":=" ++ .line) ++ eq)

/-- Process the tasks in the `acTodo` field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant6511a0a10444c671904c3b880f2417a88fbf49a3ac503a6b2986bafd5774a8cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant6511a0a10444c671904c3b880f2417a88fbf49a3ac503a6b2986bafd5774a8cd.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54d943aebbad215d727cdaf18f258cb43887aea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
