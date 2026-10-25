# InteractiveGoalCore.pretty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75d854da1aa5d13e797cc3604f47112f40caf90373286328dc42f6a73e0fa1ed",
  "kind": "def",
  "lexical_name": "InteractiveGoalCore.pretty",
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
  "slug": "interactivegoalcore-pretty--9e5e2fa1d891a978c287f543",
  "source": {
    "blob": "092f0b0081559205ebb6dee20f905f94a5f21fc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveGoal/Variant0ef9680978276d0b606522ea0d2189ed57abcafcc5555498b447f3f6e32586f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e5e2fa1d891a978c287f543648d496dcc233750edddfb255e62ea27c6c1a191",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveGoal/Variant0ef9680978276d0b606522ea0d2189ed57abcafcc5555498b447f3f6e32586f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75d854da1aa5d13e797cc3604f47112f40caf90373286328dc42f6a73e0fa1ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def InteractiveGoalCore.pretty (g : InteractiveGoalCore) (userName? : Option String)
    (goalPrefix : String) : Format := Id.run do
  let indent := 2 -- Use option
  let mut ret := match userName? with
    | some userName => f!"case {userName}"
    | none          => Format.nil
  for hyp in g.hyps do
    ret := addLine ret
    let names := hyp.names
        |>.toList
        |>.filter (· != toString Name.anonymous)
        |> " ".intercalate
    match names with
    | "" =>
      ret := ret ++ Format.group f!":{Format.nest indent (Format.line ++ hyp.type.stripTags)}"
    | _ =>
      match hyp.val? with
      | some val =>
        ret := ret ++ Format.group f!"{names} : {hyp.type.stripTags} :={Format.nest indent (Format.line ++ val.stripTags)}"
      | none =>
        ret := ret ++ Format.group f!"{names} :{Format.nest indent (Format.line ++ hyp.type.stripTags)}"
  ret := addLine ret
  ret ++ f!"{goalPrefix}{Format.nest indent g.type.stripTags}"
where
  addLine (fmt : Format) : Format :=
    if fmt.isNil then fmt else fmt ++ Format.line

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveGoal/Variant0ef9680978276d0b606522ea0d2189ed57abcafcc5555498b447f3f6e32586f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveGoal/Variant0ef9680978276d0b606522ea0d2189ed57abcafcc5555498b447f3f6e32586f5.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `092f0b0081559205ebb6dee20f905f94a5f21fc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
