# duplicateDeclarations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a391e09b27accf931d017f47fb1f16e00c07ba0a6545fb9de65fcbaaa4e81ae0",
  "kind": "def",
  "lexical_name": "duplicateDeclarations",
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
  "slug": "duplicatedeclarations--37a5ba3e2bc43a040d797b70",
  "source": {
    "blob": "ccf5e4e7374e0e999190cf596c98089a10975ea2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DuplicateDecls/Variant64ab26edf683f10c237d518fce373da53569d45538ad21570a05d34f9172852e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37a5ba3e2bc43a040d797b70f4a8fa0a29a3ac52f5945e77f9cab453dc3e13f5",
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

Occurrence: `declaration:a391e09b27accf931d017f47fb1f16e00c07ba0a6545fb9de65fcbaaa4e81ae0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def duplicateDeclarations (cfg : Target) : CoreM (Array (Array Name)) := MetaM.run' do
  let env ← getEnv
  let mut visited : Std.HashMap Expr Name := {}
  let mut dups : Std.HashMap Expr (Array Name) := {}
  for (name, cinfo) in env.constants.map₁ do
    if name.isInternalDetail
      || name.isMetaprogramming
      || !allowCompletion env name
      || Linter.isDeprecated env name
      || isAlias cinfo then continue
    if ← isProp cinfo.type then
      unless cfg matches .theorems do continue
    else
      match cfg with
      | .theorems => continue
      | .instances => if (← isClass? cinfo.type).isNone then continue
      | .defs =>
        if (← isClass? cinfo.type).isNone then
          if let some value := cinfo.value? then
            let normValue ← sortBinders value
            let normType ← sortBinders cinfo.type
            let key := .app normValue normType
            if let some name' := visited[key]? then
              dups := dups.alter key (·.getD #[name'] |>.push name)
            else
              visited := visited.insert key name
        continue
    let normType ← sortBinders cinfo.type
    if let some name' := visited[normType]? then
      dups := dups.alter normType (·.getD #[name'] |>.push name)
    else
      visited := visited.insert normType name
  return dups.valuesArray

/-- Given a module name, return a number that can be used for sorting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DuplicateDecls/Variant64ab26edf683f10c237d518fce373da53569d45538ad21570a05d34f9172852e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DuplicateDecls/Variant64ab26edf683f10c237d518fce373da53569d45538ad21570a05d34f9172852e.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccf5e4e7374e0e999190cf596c98089a10975ea2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
