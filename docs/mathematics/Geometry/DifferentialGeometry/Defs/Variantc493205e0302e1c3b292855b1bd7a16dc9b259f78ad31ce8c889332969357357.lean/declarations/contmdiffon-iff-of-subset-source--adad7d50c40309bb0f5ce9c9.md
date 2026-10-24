# contMDiffOn_iff_of_subset_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69fa37ebbccee7994ac66cb978e35b2eff547e68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 480,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c493205e0302e1c3b292855b1bd7a16dc9b259f78ad31ce8c889332969357357.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2377f7d5-c908-9002-171c-4152034a00ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8baa378-a1a3-22cd-ce76-f8ba2696efa7",
  "kind": "theorem",
  "lexical_name": "contMDiffOn_iff_of_subset_source",
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
  "slug": "contmdiffon-iff-of-subset-source--adad7d50c40309bb0f5ce9c9",
  "source": {
    "blob": "69fa37ebbccee7994ac66cb978e35b2eff547e68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 480,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variantc493205e0302e1c3b292855b1bd7a16dc9b259f78ad31ce8c889332969357357.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adad7d50c40309bb0f5ce9c967304fb4aee9ddb805aef07cae96b2e92c582433",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variantc493205e0302e1c3b292855b1bd7a16dc9b259f78ad31ce8c889332969357357.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8baa378-a1a3-22cd-ce76-f8ba2696efa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contMDiffOn_iff_of_subset_source {x : M} {y : M'} (hs : s ⊆ (chartAt H x).source)
    (h2s : MapsTo f s (chartAt H' y).source) :
    ContMDiffOn I I' n f s ↔
      ContinuousOn f s ∧
        ContDiffOn 𝕜 n (extChartAt I' y ∘ f ∘ (extChartAt I x).symm) (extChartAt I x '' s) :=
  contMDiffOn_iff_of_mem_maximalAtlas (chart_mem_maximalAtlas x) (chart_mem_maximalAtlas y) hs
    h2s

/-- If the set where you want `f` to be `C^n` lies entirely in a single chart, and `f` maps it
into a single chart, the fact that `f` is `C^n` on that set can be expressed by purely looking in
these charts.
Note: this lemma uses `extChartAt I x '' s` instead of `(extChartAt I x).symm ⁻¹' s` to ensure
that this set lies in `(extChartAt I x).target`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variantc493205e0302e1c3b292855b1bd7a16dc9b259f78ad31ce8c889332969357357.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variantc493205e0302e1c3b292855b1bd7a16dc9b259f78ad31ce8c889332969357357.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69fa37ebbccee7994ac66cb978e35b2eff547e68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
