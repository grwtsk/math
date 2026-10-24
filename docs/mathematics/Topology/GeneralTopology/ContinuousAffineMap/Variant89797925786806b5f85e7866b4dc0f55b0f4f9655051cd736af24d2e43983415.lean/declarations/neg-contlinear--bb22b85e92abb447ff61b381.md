# neg_contLinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:019576cb-014f-bd80-cd4b-4a3910f4ec2d",
  "kind": "theorem",
  "lexical_name": "neg_contLinear",
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
  "slug": "neg-contlinear--bb22b85e92abb447ff61b381",
  "source": {
    "blob": "b14b919442f42cd4d7102a58ce825de64adc39e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 346,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousAffineMap/Variant89797925786806b5f85e7866b4dc0f55b0f4f9655051cd736af24d2e43983415.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb22b85e92abb447ff61b381888d13ceab77e50e7e6f352d910e39480161784f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousAffineMap/Variant89797925786806b5f85e7866b4dc0f55b0f4f9655051cd736af24d2e43983415.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:019576cb-014f-bd80-cd4b-4a3910f4ec2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neg_contLinear (f : P →ᴬ[R] W) : (-f).contLinear = -f.contLinear :=
  rfl

end ModuleValuedMaps

section

variable [TopologicalSpace W] [IsTopologicalAddGroup W] [IsTopologicalAddTorsor Q]

/-- The space of continuous affine maps from `P` to `Q` is an affine space over the space of
continuous affine maps from `P` to `W`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousAffineMap/Variant89797925786806b5f85e7866b4dc0f55b0f4f9655051cd736af24d2e43983415.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousAffineMap/Variant89797925786806b5f85e7866b4dc0f55b0f4f9655051cd736af24d2e43983415.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b14b919442f42cd4d7102a58ce825de64adc39e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
