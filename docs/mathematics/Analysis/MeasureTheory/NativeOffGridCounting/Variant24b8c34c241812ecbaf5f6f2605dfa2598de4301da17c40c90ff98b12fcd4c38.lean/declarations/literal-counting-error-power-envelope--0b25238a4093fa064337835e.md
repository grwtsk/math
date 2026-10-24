# literal_counting_error_power_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4019ab7-4d08-f6fb-fa5b-577622c73397",
  "kind": "theorem",
  "lexical_name": "literal_counting_error_power_envelope",
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
  "slug": "literal-counting-error-power-envelope--0b25238a4093fa064337835e",
  "source": {
    "blob": "b1d5b75bc2ec99362199057bf9bc123cb41b9497",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 92,
    "path": "GRWTSK/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b25238a4093fa064337835ef27b8f6586d64ab64c4f3d78056f7b3209a5c82e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4019ab7-4d08-f6fb-fa5b-577622c73397`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_counting_error_power_envelope {x : ℝ} (hx : 1 ≤ x) :
    |(∫ y in (1 : ℝ)..x, density y) - x| ≤ (4 / 3) * x ^ (3 / 4 : ℝ) := by
  have hxpos : 0 < x := by linarith
  have hp : ‖Complex.exp (exponent * (Real.log x : ℂ))‖ = x ^ (3 / 4 : ℝ) := by
    rw [Complex.norm_exp, Real.rpow_def_of_pos hxpos]
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero,
      exponent_real_part]
    congr 1
    ring
  have hpow : 1 ≤ x ^ (3 / 4 : ℝ) := Real.one_le_rpow hx (by norm_num)
  have hosc : |(phase * (Complex.exp (exponent * (Real.log x : ℂ)) - 1)).re| ≤
      ‖phase‖ * (x ^ (3 / 4 : ℝ) + 1) := by
    calc
      _ ≤ ‖phase * (Complex.exp (exponent * (Real.log x : ℂ)) - 1)‖ := Complex.abs_re_le_norm _
      _ ≤ ‖phase‖ * (‖Complex.exp (exponent * (Real.log x : ℂ))‖ + ‖(1 : ℂ)‖) := by
        rw [norm_mul]
        exact mul_le_mul_of_nonneg_left (norm_sub_le _ _) (norm_nonneg _)
      _ = _ := by rw [hp, norm_one]
  rw [literal_density_exact_counting_error hx]
  have h := (abs_add_le (-1 : ℝ)
    (phase * (Complex.exp (exponent * (Real.log x : ℂ)) - 1)).re).trans
      (add_le_add (le_refl |(-1 : ℝ)|) hosc)
  norm_num only [abs_neg, abs_one] at h
  have hn := literal_phase_norm_le_one_sixth
  have hnonneg := norm_nonneg phase
  nlinarith

end
end GRWTSK.RiemannHypothesis.Conversation.NativeOffGridCounting
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/NativeOffGridCounting/Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1d5b75bc2ec99362199057bf9bc123cb41b9497` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
