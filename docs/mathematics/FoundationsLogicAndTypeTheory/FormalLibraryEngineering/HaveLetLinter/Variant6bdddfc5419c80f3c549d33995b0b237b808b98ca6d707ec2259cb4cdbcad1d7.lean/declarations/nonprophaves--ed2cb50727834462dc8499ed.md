# nonPropHaves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b6fe01413882d0a58aa9b375798afff79249b62fcc3214b2810d7a1c5f131c5b",
  "kind": "def",
  "lexical_name": "nonPropHaves",
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
  "slug": "nonprophaves--ed2cb50727834462dc8499ed",
  "source": {
    "blob": "5e326b2b395f5252cfa8019d51a2afa20f2ea2bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant6bdddfc5419c80f3c549d33995b0b237b808b98ca6d707ec2259cb4cdbcad1d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed2cb50727834462dc8499eda7fa101e5bddf9a84971be5d503a4798651c663d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant6bdddfc5419c80f3c549d33995b0b237b808b98ca6d707ec2259cb4cdbcad1d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b6fe01413882d0a58aa9b375798afff79249b62fcc3214b2810d7a1c5f131c5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nonPropHaves : InfoTree → CommandElabM (Array (Syntax × Format)) :=
  InfoTree.foldInfoM (init := #[]) fun ctx info args => return args ++ (← do
    let .ofTacticInfo i := info | return #[]
    let stx := i.stx
    let .original .. := stx.getHeadInfo | return #[]
    unless isHave? stx do return #[]
    let mctx := i.mctxAfter
    let mvdecls := i.goalsAfter.filterMap (mctx.decls.find? ·)
    -- We extract the `MetavarDecl` with largest index after a `have`, since this one
    -- holds information about the metavariable where `have` introduces the new hypothesis,
    -- and determine the relevant `LocalContext`.
    let lc := mvdecls.toArray.getMax? (·.index < ·.index) |>.getD default |>.lctx
    -- we also accumulate all `fvarId`s from all local contexts before the use of `have`
    -- so that we can then isolate the `fvarId`s that are created by `have`
    let oldMvdecls := i.goalsBefore.filterMap (mctx.decls.find? ·)
    let oldFVars := (oldMvdecls.map (·.lctx.decls.toList.reduceOption)).flatten.map (·.fvarId)
    -- `newDecls` are the local declarations whose `FVarID` did not exist before the `have`.
    -- Effectively they are the declarations that we want to test for being in `Prop` or not.
    let newDecls := lc.decls.toList.reduceOption.filter (! oldFVars.contains ·.fvarId)
    -- Now, we get the `MetaM` state up and running to find the types of each entry of `newDecls`.
    -- For each entry which is a `Type`, we print a warning on `have`.
    let fmts ← toFormat_propTypes ctx lc (newDecls.map (fun e ↦ (e.type, e.userName))).toArray
    return fmts.map fun (fmt, na) ↦ (stx, f!"{na} : {fmt}"))

/-- The main implementation of the `have` vs `let` linter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant6bdddfc5419c80f3c549d33995b0b237b808b98ca6d707ec2259cb4cdbcad1d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant6bdddfc5419c80f3c549d33995b0b237b808b98ca6d707ec2259cb4cdbcad1d7.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e326b2b395f5252cfa8019d51a2afa20f2ea2bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
