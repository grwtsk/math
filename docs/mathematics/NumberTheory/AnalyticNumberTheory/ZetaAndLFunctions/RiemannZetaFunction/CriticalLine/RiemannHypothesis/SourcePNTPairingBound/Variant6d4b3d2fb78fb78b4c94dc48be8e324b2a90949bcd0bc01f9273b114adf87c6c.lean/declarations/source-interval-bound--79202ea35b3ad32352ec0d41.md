# source_interval_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90f32bcf-ff93-231f-32f6-fcc3e564ad8d",
  "kind": "theorem",
  "lexical_name": "source_interval_bound",
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
  "slug": "source-interval-bound--79202ea35b3ad32352ec0d41",
  "source": {
    "blob": "3037aaacd5f596186d4ed0242dae8bad21778f22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant6d4b3d2fb78fb78b4c94dc48be8e324b2a90949bcd0bc01f9273b114adf87c6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79202ea35b3ad32352ec0d413ad35c1a9d82cdf324b11fa2fcce6c00aaecc3f0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant6d4b3d2fb78fb78b4c94dc48be8e324b2a90949bcd0bc01f9273b114adf87c6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90f32bcf-ff93-231f-32f6-fcc3e564ad8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_interval_bound (A a b D : ℝ) (hA : 1 ≤ A) (hab : a ≤ b)
    (hD : 0 ≤ D) (he : ∀ t ∈ Icc a b, |errorProfile t| ≤ D*Real.exp t) :
    |∫ t in a..b, errorProfile t * sourceWeight explicitSecondDerivative A t| ≤
      2*D*correlationBudget*Real.exp (b/2) := by
  have hb := intervalIntegral.norm_integral_le_of_norm_le
    (f := fun t ↦ errorProfile t * sourceWeight explicitSecondDerivative A t) hab
    (Eventually.of_forall (fun t ht ↦ by
      simpa only [Real.norm_eq_abs, Function.comp_apply, id_eq] using source_integrand_bound A t D hA hD
        (he t ⟨ht.1.le, ht.2⟩)))
    (((Real.continuous_exp.comp (continuous_id.div_const 2)).const_mul
      (D*correlationBudget)).intervalIntegrable (μ := volume) a b)
  simp only [Function.comp_apply, id_eq] at hb
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul, exp_half_intervalIntegral] at hb
  apply hb.trans
  nlinarith [mul_nonneg hD correlationBudget_nonneg,
    Real.exp_pos (a/2), Real.exp_pos (b/2)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant6d4b3d2fb78fb78b4c94dc48be8e324b2a90949bcd0bc01f9273b114adf87c6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant6d4b3d2fb78fb78b4c94dc48be8e324b2a90949bcd0bc01f9273b114adf87c6c.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3037aaacd5f596186d4ed0242dae8bad21778f22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
