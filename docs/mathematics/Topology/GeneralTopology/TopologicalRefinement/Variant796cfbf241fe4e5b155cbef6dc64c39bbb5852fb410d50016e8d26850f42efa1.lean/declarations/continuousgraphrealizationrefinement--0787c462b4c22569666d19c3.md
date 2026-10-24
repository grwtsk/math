# ContinuousGraphRealizationRefinement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9112ff46faf4e417011d3784944b09ff81cd4584488083f2f7b54cc7a6c7fac7",
  "kind": "structure",
  "lexical_name": "ContinuousGraphRealizationRefinement",
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
  "slug": "continuousgraphrealizationrefinement--0787c462b4c22569666d19c3",
  "source": {
    "blob": "ece33e776f9c0d0db9b99678314a6da885f890a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0787c462b4c22569666d19c33c6acb3fa0425aa559f9eb8d8dec5cf7f0a053f0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9112ff46faf4e417011d3784944b09ff81cd4584488083f2f7b54cc7a6c7fac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ContinuousGraphRealizationRefinement
    (Stage : Type uStage) (I : ClosedInterval.{uInterval}) where
  VertexAt : Stage → Type uPoint
  EdgeAt : Stage → Type uPoint
  graphAt : ∀ s, DirectedGraph (VertexAt s) (EdgeAt s)
  refines : Stage → Stage → Prop
  restrict :
    ∀ next prev,
      GraphPoint (graphAt next) I → GraphPoint (graphAt prev) I
  refines_refl : ∀ s, refines s s
  refines_trans :
    ∀ {later middle earlier},
      refines later middle → refines middle earlier →
        refines later earlier
  restrictContinuous :
    ∀ {next prev}, refines next prev →
      Continuous
        (graphRealizationTopology (graphAt next) I)
        (graphRealizationTopology (graphAt prev) I)
        (restrict next prev)
  restrict_identity : ∀ s x, restrict s s x = x
  restrict_composition :
    ∀ {later middle earlier}
      (_hlm : refines later middle)
      (_hme : refines middle earlier)
      (x : GraphPoint (graphAt later) I),
      restrict middle earlier (restrict later middle x) =
        restrict later earlier x

/--
A refinement system whose stage graph is constructed, at every stage, from
that stage's factoring sieve and occurrence relation.  Thus the displayed
restriction maps have the literal types
`|AdmittedGraph G_next sieve_next occurs_next| →
 |AdmittedGraph G_prev sieve_prev occurs_prev|`.

The maps and their laws remain supplied research data; this structure does
not manufacture them from a graph map or from sieve transport.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ece33e776f9c0d0db9b99678314a6da885f890a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
