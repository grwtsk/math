# checkDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed2aab25305761c5b90027056cedd2a4943486fe13b26718c074ff0d449efe7f",
  "kind": "def",
  "lexical_name": "checkDecl",
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
  "slug": "checkdecl--b2b1ace64d1900dfccfc7dc3",
  "source": {
    "blob": "5569ff1c2f5317fb7e4faa1cc7300c860751f425",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 196,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MissingDocs/Variantd936befc1cd30355e37782cb8551d5c84006af99e84be6a7a5de6f9e686aebb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2b1ace64d1900dfccfc7dc3795a650dc5bdb3c8f604e17b82a806187f603b51",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MissingDocs/Variantd936befc1cd30355e37782cb8551d5c84006af99e84be6a7a5de6f9e686aebb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed2aab25305761c5b90027056cedd2a4943486fe13b26718c074ff0d449efe7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkDecl : SimpleHandler := fun stx => do
  let head := stx[0]; let rest := stx[1]
  if head[2][0].getKind == ``Command.private then return -- not private
  let k := rest.getKind
  if let some isEmpty ← declModifiersDocStatus head then
    lintDeclHead k rest[1][0] isEmpty
  if k == ``«inductive» || k == ``classInductive then
    for stx in rest[4].getArgs do
      let head := stx[2]
      -- Constructor has two doc comment positions: the leading one before `|` (stx[0])
      -- and the one inside declModifiers (head[0]). If either is non-empty, skip.
      let leadingEmpty ← isEmptyDocString stx[0]
      if !stx[0].isNone && !leadingEmpty then
        pure () -- constructor has a non-empty leading doc comment
      else if let some modsEmpty ← declModifiersDocStatus head then
        lintDocStatusField (leadingEmpty || modsEmpty) rest[1][0] stx[3] "public constructor"
    unless rest[5].isNone do
      for stx in rest[5][0][1].getArgs do
        let head := stx[0]
        if let some isEmpty ← declModifiersDocStatus head then
          lintDocStatusField isEmpty rest[1][0] stx[1] "computed field"
  else if rest.getKind == ``«structure» then
    unless rest[4][2].isNone do
      let redecls : Std.HashSet String.Pos.Raw :=
        (← get).infoState.trees.foldl (init := {}) fun s tree =>
          tree.foldInfo (init := s) fun _ info s =>
            if let .ofFieldRedeclInfo info := info then
              if let some range := info.stx.getRange? then
                s.insert range.start
              else s
            else s
      let parent := rest[1][0]
      let lint1 isEmpty stx := do
        if let some range := stx.getRange? then
          if redecls.contains range.start then return
        lintDocStatusField isEmpty parent stx "public field"
      for stx in rest[4][2][0].getArgs do
        let head := stx[0]
        if let some isEmpty ← declModifiersDocStatus head then
          if stx.getKind == ``structSimpleBinder then
            lint1 isEmpty stx[1]
          else
            for stx in stx[2].getArgs do
              lint1 isEmpty stx

@[builtin_missing_docs_handler «initialize»]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MissingDocs/Variantd936befc1cd30355e37782cb8551d5c84006af99e84be6a7a5de6f9e686aebb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MissingDocs/Variantd936befc1cd30355e37782cb8551d5c84006af99e84be6a7a5de6f9e686aebb1.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5569ff1c2f5317fb7e4faa1cc7300c860751f425` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
