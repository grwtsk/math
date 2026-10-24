# ContinuousAdmittedGraphRefinement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc648cf576595ba4bd40d0ec4ae730b846423f422c07c2a586114eb2e70c69bf",
  "kind": "structure",
  "lexical_name": "ContinuousAdmittedGraphRefinement",
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
  "slug": "continuousadmittedgraphrefinement--5d553a1fde518e6908cd885d",
  "source": {
    "blob": "078381dae255ddfeac58e5df88f6224fff89ad1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicalRefinement/Variant16efe2a543cf033d299fbca8f44d57dcc401bda0a3f3a7f2b1f5fa214f805f0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d553a1fde518e6908cd885d02052d93eeb06b87d90e3e6dde1941e897ba7b60",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologicalRefinement/Variant16efe2a543cf033d299fbca8f44d57dcc401bda0a3f3a7f2b1f5fa214f805f0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc648cf576595ba4bd40d0ec4ae730b846423f422c07c2a586114eb2e70c69bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ContinuousAdmittedGraphRefinement
    (Stage : Type uStage) (I : ClosedInterval.{uInterval}) where
  VertexAt : Stage → Type uPoint
  SourceEdgeAt : Stage → Type uPoint
  MorphAt : Stage → Type uPoint
  FactorizationAt : Stage → Type uPoint
  sourceGraphAt :
    ∀ s, DirectedGraph (VertexAt s) (SourceEdgeAt s)
  sieveAt :
    ∀ s, FactoringSieve (MorphAt s) (FactorizationAt s)
  occursAt :
    ∀ s, SourceEdgeAt s → FactorizationAt s → Prop
  refines : Stage → Stage → Prop
  restrict :
    ∀ next prev,
      GraphPoint
          (AdmittedGraph (sourceGraphAt next) (sieveAt next) (occursAt next)) I →
        GraphPoint
          (AdmittedGraph (sourceGraphAt prev) (sieveAt prev) (occursAt prev)) I
  refines_refl : ∀ s, refines s s
  refines_trans :
    ∀ {later middle earlier},
      refines later middle → refines middle earlier →
        refines later earlier
  restrictContinuous :
    ∀ {next prev}, refines next prev →
      Continuous
        (graphRealizationTopology
          (AdmittedGraph
            (sourceGraphAt next) (sieveAt next) (occursAt next)) I)
        (graphRealizationTopology
          (AdmittedGraph
            (sourceGraphAt prev) (sieveAt prev) (occursAt prev)) I)
        (restrict next prev)
  restrict_identity : ∀ s x, restrict s s x = x
  restrict_composition :
    ∀ {later middle earlier}
      (_hlm : refines later middle)
      (_hme : refines middle earlier)
      (x : GraphPoint
        (AdmittedGraph
          (sourceGraphAt later) (sieveAt later) (occursAt later)) I),
      restrict middle earlier (restrict later middle x) =
        restrict later earlier x

/-- Retain the quotient-graph view while forgetting the stage sieve data. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicalRefinement/Variant16efe2a543cf033d299fbca8f44d57dcc401bda0a3f3a7f2b1f5fa214f805f0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicalRefinement/Variant16efe2a543cf033d299fbca8f44d57dcc401bda0a3f3a7f2b1f5fa214f805f0b.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `078381dae255ddfeac58e5df88f6224fff89ad1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
