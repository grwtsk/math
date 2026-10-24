# IntervalIntegral.integral_eq_integral_of_support_subset_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17328383-53ca-9e95-719e-1d4102f8353a",
  "kind": "lemma",
  "lexical_name": "IntervalIntegral.integral_eq_integral_of_support_subset_Icc",
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
  "slug": "intervalintegral-integral-eq-integral-of-support-subset-icc--0152153a699a81de1ceae5aa",
  "source": {
    "blob": "52982ff97a3b54116682c90b714698b4c7beb983",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 145,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/5c2f6abf91982d67593bMellinCalculus/Variant9c2a6b8fe87427bea6197cfefc86318021190872eabf5445f7e77fc44b916968.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0152153a699a81de1ceae5aad5a54a9fe039d3ace1f469ac3a296b88a2ac7681",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/5c2f6abf91982d67593bMellinCalculus/Variant9c2a6b8fe87427bea6197cfefc86318021190872eabf5445f7e77fc44b916968.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17328383-53ca-9e95-719e-1d4102f8353a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IntervalIntegral.integral_eq_integral_of_support_subset_Icc {a b : ℝ} {μ : Measure ℝ}
    [NullSingletonClass μ] {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    {f : ℝ → E} (h : f.support ⊆ Icc a b) :
    ∫ x in a..b, f x ∂μ = ∫ x, f x ∂μ := by
  rcases le_total a b with hab | hab
  · rw [intervalIntegral.integral_of_le hab, ← integral_Icc_eq_integral_Ioc,
    ← integral_indicator measurableSet_Icc, indicator_eq_self.2 h]
  · by_cases hab2 : b = a
    · rw [hab2] at h ⊢
      simp only [intervalIntegral.integral_same]
      simp only [Icc_self] at h
      have : ∫ (x : ℝ), f x ∂μ = ∫ (x : ℝ) in {a}, f x ∂μ := by
        rw [ ← integral_indicator (by simp), indicator_eq_self.2 h]
      rw [this, integral_singleton]; simp [Measure.real]
    · rw [Icc_eq_empty_iff.mpr <| by exact fun x ↦ hab2 <| le_antisymm hab x, subset_empty_iff,
          Function.support_eq_empty_iff] at h; simp [h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/5c2f6abf91982d67593bMellinCalculus/Variant9c2a6b8fe87427bea6197cfefc86318021190872eabf5445f7e77fc44b916968.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/5c2f6abf91982d67593bMellinCalculus/Variant9c2a6b8fe87427bea6197cfefc86318021190872eabf5445f7e77fc44b916968.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52982ff97a3b54116682c90b714698b4c7beb983` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
