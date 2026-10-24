# _root_.GRWTSK.Topology.GeneralTopology.RootDirectedMeasureIUnion.Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.Antitone.measure_iInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08d67bd9-9ab7-f102-5af6-85d95982a31d",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.RootDirectedMeasureIUnion.Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.Antitone.measure_iInter",
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
  "slug": "root-grwtsk-topology-generaltopology-rootdirectedmeasureiunion-variant71--149e8dc9016bc551622434f2",
  "source": {
    "blob": "f7621ea0cbd1c55629c3137116a8b39e42899703",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 175,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:149e8dc9016bc551622434f25d603bbfd99173d774adf9cd3afd8d4d6be8ff39",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08d67bd9-9ab7-f102-5af6-85d95982a31d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.RootDirectedMeasureIUnion.Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.Antitone.measure_iInter [Preorder ι] [IsDirectedOrder ι]
    [(atTop : Filter ι).IsCountablyGenerated] (hs : Antitone s)
    (hsm : ∀ i, NullMeasurableSet (s i) μ) (hfin : ∃ i, μ (s i) ≠ ∞) :
    μ (⋂ i, s i) = ⨅ i, μ (s i) :=
  hs.dual_left.measure_iInter hsm hfin

/-- Continuity from above (a.e. version):
the measure of the intersection of a family of sets that is almost everywhere antitone
is equal to the infimum of the measures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7621ea0cbd1c55629c3137116a8b39e42899703` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
