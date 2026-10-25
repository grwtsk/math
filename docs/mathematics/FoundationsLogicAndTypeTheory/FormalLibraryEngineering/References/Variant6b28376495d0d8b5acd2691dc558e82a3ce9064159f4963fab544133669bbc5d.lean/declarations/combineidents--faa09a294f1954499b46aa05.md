# combineIdents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a8d53ccf537e961ca0f20cec685cf8b931a29f31388f5d93d106269014aab5d",
  "kind": "def",
  "lexical_name": "combineIdents",
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
  "slug": "combineidents--faa09a294f1954499b46aa05",
  "source": {
    "blob": "633baf65e182b269ae7d068ca67b5ef31f1e07ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 297,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:faa09a294f1954499b46aa05781269f0f19ac2cd1baebc383bb6c56594c52426",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a8d53ccf537e961ca0f20cec685cf8b931a29f31388f5d93d106269014aab5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def combineIdents (trees : Array InfoTree) (refs : Array Reference) : Array Reference := Id.run do
  -- Deduplicate definitions based on their exact range
  let mut posMap : Std.HashMap Lsp.Range RefIdent := ∅
  for ref in refs do
    if let { ident, range, isBinder := true, .. } := ref then
      posMap := posMap.insert range ident

  let idMap := useConstRepresentatives <| buildIdMap posMap

  let mut refs' := #[]
  for ref in refs do
    let id := ref.ident
    if idMap.contains id then
      refs' := refs'.push { ref with ident := findCanonicalRepresentative idMap id, aliases := #[id] }
    else if !idMap.contains id then
      refs' := refs'.push ref
  refs'
where
  useConstRepresentatives (idMap : Std.HashMap RefIdent RefIdent)
      : Std.HashMap RefIdent RefIdent := Id.run do
    let insertIntoClass classesById id :=
      let representative := findCanonicalRepresentative idMap id
      let «class»     := classesById.getD representative ∅
      let classesById := classesById.erase representative -- make `«class»` referentially unique
      let «class»     := «class».insert id
      classesById.insert representative «class»

    -- collect equivalence classes
    let mut classesById : Std.HashMap RefIdent (Std.HashSet RefIdent) := ∅
    for ⟨id, baseId⟩ in idMap do
      classesById := insertIntoClass classesById id
      classesById := insertIntoClass classesById baseId

    let mut r := ∅
    for ⟨currentRepresentative, «class»⟩ in classesById do
      -- find best representative (ideally a const if available)
      let mut bestRepresentative := currentRepresentative
      for id in «class» do
        bestRepresentative :=
          match bestRepresentative, id with
          | .fvar ma a,  .fvar ..  => .fvar ma a
          | .fvar ..,  .const mb b => .const mb b
          | .const ma a, .fvar ..  => .const ma a
          | .const ma a, .const .. => .const ma a

      -- compress `idMap` so that all identifiers in a class point to the best representative
      for id in «class» do
        if id != bestRepresentative then
          r := r.insert id bestRepresentative
    return r

  findCanonicalRepresentative (idMap : Std.HashMap RefIdent RefIdent) (id : RefIdent) : RefIdent := Id.run do
    let mut canonicalRepresentative := id
    while h : idMap.contains canonicalRepresentative do
      canonicalRepresentative := idMap[canonicalRepresentative]
    return canonicalRepresentative

  buildIdMap posMap := Id.run <| StateT.run' (s := ∅) do
    -- map fvar defs to overlapping fvar defs/uses
    for ref in refs do
      let baseId := ref.ident
      if let some id := posMap[ref.range]? then
        insertIdMap id baseId

    -- apply `FVarAliasInfo`
    trees.forM (·.visitM' (postNode := fun ci info _ => do
      if let .ofFVarAliasInfo ai := info then
        -- FVars can only be aliases of FVars of the same file / module
        let mod := ci.env.header.mainModule
        insertIdMap (.fvar mod.toString ai.id.name.toString) (.fvar mod.toString ai.baseId.name.toString)))

    get

  -- poor man's union-find; see also `findCanonicalBinder`
  insertIdMap id baseId := do
    let idMap ← get
    let id := findCanonicalRepresentative idMap id
    let baseId := findCanonicalRepresentative idMap baseId
    if baseId != id then
      modify (·.insert id baseId)

/--
Groups `refs` by identifier and range s.t. references with the same identifier and range
are added to the `aliases` of the representative of the group.
Yields to separate groups for declaration and usages if `allowSimultaneousBinderUse` is set.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/References/Variant6b28376495d0d8b5acd2691dc558e82a3ce9064159f4963fab544133669bbc5d.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `633baf65e182b269ae7d068ca67b5ef31f1e07ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
