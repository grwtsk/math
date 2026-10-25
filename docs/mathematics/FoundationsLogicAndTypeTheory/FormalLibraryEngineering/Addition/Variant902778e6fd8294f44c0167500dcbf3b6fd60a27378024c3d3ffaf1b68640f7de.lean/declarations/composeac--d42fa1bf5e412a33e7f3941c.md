# composeAC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07b4704bd96f1a464b421090dde61f0bb329d7bea09c88a3bb970fbc9b7608fb",
  "kind": "def",
  "lexical_name": "composeAC",
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
  "slug": "composeac--d42fa1bf5e412a33e7f3941c",
  "source": {
    "blob": "cab91cdf92ef91ceb61392d33d99236b369fae4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 328,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d42fa1bf5e412a33e7f3941c0958280713501a7a4e05a0a2e8d0bbed34f52a2f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07b4704bd96f1a464b421090dde61f0bb329d7bea09c88a3bb970fbc9b7608fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def composeAC (lhs rhs : ACApps) (H : DelayedExpr) : CCM Unit := do
  let some x := (← get).getVarWithLeastRHSOccs lhs | failure
  let some ent := (← get).acEntries[x]? | failure
  let occs := ent.RRHSOccs
  for Rlhs in occs do
    let some (Rrhs, RH) := (← get).acR[Rlhs]? | failure
    if lhs.isSubset Rrhs then
      let (newRrhs, RrhsEqNewRrhs) ← simplifyACCore Rrhs lhs rhs H
      let newRH := DelayedExpr.eqTransOpt Rlhs Rrhs newRrhs RH RrhsEqNewRrhs
      modify fun ccs => { ccs with acR := ccs.acR.insert Rlhs (newRrhs, newRH) }
      eraseRRHSOccs Rrhs Rlhs
      insertRRHSOccs newRrhs Rlhs
      let ccs ← get
      trace[Debug.Meta.Tactic.cc.ac] group <|
        let oldRw :=
          paren (ccs.ppACApps Rlhs ++ ofFormat (Format.line ++ "-->" ++ .line) ++ ccs.ppACApps Rrhs)
        let newRw :=
          paren (ccs.ppACApps lhs ++ ofFormat (Format.line ++ "-->" ++ .line) ++ ccs.ppACApps rhs)
        "compose: " ++ nest 9 (group
          (oldRw ++ ofFormat (Format.line ++ "with" ++ .line) ++ newRw) ++
            ofFormat (Format.line ++ ":=" ++ .line) ++ ccs.ppACApps newRrhs)

/-- Try to simplify the left hand sides of equalities in `acR` by `H : lhs = rhs`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cab91cdf92ef91ceb61392d33d99236b369fae4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
