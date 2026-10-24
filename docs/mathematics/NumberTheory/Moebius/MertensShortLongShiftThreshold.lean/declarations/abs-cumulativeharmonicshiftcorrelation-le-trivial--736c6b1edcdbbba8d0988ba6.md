# abs_cumulativeHarmonicShiftCorrelation_le_trivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6ea14cf-17b6-eb39-b5aa-9bc91bbb0dd3",
  "kind": "theorem",
  "lexical_name": "abs_cumulativeHarmonicShiftCorrelation_le_trivial",
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
  "slug": "abs-cumulativeharmonicshiftcorrelation-le-trivial--736c6b1edcdbbba8d0988ba6",
  "source": {
    "blob": "e46d71663f3b635acf82ee1fb841910a5ff8f047",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 40,
    "path": "GRWTSK/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:736c6b1edcdbbba8d0988ba63b1ee80c5fe6406b543e48dd7b33886a24dcadaf",
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

Occurrence: `result:d6ea14cf-17b6-eb39-b5aa-9bc91bbb0dd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_cumulativeHarmonicShiftCorrelation_le_trivial
    (j t n : ℕ) :
    |cumulativeHarmonicShiftCorrelation j t n| ≤
      (n : ℝ) * (t + 1 : ℝ) := by
  unfold cumulativeHarmonicShiftCorrelation harmonicShiftCorrelation
  calc
    |∑ k ∈ Finset.range n,
      mertensTwoPointPrefix (harmonicShiftLower j t + k) (t + 1)| ≤
      ∑ k ∈ Finset.range n,
        |mertensTwoPointPrefix (harmonicShiftLower j t + k) (t + 1)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _k ∈ Finset.range n, (t + 1 : ℝ) := by
      apply Finset.sum_le_sum
      intro k _hk
      simpa only [Nat.cast_add, Nat.cast_one] using
        abs_mertensTwoPointPrefix_le_length (harmonicShiftLower j t + k) (t + 1)
    _ = (n : ℝ) * (t + 1 : ℝ) := by
      simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]

/-- First reciprocal difference in the active harmonic shift coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensShortLongShiftThreshold.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46d71663f3b635acf82ee1fb841910a5ff8f047` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
