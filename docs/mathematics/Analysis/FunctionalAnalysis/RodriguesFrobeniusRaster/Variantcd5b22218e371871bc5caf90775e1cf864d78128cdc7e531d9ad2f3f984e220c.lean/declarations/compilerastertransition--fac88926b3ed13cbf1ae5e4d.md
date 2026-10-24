# compileRasterTransition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cda2b1d68126657c6d3d89005f966a85e8203c0b6999cc1bc667cc5607d1c815",
  "kind": "def",
  "lexical_name": "compileRasterTransition",
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
  "slug": "compilerastertransition--fac88926b3ed13cbf1ae5e4d",
  "source": {
    "blob": "c1c601d4ec43952848990c6d4cdf866c529e9f9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 306,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobeniusRaster/Variantcd5b22218e371871bc5caf90775e1cf864d78128cdc7e531d9ad2f3f984e220c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fac88926b3ed13cbf1ae5e4d9b02dc70815d7065caa2cbda1582e0e2a23c8604",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/RodriguesFrobeniusRaster/Variantcd5b22218e371871bc5caf90775e1cf864d78128cdc7e531d9ad2f3f984e220c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cda2b1d68126657c6d3d89005f966a85e8203c0b6999cc1bc667cc5607d1c815`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compileRasterTransition
    {site : CertifiedSite}
    {tensor : TensorSheaf site}
    {object : site.Object}
    {Cell : Type u}
    {Event : Type v}
    {Variable : Type w}
    [DecidableEq Cell]
    [DecidableEq Event]
    (source : ExactStateSection tensor object)
    (cnf : CanonicalCNF Variable)
    (frozen : FrozenAssignment Variable)
    (externalInputs : FrozenExternalInputs)
    (current : RasterState Cell Event)
    (event : ConditionalEvent Cell Event)
    (event_snapshot_bound :
      event.snapshotDigest = source.snapshot.creationDigest)
    (proposalObject : ObjectAddress)
    (result : SatResult cnf frozen) :
    RasterCompilation
      (Cell := Cell) (Event := Event)
      source cnf frozen :=
  match result with
  | .sat model receipt statusBound =>
      if receiptSnapshot :
          receipt.snapshotDigest = source.snapshot.creationDigest then
        if receiptFormula :
            receipt.formulaDigest = cnf.formulaDigest then
          .proposed {
            externalInputs := externalInputs
            current := current
            event := event
            validatedModel := model
            receipt := receipt
            receipt_is_sat := statusBound
            event_snapshot_bound := event_snapshot_bound
            receipt_snapshot_bound := receiptSnapshot
            receipt_formula_bound := receiptFormula
            next := applyToggle event current
            next_is_exact_toggle := rfl
            proposalObject := proposalObject
          }
        else
          .preserved current receipt
      else
        .preserved current receipt
  | .unsat _ receipt _ =>
      .preserved current receipt
  | .unknown receipt _ =>
      .preserved current receipt
  | .stale receipt _ =>
      .preserved current receipt

/-- Frozen external inputs are carried unchanged into a proposal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/RodriguesFrobeniusRaster/Variantcd5b22218e371871bc5caf90775e1cf864d78128cdc7e531d9ad2f3f984e220c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobeniusRaster/Variantcd5b22218e371871bc5caf90775e1cf864d78128cdc7e531d9ad2f3f984e220c.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1c601d4ec43952848990c6d4cdf866c529e9f9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
