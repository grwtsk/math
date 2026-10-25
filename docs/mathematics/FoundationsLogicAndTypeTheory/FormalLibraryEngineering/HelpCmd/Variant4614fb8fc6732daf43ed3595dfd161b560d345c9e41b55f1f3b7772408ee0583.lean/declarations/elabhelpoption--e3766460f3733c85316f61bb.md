# elabHelpOption

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3ac93993df810e898684ba82d5a476611a9415142642911ad14636802ef0476",
  "kind": "def",
  "lexical_name": "elabHelpOption",
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
  "slug": "elabhelpoption--e3766460f3733c85316f61bb",
  "source": {
    "blob": "f66040841d732c79c5d325c3581e892d8cc2b90b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HelpCmd/Variant4614fb8fc6732daf43ed3595dfd161b560d345c9e41b55f1f3b7772408ee0583.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3766460f3733c85316f61bb59ebbd638d7f58fd9436e3fdfbbca8e38b83a7d5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HelpCmd/Variant4614fb8fc6732daf43ed3595dfd161b560d345c9e41b55f1f3b7772408ee0583.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3ac93993df810e898684ba82d5a476611a9415142642911ad14636802ef0476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabHelpOption (id : Option Ident) : CommandElabM Unit := do
  let id := id.map (·.raw.getId.toString false)
  -- Keep the original `Name` for option lookup; `Name.mkSimple` on a dotted
  -- string like `"pp.all"` is not the same as `` `pp.all ``, so looking up by
  -- the display string would never show `(currently: …)` for real options.
  let mut decls : Std.TreeMap String (Name × OptionDecl) compare := {}
  for (name, decl) in show NameMap OptionDecl from ← getOptionDecls do
    let nameStr := name.toString false
    if let some id := id then
      if !id.isPrefixOf nameStr then
        continue
    decls := decls.insert nameStr (name, decl)
  let mut msg := Format.nil
  let opts ← getOptions
  if decls.isEmpty then
    match id with
    | some id => throwError "no options start with {id}"
    | none => throwError "no options found (!)"
  for (nameStr, (name, decl)) in decls do
    let mut msg1 := match decl.defValue with
    | .ofString val => s!"String := {repr val}"
    | .ofBool val => s!"Bool := {repr val}"
    | .ofName val => s!"Name := {repr val}"
    | .ofNat val => s!"Nat := {repr val}"
    | .ofInt val => s!"Int := {repr val}"
    | .ofSyntax val => s!"Syntax := {repr val}"
    if let some val := opts.find? name then
      msg1 := s!"{msg1} (currently: {val})"
    msg := msg ++ .nest 2 (f!"option {nameStr} : {msg1}" ++ .line ++ decl.descr) ++ .line ++ .line
  logInfo msg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HelpCmd/Variant4614fb8fc6732daf43ed3595dfd161b560d345c9e41b55f1f3b7772408ee0583.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HelpCmd/Variant4614fb8fc6732daf43ed3595dfd161b560d345c9e41b55f1f3b7772408ee0583.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f66040841d732c79c5d325c3581e892d8cc2b90b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
