# integrable_of_height_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb0bf9ed-989b-8712-3d1a-504e919500fc",
  "kind": "theorem",
  "lexical_name": "integrable_of_height_decay",
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
  "slug": "integrable-of-height-decay--606cbc76ae8537699d9cb0a6",
  "source": {
    "blob": "43d32f31edaa8977c2d490c768a6699143f8e182",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 60,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant6e32724e236ac11e54146d866587f23797db62a0a25b6abe6ab89ac402e6e053.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:606cbc76ae8537699d9cb0a6e85f01f7e122e273f20c36c323aa4b07ba68c53e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant6e32724e236ac11e54146d866587f23797db62a0a25b6abe6ab89ac402e6e053.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb0bf9ed-989b-8712-3d1a-504e919500fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integrable_of_height_decay (f : ℝ → ℂ) (hc : Continuous f) (M : ℝ)
    (hb : ∀ t : ℝ, 1 ≤ |t| → ‖f t‖ ≤ M / |t| ^ 6) : Integrable f := by
  have hg : IntegrableOn (fun t : ℝ ↦ M * t ^ (-6 : ℝ)) (Ioi 1) :=
    (integrableOn_Ioi_rpow_of_lt (by norm_num : (-6 : ℝ) < -1) (by norm_num)).const_mul _
  have hray : ∀ ε : ℝ, |ε| = 1 → IntegrableOn (fun t : ℝ ↦ f (ε * t)) (Ioi 1) := by
    intro ε hε
    apply hg.mono' ((hc.comp (by fun_prop)).aestronglyMeasurable)
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    change 1 < t at ht
    have htp : 0 < t := by linarith
    have he : |ε * t| = t := by rw [abs_mul, hε, abs_of_pos htp, one_mul]
    have hh := hb (ε * t) (by rw [he]; linarith)
    rw [he] at hh
    change ‖f (ε * t)‖ ≤ M * t ^ (-6 : ℝ)
    convert hh using 1
    rw [Real.rpow_neg htp.le, show (6 : ℝ) = (6 : ℕ) by norm_num,
      Real.rpow_natCast]
    ring
  have hpos : IntegrableOn f (Ioi 1) := by simpa using hray 1 (by norm_num)
  have hneg : IntegrableOn f (Iio (-1)) := by
    rw [← (Measure.measurePreserving_neg (volume : Measure ℝ)).integrableOn_comp_preimage
      (Homeomorph.neg ℝ).measurableEmbedding]
    simpa only [Function.comp_def, neg_preimage, neg_Iio, neg_neg, neg_one_mul]
      using hray (-1) (by norm_num)
  have hcover : (Icc (-1 : ℝ) 1 ∪ Ioi 1) ∪ Iio (-1) = univ := by
    ext t
    simp only [mem_union, mem_Icc, mem_Ioi, mem_Iio, mem_univ, iff_true]
    rcases lt_or_ge t (-1) with ht | ht
    · exact Or.inr ht
    · rcases le_or_gt t 1 with hh | hh
      · exact Or.inl (Or.inl ⟨ht, hh⟩)
      · exact Or.inl (Or.inr hh)
  have hsmall : IntegrableOn f (Icc (-1) 1) := hc.integrableOn_Icc
  have hu := (hsmall.union hpos).union hneg
  rw [hcover] at hu
  simpa using hu

/-- Genuine L¹ admission of the actual normalized native transform on c = 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant6e32724e236ac11e54146d866587f23797db62a0a25b6abe6ab89ac402e6e053.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeReadout/Variant6e32724e236ac11e54146d866587f23797db62a0a25b6abe6ab89ac402e6e053.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43d32f31edaa8977c2d490c768a6699143f8e182` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
