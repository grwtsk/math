# StrictMonoOn.continuousAt_of_closure_image_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b0b99b3-729d-ee52-cbc6-a36fecacea5a",
  "kind": "theorem",
  "lexical_name": "StrictMonoOn.continuousAt_of_closure_image_mem_nhds",
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
  "slug": "strictmonoon-continuousat-of-closure-image-mem-nhds--718c0ec119eef8b91c5a6aa9",
  "source": {
    "blob": "8d097ce1780426d37676af161e9b7f16bd0db45f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 213,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:718c0ec119eef8b91c5a6aa97d50c1fe7c7af0c7e476dfc10d3edd7c4582c494",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b0b99b3-729d-ee52-cbc6-a36fecacea5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StrictMonoOn.continuousAt_of_closure_image_mem_nhds [DenselyOrdered β] {f : α → β}
    {s : Set α} {a : α} (h_mono : StrictMonoOn f s) (hs : s ∈ 𝓝 a)
    (hfs : closure (f '' s) ∈ 𝓝 (f a)) : ContinuousAt f a :=
  continuousAt_iff_continuous_left_right.2
    ⟨h_mono.continuousWithinAt_left_of_closure_image_mem_nhdsWithin (mem_nhdsWithin_of_mem_nhds hs)
        (mem_nhdsWithin_of_mem_nhds hfs),
      h_mono.continuousWithinAt_right_of_closure_image_mem_nhdsWithin
        (mem_nhdsWithin_of_mem_nhds hs) (mem_nhdsWithin_of_mem_nhds hfs)⟩

/-- If a function `f` with a densely ordered codomain is strictly monotone on a neighborhood of `a`
and the image of this set under `f` is a neighborhood of `f a`, then `f` is continuous at `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant9341f01129ba634ed433270340bcd250de0680be478e26987feede6c94340f65.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d097ce1780426d37676af161e9b7f16bd0db45f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
