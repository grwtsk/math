# compact_derivative_two_moments_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1ce226d32bd12d661bb1532a7597f06d48e14fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 419,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6ffbe20d35524d60efbf3a7e3e1e5080f3af1469cb2b658676b9a4f0d1d1d47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:059a57bd-845b-7958-408c-3612fdc142a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8446566-8694-7af6-dfbf-6fa7e9cdc46a",
  "kind": "theorem",
  "lexical_name": "compact_derivative_two_moments_zero",
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
  "slug": "compact-derivative-two-moments-zero--9cd0aa329a9818d4bf20052c",
  "source": {
    "blob": "f1ce226d32bd12d661bb1532a7597f06d48e14fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 419,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantc6ffbe20d35524d60efbf3a7e3e1e5080f3af1469cb2b658676b9a4f0d1d1d47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cd0aa329a9818d4bf20052cbade5cebe3629c58c96b647cb1e9404a9e7435c3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantc6ffbe20d35524d60efbf3a7e3e1e5080f3af1469cb2b658676b9a4f0d1d1d47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8446566-8694-7af6-dfbf-6fa7e9cdc46a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compact_derivative_two_moments_zero (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F)
    (hs : HasCompactSupport F)
    (hz0 : (∫ t : ℝ, Real.exp (t / 2) * F t) = 0)
    (hz1 : (∫ t : ℝ, t * Real.exp (t / 2) * F t) = 0) :
    (∫ t : ℝ, Real.exp (t / 2) * deriv F t) = 0 ∧
      (∫ t : ℝ, t * Real.exp (t / 2) * deriv F t) = 0 := by
  have hi (u : ℝ → ℝ) (hu : Continuous u) : Integrable (fun t ↦ u t * F t) :=
    (hu.mul hF.continuous).integrable_of_hasCompactSupport hs.mul_left
  have hid (u : ℝ → ℝ) (hu : Continuous u) : Integrable (fun t ↦ u t * deriv F t) :=
    (hu.mul hF.continuous_deriv_one).integrable_of_hasCompactSupport hs.deriv.mul_left
  have hb (u u' : ℝ → ℝ) (hu : Continuous u) (hu' : Continuous u')
      (hd : ∀ t, HasDerivAt u (u' t) t) :
      (∫ t, u t * deriv F t) = -(∫ t, u' t * F t) :=
    integral_mul_deriv_eq_deriv_mul_of_integrable (fun t _ ↦ hd t)
      (fun t _ ↦ (hF.differentiable (by norm_num) t).hasDerivAt)
      (hid u hu) (hi u' hu') (hi u hu)
  have he : Continuous (fun t : ℝ ↦ Real.exp (t / 2)) := by fun_prop
  constructor
  · have h := hb (fun t ↦ Real.exp (t / 2)) (fun t ↦ (1 / 2 : ℝ) * Real.exp (t / 2))
      he (by fun_prop) (fun t ↦ by
        apply (((hasDerivAt_id t).div_const 2).exp).congr_deriv
        simp [div_eq_mul_inv, mul_comm])
    simp only [mul_assoc, integral_const_mul, hz0, mul_zero, neg_zero] at h
    exact h
  · have h := hb (fun t ↦ t * Real.exp (t / 2))
      (fun t ↦ Real.exp (t / 2) + (1 / 2 : ℝ) * (t * Real.exp (t / 2)))
      (by fun_prop) (by fun_prop) (fun t ↦ by
        apply ((hasDerivAt_id t).mul (((hasDerivAt_id t).div_const 2).exp)).congr_deriv
        dsimp; ring)
    have hi0 := hi (fun t ↦ Real.exp (t / 2)) he
    have hi1 := hi (fun t ↦ t * Real.exp (t / 2)) (by fun_prop)
    simp_rw [add_mul, mul_assoc (1 / 2 : ℝ)] at h
    rw [integral_add hi0 (hi1.const_mul (1 / 2)), integral_const_mul, hz0, hz1] at h
    simpa using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantc6ffbe20d35524d60efbf3a7e3e1e5080f3af1469cb2b658676b9a4f0d1d1d47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantc6ffbe20d35524d60efbf3a7e3e1e5080f3af1469cb2b658676b9a4f0d1d1d47.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1ce226d32bd12d661bb1532a7597f06d48e14fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
