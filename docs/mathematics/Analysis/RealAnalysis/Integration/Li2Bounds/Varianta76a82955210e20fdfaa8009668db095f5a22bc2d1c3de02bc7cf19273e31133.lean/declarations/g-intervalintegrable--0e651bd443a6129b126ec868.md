# g_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5a3af2a-d51b-399d-41b7-b2228b3aebc5",
  "kind": "theorem",
  "lexical_name": "g_intervalIntegrable",
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
  "slug": "g-intervalintegrable--0e651bd443a6129b126ec868",
  "source": {
    "blob": "fdecf084c85fab7b2b6ec338b0c88813296d71d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 186,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e651bd443a6129b126ec8688d1b3775abf3d717f6f65404eb0f6ef4a8e590ce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5a3af2a-d51b-399d-41b7-b2228b3aebc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem g_intervalIntegrable (a b : ℝ) (ha_pos : 0 < a) (hb_lt : b < 1) (hab : a ≤ b) :
    IntervalIntegrable g volume a b := by
  have hmeas : Measurable g := by
    have hlog1p : Measurable fun t : ℝ => Real.log (1 + t) :=
      Real.measurable_log.comp (measurable_const.add measurable_id)
    have hlog1m : Measurable fun t : ℝ => Real.log (1 - t) :=
      Real.measurable_log.comp (measurable_const.sub measurable_id)
    have hlog1p_inv : Measurable fun t : ℝ => (Real.log (1 + t))⁻¹ := hlog1p.inv
    have hlog1m_inv : Measurable fun t : ℝ => (Real.log (1 - t))⁻¹ := hlog1m.inv
    unfold g symmetricLogCombination
    simpa [one_div] using hlog1p_inv.add hlog1m_inv
  have hInt_Ioo : IntegrableOn g (Set.Ioo a b) volume := by
    apply Measure.integrableOn_of_bounded
    · exact measure_Ioo_lt_top.ne
    · exact hmeas.aestronglyMeasurable
    · refine (ae_restrict_iff' measurableSet_Ioo).2 ?_
      exact ae_of_all _ (fun t ht => by
        have ht_pos : 0 < t := lt_of_lt_of_le ha_pos (le_of_lt ht.1)
        have ht_lt1 : t < 1 := lt_of_lt_of_le ht.2 (le_of_lt hb_lt)
        have hpos := g_pos t ht_pos ht_lt1
        have hle := g_le_two t ht_pos ht_lt1
        have habs : |g t| = g t := abs_of_pos hpos
        simpa [Real.norm_eq_abs, habs] using hle)
  exact (intervalIntegrable_iff_integrableOn_Ioo_of_le hab).2 hInt_Ioo

/-! ### Crude Bounds (Analytic) -/

/-- Crude upper bound: li(2) ≤ 2.
    This follows from g(t) ≤ 2 on (0, 1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Varianta76a82955210e20fdfaa8009668db095f5a22bc2d1c3de02bc7cf19273e31133.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdecf084c85fab7b2b6ec338b0c88813296d71d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
