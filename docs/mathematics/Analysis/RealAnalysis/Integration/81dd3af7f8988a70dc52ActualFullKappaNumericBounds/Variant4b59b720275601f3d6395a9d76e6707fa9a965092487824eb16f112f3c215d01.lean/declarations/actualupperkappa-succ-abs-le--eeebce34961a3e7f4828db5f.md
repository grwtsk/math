# actualUpperKappa_succ_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:162ce222-56d5-acff-0785-4e046fd603b0",
  "kind": "theorem",
  "lexical_name": "actualUpperKappa_succ_abs_le",
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
  "slug": "actualupperkappa-succ-abs-le--eeebce34961a3e7f4828db5f",
  "source": {
    "blob": "c2b6bddf7955fdae38a35d95f5008a08048e4fb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variant4b59b720275601f3d6395a9d76e6707fa9a965092487824eb16f112f3c215d01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeebce34961a3e7f4828db5f8a755b350211d0c30801b82ea070e90092108e39",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variant4b59b720275601f3d6395a9d76e6707fa9a965092487824eb16f112f3c215d01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:162ce222-56d5-acff-0785-4e046fd603b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUpperKappa_succ_abs_le (j : ℕ) :
    |upperCubicKappa (j + 1)| ≤ (2 : ℝ) ^ (j + 1) * ((j + 1).factorial : ℝ) := by
  rw [upperCubicKappa_eq_moments, Nat.add_sub_cancel]
  calc
    _ ≤ |((j + 1 : ℕ) : ℝ) * cubicUpperCoefficientMoment j| +
        |cubicUpperCoefficientMoment (j + 1) / 2| := by
      simpa only [sub_eq_add_neg, abs_neg] using
        abs_add_le (((j + 1 : ℕ) : ℝ) * cubicUpperCoefficientMoment j)
          (-(cubicUpperCoefficientMoment (j + 1) / 2))
    _ = ((j + 1 : ℕ) : ℝ) * |cubicUpperCoefficientMoment j| +
        |cubicUpperCoefficientMoment (j + 1)| / 2 := by
      rw [abs_mul, abs_div, abs_of_nonneg (Nat.cast_nonneg _),
        abs_of_pos (by norm_num : (0 : ℝ) < 2)]
    _ ≤ ((j + 1 : ℕ) : ℝ) * ((2 : ℝ) ^ j * (j.factorial : ℝ)) +
        ((2 : ℝ) ^ (j + 1) * ((j + 1).factorial : ℝ)) / 2 :=
      add_le_add (mul_le_mul_of_nonneg_left (actualUpperCoefficientMoment_abs_le j)
        (Nat.cast_nonneg _))
        (div_le_div_of_nonneg_right (actualUpperCoefficientMoment_abs_le (j + 1))
          (by norm_num))
    _ = _ := by
      simp only [Nat.factorial_succ, Nat.cast_mul]
      rw [pow_succ]
      ring

/-- Full fractional coefficients keep all signed lower moments in their numerical bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variant4b59b720275601f3d6395a9d76e6707fa9a965092487824eb16f112f3c215d01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/81dd3af7f8988a70dc52ActualFullKappaNumericBounds/Variant4b59b720275601f3d6395a9d76e6707fa9a965092487824eb16f112f3c215d01.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2b6bddf7955fdae38a35d95f5008a08048e4fb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
