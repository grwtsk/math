# notConvergentSeq_measurableSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2f5622b-ca1f-0473-082e-e963e5d983f3",
  "kind": "theorem",
  "lexical_name": "notConvergentSeq_measurableSet",
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
  "slug": "notconvergentseq-measurableset--6bfd980c1fbfd42d82c7c229",
  "source": {
    "blob": "ead207adbc7bf1ed9ddddfb49353d0d93ea8e9df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bfd980c1fbfd42d82c7c229bdd43aada58034d7214e2fe4366f7e8dc3559a3c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2f5622b-ca1f-0473-082e-e963e5d983f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem notConvergentSeq_measurableSet [Preorder ι] [Countable ι]
    (hf : ∀ n, StronglyMeasurable[m] (f n)) (hg : StronglyMeasurable g) :
    MeasurableSet (notConvergentSeq f g n j) :=
  MeasurableSet.iUnion fun k =>
    MeasurableSet.iUnion fun _ =>
      StronglyMeasurable.measurableSet_lt stronglyMeasurable_const <| (hf k).dist hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ead207adbc7bf1ed9ddddfb49353d0d93ea8e9df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
