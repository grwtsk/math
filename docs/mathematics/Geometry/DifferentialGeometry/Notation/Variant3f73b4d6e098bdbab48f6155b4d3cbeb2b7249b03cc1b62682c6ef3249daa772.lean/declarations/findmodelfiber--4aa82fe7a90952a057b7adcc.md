# findModelFiber?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:359edeabf0852199ea42a32f15a30f1d0954044064fd276b5f235c903b932269",
  "kind": "def",
  "lexical_name": "findModelFiber?",
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
  "slug": "findmodelfiber--4aa82fe7a90952a057b7adcc",
  "source": {
    "blob": "82bafcdb5b5220b506995e1568afb2cfeb7853c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 135,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Notation/Variant3f73b4d6e098bdbab48f6155b4d3cbeb2b7249b03cc1b62682c6ef3249daa772.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4aa82fe7a90952a057b7adcc3f31c2a5a2d4e339652793488c0452c428a3c9f6",
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

Occurrence: `declaration:359edeabf0852199ea42a32f15a30f1d0954044064fd276b5f235c903b932269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def findModelFiber? (V : Expr) : MetaM (Option Expr) := do
  withTraceNode `Elab.DiffGeo.TotalSpaceMk
    (fun _ ↦ do return m!"Searching for a model fiber for {← ppExpr V}") do
  trace[Elab.DiffGeo.TotalSpaceMk] "Searching for relevant `FiberBundle` instance in context"
  let f? ← findSomeLocalInstanceOf? `FiberBundle fun _ declType ↦ do
    /- Note: we do not use `match_expr` here since that would require importing
    `Mathlib.Topology.FiberBundle.Basic` to resolve `FiberBundle`. -/
    match declType with
    | mkApp7 (.const `FiberBundle _) _ F _ _ E _ _ => do
      if ← withReducible (pureIsDefEq E V) then
        trace[Elab.DiffGeo.TotalSpaceMk] "found `FiberBundle` instance for model fiber {← ppExpr F}"
        return some F
      else return none
    | _ => return none
  if f?.isSome then
    return f?
  else
    trace[Elab.DiffGeo.TotalSpaceMk] "Could not find a relevant `FiberBundle` instance in context"
    trace[Elab.DiffGeo.TotalSpaceMk] "Searching for a relevant \
      `TopologicalSpace (Bundle.TotalSpace _ _)` instance in context"
    return ← findSomeLocalInstanceOf? `TopologicalSpace fun _ declType ↦ do
      match declType with
      | mkApp (.const `TopologicalSpace _) (mkApp3 (.const `Bundle.TotalSpace _) _ F E) => do
        if ← withReducible (pureIsDefEq E V) then
          trace[Elab.DiffGeo.TotalSpaceMk] "It worked! model fiber is {← ppExpr F}"
          return some F
        else return none
      | _ => return none
/--
Utility for sections in a fibre bundle: if an expression `e` is a section
`s : Π x : M, V x` as a dependent function, convert it to a non-dependent function into the total
space. This handles the cases of
- sections of a trivial bundle
- vector fields on a manifold (i.e., sections of the tangent bundle)
- sections of an explicit fibre bundle
- turning a bare function `E → E'` into a section of the trivial bundle `Bundle.Trivial E E'`

This searches the local context for suitable hypotheses for the above cases by matching
on the expression structure, avoiding `isDefEq`. Therefore, it should be fast enough to always run.
This process can be traced with `set_option Elab.DiffGeo.TotalSpaceMk true`.

All applications of `e` in the resulting expression are beta-reduced.
If none of the handled cases apply, we simply return `e` (after beta-reducing).

This function is used for implementing the `T%` elaborator.
-/
-- TODO: document how this elaborator works, any gotchas, etc.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Notation/Variant3f73b4d6e098bdbab48f6155b4d3cbeb2b7249b03cc1b62682c6ef3249daa772.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Notation/Variant3f73b4d6e098bdbab48f6155b4d3cbeb2b7249b03cc1b62682c6ef3249daa772.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82bafcdb5b5220b506995e1568afb2cfeb7853c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
