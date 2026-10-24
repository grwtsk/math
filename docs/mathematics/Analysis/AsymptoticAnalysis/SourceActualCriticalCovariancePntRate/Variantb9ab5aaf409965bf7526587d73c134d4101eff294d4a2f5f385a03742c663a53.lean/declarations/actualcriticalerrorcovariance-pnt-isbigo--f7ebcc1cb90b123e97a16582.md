# actualCriticalErrorCovariance_Pnt_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:679e21b2-babb-e0ba-355c-bbef3990122f",
  "kind": "theorem",
  "lexical_name": "actualCriticalErrorCovariance_Pnt_isBigO",
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
  "slug": "actualcriticalerrorcovariance-pnt-isbigo--f7ebcc1cb90b123e97a16582",
  "source": {
    "blob": "45d363dd5f4e45a1aa179454c32bd28a3cfc8877",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 195,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variantb9ab5aaf409965bf7526587d73c134d4101eff294d4a2f5f385a03742c663a53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7ebcc1cb90b123e97a16582749726193b2482638b6db8c97dcfcb8e35ee8cfa",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variantb9ab5aaf409965bf7526587d73c134d4101eff294d4a2f5f385a03742c663a53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:679e21b2-babb-e0ba-355c-bbef3990122f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalErrorCovariance_Pnt_isBigO :
    ∃ c > 0, actualCriticalErrorCovariance =O[atTop]
      fun A : ℝ => Real.exp (A - c * A ^ ((1 : ℝ) / 10)) / A ^ 4 := by
  obtain ⟨c, hc, hn⟩ := actualNormalizedCriticalCovariance_Pnt_isBigO
  obtain ⟨C, hC⟩ := isBigO_iff.mp hn
  refine ⟨c, hc, isBigO_iff.mpr ⟨C, ?_⟩⟩
  filter_upwards [hC, eventually_ge_atTop (1 : ℝ)] with A hA hpos
  have hApos : 0 < A := by linarith
  have hpow : 0 < A ^ 4 := by positivity
  rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_div,
    Real.abs_exp, abs_of_pos hpow]
  rw [Real.norm_eq_abs, Real.norm_eq_abs, Real.abs_exp] at hA
  unfold actualNormalizedCriticalCovariance at hA
  rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ A ^ 4 * Real.exp (-A))] at hA
  have hh := mul_le_mul_of_nonneg_right hA (Real.exp_pos A).le
  have hex : Real.exp (-A) * Real.exp A = 1 := by
    rw [← Real.exp_add, neg_add_cancel, Real.exp_zero]
  have hl : (A ^ 4 * Real.exp (-A) * |actualCriticalErrorCovariance A|) *
      Real.exp A = A ^ 4 * |actualCriticalErrorCovariance A| := by
    calc
      _ = A ^ 4 * |actualCriticalErrorCovariance A| *
          (Real.exp (-A) * Real.exp A) := by ring
      _ = _ := by rw [hex, mul_one]
  have hr : (C * Real.exp (-c * A ^ ((1 : ℝ) / 10))) * Real.exp A =
      C * Real.exp (A - c * A ^ ((1 : ℝ) / 10)) := by
    rw [mul_assoc, ← Real.exp_add]
    congr 2
    ring
  rw [hl, hr] at hh
  apply (le_div_iff₀ hpow).2
  simpa only [div_mul_eq_mul_div, mul_div_cancel₀ _ hpow.ne'] using hh

end
end FormalResearch.RiemannHypothesis.SourceActualCriticalCovariancePntRate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variantb9ab5aaf409965bf7526587d73c134d4101eff294d4a2f5f385a03742c663a53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceActualCriticalCovariancePntRate/Variantb9ab5aaf409965bf7526587d73c134d4101eff294d4a2f5f385a03742c663a53.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45d363dd5f4e45a1aa179454c32bd28a3cfc8877` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
