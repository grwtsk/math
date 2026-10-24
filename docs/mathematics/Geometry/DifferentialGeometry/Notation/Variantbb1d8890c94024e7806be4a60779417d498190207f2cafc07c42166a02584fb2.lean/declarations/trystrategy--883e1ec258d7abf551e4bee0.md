# tryStrategy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:311ed8577ed335f0f02f7464b8b02204e4e8fd427b7ac0787b3fb4ae108927f5",
  "kind": "def",
  "lexical_name": "tryStrategy",
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
  "slug": "trystrategy--883e1ec258d7abf551e4bee0",
  "source": {
    "blob": "4c9ee8f837e8d1dd5b5df5fb821e953a42dcf6ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 318,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Notation/Variantbb1d8890c94024e7806be4a60779417d498190207f2cafc07c42166a02584fb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:883e1ec258d7abf551e4bee06bbe2ea783257907ad95a9d24a98607ac729865e",
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

Occurrence: `declaration:311ed8577ed335f0f02f7464b8b02204e4e8fd427b7ac0787b3fb4ae108927f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def tryStrategy (strategyDescr : MessageData) (x : TermElabM FindModelResult) :
    TermElabM (Option FindModelResult) := do
  let s ← saveState
  try
    withTraceNode `Elab.DiffGeo.MDiff (fun _ => pure m!"{strategyDescr}") do
      let e ←
        try
          Term.withoutErrToSorry <| Term.withSynthesize x
        /- Catch the exception so that we can trace it, then throw it again to inform
        `withTraceNode` of the result. -/
        catch ex =>
          trace[Elab.DiffGeo.MDiff] "Failed with error:\n{ex.toMessageData}"
          throw ex
      trace[Elab.DiffGeo.MDiff] "Found model: `{e.model}`"
      if let some { normedSpace, baseField } := e.normedSpaceInfo? then
        trace[Elab.DiffGeo.MDiff] "This is the trivial model with corners for the normed space \
          `{normedSpace}` over the base field `{baseField}`."
      return e
  catch _ =>
    -- Restore infotrees to prevent any stale hovers, code actions, etc.
    -- Note that this does not break tracing, which saves each trace message's context.
    s.restore true
    return none

/-- Given an `Expr`ession `e`, try to find a `NormedSpace` instance on `e` and return the
underlying base field. Search local instances, before recursing into product and bundled
continuous linear maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Notation/Variantbb1d8890c94024e7806be4a60779417d498190207f2cafc07c42166a02584fb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Notation/Variantbb1d8890c94024e7806be4a60779417d498190207f2cafc07c42166a02584fb2.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c9ee8f837e8d1dd5b5df5fb821e953a42dcf6ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
