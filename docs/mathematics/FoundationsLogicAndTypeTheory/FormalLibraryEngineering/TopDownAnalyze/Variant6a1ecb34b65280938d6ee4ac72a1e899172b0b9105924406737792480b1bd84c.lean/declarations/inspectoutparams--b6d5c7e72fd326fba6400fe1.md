# inspectOutParams

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b01236883ab0ebd2ade67608eb8faaab68eb4deda63f24cb9037d0a7a34bd9b7",
  "kind": "def",
  "lexical_name": "inspectOutParams",
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
  "slug": "inspectoutparams--b6d5c7e72fd326fba6400fe1",
  "source": {
    "blob": "ce42c33ac4919deacbfafcec1d6218ef12193a03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 260,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopDownAnalyze/Variant6a1ecb34b65280938d6ee4ac72a1e899172b0b9105924406737792480b1bd84c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6d5c7e72fd326fba6400fe1cf1a0a8275bd54bad26ff8eda08534d88162268e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopDownAnalyze/Variant6a1ecb34b65280938d6ee4ac72a1e899172b0b9105924406737792480b1bd84c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b01236883ab0ebd2ade67608eb8faaab68eb4deda63f24cb9037d0a7a34bd9b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def inspectOutParams (arg mvar : Expr) : AnalyzeM Unit := do
  let argType  ← inferType arg -- HAdd α α α
  let mvarType ← inferType mvar
  let fType ← inferType argType.getAppFn -- Type → Type → outParam Type
  let mType ← inferType mvarType.getAppFn
  inspectAux fType mType 0 argType.getAppArgs mvarType.getAppArgs
where
  inspectAux (fType mType : Expr) (i : Nat) (args mvars : Array Expr) := do
    let fType ← whnf fType
    let mType ← whnf mType
    if !(i < args.size) then return ()
    match fType, mType with
    | Expr.forallE _ fd fb _, Expr.forallE _ _  mb _ => do
      -- TODO: do I need to check (← okBottomUp? args[i] mvars[i] fuel).isSafe here?
      -- if so, I'll need to take a callback
      if fd.isOutParam then
        tryUnify (args[i]!) (mvars[i]!)
      inspectAux (fb.instantiate1 args[i]!) (mb.instantiate1 mvars[i]!) (i+1) args mvars
    | _, _ => return ()

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopDownAnalyze/Variant6a1ecb34b65280938d6ee4ac72a1e899172b0b9105924406737792480b1bd84c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopDownAnalyze/Variant6a1ecb34b65280938d6ee4ac72a1e899172b0b9105924406737792480b1bd84c.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce42c33ac4919deacbfafcec1d6218ef12193a03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
