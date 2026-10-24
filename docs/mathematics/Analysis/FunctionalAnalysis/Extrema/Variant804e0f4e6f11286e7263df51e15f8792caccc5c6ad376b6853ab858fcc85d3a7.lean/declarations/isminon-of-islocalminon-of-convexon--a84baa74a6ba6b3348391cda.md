# IsMinOn.of_isLocalMinOn_of_convexOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ed1f006-5367-ed17-d0ac-adc2764f5172",
  "kind": "theorem",
  "lexical_name": "IsMinOn.of_isLocalMinOn_of_convexOn",
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
  "slug": "isminon-of-islocalminon-of-convexon--a84baa74a6ba6b3348391cda",
  "source": {
    "blob": "3f6d45f31b1404d6b8f17281ba67ff5981433e8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 63,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Extrema/Variant804e0f4e6f11286e7263df51e15f8792caccc5c6ad376b6853ab858fcc85d3a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a84baa74a6ba6b3348391cdac251dd9f8dad4e4c8d0bdc31e057961d5bbb3bb8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Extrema/Variant804e0f4e6f11286e7263df51e15f8792caccc5c6ad376b6853ab858fcc85d3a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ed1f006-5367-ed17-d0ac-adc2764f5172`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsMinOn.of_isLocalMinOn_of_convexOn {f : E → β} {a : E} (a_in_s : a ∈ s)
    (h_localmin : IsLocalMinOn f s a) (h_conv : ConvexOn ℝ s f) : IsMinOn f s a := by
  intro x x_in_s
  let g : ℝ →ᵃ[ℝ] E := AffineMap.lineMap a x
  have hg0 : g 0 = a := AffineMap.lineMap_apply_zero a x
  have hg1 : g 1 = x := AffineMap.lineMap_apply_one a x
  have hgc : Continuous g := AffineMap.lineMap_continuous
  have h_maps : MapsTo g (Icc 0 1) s := by
    simpa only [g, mapsTo_iff_image_subset, ← segment_eq_image_lineMap]
      using h_conv.1.segment_subset a_in_s x_in_s
  have fg_local_min_on : IsLocalMinOn (f ∘ g) (Icc 0 1) 0 := by
    rw [← hg0] at h_localmin
    exact h_localmin.comp_continuousOn h_maps hgc.continuousOn (left_mem_Icc.2 zero_le_one)
  have fg_min_on : IsMinOn (f ∘ g) (Icc 0 1 : Set ℝ) 0 := by
    refine IsMinOn.of_isLocalMinOn_of_convexOn_Icc one_pos fg_local_min_on ?_
    exact (h_conv.comp_affineMap g).subset h_maps (convex_Icc 0 1)
  simpa only [hg0, hg1, comp_apply, mem_ofPred_eq] using fg_min_on (right_mem_Icc.2 zero_le_one)

/-- A local maximum of a concave function is a global maximum, restricted to a set `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Extrema/Variant804e0f4e6f11286e7263df51e15f8792caccc5c6ad376b6853ab858fcc85d3a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Extrema/Variant804e0f4e6f11286e7263df51e15f8792caccc5c6ad376b6853ab858fcc85d3a7.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f6d45f31b1404d6b8f17281ba67ff5981433e8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
