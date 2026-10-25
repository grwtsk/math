# dupNamespace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8e6e32c3ecfd605552e189b5105306d51f2fa6a46386b7839ef7d63577f569e",
  "kind": "def",
  "lexical_name": "dupNamespace",
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
  "slug": "dupnamespace--df007c10ac9da0521ec81288",
  "source": {
    "blob": "a8ad97b7f46963d75ba6c8e6e20ff4b74c4a2875",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DupNamespace/Variant65d1ed988d9c49d3fb8e05ca83826732eaae37f6959ecc4dfe6e300ad04bd844.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df007c10ac9da0521ec8128892f5ae0a0cca707aa68376b29ec14234b6a4eee9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DupNamespace/Variant65d1ed988d9c49d3fb8e05ca83826732eaae37f6959ecc4dfe6e300ad04bd844.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8e6e32c3ecfd605552e189b5105306d51f2fa6a46386b7839ef7d63577f569e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dupNamespace : Linter where run := withSetOptionIn fun stx ↦ do
  if getLinterValue linter.extra.dupNamespace (← getLinterOptions) then
    let mut aliases := #[]
    if let some exp := stx.find? (·.isOfKind `Lean.Parser.Command.export) then
      aliases ← getAliasSyntax exp
    for id in (← getNamesFrom (stx.getPos?.getD default)) ++ aliases do
      let declName := id.getId
      if declName.hasMacroScopes || isPrivateName declName then continue
      let nm := declName.components
      let duplicated :=
        if (← getBoolOption `linter.extra.dupNamespace.consecutiveOnly (defValue := true)) then
          -- Only check consecutive components
          nm.zip (nm.tailD []) |>.filterMap fun (x, y) ↦ if x == y then some x else none
        else
          -- Collect distinct components which appear more than once.
          List.eraseDups <| nm.filter (fun comp ↦ nm.count comp > 1)
      match duplicated with
      | [] => continue
      | [ns] =>
        Linter.logLint linter.extra.dupNamespace id
          m!"The namespace `{ns}` is duplicated in the declaration \
          `{.ofConstName (fullNames := true) declName}`."
      | _ =>
        let ns := MessageData.andList (duplicated.map (m!"`{·}`"))
        Linter.logLint linter.extra.dupNamespace id
          m!"The namespaces {ns} are duplicated in the declaration \
          `{.ofConstName (fullNames := true) declName}`."

end DupNamespaceLinter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DupNamespace/Variant65d1ed988d9c49d3fb8e05ca83826732eaae37f6959ecc4dfe6e300ad04bd844.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DupNamespace/Variant65d1ed988d9c49d3fb8e05ca83826732eaae37f6959ecc4dfe6e300ad04bd844.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8ad97b7f46963d75ba6c8e6e20ff4b74c4a2875` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
