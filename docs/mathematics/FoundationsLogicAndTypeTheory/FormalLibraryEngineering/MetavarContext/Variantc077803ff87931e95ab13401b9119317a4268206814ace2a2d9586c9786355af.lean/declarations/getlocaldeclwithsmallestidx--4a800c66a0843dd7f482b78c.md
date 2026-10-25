# getLocalDeclWithSmallestIdx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37359524cd053a6561177e1c00a07c10e5f21b3bd2b31c3c24c01ece4dace17e",
  "kind": "def",
  "lexical_name": "getLocalDeclWithSmallestIdx",
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
  "slug": "getlocaldeclwithsmallestidx--4a800c66a0843dd7f482b78c",
  "source": {
    "blob": "3ad97d82016c98fecf071011eac4662b21b2dbf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1036,
    "line": 989,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a800c66a0843dd7f482b78ccd6ec9ffb17b0384bcaf0249e3b92f9f4da14f9c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37359524cd053a6561177e1c00a07c10e5f21b3bd2b31c3c24c01ece4dace17e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 989–1036.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def getLocalDeclWithSmallestIdx (lctx : LocalContext) (xs : Array Expr) : LocalDecl := Id.run do
  let mut d : LocalDecl := lctx.getFVar! xs[0]!
  for x in xs[1...*] do
    if x.isFVar then
      let curr := lctx.getFVar! x
      if curr.index < d.index then
        d := curr
  return d

/--
  Given `toRevert` an array of free variables s.t. `lctx` contains their declarations,
  return a new array of free variables that contains `toRevert` and all variables
  in `lctx` that may depend on `toRevert`.

  When `generalizeNondepLet := true` (the default), then the values of nondependent lets are not considered
  when computing forward dependencies.

  Remark: the result is sorted by `LocalDecl` indices.

  Remark: We used to throw an `Exception.revertFailure` exception when an auxiliary declaration
  had to be reversed. Recall that auxiliary declarations are created when compiling (mutually)
  recursive definitions. The `revertFailure` due to auxiliary declaration dependency was originally
  introduced in Lean3 to address issue <https://github.com/leanprover/lean/issues/1258>.

  In Lean4, this solution is not satisfactory because all definitions/theorems are potentially
  recursive. So, even a simple (incomplete) definition such as
  ```
  variables {α : Type} in
  def f (a : α) : List α :=
  _
  ```
  would trigger the `Exception.revertFailure` exception. In the definition above,
  the elaborator creates the auxiliary definition `f : {α : Type} → List α`.
  The `_` is elaborated as a new fresh variable `?m` that contains `α : Type`, `a : α`, and `f : α → List α` in its context,
  When we try to create the lambda `fun {α : Type} (a : α) => ?m`, we first need to create
  an auxiliary `?n` which does not contain `α` and `a` in its context. That is,
  we create the metavariable `?n : {α : Type} → (a : α) → (f : α → List α) → List α`,
  add the delayed assignment `?n #[l, a, f] := ?m`, and create the lambda
  `fun {α : Type} (a : α) => ?n α a f`.

  See `elimMVarDeps` for more information.

  If we kept using the Lean3 approach, we would get the `Exception.revertFailure` exception because we are
  reverting the auxiliary definition `f`.

  Note that <https://github.com/leanprover/lean/issues/1258> is not an issue in Lean4 because
  we have changed how we compile recursive definitions.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean#L989).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ad97d82016c98fecf071011eac4662b21b2dbf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
