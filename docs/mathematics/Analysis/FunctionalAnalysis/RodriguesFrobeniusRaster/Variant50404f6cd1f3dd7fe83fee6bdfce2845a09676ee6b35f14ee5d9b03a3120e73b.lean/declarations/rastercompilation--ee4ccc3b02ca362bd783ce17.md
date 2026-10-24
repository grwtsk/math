# RasterCompilation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1585d52b37430779fc2ca982c574a43f9718662206a3e70bd59796ff4da7f6c",
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
  "slug": "rastercompilation--ee4ccc3b02ca362bd783ce17",
  "source": {
    "blob": "0b38aa5dda151dc54e3a75cec2e9b069aef90a96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 291,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobeniusRaster/Variant50404f6cd1f3dd7fe83fee6bdfce2845a09676ee6b35f14ee5d9b03a3120e73b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee4ccc3b02ca362bd783ce172fc9771ab1337dd051992217add1411b88d46de9",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/RodriguesFrobeniusRaster/Variant50404f6cd1f3dd7fe83fee6bdfce2845a09676ee6b35f14ee5d9b03a3120e73b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1585d52b37430779fc2ca982c574a43f9718662206a3e70bd59796ff4da7f6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–313.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/RodriguesFrobeniusRaster/Variant50404f6cd1f3dd7fe83fee6bdfce2845a09676ee6b35f14ee5d9b03a3120e73b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobeniusRaster/Variant50404f6cd1f3dd7fe83fee6bdfce2845a09676ee6b35f14ee5d9b03a3120e73b.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b38aa5dda151dc54e3a75cec2e9b069aef90a96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
