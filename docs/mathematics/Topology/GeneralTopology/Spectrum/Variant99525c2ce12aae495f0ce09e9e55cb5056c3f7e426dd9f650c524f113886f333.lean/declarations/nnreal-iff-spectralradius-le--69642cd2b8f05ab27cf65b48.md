# nnreal_iff_spectralRadius_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8fc9d56eaa04eb16e57bce8f561607390dfddca9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 747,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3f350d6-d693-925f-5f43-760b32850d35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed9a77e5-00ec-1d02-f7b1-1c8f455c0479",
  "kind": "lemma",
  "lexical_name": "nnreal_iff_spectralRadius_le",
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
  "slug": "nnreal-iff-spectralradius-le--69642cd2b8f05ab27cf65b48",
  "source": {
    "blob": "8fc9d56eaa04eb16e57bce8f561607390dfddca9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 769,
    "line": 747,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69642cd2b8f05ab27cf65b48b23e051b0898f21024d50936e43adb51add72dea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed9a77e5-00ec-1d02-f7b1-1c8f455c0479`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 747–769.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nnreal_iff_spectralRadius_le [Algebra ℝ A] {a : A} {t : ℝ≥0} (ht : spectralRadius ℝ a ≤ t) :
    SpectrumRestricts a ContinuousMap.realToNNReal ↔
      spectralRadius ℝ (algebraMap ℝ A t - a) ≤ t := by
  simp only [spectralRadius_eq_of_unital] at ht ⊢
  have : spectrum ℝ a ⊆ Set.Icc (-t) t := by
    intro x hx
    rw [Set.mem_Icc, ← abs_le, ← Real.norm_eq_abs, ← coe_nnnorm, NNReal.coe_le_coe,
      ← ENNReal.coe_le_coe]
    exact le_iSup₂ (α := ℝ≥0∞) x hx |>.trans ht
  rw [nnreal_iff]
  refine ⟨fun h ↦ iSup₂_le fun x hx ↦ ?_, fun h ↦ ?_⟩
  · rw [← spectrum.singleton_sub_eq] at hx
    obtain ⟨y, hy, rfl⟩ : ∃ y ∈ spectrum ℝ a, ↑t - y = x := by simpa using hx
    obtain ⟨hty, hyt⟩ := Set.mem_Icc.mp <| this hy
    lift y to ℝ≥0 using h y hy
    rw [← NNReal.coe_sub (by exact_mod_cast hyt)]
    simp
  · replace h : ∀ x ∈ spectrum ℝ a, ‖t - x‖₊ ≤ t := by
      simpa [spectralRadius, iSup₂_le_iff, ← spectrum.singleton_sub_eq] using h
    gconvert h with x hx h_le
    rw [← NNReal.coe_le_coe, coe_nnnorm, Real.norm_eq_abs, abs_le] at h_le
    linarith [h_le.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean#L747).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fc9d56eaa04eb16e57bce8f561607390dfddca9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
