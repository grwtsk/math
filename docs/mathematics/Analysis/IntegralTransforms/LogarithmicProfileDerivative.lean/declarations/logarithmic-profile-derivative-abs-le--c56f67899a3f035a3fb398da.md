# logarithmic_profile_derivative_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3549235c-40bd-646e-18e8-86866fb9abfd",
  "kind": "theorem",
  "lexical_name": "logarithmic_profile_derivative_abs_le",
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
  "slug": "logarithmic-profile-derivative-abs-le--c56f67899a3f035a3fb398da",
  "source": {
    "blob": "3718d8b9bea91902ddfe11f9fa2a605cb5c3c582",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 51,
    "path": "GRWTSK/Analysis/IntegralTransforms/LogarithmicProfileDerivative.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c56f67899a3f035a3fb398da79dcea0d79e2fdd4e572da104bd0f0fa376e1f41",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/LogarithmicProfileDerivative.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3549235c-40bd-646e-18e8-86866fb9abfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logarithmic_profile_derivative_abs_le {F : ℝ → ℝ} {d t x B D : ℝ}
    (hx : 1 ≤ x) (hF : HasDerivAt F d (t + Real.log x))
    (price : |F (t + Real.log x)| ≤ B) (derivativePrice : |d| ≤ D) :
    |deriv (fun y : ℝ ↦ Real.log y / Real.sqrt y * F (t + Real.log y)) x| ≤
      (1 + Real.log x / 2) * B / (x * Real.sqrt x) +
        Real.log x * D / (x * Real.sqrt x) := by
  have positive : 0 < x := lt_of_lt_of_le zero_lt_one hx
  have logNonneg : 0 ≤ Real.log x := Real.log_nonneg hx
  have coefficient : |1 - Real.log x / 2| ≤ 1 + Real.log x / 2 := by
    calc
      |1 - Real.log x / 2| ≤ |(1 : ℝ)| + |Real.log x / 2| := by
        simpa only [sub_eq_add_neg, abs_neg] using
          abs_add_le (1 : ℝ) (-(Real.log x / 2))
      _ = 1 + Real.log x / 2 := by rw [abs_one, abs_of_nonneg (by positivity)]
  have numerator : |(1 - Real.log x / 2) * F (t + Real.log x) + Real.log x * d| ≤
      (1 + Real.log x / 2) * B + Real.log x * D := by
    calc
      _ ≤ |(1 - Real.log x / 2) * F (t + Real.log x)| + |Real.log x * d| :=
        abs_add_le _ _
      _ = |1 - Real.log x / 2| * |F (t + Real.log x)| + Real.log x * |d| := by
        rw [abs_mul, abs_mul, abs_of_nonneg logNonneg]
      _ ≤ (1 + Real.log x / 2) * B + Real.log x * D :=
        add_le_add (mul_le_mul coefficient price (abs_nonneg _) (by positivity))
          (mul_le_mul_of_nonneg_left derivativePrice logNonneg)
  have denominator : 0 < x * Real.sqrt x := mul_pos positive (Real.sqrt_pos.mpr positive)
  rw [(logarithmic_profile_hasDerivAt positive hF).deriv, abs_div,
    abs_of_pos denominator, ← add_div]
  exact div_le_div_of_nonneg_right numerator denominator.le

end

end GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileDerivative
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/IntegralTransforms/LogarithmicProfileDerivative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/IntegralTransforms/LogarithmicProfileDerivative.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3718d8b9bea91902ddfe11f9fa2a605cb5c3c582` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
