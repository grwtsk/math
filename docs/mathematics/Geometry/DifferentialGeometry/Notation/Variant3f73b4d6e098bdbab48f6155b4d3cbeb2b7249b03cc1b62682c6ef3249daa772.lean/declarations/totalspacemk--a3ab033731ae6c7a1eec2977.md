# totalSpaceMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49324c3e5889c0f0e6e45e5ad7f430effc903a736eb0db7a06d194452310826c",
  "kind": "def",
  "lexical_name": "totalSpaceMk",
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
  "slug": "totalspacemk--a3ab033731ae6c7a1eec2977",
  "source": {
    "blob": "82bafcdb5b5220b506995e1568afb2cfeb7853c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 182,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Notation/Variant3f73b4d6e098bdbab48f6155b4d3cbeb2b7249b03cc1b62682c6ef3249daa772.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3ab033731ae6c7a1eec29777a217c590a6085d5c83bd046e3c8c5081f8f67db",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Notation/Variant3f73b4d6e098bdbab48f6155b4d3cbeb2b7249b03cc1b62682c6ef3249daa772.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49324c3e5889c0f0e6e45e5ad7f430effc903a736eb0db7a06d194452310826c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def totalSpaceMk (e : Expr) : MetaM Expr := do
  let etype ← whnf <| ← instantiateMVars <| ← inferType e
  match etype with
  | .forallE x base tgt _ => withLocalDeclD x base fun x ↦ do
    let tgtHasLooseBVars := tgt.hasLooseBVars
    let tgt := tgt.instantiate1 x
    -- Note: we do not run `whnfR` on `tgt` because `Bundle.Trivial` is reducible.
    match_expr tgt with
    | Bundle.Trivial E E' _ =>
      trace[Elab.DiffGeo.TotalSpaceMk] "`{e}` is a section of `Bundle.Trivial {E} {E'}`"
      -- Note: we allow `isDefEq` here because any mvar assignments should persist.
      if ← withReducible (isDefEq E base) then
        let body ← mkAppM ``Bundle.TotalSpace.mk' #[E', x, (e.app x).headBeta]
        mkLambdaFVars #[x] body
      else return e
    | TangentSpace _k _ E _ _ _H _ _I M _ _ _x =>
      trace[Elab.DiffGeo.TotalSpaceMk] "`{e}` is a vector field on `{M}`"
      let body ← mkAppM ``Bundle.TotalSpace.mk' #[E, x, (e.app x).headBeta]
      mkLambdaFVars #[x] body
    | _ => match (← instantiateMVars tgt).cleanupAnnotations with
      | .app V _ =>
        trace[Elab.DiffGeo.TotalSpaceMk] "Section of a bundle as a dependent function"
        match ← findModelFiber? V with
        | some F =>
              let body ← mkAppM ``Bundle.TotalSpace.mk' #[F, x, (e.app x).headBeta]
              return (← mkLambdaFVars #[x] body).headBeta
        | none =>
          -- future: special-case `Bundle.TotalSpace` for V;
          -- if so, say "there is no need to apply T% twice"
          throwError "could not find a `FiberBundle` instance on `{V}`:\n\
          `{e}` is a function into `{V}`\n\n\
          hint: you may be missing suitable typeclass assumptions"
      | tgt =>
        trace[Elab.DiffGeo.TotalSpaceMk] "Section of a trivial bundle as a non-dependent function"
        -- TODO: can `tgt` depend on `x` in a way that is not a function application?
        -- Check that `x` is not a bound variable in `tgt`!
        if tgtHasLooseBVars then
          throwError "Attempted to fall back to creating a section of the trivial bundle out of \
            (`{e}` : `{etype}`) as a non-dependent function, but return type `{tgt}` depends on the
            bound variable (`{x}` : `{base}`).\n\
            Hint: applying the `T%` elaborator twice makes no sense."
        let trivBundle ← mkAppOptM ``Bundle.Trivial #[base, tgt]
        let body ← mkAppOptM ``Bundle.TotalSpace.mk' #[base, trivBundle, tgt, x, (e.app x).headBeta]
        mkLambdaFVars #[x] body
  | _ => return e.headBeta

end Elab

open Elab in
/--
Elaborator for sections in a fibre bundle: converts a section `s : Π x : M, V x` as a dependent
function to a non-dependent function into the total space. This handles the cases of
- sections of a trivial bundle
- vector fields on a manifold (i.e., sections of the tangent bundle)
- sections of an explicit fibre bundle
- turning a bare function `E → E'` into a section of the trivial bundle `Bundle.Trivial E E'`

This elaborator searches the local context for suitable hypotheses for the above cases by matching
on the expression structure, avoiding `isDefEq`. Therefore, it should be fast enough to always run.
The search can be traced with `set_option Elab.DiffGeo.TotalSpaceMk true`.
-/
scoped elab:max "T% " t:term:arg : term => do
  totalSpaceMk (← Term.elabTerm t none)

namespace Elab

/-- Check if an expression `e` is a `ContinuousLinearMap` over an identity ring homomorphism where
the coefficient rings of the domain and codomain are reducibly definitionally equal. If so, we
return `(k, E, F)`, where `k` is the coefficient ring, `E` is the domain, and `F` is the codomain
of the continuous linear maps. Otherwise, we error.
Assumes that `e` is already in `whnf` and has had metavariables instantiated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Notation/Variant3f73b4d6e098bdbab48f6155b4d3cbeb2b7249b03cc1b62682c6ef3249daa772.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Notation/Variant3f73b4d6e098bdbab48f6155b4d3cbeb2b7249b03cc1b62682c6ef3249daa772.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82bafcdb5b5220b506995e1568afb2cfeb7853c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
