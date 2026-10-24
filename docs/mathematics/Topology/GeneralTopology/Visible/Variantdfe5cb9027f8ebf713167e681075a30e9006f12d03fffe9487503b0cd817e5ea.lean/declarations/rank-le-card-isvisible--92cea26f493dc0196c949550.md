# rank_le_card_isVisible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5671c116-f4b9-03d5-ffbe-f4bd8dc25f54",
  "kind": "lemma",
  "lexical_name": "rank_le_card_isVisible",
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
  "slug": "rank-le-card-isvisible--92cea26f493dc0196c949550",
  "source": {
    "blob": "4e746a4d69728a1015a3ad30fddfdc0c1e3f11ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 201,
    "path": "GRWTSK/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92cea26f493dc0196c9495506aab812d8dafb449d8bbfc8f24c8528d883fe549",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5671c116-f4b9-03d5-ffbe-f4bd8dc25f54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rank_le_card_isVisible (hs : IsClosed (convexHull ℝ s)) (hx : x ∉ convexHull ℝ s) :
    Module.rank ℝ (span ℝ (-x +ᵥ s)) ≤ #{y ∈ s | IsVisible ℝ (convexHull ℝ s) x y} := by
  calc
    Module.rank ℝ (span ℝ (-x +ᵥ s)) ≤
      Module.rank ℝ (span ℝ
        (-x +ᵥ affineSpan ℝ ({x} ∪ {y ∈ s | IsVisible ℝ (convexHull ℝ s) x y}) : Set V)) := by
      push_cast
      refine Submodule.rank_mono ?_
      gcongr
      exact (subset_convexHull ..).trans <| hs.convexHull_subset_affineSpan_isVisible hx
    _ = Module.rank ℝ (span ℝ (-x +ᵥ {y ∈ s | IsVisible ℝ (convexHull ℝ s) x y})) := by
      suffices h :
        -x +ᵥ (affineSpan ℝ ({x} ∪ {y ∈ s | IsVisible ℝ (convexHull ℝ s) x y}) : Set V) =
          span ℝ (-x +ᵥ {y ∈ s | IsVisible ℝ (convexHull ℝ s) x y}) by
        rw [AffineSubspace.coe_pointwise_vadd, h, span_span]
      simp [← AffineSubspace.coe_pointwise_vadd, AffineSubspace.pointwise_vadd_span,
        vadd_set_insert, affineSpan_insert_zero]
    _ ≤ #(-x +ᵥ {y ∈ s | IsVisible ℝ (convexHull ℝ s) x y}) := rank_span_le _
    _ = #{y ∈ s | IsVisible ℝ (convexHull ℝ s) x y} := by simp

end Real
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Visible/Variantdfe5cb9027f8ebf713167e681075a30e9006f12d03fffe9487503b0cd817e5ea.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e746a4d69728a1015a3ad30fddfdc0c1e3f11ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
