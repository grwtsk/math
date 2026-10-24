# _root_.GRWTSK.Topology.MetricTopology.DilationEquivClass.Variant98b48aa699a9e81bcc25e3626e991aef4db77e158793e4c7ef4834a636df2f01.IsometryEquiv.toDilationEquiv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9440bcd-e50e-598d-f23b-a40a5ae65f3e",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.MetricTopology.DilationEquivClass.Variant98b48aa699a9e81bcc25e3626e991aef4db77e158793e4c7ef4834a636df2f01.IsometryEquiv.toDilationEquiv_apply",
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
  "slug": "root-grwtsk-topology-metrictopology-dilationequivclass-variant98b48aa699--78e8e86aeca55e7f0fbdda78",
  "source": {
    "blob": "6cc6898ba891774e9456958f17b2738240b7cbf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 206,
    "path": "GRWTSK/Topology/MetricTopology/DilationEquiv/Variantc1b8e7b0002f48df52df13915bb9ae3e1c7b75dea94b30daae1726ff09020c4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78e8e86aeca55e7f0fbdda78f1b790d055944987476175ca3577e3150a539749",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/DilationEquiv/Variantc1b8e7b0002f48df52df13915bb9ae3e1c7b75dea94b30daae1726ff09020c4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9440bcd-e50e-598d-f23b-a40a5ae65f3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.MetricTopology.DilationEquivClass.Variant98b48aa699a9e81bcc25e3626e991aef4db77e158793e4c7ef4834a636df2f01.IsometryEquiv.toDilationEquiv_apply (e : X ≃ᵢ Y) (x : X) :
    e.toDilationEquiv x = e x :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/DilationEquiv/Variantc1b8e7b0002f48df52df13915bb9ae3e1c7b75dea94b30daae1726ff09020c4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/DilationEquiv/Variantc1b8e7b0002f48df52df13915bb9ae3e1c7b75dea94b30daae1726ff09020c4b.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cc6898ba891774e9456958f17b2738240b7cbf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
