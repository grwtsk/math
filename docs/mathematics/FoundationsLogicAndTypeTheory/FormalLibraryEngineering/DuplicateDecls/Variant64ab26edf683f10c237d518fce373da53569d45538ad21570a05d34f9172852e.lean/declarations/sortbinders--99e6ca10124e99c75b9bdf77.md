# sortBinders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78a7599cd2c195ddc92ee9e393eaa2f32d5597dc4d9c6251fdf44fe9fc45b6aa",
  "kind": "def",
  "lexical_name": "sortBinders",
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
  "slug": "sortbinders--99e6ca10124e99c75b9bdf77",
  "source": {
    "blob": "ccf5e4e7374e0e999190cf596c98089a10975ea2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DuplicateDecls/Variant64ab26edf683f10c237d518fce373da53569d45538ad21570a05d34f9172852e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99e6ca10124e99c75b9bdf77ff3b778fbe091d12ff08314596d4f16f234c084f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DuplicateDecls/Variant64ab26edf683f10c237d518fce373da53569d45538ad21570a05d34f9172852e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78a7599cd2c195ddc92ee9e393eaa2f32d5597dc4d9c6251fdf44fe9fc45b6aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sortBinders (e : Expr) : MetaM Expr := do
  (if e.isLambda then lambdaTelescope else forallTelescope) e fun fvars e ↦ do
  let n := fvars.size
  let fvars : Vector Expr n := fvars.toVector
  let mut remainingTypes ← fvars.mapM (return some <| eraseUnivs <| ← inferType ·)
  let mut e := eraseUnivs e
  let mut sortedTypes := #[]
  for _ in *...n do
    let mut minType? : Option (Fin n × Expr) := none
    for h : i in 0...n do
      if let some type := remainingTypes[i] then
        if !type.hasFVar then
          if let some (minIdx, minType) := minType? then
            if type.quickLt minType then
              continue
          minType? := some (⟨i, by get_elem_tactic⟩, type)
    let some (minIdx, minType) := minType? |
      panic! s!"All types have fvars: {remainingTypes.toArray}"
    sortedTypes := sortedTypes.push minType
    remainingTypes := remainingTypes.set minIdx none
    let abstractFVar (e : Expr) := (e.liftLooseBVars 0 1).abstract #[fvars[minIdx]]
    remainingTypes := remainingTypes.map (·.map abstractFVar)
    e := abstractFVar e
  return sortedTypes.foldr (init := e) fun type e ↦ .forallE `_ type e .default

/-- Return `true` if `cinfo` is defined as another constant.
If so, we assume that the declaration is intentionally duplicated.
This only works for exposed definitions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DuplicateDecls/Variant64ab26edf683f10c237d518fce373da53569d45538ad21570a05d34f9172852e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DuplicateDecls/Variant64ab26edf683f10c237d518fce373da53569d45538ad21570a05d34f9172852e.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccf5e4e7374e0e999190cf596c98089a10975ea2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
