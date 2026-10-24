# g_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c8c7ddac15d7311b95099aabacb77cb8d9c8795",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46463cd4-3467-1270-40a4-0aa602102307",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b121eb4-4051-ee3e-c29f-7da15d48c5ae",
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
  "slug": "g-intervalintegrable--37413e536fb398c8d9d45437",
  "source": {
    "blob": "6c8c7ddac15d7311b95099aabacb77cb8d9c8795",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 178,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37413e536fb398c8d9d45437b4b92582e2fc1f01fed10df5ef7f0ab2dd77a59a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b121eb4-4051-ee3e-c29f-7da15d48c5ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–206.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Bounds/Variantff5e58e02345de1d31eea694b0ceebbdd080fc47cf90c43375ccf85460ac7e9d.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c8c7ddac15d7311b95099aabacb77cb8d9c8795` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
