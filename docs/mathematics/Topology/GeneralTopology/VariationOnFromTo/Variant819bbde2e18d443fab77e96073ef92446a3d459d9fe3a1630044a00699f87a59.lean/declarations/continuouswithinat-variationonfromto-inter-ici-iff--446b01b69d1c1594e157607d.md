# continuousWithinAt_variationOnFromTo_inter_Ici_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60f2afe4-4979-95ee-17e2-7005fa264f74",
  "kind": "theorem",
  "lexical_name": "continuousWithinAt_variationOnFromTo_inter_Ici_iff",
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
  "slug": "continuouswithinat-variationonfromto-inter-ici-iff--446b01b69d1c1594e157607d",
  "source": {
    "blob": "3b6fcc1488eb89f563380a91eb64f578780d3815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 292,
    "path": "GRWTSK/Topology/GeneralTopology/VariationOnFromTo/Variant819bbde2e18d443fab77e96073ef92446a3d459d9fe3a1630044a00699f87a59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:446b01b69d1c1594e157607d2fc51b2f7d4dd0bfb60909c3ac0b2bc8bd38f6a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VariationOnFromTo/Variant819bbde2e18d443fab77e96073ef92446a3d459d9fe3a1630044a00699f87a59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60f2afe4-4979-95ee-17e2-7005fa264f74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousWithinAt_variationOnFromTo_inter_Ici_iff (hg : BoundedVariationOn g s)
    {a x : α} (as : a ∈ s) (xs : x ∈ s) :
    ContinuousWithinAt (variationOnFromTo g s a) (s ∩ Ici x) x ↔
      ContinuousWithinAt g (s ∩ Ici x) x := by
  refine ⟨fun h ↦ ?_, fun h ↦ hg.continuousWithinAt_variationOnFromTo_inter_Ici as xs h⟩
  simp only [ContinuousWithinAt, tendsto_iff_edist_tendsto_0] at h ⊢
  apply tendsto_of_tendsto_of_tendsto_of_le_of_le' tendsto_const_nhds h (by simp)
  filter_upwards [self_mem_nhdsWithin] with y hy
  grw [edist_eq_enorm_sub, variationOnFromTo.sub_right hg.locallyBoundedVariationOn as hy.1 xs,
    variationOnFromTo.eq_of_le _ _ hy.2,
    eVariationOn.edist_le (s := s ∩ Icc x y) _ (by grind) (by grind)]
  have : eVariationOn g (s ∩ Icc x y) ≠ ∞ := hg.mono inter_subset_left
  simp [this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VariationOnFromTo/Variant819bbde2e18d443fab77e96073ef92446a3d459d9fe3a1630044a00699f87a59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VariationOnFromTo/Variant819bbde2e18d443fab77e96073ef92446a3d459d9fe3a1630044a00699f87a59.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b6fcc1488eb89f563380a91eb64f578780d3815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
