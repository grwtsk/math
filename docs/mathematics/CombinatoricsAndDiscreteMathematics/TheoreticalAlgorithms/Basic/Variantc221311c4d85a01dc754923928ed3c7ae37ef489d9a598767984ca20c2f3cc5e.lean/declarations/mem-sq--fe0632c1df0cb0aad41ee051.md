# mem_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7409443-d0f9-9b03-8907-399087d28113",
  "kind": "theorem",
  "lexical_name": "mem_sq",
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
  "slug": "mem-sq--fe0632c1df0cb0aad41ee051",
  "source": {
    "blob": "a3c906d8899028f064ac01abf4b1db912db27469",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 581,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc221311c4d85a01dc754923928ed3c7ae37ef489d9a598767984ca20c2f3cc5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe0632c1df0cb0aad41ee0518cc3b81ff2b97a0a61ae47d4da294cfbc1d4b583",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc221311c4d85a01dc754923928ed3c7ae37ef489d9a598767984ca20c2f3cc5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7409443-d0f9-9b03-8907-399087d28113`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 581–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_sq {a : AffineForm} {eps : NoiseAssignment} {v : ℝ}
    (hvalid : validNoise eps)
    (hmem : mem_affine a eps v) :
    mem_affine (sq a) eps (v * v) := by
  -- The sq operation is an optimized version of mul a a
  -- The proof follows the same pattern as mem_mul but with a = b
  obtain ⟨ea, hea, heqa⟩ := hmem

  let La := linearSum a.coeffs eps
  let Da := La + ea

  -- The new error term for sq
  let err_new := 2 * (a.c0 : ℝ) * ea + Da * Da

  use err_new
  constructor

  -- Part 1: Bound |err_new| ≤ new_r
  · simp only [sq]
    have h1 : |2 * (a.c0 : ℝ) * ea| ≤ 2 * |(a.c0 : ℝ)| * (a.r : ℝ) := by
      calc |2 * (a.c0 : ℝ) * ea|
          = |2| * |(a.c0 : ℝ)| * |ea| := by rw [abs_mul, abs_mul]
        _ = 2 * |(a.c0 : ℝ)| * |ea| := by norm_num
        _ ≤ 2 * |(a.c0 : ℝ)| * (a.r : ℝ) := by
            have h := abs_nonneg (a.c0 : ℝ)
            nlinarith [hea]
    have h2 : |Da * Da| = |Da| * |Da| := abs_mul Da Da

    have hLa_bound : |La| ≤ (sumAbs a.coeffs : ℝ) := linearSum_bounded_weak a.coeffs eps hvalid

    have hDa_bound : |Da| ≤ (deviationBound a : ℝ) := by
      calc |Da| = |La + ea| := rfl
        _ ≤ |La| + |ea| := abs_add_le _ _
        _ ≤ (sumAbs a.coeffs : ℝ) + (a.r : ℝ) := by linarith
        _ = (deviationBound a : ℝ) := by simp [deviationBound]; ring

    have hDaDa : |Da * Da| ≤ (deviationBound a : ℝ) * (deviationBound a : ℝ) := by
      rw [h2]
      apply mul_le_mul hDa_bound hDa_bound (abs_nonneg _)
      exact_mod_cast deviationBound_nonneg a

    have hfinal : |err_new| ≤ 2 * |(a.c0 : ℝ)| * (a.r : ℝ) +
                            (deviationBound a : ℝ) * (deviationBound a : ℝ) := by
      calc |err_new|
          = |2 * (a.c0 : ℝ) * ea + Da * Da| := rfl
        _ ≤ |2 * (a.c0 : ℝ) * ea| + |Da * Da| := abs_add_le _ _
        _ ≤ 2 * |(a.c0 : ℝ)| * (a.r : ℝ) + (deviationBound a : ℝ) * (deviationBound a : ℝ) := by linarith

    calc |err_new|
        ≤ 2 * |(a.c0 : ℝ)| * (a.r : ℝ) + (deviationBound a : ℝ) * (deviationBound a : ℝ) := hfinal
      _ = ((2 * |a.c0| * a.r + deviationBound a * deviationBound a : ℚ) : ℝ) := by
          simp only [deviationBound]; push_cast; rw [(Rat.cast_abs a.c0).symm]

  -- Part 2: Show v * v = evalLinear (sq a) eps + err_new
  · simp only [evalLinear, sq]
    simp only [evalLinear] at heqa
    rw [heqa]
    -- Algebra: (ca + La + ea)^2 = ca^2 + 2*ca*(La + ea) + (La + ea)^2
    --        = ca^2 + 2*ca*La + 2*ca*ea + (La + ea)^2
    -- linearSum of scaled coefficients = scaled linearSum
    simp only [linearSum_map_mul]
    push_cast
    ring

/-- If v is represented by af, then v ∈ toInterval af -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc221311c4d85a01dc754923928ed3c7ae37ef489d9a598767984ca20c2f3cc5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc221311c4d85a01dc754923928ed3c7ae37ef489d9a598767984ca20c2f3cc5e.lean#L581).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3c906d8899028f064ac01abf4b1db912db27469` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
