# IsClosed.convexHull_subset_affineSpan_isVisible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d18bdd30c8fedeaf6f0ea307d691e93e5382f122",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e00a884-3953-0c0f-5bd4-82e57ee7d53e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:752f6ba7-92f7-65f4-0ea7-0bf9555ee4d1",
  "kind": "lemma",
  "lexical_name": "IsClosed.convexHull_subset_affineSpan_isVisible",
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
  "slug": "isclosed-convexhull-subset-affinespan-isvisible--eb1172f4acf43d291416c48d",
  "source": {
    "blob": "d18bdd30c8fedeaf6f0ea307d691e93e5382f122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 178,
    "path": "GRWTSK/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb1172f4acf43d291416c48d4cc19dad7228db7a0a8c132833457214afd8728a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:752f6ba7-92f7-65f4-0ea7-0bf9555ee4d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsClosed.convexHull_subset_affineSpan_isVisible (hs : IsClosed (convexHull ℝ s))
    (hx : x ∉ convexHull ℝ s) :
    convexHull ℝ s ⊆ affineSpan ℝ ({x} ∪ {y ∈ s | IsVisible ℝ (convexHull ℝ s) x y}) := by
  rintro y hy
  obtain ⟨z, hz, hxzy, hxz⟩ := hs.exists_wbtw_isVisible hy x
  -- TODO: `calc` doesn't work with `∈` :(
  exact AffineSubspace.right_mem_of_wbtw hxzy (subset_affineSpan _ _ <| subset_union_left rfl)
    (affineSpan_mono _ subset_union_right <| convexHull_subset_affineSpan _ <|
      hxz.mem_convexHull_isVisible hx hz) (ne_of_mem_of_not_mem hz hx).symm

open Submodule in
/-- If `s` is a closed set of dimension `d` and `x` is a point outside of its convex hull,
then `x` sees at least `d` points of the convex hull of `s` that actually lie in `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Visible/Variant0059c363558342f802ed9e680a8e856332204e2fe8785ef1b10a2a28602d089f.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d18bdd30c8fedeaf6f0ea307d691e93e5382f122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
