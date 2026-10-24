# ContinuousAdmittedGraphRefinement.asGraphRealizationRefinement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62babbfbe505e46c7ea7b2a49eb49fc50800cd27e4128bdc105274669ecbc221",
  "kind": "def",
  "lexical_name": "ContinuousAdmittedGraphRefinement.asGraphRealizationRefinement",
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
  "slug": "continuousadmittedgraphrefinement-asgraphrealizationrefinement--2198ec64ea445e7a0afdba5d",
  "source": {
    "blob": "ece33e776f9c0d0db9b99678314a6da885f890a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 135,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2198ec64ea445e7a0afdba5df98f4d8e5c628dc439c3fe1e5b1676a0c4782812",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62babbfbe505e46c7ea7b2a49eb49fc50800cd27e4128bdc105274669ecbc221`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContinuousAdmittedGraphRefinement.asGraphRealizationRefinement
    {Stage : Type uStage} {I : ClosedInterval.{uInterval}}
    (R : ContinuousAdmittedGraphRefinement.{uStage, uPoint, uInterval}
      Stage I) :
    ContinuousGraphRealizationRefinement.{uStage, uPoint, uInterval}
      Stage I where
  VertexAt := R.VertexAt
  EdgeAt s := AdmittedEdgeType (R.sieveAt s) (R.occursAt s)
  graphAt s :=
    AdmittedGraph (R.sourceGraphAt s) (R.sieveAt s) (R.occursAt s)
  refines := R.refines
  restrict := R.restrict
  refines_refl := R.refines_refl
  refines_trans := R.refines_trans
  restrictContinuous := R.restrictContinuous
  restrict_identity := R.restrict_identity
  restrict_composition := R.restrict_composition

/-- Forget the stage graph and sieve presentation, retaining only topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ece33e776f9c0d0db9b99678314a6da885f890a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
