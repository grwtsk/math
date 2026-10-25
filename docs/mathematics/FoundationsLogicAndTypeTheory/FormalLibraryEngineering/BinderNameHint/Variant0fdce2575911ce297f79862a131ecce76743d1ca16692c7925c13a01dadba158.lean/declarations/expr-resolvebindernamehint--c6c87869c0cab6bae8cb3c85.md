# Expr.resolveBinderNameHint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d94d790e5cea0aa99b0059bdda8250406124d6c1e0422a2aa7b75f0754f2043e",
  "kind": "def",
  "lexical_name": "Expr.resolveBinderNameHint",
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
  "slug": "expr-resolvebindernamehint--c6c87869c0cab6bae8cb3c85",
  "source": {
    "blob": "a5d83ef1067ad1b3e048bb1a0e1731f48d385ce4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BinderNameHint/Variant0fdce2575911ce297f79862a131ecce76743d1ca16692c7925c13a01dadba158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6c87869c0cab6bae8cb3c85fe5d2a959b4468a99922f2390623b134796bca99",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BinderNameHint/Variant0fdce2575911ce297f79862a131ecce76743d1ca16692c7925c13a01dadba158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d94d790e5cea0aa99b0059bdda8250406124d6c1e0422a2aa7b75f0754f2043e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Expr.resolveBinderNameHint (e : Expr) : CoreM Expr :=
  (go e).run.run' #[]
where
/-
Implementation note:

We traverse the expression as an open term; we do not need a local context here.

The state is the array of binder names. The length of the array is always the binder nesting depth,
and the innermost binder is at the end. We update the binder names therein when encountering a
`binderNameHint`, and update the binder when exiting the scope.
-/
  go (e : Expr) : MonadCacheT ExprStructEq Expr (StateT (Array Name) CoreM) Expr := do
    checkCache { val := e : ExprStructEq } fun _ => do
      if e.isAppOfArity ``binderNameHint 6 then
        let v := e.appFn!.appFn!.appArg!
        let b := e.appFn!.appArg!
        let e := e.appArg!
        let e' ← go e
        match v, b.headBeta with
        | .bvar bidx, .lam n _ _ _
        | .bvar bidx, .forallE n _ _ _ =>
          modify (rememberName bidx n)
        | .bvar bidx, _ =>
          -- If we do not have a binder to use, ensure that name has macro scope.
          -- This is used by the well-founded definition preprocessor so that the new binder
          -- `fun h =>` has a macro-scope, and is inaccessible in the termination proof.
          -- (Using `fun _ =>` would show up as `property†` to appear, which is bad UX)
          let xs ← get
          assert! xs.size > bidx
          let n := xs[xs.size - bidx - 1]!
          let n' ← mkFreshUserName n
          modify (rememberName bidx n')
        | _, _ =>
          pure ()
        pure e'
      else
        match e with
        | .forallE n d b bi =>
          let d' ← go d
          modify (enterScope n)
          let b' ← go b
          let n' ← modifyGet exitScope
          return .forallE n' d' b' bi
        | .lam n d b bi =>
          let d' ← go d
          modify (enterScope n)
          let b' ← go b
          let n' ← modifyGet exitScope
          return .lam n' d' b' bi
        | .letE n t v b nd  =>
          let t' ← go t
          let v' ← go v
          modify (enterScope n)
          let b' ← go b
          let n' ← modifyGet exitScope
          return .letE n' t' v' b' nd
        | .app f a         => return e.updateApp! (← go f) (← go a)
        | .mdata _ b       => return e.updateMData! (← go b)
        | .proj _ _ b      => return e.updateProj! (← go b)
        | _                => return e

end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BinderNameHint/Variant0fdce2575911ce297f79862a131ecce76743d1ca16692c7925c13a01dadba158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BinderNameHint/Variant0fdce2575911ce297f79862a131ecce76743d1ca16692c7925c13a01dadba158.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d83ef1067ad1b3e048bb1a0e1731f48d385ce4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
