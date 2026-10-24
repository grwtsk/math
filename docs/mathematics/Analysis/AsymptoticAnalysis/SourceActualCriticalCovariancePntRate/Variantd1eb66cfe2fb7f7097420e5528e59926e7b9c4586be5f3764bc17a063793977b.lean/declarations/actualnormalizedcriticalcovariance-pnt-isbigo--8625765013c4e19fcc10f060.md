# actualNormalizedCriticalCovariance_Pnt_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c14f7c9-642e-8ebe-5486-2b6a94685a68",
  "kind": "theorem",
  "lexical_name": "actualNormalizedCriticalCovariance_Pnt_isBigO",
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
  "slug": "actualnormalizedcriticalcovariance-pnt-isbigo--8625765013c4e19fcc10f060",
  "source": {
    "blob": "95740f3c5a807a52220db2c5e3cb148eb11addca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 160,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variantd1eb66cfe2fb7f7097420e5528e59926e7b9c4586be5f3764bc17a063793977b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8625765013c4e19fcc10f06057e7f06275a4b06e8da40c108ad8e1fdb8e97261",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variantd1eb66cfe2fb7f7097420e5528e59926e7b9c4586be5f3764bc17a063793977b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c14f7c9-642e-8ebe-5486-2b6a94685a68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNormalizedCriticalCovariance_Pnt_isBigO :
    ∃ c > 0, actualNormalizedCriticalCovariance =O[atTop]
      fun A : ℝ => Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
  obtain ⟨c, hc, hg⟩ := actualCenteredMangoldtLogError_isBigO
  obtain ⟨C, hC, hb⟩ := hg.exists_pos
  obtain ⟨T, hT⟩ := eventually_atTop.1 hb.bound
  refine ⟨c, hc, isBigO_iff.mpr ⟨27 / 4 * B + 1072 * C, ?_⟩⟩
  filter_upwards [eventually_ge_atTop (max 91 T), polynomial_exp_le_stretched c]
    with A hA hp
  have ha : 91 ≤ A := (le_max_left 91 T).trans hA
  have hgA : ∀ t ≥ A, |actualCenteredMangoldtLogError t| ≤
      C * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by
    intro t ht
    simpa only [Real.norm_eq_abs, Real.abs_exp] using
      hT t ((le_max_right 91 T).trans (hA.trans ht))
  have h := actualNormalizedCriticalCovariance_Pnt_budget ha hc hC.le hgA
  have hb0 : 0 ≤ 27 / 4 * B := by positivity
  rw [Real.norm_eq_abs, Real.norm_eq_abs, Real.abs_exp]
  calc
    _ ≤ _ := h
    _ ≤ (27 / 4 * B) * Real.exp (-c * A ^ ((1 : ℝ) / 10)) +
        1072 * C * Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
      simpa only [mul_assoc] using
        add_le_add (mul_le_mul_of_nonneg_left hp hb0)
          (le_refl (1072 * C * Real.exp (-c * A ^ ((1 : ℝ) / 10))))
    _ = _ := by ring

/-- Removing the actual normalization retains a growing unsigned exponential allowance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variantd1eb66cfe2fb7f7097420e5528e59926e7b9c4586be5f3764bc17a063793977b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variantd1eb66cfe2fb7f7097420e5528e59926e7b9c4586be5f3764bc17a063793977b.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95740f3c5a807a52220db2c5e3cb148eb11addca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
