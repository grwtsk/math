# findModels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6306d604bcea3d9bb95a67e6a39092af0c63407c10ce1414fd1990656c072b3",
  "kind": "def",
  "lexical_name": "findModels",
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
  "slug": "findmodels--d700e1ad05aa995e6b4985b7",
  "source": {
    "blob": "4c9ee8f837e8d1dd5b5df5fb821e953a42dcf6ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1039,
    "line": 821,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Notation/Variantbb1d8890c94024e7806be4a60779417d498190207f2cafc07c42166a02584fb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d700e1ad05aa995e6b4985b7dc6c835db7797bd976701b07908b6768928e8610",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Notation/Variantbb1d8890c94024e7806be4a60779417d498190207f2cafc07c42166a02584fb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6306d604bcea3d9bb95a67e6a39092af0c63407c10ce1414fd1990656c072b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 821–1039.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findModels (e : Expr) (es : Option Expr) : TermElabM (Expr × Expr) := do
  let etype ← whnf <| ← instantiateMVars <| ← inferType e
  match etype with
  | .forallE _ src tgt _ =>
    if tgt.hasLooseBVars then
      -- TODO: try `T%` here, and if it works, add an interactive suggestion to use it
      throwError "Term `{e}` is a dependent function, of type `{etype}`\nHint: you can use \
        the `T%` elaborator to convert a dependent function to a non-dependent one"
    let srcI ← findModel src
    if let some es := es then
      let estype ← inferType es
      /- Note: we use `isDefEq` here since persistent metavariable assignments in `src` and
      `estype` are acceptable.
      TODO: consider attempting to coerce `es` to a `Set`. -/
      if !(← isDefEq estype <| ← mkAppM ``Set #[src]) then
        throwError "The domain `{src}` of `{e}` is not definitionally equal to the carrier type of \
          the set `{es}` : `{estype}`"
    let tgtI ← findModel tgt
    return (srcI, tgtI)
  | _ => throwError "Expected{indentD e}\nof type{indentD etype}\nto be a function"

end Elab

open Elab

/-- `MDiffAt[s] f x` elaborates to `MDifferentiableWithinAt I J f s x`,
trying to determine `I` and `J` from the local context.
The argument `x` can be omitted. -/
scoped elab:max "MDiffAt[" s:term "]" ppSpace f:term:arg : term => do
  let es ← Term.elabTerm s none
  let ef ← ensureIsFunction <| ← Term.elabTerm f none
  let (srcI, tgtI) ← findModels ef es
  mkAppM ``MDifferentiableWithinAt #[srcI, tgtI, ef, es]

/-- `MDiffAt f x` elaborates to `MDifferentiableAt I J f x`,
trying to determine `I` and `J` from the local context.
The argument `x` can be omitted. -/
scoped elab:max "MDiffAt" ppSpace t:term:arg : term => do
  let e ← ensureIsFunction <| ← Term.elabTerm t none
  let (srcI, tgtI) ← findModels e none
  mkAppM ``MDifferentiableAt #[srcI, tgtI, e]

-- An alternate implementation for `MDiffAt`.
-- /-- `MDiffAt2 f x` elaborates to `MDifferentiableAt I J f x`,
-- trying to determine `I` and `J` from the local context.
-- The argument `x` can be omitted. -/
-- scoped elab:max "MDiffAt2" ppSpace t:term:arg : term => do
--   let e ← Term.elabTerm t none
--   let etype ← whnfR <| ← instantiateMVars <| ← inferType e
--   forallBoundedTelescope etype (some 1) fun src tgt ↦ do
--     if let some src := src[0]? then
--       let srcI ← findModel (← inferType src)
--       if Lean.Expr.occurs src tgt then
--         throwErrorAt t "Term `{e}` is a dependent function, of type `{etype}`\n\
--         Hint: you can use the `T%` elaborator to convert a dependent function \
--         to a non-dependent one"
--       let tgtI ← findModel tgt (src, srcI)
--       mkAppM ``MDifferentiableAt #[srcI, tgtI, e]
--     else
--       throwErrorAt t "Expected{indentD e}\nof type{indentD etype}\nto be a function"

/-- `MDiff[s] f` elaborates to `MDifferentiableOn I J f s`,
trying to determine `I` and `J` from the local context. -/
scoped elab:max "MDiff[" s:term "]" ppSpace t:term:arg : term => do
  let es ← Term.elabTerm s none
  let et ← ensureIsFunction <| ← Term.elabTerm t none
  let (srcI, tgtI) ← findModels et es
  mkAppM ``MDifferentiableOn #[srcI, tgtI, et, es]

/-- `MDiff f` elaborates to `MDifferentiable I J f`,
trying to determine `I` and `J` from the local context. -/
scoped elab:max "MDiff" ppSpace t:term:arg : term => do
  let e ← ensureIsFunction <| ← Term.elabTerm t none
  let (srcI, tgtI) ← findModels e none
  mkAppM ``MDifferentiable #[srcI, tgtI, e]

-- We ensure the type of `n` before checking `f` is a function to provide better error messages
-- in case e.g. `f` and `n` are swapped.
-- TODO: provide better error messages if just `n` is forgotten (say, by making `n` optional in
-- the parser and erroring later in the elaborator); currently, this yields just a parser error.

/-- `CMDiffAt[s] n f x` elaborates to `ContMDiffWithinAt I J n f s x`,
trying to determine `I` and `J` from the local context.
`n` is coerced to `WithTop ℕ∞` if necessary (so passing a `ℕ`, `∞` or `ω` are all supported).
The argument `x` can be omitted. -/
scoped elab:max "CMDiffAt[" s:term "]" ppSpace nt:term:arg ppSpace f:term:arg : term => do
  let es ← Term.elabTerm s none
  let ne ← Term.elabTermEnsuringType nt q(WithTop ℕ∞)
  let ef ← ensureIsFunction <| ← Term.elabTerm f none
  let (srcI, tgtI) ← findModels ef es
  mkAppM ``ContMDiffWithinAt #[srcI, tgtI, ne, ef, es]

/-- `CMDiffAt n f x` elaborates to `ContMDiffAt I J n f x`
trying to determine `I` and `J` from the local context.
`n` is coerced to `WithTop ℕ∞` if necessary (so passing a `ℕ`, `∞` or `ω` are all supported).
The argument `x` can be omitted. -/
scoped elab:max "CMDiffAt" ppSpace nt:term:arg ppSpace t:term:arg : term => do
  let e ← ensureIsFunction <| ← Term.elabTerm t none
  let ne ← Term.elabTermEnsuringType nt q(WithTop ℕ∞)
  let (srcI, tgtI) ← findModels e none
  mkAppM ``ContMDiffAt #[srcI, tgtI, ne, e]

/-- `CMDiff[s] n f` elaborates to `ContMDiffOn I J n f s`,
trying to determine `I` and `J` from the local context.
`n` is coerced to `WithTop ℕ∞` if necessary (so passing a `ℕ`, `∞` or `ω` are all supported). -/
scoped elab:max "CMDiff[" s:term "]" ppSpace nt:term:arg ppSpace f:term:arg : term => do
  let es ← Term.elabTerm s none
  let ne ← Term.elabTermEnsuringType nt q(WithTop ℕ∞)
  let ef ← ensureIsFunction <| ← Term.elabTerm f none
  let (srcI, tgtI) ← findModels ef es
  mkAppM ``ContMDiffOn #[srcI, tgtI, ne, ef, es]

/-- `CMDiff n f` elaborates to `ContMDiff I J n f`,
trying to determine `I` and `J` from the local context.
`n` is coerced to `WithTop ℕ∞` if necessary (so passing a `ℕ`, `∞` or `ω` are all supported). -/
scoped elab:max "CMDiff" ppSpace nt:term:arg ppSpace f:term:arg : term => do
  let ne ← Term.elabTermEnsuringType nt q(WithTop ℕ∞)
  let e ← ensureIsFunction <| ← Term.elabTerm f none
  let (srcI, tgtI) ← findModels e none
  mkAppM ``ContMDiff #[srcI, tgtI, ne, e]

/-- `mfderiv[u] f x` elaborates to `mfderivWithin I J f u x`,
trying to determine `I` and `J` from the local context. -/
scoped elab:max "mfderiv[" s:term "]" ppSpace t:term:arg : term => do
  let es ← Term.elabTerm s none
  let e ← ensureIsFunction <| ← Term.elabTerm t none
  let (srcI, tgtI) ← findModels e es
  mkAppM ``mfderivWithin #[srcI, tgtI, e, es]

/-- `mfderiv% f x` elaborates to `mfderiv I J f x`,
trying to determine `I` and `J` from the local context. -/
scoped elab:max "mfderiv%" ppSpace t:term:arg : term => do
  let e ← ensureIsFunction <| ← Term.elabTerm t none
  let (srcI, tgtI) ← findModels e none
  mkAppM ``mfderiv #[srcI, tgtI, e]

/-- `HasMFDerivAt[s] f x f'` elaborates to `HasMFDerivWithinAt I J f s x f'`,
trying to determine `I` and `J` from the local context. -/
scoped elab:max "HasMFDerivAt[" s:term "]" ppSpace
    f:term:arg ppSpace x:term:arg ppSpace f':term:arg : term => do
  let es ← Term.elabTerm s none
  let ef ← ensureIsFunction <|← Term.elabTerm f none
  let ex ← Term.elabTerm x none
  let ef' ← Term.elabTerm f' none
  let (srcI, tgtI) ← findModels ef es
  mkAppM ``HasMFDerivWithinAt #[srcI, tgtI, ef, es, ex, ef']

/-- `HasMFDerivAt% f x f'` elaborates to `HasMFDerivAt I J f x f'`,
trying to determine `I` and `J` from the local context. -/
scoped elab:max "HasMFDerivAt%" ppSpace
    f:term:arg ppSpace x:term:arg ppSpace f':term:arg : term => do
  let ef ← ensureIsFunction <|← Term.elabTerm f none
  let ex ← Term.elabTerm x none
  let ef' ← Term.elabTerm f' none
  let (srcI, tgtI) ← findModels ef none
  mkAppM ``HasMFDerivAt #[srcI, tgtI, ef, ex, ef']

/-- `TangentSpace% x` elaborates to `TangentSpace I x`,
trying to determine `I` from the local context. -/
scoped elab:max "TangentSpace%" ppSpace x:term:arg : term => do
  let ex ← Term.elabTerm x none
  let extype ← instantiateMVars <| ← inferType ex
  let src ← findModel extype
  mkAppM ``TangentSpace #[src, ex]

/-- `tangentMap[s] f` elaborates to `tangentMapWithin I J f s`,
trying to determine `I` and `J` from the local context. -/
scoped elab:max "tangentMap[" s:term "]" ppSpace f:term:arg : term => do
  let es ← Term.elabTerm s none
  let ef ← ensureIsFunction <|← Term.elabTerm f none
  let (srcI, tgtI) ← findModels ef none
  mkAppM ``tangentMapWithin #[srcI, tgtI, ef, es]

/-- `tangentMap% f` elaborates to `tangentMap I J f`,
trying to determine `I` and `J` from the local context. -/
scoped elab:max "tangentMap%" ppSpace f:term:arg : term => do
  let ef ← ensureIsFunction <|← Term.elabTerm f none
  let (srcI, tgtI) ← findModels ef none
  mkAppM ``tangentMap #[srcI, tgtI, ef]

/-- `UniqueMDiff[s]` elaborates to `UniqueMDiffOn I s`,
trying to determine `I` from the local context. -/
scoped elab:max "UniqueMDiff[" s:term "]" : term => do
  let es ← Term.elabTerm s none
  let estype : Expr ← inferType es
  match_expr estype with
  | Set α =>
    let I ← findModel α
    mkAppM ``UniqueMDiffOn #[I, es]
  | _ => throwError "`{es}` has type `{estype}` which is not of the form `Set α` for some `α`."

/-- `UniqueMDiffAt[s] x` elaborates to `UniqueMDiffWithinAt I s x`
trying to determine `I` from the local context.
The argument `x` can be omitted. -/
scoped elab:max "UniqueMDiffAt[" s:term "]" : term => do
  let es ← Term.elabTerm s none
  let estype : Expr ← inferType es
  match_expr estype with
  | Set α =>
    let I ← findModel α
    mkAppM ``UniqueMDiffWithinAt #[I, es]
  | _ => throwError "`{es}` has type `{estype}` which is not of the form `Set α` for some `α`."

end Manifold

section trace

/-!
### Trace classes

Note that the overall `Elab` trace class does not inherit the trace classes defined in this
section, since they provide verbose information.
-/

/--
Trace class for differential geometry elaborators. Setting this to `true` traces elaboration
for the `T%` elaborator (`trace.Elab.DiffGeo.TotalSpaceMk`) and the family of `MDiff`-like
elaborators (`trace.Elab.DiffGeo.MDiff`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Notation/Variantbb1d8890c94024e7806be4a60779417d498190207f2cafc07c42166a02584fb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Notation/Variantbb1d8890c94024e7806be4a60779417d498190207f2cafc07c42166a02584fb2.lean#L821).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c9ee8f837e8d1dd5b5df5fb821e953a42dcf6ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
