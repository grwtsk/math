# abs_harmonicCumulativeShortContribution_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fdf5745-cf31-bb18-433d-b1ca36e32e8f",
  "kind": "theorem",
  "lexical_name": "abs_harmonicCumulativeShortContribution_le",
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
  "slug": "abs-harmoniccumulativeshortcontribution-le--3877fff837dfe667a24e527f",
  "source": {
    "blob": "e46d71663f3b635acf82ee1fb841910a5ff8f047",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 143,
    "path": "GRWTSK/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3877fff837dfe667a24e527fb19b24b8d0928bb681dc07c8cb1bad1b5a3bd060",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fdf5745-cf31-bb18-433d-b1ca36e32e8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_harmonicCumulativeShortContribution_le
    (j t H : ℕ) :
    |harmonicCumulativeShortContribution j t H| ≤
      ((2 ^ (j + 1) : ℕ) : ℝ) *
        (H : ℝ) * (t + 1 : ℝ) *
          harmonicShiftFirstDifference j t 0 := by
  unfold harmonicCumulativeShortContribution
  have hcoef :
      ∀ k : ℕ, 0 ≤ harmonicShiftSecondDifference j t k := by
    intro k
    exact harmonicShiftReciprocal_secondDifference_nonneg j t k
  calc
    |((2 ^ (j + 1) : ℕ) : ℝ) *
      ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
          (fun k => k + 1 < H),
        cumulativeHarmonicShiftCorrelation j t (k + 1) *
          harmonicShiftSecondDifference j t k| =
      ((2 ^ (j + 1) : ℕ) : ℝ) *
        |∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
            (fun k => k + 1 < H),
          cumulativeHarmonicShiftCorrelation j t (k + 1) *
            harmonicShiftSecondDifference j t k| := by
      rw [abs_mul, abs_of_nonneg (by positivity)]
    _ ≤ ((2 ^ (j + 1) : ℕ) : ℝ) *
        ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
            (fun k => k + 1 < H),
          |cumulativeHarmonicShiftCorrelation j t (k + 1)| *
            harmonicShiftSecondDifference j t k := by
      apply mul_le_mul_of_nonneg_left
      · calc
          |∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
              (fun k => k + 1 < H),
            cumulativeHarmonicShiftCorrelation j t (k + 1) *
              harmonicShiftSecondDifference j t k| ≤
            ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
                (fun k => k + 1 < H),
              |cumulativeHarmonicShiftCorrelation j t (k + 1) *
                harmonicShiftSecondDifference j t k| :=
              Finset.abs_sum_le_sum_abs _ _
          _ = _ := by
            apply Finset.sum_congr rfl
            intro k _hk
            rw [abs_mul, abs_of_nonneg (hcoef k)]
      · positivity
    _ ≤ ((2 ^ (j + 1) : ℕ) : ℝ) *
        ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
            (fun k => k + 1 < H),
          ((H : ℝ) * (t + 1 : ℝ)) *
            harmonicShiftSecondDifference j t k := by
      apply mul_le_mul_of_nonneg_left
      · apply Finset.sum_le_sum
        intro k hk
        have hkH : k + 1 < H := (Finset.mem_filter.mp hk).2
        have hcum :=
          abs_cumulativeHarmonicShiftCorrelation_le_trivial
            j t (k + 1)
        apply mul_le_mul_of_nonneg_right
        · calc
            |cumulativeHarmonicShiftCorrelation j t (k + 1)| ≤
                ((k + 1 : ℕ) : ℝ) * (t + 1 : ℝ) := hcum
            _ ≤ (H : ℝ) * (t + 1 : ℝ) := by
              apply mul_le_mul_of_nonneg_right
              · exact_mod_cast Nat.le_of_lt hkH
              · positivity
        · exact hcoef k
      · positivity
    _ ≤ ((2 ^ (j + 1) : ℕ) : ℝ) *
        ((H : ℝ) * (t + 1 : ℝ) *
          harmonicShiftFirstDifference j t 0) := by
      apply mul_le_mul_of_nonneg_left
      · rw [← Finset.mul_sum]
        apply mul_le_mul_of_nonneg_left
        · calc
            (∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
              (fun k => k + 1 < H),
              harmonicShiftSecondDifference j t k) ≤
              ∑ k ∈ Finset.range (harmonicShiftCount j t - 1),
                harmonicShiftSecondDifference j t k := by
                apply Finset.sum_le_sum_of_subset_of_nonneg
                · exact Finset.filter_subset _ _
                · intro i hi hnot
                  exact hcoef i
            _ ≤ harmonicShiftFirstDifference j t 0 :=
              sum_harmonicShiftSecondDifference_le_first
                j t (harmonicShiftCount j t - 1)
        · positivity
      · positivity
    _ = ((2 ^ (j + 1) : ℕ) : ℝ) *
        (H : ℝ) * (t + 1 : ℝ) *
          harmonicShiftFirstDifference j t 0 := by ring

/-- Scope for the remaining analytic long-length supplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46d71663f3b635acf82ee1fb841910a5ff8f047` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
