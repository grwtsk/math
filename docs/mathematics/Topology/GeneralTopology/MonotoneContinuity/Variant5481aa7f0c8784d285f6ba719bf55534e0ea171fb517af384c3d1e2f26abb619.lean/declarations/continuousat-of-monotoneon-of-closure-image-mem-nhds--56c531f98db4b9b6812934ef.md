# continuousAt_of_monotoneOn_of_closure_image_mem_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a9c7a02-3609-20b3-13fb-d9070da4ffee",
  "kind": "theorem",
  "lexical_name": "continuousAt_of_monotoneOn_of_closure_image_mem_nhds",
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
  "slug": "continuousat-of-monotoneon-of-closure-image-mem-nhds--56c531f98db4b9b6812934ef",
  "source": {
    "blob": "73d4df1f1c1aea4e7d1a68ddcf606b5c821777ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 265,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56c531f98db4b9b6812934efd0e96701663761a850d30a8c4be5af415abedc15",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a9c7a02-3609-20b3-13fb-d9070da4ffee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_of_monotoneOn_of_closure_image_mem_nhds [DenselyOrdered β] {f : α → β}
    {s : Set α} {a : α} (h_mono : MonotoneOn f s) (hs : s ∈ 𝓝 a)
    (hfs : closure (f '' s) ∈ 𝓝 (f a)) : ContinuousAt f a :=
  continuousAt_iff_continuous_left_right.2
    ⟨continuousWithinAt_left_of_monotoneOn_of_closure_image_mem_nhdsWithin h_mono
        (mem_nhdsWithin_of_mem_nhds hs) (mem_nhdsWithin_of_mem_nhds hfs),
      continuousWithinAt_right_of_monotoneOn_of_closure_image_mem_nhdsWithin h_mono
        (mem_nhdsWithin_of_mem_nhds hs) (mem_nhdsWithin_of_mem_nhds hfs)⟩
#align continuous_at_of_monotone_on_of_closure_image_mem_nhds continuousAt_of_monotoneOn_of_closure_image_mem_nhds

/-- If a function `f` with a densely ordered codomain is monotone on a neighborhood of `a` and the
image of this neighborhood under `f` is a neighborhood of `f a`, then `f` is continuous at `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneContinuity/Variant5481aa7f0c8784d285f6ba719bf55534e0ea171fb517af384c3d1e2f26abb619.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73d4df1f1c1aea4e7d1a68ddcf606b5c821777ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
