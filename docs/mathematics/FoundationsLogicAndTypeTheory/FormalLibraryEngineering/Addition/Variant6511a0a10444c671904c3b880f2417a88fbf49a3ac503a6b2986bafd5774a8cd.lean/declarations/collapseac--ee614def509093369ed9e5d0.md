# collapseAC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2db650f4d8291f97c837534eabb8ea8e7d949a92b4e16b201866d060993765f2",
  "kind": "def",
  "lexical_name": "collapseAC",
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
  "slug": "collapseac--ee614def509093369ed9e5d0",
  "source": {
    "blob": "54d943aebbad215d727cdaf18f258cb43887aea0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 343,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant6511a0a10444c671904c3b880f2417a88fbf49a3ac503a6b2986bafd5774a8cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee614def509093369ed9e5d08b98d3de3dba10f162488d8cf3a48a0896bafd61",
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

Occurrence: `declaration:2db650f4d8291f97c837534eabb8ea8e7d949a92b4e16b201866d060993765f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def collapseAC (lhs rhs : ACApps) (H : DelayedExpr) : CCM Unit := do
  let some x := (← get).getVarWithLeastLHSOccs lhs | failure
  let some ent := (← get).acEntries[x]? | failure
  let occs := ent.RLHSOccs
  for Rlhs in occs do
    if lhs.isSubset Rlhs then
      let some (Rrhs, RH) := (← get).acR[Rlhs]? | failure
      eraseRBHSOccs Rlhs Rrhs
      modify fun ccs => { ccs with acR := ccs.acR.erase Rlhs }
      let (newRlhs, RlhsEqNewRlhs) ← simplifyACCore Rlhs lhs rhs H
      let newRlhsEqRlhs := DelayedExpr.eqSymmOpt Rlhs newRlhs RlhsEqNewRlhs
      let newRH := DelayedExpr.eqTransOpt newRlhs Rlhs Rrhs newRlhsEqRlhs RH
      modifyACTodo fun todo => todo.push (newRlhs, Rrhs, newRH)
      let ccs ← get
      trace[Debug.Meta.Tactic.cc.ac] group <|
        let newRw :=
          paren (ccs.ppACApps lhs ++ ofFormat (Format.line ++ "-->" ++ .line) ++ ccs.ppACApps rhs)
        let oldRw :=
          paren (ccs.ppACApps Rrhs ++ ofFormat (Format.line ++ "<--" ++ .line) ++ ccs.ppACApps Rlhs)
        "collapse: " ++ nest 10 (group
          (newRw ++ ofFormat (Format.line ++ "at" ++ .line) ++ oldRw) ++
            ofFormat (Format.line ++ ":=" ++ .line) ++ ccs.ppACApps newRlhs)

/-- Given `ra := a*r` `sb := b*s` `ts := t*s` `tr := t*r` `tsEqa : t*s = a` `trEqb : t*r = b`,
    return a proof for `ra = sb`.

    We use `a*b` to denote an AC application. That is, `(a*b)*(c*a)` is the term `a*a*b*c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant6511a0a10444c671904c3b880f2417a88fbf49a3ac503a6b2986bafd5774a8cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant6511a0a10444c671904c3b880f2417a88fbf49a3ac503a6b2986bafd5774a8cd.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54d943aebbad215d727cdaf18f258cb43887aea0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
