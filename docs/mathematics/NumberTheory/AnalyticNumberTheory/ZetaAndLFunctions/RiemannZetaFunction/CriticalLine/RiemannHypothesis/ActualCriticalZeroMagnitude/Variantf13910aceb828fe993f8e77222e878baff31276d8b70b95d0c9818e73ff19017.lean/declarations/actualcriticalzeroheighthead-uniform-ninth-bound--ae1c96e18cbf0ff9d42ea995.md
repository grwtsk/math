# actualCriticalZeroHeightHead_uniform_ninth_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4cf0e50-3deb-cd3f-46a9-58e28acc0c88",
  "kind": "theorem",
  "lexical_name": "actualCriticalZeroHeightHead_uniform_ninth_bound",
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
  "slug": "actualcriticalzeroheighthead-uniform-ninth-bound--ae1c96e18cbf0ff9d42ea995",
  "source": {
    "blob": "a7698d99725e8ba07f3f9015bf005269b6933d51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalZeroMagnitude/Variantf13910aceb828fe993f8e77222e878baff31276d8b70b95d0c9818e73ff19017.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae1c96e18cbf0ff9d42ea9952316e86369131078edf290fa51603b11e58effc5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalZeroMagnitude/Variantf13910aceb828fe993f8e77222e878baff31276d8b70b95d0c9818e73ff19017.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4cf0e50-3deb-cd3f-46a9-58e28acc0c88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalZeroHeightHead_uniform_ninth_bound :
    ∃ C R0 : ℝ, 0 ≤ C ∧ 1 ≤ R0 ∧ ∀ A R : ℝ, R0 ≤ A →
      ‖actualCriticalZeroHeightHead A R‖ ≤ C / A ^ 9 := by
  classical
  obtain ⟨R0, hR0, hg⟩ := actual_critical_ordinate_radius
  let b : ℝ := (204288 : ℝ) ^ 2 * 109395 / 4096 * (1 + R0 ^ 2) ^ 2
  have hb : 0 ≤ b := by dsimp [b]; positivity
  refine ⟨b * actualZeroSixMass, R0, mul_nonneg hb actualZeroSixMass_nonneg,
    hR0, fun A R hA => ?_⟩
  have hApos : 0 < A := by linarith
  let F := (actualZeroHeightHead_finite R).toFinset.filter
    (fun ρ : (zetaZeros zetaSeam).carrier => (ρ : ℂ).re = 1 / 2)
  have hpoint (ρ : (zetaZeros zetaSeam).carrier) (hρ : ρ ∈ F) :
      ‖((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ‖ ≤
        (b / A ^ 9) * (((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6) := by
    have hh := (mem_filter.mp hρ).2
    have hw := actual_critical_mellin_norm_le A R0 ρ hR0 hA hh (hg ρ hh)
    rw [norm_mul, Complex.norm_natCast]
    have hm := mul_le_mul_of_nonneg_left hw
      (show 0 ≤ ((zetaZeros zetaSeam).mult ρ : ℝ) by positivity)
    exact hm.trans_eq (by dsimp [b]; ring)
  change ‖∑ ρ ∈ F, ((zetaZeros zetaSeam).mult ρ : ℂ) *
    actualInitialPrimeMellin A ρ‖ ≤ _
  calc
    _ ≤ ∑ ρ ∈ F, ‖((zetaZeros zetaSeam).mult ρ : ℂ) *
        actualInitialPrimeMellin A ρ‖ := norm_sum_le _ _
    _ ≤ ∑ ρ ∈ F, (b / A ^ 9) *
        (((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6) :=
      sum_le_sum hpoint
    _ = (b / A ^ 9) * (∑ ρ ∈ F,
        ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6) := by rw [mul_sum]
    _ ≤ (b / A ^ 9) * actualZeroSixMass :=
      mul_le_mul_of_nonneg_left (actual_finite_reciprocal_six_le F) (by positivity)
    _ = _ := by ring

/-- The same actual magnitude bound respects its independently proved nonnegative real sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalZeroMagnitude/Variantf13910aceb828fe993f8e77222e878baff31276d8b70b95d0c9818e73ff19017.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalZeroMagnitude/Variantf13910aceb828fe993f8e77222e878baff31276d8b70b95d0c9818e73ff19017.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7698d99725e8ba07f3f9015bf005269b6933d51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
