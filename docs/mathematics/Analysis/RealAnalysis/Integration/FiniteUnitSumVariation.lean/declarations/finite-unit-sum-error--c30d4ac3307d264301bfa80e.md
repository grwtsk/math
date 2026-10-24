# finite_unit_sum_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0deefcab-afdf-9dca-ddef-e48a807f6fca",
  "kind": "theorem",
  "lexical_name": "finite_unit_sum_error",
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
  "slug": "finite-unit-sum-error--c30d4ac3307d264301bfa80e",
  "source": {
    "blob": "c85094a7d7d1ca252f45bbfbbf19a816c763b229",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 58,
    "path": "GRWTSK/Analysis/Integration/FiniteUnitSumVariation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c30d4ac3307d264301bfa80e85f3d43f9132479b75db9039ac7c58a2a6755aea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiniteUnitSumVariation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0deefcab-afdf-9dca-ddef-e48a807f6fca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_unit_sum_error {f : ℝ → ℝ} (regular : ContDiff ℝ 1 f)
    {a b : ℕ} (ordered : a ≤ b) :
    |(∑ i ∈ Finset.Ico a b, f (i : ℝ)) - (∫ x in (a : ℝ)..(b : ℝ), f x)| ≤
      ∫ x in (a : ℝ)..(b : ℝ), |deriv f x| := by
  have telescoping := intervalIntegral.sum_integral_adjacent_intervals_Ico
    (a := fun i : ℕ ↦ (i : ℝ)) (f := f) (μ := volume) ordered
    (fun i _ ↦ regular.continuous.intervalIntegrable (i : ℝ) ((i + 1 : ℕ) : ℝ))
  have derivativeTelescoping := intervalIntegral.sum_integral_adjacent_intervals_Ico
    (a := fun i : ℕ ↦ (i : ℝ)) (f := fun x : ℝ ↦ |deriv f x|) (μ := volume) ordered
    (fun i _ ↦ regular.continuous_deriv_one.abs.intervalIntegrable
      (i : ℝ) ((i + 1 : ℕ) : ℝ))
  rw [← telescoping, ← Finset.sum_sub_distrib]
  calc
    |∑ i ∈ Finset.Ico a b, (f (i : ℝ) - ∫ x in (i : ℝ)..↑(i + 1), f x)| ≤
        ∑ i ∈ Finset.Ico a b, |f (i : ℝ) - ∫ x in (i : ℝ)..↑(i + 1), f x| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ i ∈ Finset.Ico a b, ∫ x in (i : ℝ)..↑(i + 1), |deriv f x| := by
      apply Finset.sum_le_sum
      intro i _
      simpa only [Nat.cast_add, Nat.cast_one] using unit_interval_sample_error regular (i : ℝ)
    _ = ∫ x in (a : ℝ)..(b : ℝ), |deriv f x| := derivativeTelescoping

end

end GRWTSK.Analysis.Integration.FiniteUnitSumVariation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/FiniteUnitSumVariation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Integration/FiniteUnitSumVariation.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c85094a7d7d1ca252f45bbfbbf19a816c763b229` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
