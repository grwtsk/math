# emitTailCall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d60555102586d8439cfb0e71db7c928284fb3126cf81467e3f9b081267c13311",
  "kind": "def",
  "lexical_name": "emitTailCall",
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
  "slug": "emittailcall--5db210c89f7e96770f3ac61d",
  "source": {
    "blob": "559a964222f208f442e9a5e7f5d89cc6d9b9135c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 787,
    "line": 733,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variante1ab9db28525ae08bddc25e0df6a809a27062b8ee39d4eb8e023f243d85c19f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5db210c89f7e96770f3ac61da1bc108586cca11cb2896d36c63b4fb2ddce466a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variante1ab9db28525ae08bddc25e0df6a809a27062b8ee39d4eb8e023f243d85c19f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d60555102586d8439cfb0e71db7c928284fb3126cf81467e3f9b081267c13311`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 733–787.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def emitTailCall (decl : LetDecl .impure) : EmitM Unit := do
  let .fap _ args := decl.value | unreachable!
  let ps ← getCurrParams
  assert! ps.size == args.size
  let (ps, args) := ps.zip args |>.filter (fun (p, _) => !p.type.isVoid) |>.unzip
  if overwriteParam ps args then
    withEmitBlock do
      for h : i in 0...ps.size do
        let p := ps[i]
        let arg := args[i]!
        unless paramEqArg p arg do
          emit p.type.toCType; emit " _tmp_"; emit i; emit " = "; emit arg; emitLn ";"

      for h : i in 0...ps.size do
        let p := ps[i]
        let arg := args[i]!
        unless paramEqArg p arg do
          emit p.binderName; emit " = _tmp_"; emit i; emitLn ";"
  else
    for p in ps, arg in args do
      unless paramEqArg p arg do
        emit p.binderName; emit " = "; emit arg; emitLn ";"
  emitLn "goto _start;"
where
  /--
  Given `[p_0, ..., p_{n-1}]`, `[arg_0, ..., arg_{n-1}]`, representing the assignments
  ```
  p_0 := arg_0,
  ...
  p_{n-1} := arg_{n-1}
  ```
  Return true iff we have `(i, j)` where `j > i`, and `arg_j == p_i`.
  That is, we have
  ```
  p_i := arg_i,
  ...
  p_j := p_i, -- p_i was overwritten above
  ```
  -/
  overwriteParam (ps : Array (Param .impure)) (args : Array (Arg .impure)) : Bool := Id.run do
    for h1 : i in 0...ps.size do
      let p := ps[i]
      for h2 : j in (i+1)...args.size do
        if paramEqArg p args[j] then
          return true
    return false

  paramEqArg (p : Param .impure) (arg : Arg .impure) : Bool :=
    match arg with
    | .fvar fvarId => p.fvarId == fvarId
    | .erased => false


mutual

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variante1ab9db28525ae08bddc25e0df6a809a27062b8ee39d4eb8e023f243d85c19f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variante1ab9db28525ae08bddc25e0df6a809a27062b8ee39d4eb8e023f243d85c19f6.lean#L733).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559a964222f208f442e9a5e7f5d89cc6d9b9135c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
