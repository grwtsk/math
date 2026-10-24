# RasterCompilation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85ba685ed7f36fdaa5e99c6b906d976a3bc274862aa609ee7357ab6575224831",
  "kind": "inductive",
  "lexical_name": "RasterCompilation",
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
  "slug": "rastercompilation--2be66fcedcb5aae97a598814",
  "source": {
    "blob": "c1c601d4ec43952848990c6d4cdf866c529e9f9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 283,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobeniusRaster/Variantcd5b22218e371871bc5caf90775e1cf864d78128cdc7e531d9ad2f3f984e220c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2be66fcedcb5aae97a598814f7280e957feb6c054353029e1125b13a74b2ee19",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/RodriguesFrobeniusRaster/Variantcd5b22218e371871bc5caf90775e1cf864d78128cdc7e531d9ad2f3f984e220c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85ba685ed7f36fdaa5e99c6b906d976a3bc274862aa609ee7357ab6575224831`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive RasterCompilation
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
  | proposed
      (proposal :
        CertifiedRasterProposal
          (Cell := Cell) (Event := Event)
          source cnf frozen)
  | preserved (current : RasterState Cell Event) (receipt : SatReceipt)

/--
Compile a checked SAT result.  Every non-SAT class preserves the current
raster.  SAT still yields only a proposal.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/RodriguesFrobeniusRaster/Variantcd5b22218e371871bc5caf90775e1cf864d78128cdc7e531d9ad2f3f984e220c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobeniusRaster/Variantcd5b22218e371871bc5caf90775e1cf864d78128cdc7e531d9ad2f3f984e220c.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1c601d4ec43952848990c6d4cdf866c529e9f9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
