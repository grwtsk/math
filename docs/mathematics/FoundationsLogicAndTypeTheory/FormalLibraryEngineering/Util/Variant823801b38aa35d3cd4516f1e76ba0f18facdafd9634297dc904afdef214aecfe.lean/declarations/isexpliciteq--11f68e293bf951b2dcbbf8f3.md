# isExplicitEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36b009ce789ae3b0bfa18ed10003bd93221243b7194bf5154a61dd469b4c2d75",
  "kind": "def",
  "lexical_name": "isExplicitEq",
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
  "slug": "isexpliciteq--11f68e293bf951b2dcbbf8f3",
  "source": {
    "blob": "4f30699800b5a858dcf4f00ca2739afd592e9465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 251,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant823801b38aa35d3cd4516f1e76ba0f18facdafd9634297dc904afdef214aecfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11f68e293bf951b2dcbbf8f3f7d7ec22282d7794b6d3e4be9ab06c8c70f8ee72",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant823801b38aa35d3cd4516f1e76ba0f18facdafd9634297dc904afdef214aecfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36b009ce789ae3b0bfa18ed10003bd93221243b7194bf5154a61dd469b4c2d75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def isExplicitEq (t s : Expr) : MetaM Bool := do
  let t := t.cleanupAnnotations; let s := s.cleanupAnnotations
  if t == s then
    return true
  unless t.getAppNumArgs == s.getAppNumArgs && t.getAppFn == s.getAppFn do
    return false
  let tArgs := t.getAppArgs
  let sArgs := s.getAppArgs
  -- TODO: let's just use `getFunInfo`.
  let bis ← getBinderInfos t.getAppFn tArgs
  t.getAppNumArgs.allM fun i _ =>
    if bis[i]!.isExplicit then
      isExplicitEq tArgs[i]! sArgs[i]!
    else
      withNewMCtxDepth <| withReducibleAndInstances <| isDefEq tArgs[i]! sArgs[i]!
where
  /-- Get the `BinderInfo`s for the arguments of `mkAppN fn args`. -/
  getBinderInfos (fn : Expr) (args : Array Expr) : MetaM (Array BinderInfo) := do
    let mut fnType ← inferType fn
    let mut result := Array.mkEmpty args.size
    let mut j := 0
    for i in [:args.size] do
      unless fnType.isForall do
        fnType ← whnfD (fnType.instantiateRevRange j i args)
        j := i
      let .forallE _ _ b bi := fnType | throwError m! "expected function type {indentExpr fnType}"
      fnType := b
      result := result.push bi
    return result

end Meta

section Syntax
open Syntax Parser.Tactic

/-- Information about the rewrite position. This is used to determine whether to suggest
`rw`, `rw!`, `nth_rw`, or `simp_rw`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant823801b38aa35d3cd4516f1e76ba0f18facdafd9634297dc904afdef214aecfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant823801b38aa35d3cd4516f1e76ba0f18facdafd9634297dc904afdef214aecfe.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f30699800b5a858dcf4f00ca2739afd592e9465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
