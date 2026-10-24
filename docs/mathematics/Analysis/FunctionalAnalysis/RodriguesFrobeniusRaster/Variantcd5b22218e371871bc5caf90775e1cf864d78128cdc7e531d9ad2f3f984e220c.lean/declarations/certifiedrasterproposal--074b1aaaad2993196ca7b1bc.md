# CertifiedRasterProposal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:897bc30da24f4045664c96ce7ec031933e2a72bc6e6c318ef528c7ada9276722",
  "kind": "structure",
  "lexical_name": "CertifiedRasterProposal",
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
  "slug": "certifiedrasterproposal--074b1aaaad2993196ca7b1bc",
  "source": {
    "blob": "c1c601d4ec43952848990c6d4cdf866c529e9f9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 253,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobeniusRaster/Variantcd5b22218e371871bc5caf90775e1cf864d78128cdc7e531d9ad2f3f984e220c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:074b1aaaad2993196ca7b1bc04e5f1a6ad06ab7227002286f738a5f4d76a46c4",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/RodriguesFrobeniusRaster/Variantcd5b22218e371871bc5caf90775e1cf864d78128cdc7e531d9ad2f3f984e220c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:897bc30da24f4045664c96ce7ec031933e2a72bc6e6c318ef528c7ada9276722`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CertifiedRasterProposal
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
    (frozen : FrozenAssignment Variable) where
  externalInputs : FrozenExternalInputs
  current : RasterState Cell Event
  event : ConditionalEvent Cell Event
  validatedModel : ValidatedSatModel cnf frozen
  receipt : SatReceipt
  receipt_is_sat : receipt.status = .sat
  event_snapshot_bound :
    event.snapshotDigest = source.snapshot.creationDigest
  receipt_snapshot_bound :
    receipt.snapshotDigest = source.snapshot.creationDigest
  receipt_formula_bound :
    receipt.formulaDigest = cnf.formulaDigest
  next : RasterState Cell Event
  next_is_exact_toggle :
    next = applyToggle event current
  proposalObject : ObjectAddress

/-- The compiled raster object has no accepted-state constructor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/RodriguesFrobeniusRaster/Variantcd5b22218e371871bc5caf90775e1cf864d78128cdc7e531d9ad2f3f984e220c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobeniusRaster/Variantcd5b22218e371871bc5caf90775e1cf864d78128cdc7e531d9ad2f3f984e220c.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1c601d4ec43952848990c6d4cdf866c529e9f9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
