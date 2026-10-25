# toposort

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dbf1b177c7974c5148d1f001ab001277e7da66371d0e7f7c93ebde232c27eb4e",
  "kind": "def",
  "lexical_name": "toposort",
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
  "slug": "toposort--7eb8842dc48c88f0b4cf4d62",
  "source": {
    "blob": "166308e5e51fc6d81eb0dbc073d6453ac6dd9929",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7eb8842dc48c88f0b4cf4d628ca266b51e47238f8f9e9c1ce2eff0b19d784cd7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dbf1b177c7974c5148d1f001ab001277e7da66371d0e7f7c93ebde232c27eb4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def toposort (decls : Array (Decl pu)) : CompilerM (Array (Decl pu)) := do
  let declsMap := .ofArray <| decls.map fun d => (d.name, d)
  let (_, s) ← go decls |>.run { declsMap } |>.run {
    seen := .emptyWithCapacity decls.size,
    order := .emptyWithCapacity decls.size
  }
  return s.order
where
  go (decls : Array (Decl pu)) : ToposortM pu Unit := do
    decls.forM process

  process (decl : Decl pu) : ToposortM pu Unit := do
    if (← get).seen.contains decl.name then
      return ()

    let env ← getEnv
    modify fun s => { s with seen := s.seen.insert decl.name }
    decl.value.forCodeM (·.forM visitConsts)
    if let some initializer := getBuiltinInitFnNameFor? env decl.name <|> getInitFnNameFor? env decl.name then
      visitConst initializer
    modify fun s => { s with order := s.order.push decl }

  visitConsts (code : Code pu) : ToposortM pu Unit := do
    match code with
    | .let decl _ =>
      match decl.value with
      | .const declName .. | .fap declName .. | .pap declName .. =>
        visitConst declName
      | _ => return ()
    | _ => return ()

  visitConst (declName : Name) : ToposortM pu Unit := do
    if let some d := (← read).declsMap[declName]? then
      process d

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `166308e5e51fc6d81eb0dbc073d6453ac6dd9929` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
