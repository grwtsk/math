# image_closure_of_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa5dbb37-5cd3-ed8b-7055-43141ffaec6a",
  "kind": "theorem",
  "lexical_name": "image_closure_of_isCompact",
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
  "slug": "image-closure-of-iscompact--d538539f6504607fe1927a7e",
  "source": {
    "blob": "f13a2e98c2ccf28f2041334ec8a494d43440ba81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 629,
    "line": 623,
    "path": "GRWTSK/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d538539f6504607fe1927a7ee394f07beff499d54abe4be92e40200b8fdcfb9c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa5dbb37-5cd3-ed8b-7055-43141ffaec6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–629.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_closure_of_isCompact [T2Space Y] {s : Set X} (hs : IsCompact (closure s)) {f : X → Y}
    (hf : ContinuousOn f (closure s)) : f '' closure s = closure (f '' s) :=
  Subset.antisymm hf.image_closure <|
    closure_minimal (image_subset f subset_closure) (hs.image_of_continuousOn hf).isClosed

/-- Two continuous maps into a Hausdorff space agree at a point iff they agree in a
neighborhood. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hausdorff/Variant947f72a5a7a0611c7470a2f4d9ba3a4ce22fc314a462128e115bc444b33c97f2.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f13a2e98c2ccf28f2041334ec8a494d43440ba81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
