# getElimNames

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cb27fc9547b84050af208bceefcdf8cacaf43b7b02583aecf8b6e2ce2519af3",
  "kind": "def",
  "lexical_name": "getElimNames",
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
  "slug": "getelimnames--3fc9480be63714b14fbd5c3f",
  "source": {
    "blob": "2b480dd006405f80640df5ba74b92bf07fb2758a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 217,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant07f8bb37f7a7327d3c3b2dcd16a59810c2df7bd400927484c3dd3573b87ba439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fc9480be63714b14fbd5c3f3a1dd71466223f337f58c3cbe00b8435ff3fb402",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant07f8bb37f7a7327d3c3b2dcd16a59810c2df7bd400927484c3dd3573b87ba439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cb27fc9547b84050af208bceefcdf8cacaf43b7b02583aecf8b6e2ce2519af3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def getElimNames (inductName declName : Name) : MetaM (Array (Name × Array Name)) := do
  let inductVal ← getConstInfoInduct inductName
  let decl ← getConstInfo declName
  forallTelescopeReducing decl.type fun xs type => do
    let motive  := type.getAppFn
    let targets := type.getAppArgs
    let mut altsInfo := #[]
    for i in [inductVal.numParams:xs.size] do
      let x := xs[i]!
      if x != motive && !targets.contains x then
        let xDecl ← x.fvarId!.getDecl
        let args ← forallTelescopeReducing xDecl.type fun args _ => do
          let lctx ← getLCtx
          pure <| args.filterMap fun y =>
            let yDecl := (lctx.find? y.fvarId!).get!
            if yDecl.binderInfo.isExplicit then some yDecl.userName else none
        altsInfo := altsInfo.push (xDecl.userName, args)
    pure altsInfo

/--
Invoking tactic code action "Generate an explicit pattern match for 'induction'" in the
following:
```lean
example (x : Nat) : x = x := by
  induction x
```
produces:
```lean
example (x : Nat) : x = x := by
  induction x with
  | zero => sorry
  | succ n ih => sorry
```

It also works for `cases`.
-/
@[tactic_code_action Parser.Tactic.cases Parser.Tactic.induction]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant07f8bb37f7a7327d3c3b2dcd16a59810c2df7bd400927484c3dd3573b87ba439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant07f8bb37f7a7327d3c3b2dcd16a59810c2df7bd400927484c3dd3573b87ba439.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b480dd006405f80640df5ba74b92bf07fb2758a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
