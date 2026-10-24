# indicator_fourier_norm_sq_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1570528-bafe-b0de-72f1-41ada2d8ed1b",
  "kind": "theorem",
  "lexical_name": "indicator_fourier_norm_sq_integrable",
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
  "slug": "indicator-fourier-norm-sq-integrable--6a4a65f0ef61a9c2f5181eb2",
  "source": {
    "blob": "940c5d71709e76b0932d44688cef08e036426a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 99,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variante3d9521aaa3665d715dfe13ceda2d19f52aa3ae3db1303f8698259ea5c5fd65f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a4a65f0ef61a9c2f5181eb22572ae141b290b907b423a08319fd5ff431e073d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variante3d9521aaa3665d715dfe13ceda2d19f52aa3ae3db1303f8698259ea5c5fd65f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1570528-bafe-b0de-72f1-41ada2d8ed1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indicator_fourier_norm_sq_integrable (f f' : ℝ → ℝ) (a b : ℝ) (hab : a ≤ b)
    (hf : Continuous f) (hf' : Continuous f') (hd : ∀ x, HasDerivAt f (f' x) x) :
    Integrable (fun ξ ↦ Complex.normSq (sourceFourier ((Icc a b).indicator f) ξ)) := by
  let B := ∫ x, ‖(Icc a b).indicator f x‖
  let D := |f b| + |f a| + ∫ x, ‖(Icc a b).indicator f' x‖
  have hm : AEStronglyMeasurable
      (fun ξ ↦ Complex.normSq (sourceFourier ((Icc a b).indicator f) ξ)) :=
    (Complex.continuous_normSq.comp
      (sourceFourier_continuous (integrable_zeroExtension f hf a b))).aestronglyMeasurable
  apply (integrable_inv_one_add_sq.const_mul (B ^ 2 + D ^ 2)).mono' hm
  filter_upwards [] with ξ
  rw [Real.norm_eq_abs, abs_of_nonneg (Complex.normSq_nonneg _),
    Complex.normSq_eq_norm_sq, ← div_eq_mul_inv]
  apply (le_div_iff₀ (by positivity : 0 < 1 + ξ ^ 2)).2
  have hn := norm_nonneg (sourceFourier ((Icc a b).indicator f) ξ)
  have hb := sourceFourier_norm_le ((Icc a b).indicator f) ξ
  have hd' := source_fourier_indicator_frequency_bound f f' a b ξ hab hf hf' hd
  have hb0 : 0 ≤ B := integral_nonneg (fun x ↦ norm_nonneg _)
  have hd0 : 0 ≤ D := by
    dsimp [D]
    exact add_nonneg (add_nonneg (abs_nonneg _) (abs_nonneg _))
      (integral_nonneg (fun x ↦ abs_nonneg _))
  have hb2 := (sq_le_sq₀ hn hb0).2 hb
  have hd2 := (sq_le_sq₀ (mul_nonneg (abs_nonneg ξ) hn) hd0).2 hd'
  simp only [mul_pow, sq_abs] at hd2
  nlinarith

/-- The fixed bump's fourth interior derivative, whose endpoints need not vanish. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variante3d9521aaa3665d715dfe13ceda2d19f52aa3ae3db1303f8698259ea5c5fd65f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleCorrelationRegularity/Variante3d9521aaa3665d715dfe13ceda2d19f52aa3ae3db1303f8698259ea5c5fd65f.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `940c5d71709e76b0932d44688cef08e036426a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
