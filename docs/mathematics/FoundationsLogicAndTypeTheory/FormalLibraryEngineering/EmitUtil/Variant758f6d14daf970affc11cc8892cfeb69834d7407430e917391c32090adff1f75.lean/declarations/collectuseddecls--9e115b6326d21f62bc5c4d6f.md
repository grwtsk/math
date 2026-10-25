# collectUsedDecls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47ddf2125ed4b3c4cd7c595000d7dfefcaf19946c318b06114f813df81502236",
  "kind": "def",
  "lexical_name": "collectUsedDecls",
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
  "slug": "collectuseddecls--9e115b6326d21f62bc5c4d6f",
  "source": {
    "blob": "7a914f301515e632ab6fdeea76edade4bc1e3dd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitUtil/Variant758f6d14daf970affc11cc8892cfeb69834d7407430e917391c32090adff1f75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e115b6326d21f62bc5c4d6f4f7fa8058b410d6f48830d96d70b0589d9c307ca",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitUtil/Variant758f6d14daf970affc11cc8892cfeb69834d7407430e917391c32090adff1f75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47ddf2125ed4b3c4cd7c595000d7dfefcaf19946c318b06114f813df81502236`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def collectUsedDecls (decls : Array Name) :
    CoreM (Array (Decl .impure) × Array (Signature .impure)) := do
  let (_, state) ← go decls |>.run {}
  return (state.localDecls, state.extSigs)
where
  go (names : Array Name) : StateRefT CollectUsedDeclsState CoreM Unit :=
    names.forM fun name => do
      if (← get).visited.contains name then return
      modify fun s => { s with visited := s.visited.insert name }
      if let some decl ← getLocalImpureDecl? name then
        modify fun s => { s with localDecls := s.localDecls.push decl }
        decl.value.forCodeM (·.forM visitCode)
        let env ← getEnv
        if let some initializer := getBuiltinInitFnNameFor? env decl.name <|> getInitFnNameFor? env decl.name then
          go #[initializer]
      else if let some sig ← getImpureSignature? name then
        modify fun s => { s with extSigs := s.extSigs.push sig }
      else
        panic! s!"collectUsedDecls: could not find declaration or signature for '{name}'"

  visitCode (code : Code .impure) : StateRefT CollectUsedDeclsState CoreM Unit := do
    match code with
    | .let decl _ =>
      match decl.value with
      | .const declName .. | .fap declName .. | .pap declName .. =>
        go #[declName]
      | _ => return ()
    | _ => return ()

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitUtil/Variant758f6d14daf970affc11cc8892cfeb69834d7407430e917391c32090adff1f75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitUtil/Variant758f6d14daf970affc11cc8892cfeb69834d7407430e917391c32090adff1f75.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a914f301515e632ab6fdeea76edade4bc1e3dd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
