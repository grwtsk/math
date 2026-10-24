# signedHeatRemainder_polynomial_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9726b545-d316-e347-475d-5913d460c5ff",
  "kind": "theorem",
  "lexical_name": "signedHeatRemainder_polynomial_error",
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
  "slug": "signedheatremainder-polynomial-error--2110c5640e767a51348addc5",
  "source": {
    "blob": "c2900e246d8cace336edf4924e96672d0a59d216",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 153,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2110c5640e767a51348addc589b51eddad586bc1dd8c476046859fc2fd0d42ba",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9726b545-d316-e347-475d-5913d460c5ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedHeatRemainder_polynomial_error (hk : Measurable k) (hM : 0 ≤ M)
    (hb : ∀ x, |k x| ≤ M) (N : ℕ) {τ : ℝ} (hτ : 0 ≤ τ) :
    |signedHeatRemainder μ k τ - (∫ x, heatRemainderPolynomial N τ (k x) ∂μ)| ≤
      τ ^ (N + 2) / (N + 2).factorial * (∫ x, |k x| ^ (2 * N + 5) ∂μ) := by
  have hr := heatRemainder_integrable hk hM hb (μ := μ) τ
  have hm := absolutePower_integrable hk hM hb (μ := μ) (2 * N + 5)
  have he : Integrable (fun x => k x * (1 - Real.exp (-τ * k x ^ 2)) -
      heatRemainderPolynomial N τ (k x)) μ := by
    apply (hm.const_mul (τ ^ (N + 2) / (N + 2).factorial)).mono'
    · unfold heatRemainderPolynomial negExpPolynomial
      fun_prop
    · exact ae_of_all _ (fun x => by
        simpa only [Real.norm_eq_abs] using heatRemainderPolynomial_error N hτ (k x))
  have hp : Integrable (fun x => heatRemainderPolynomial N τ (k x)) μ := by
    apply (hr.sub he).congr
    exact ae_of_all _ (fun x => by dsimp only [Pi.sub_apply]; ring)
  have hi : Integrable k μ := by
    simpa only [neg_zero, zero_mul, Real.exp_zero, mul_one] using
      signedHeat_integrable hk hM hb (μ := μ) 0
  have heq : (∫ x, k x * (1 - Real.exp (-τ * k x ^ 2)) ∂μ) =
      signedHeatRemainder μ k τ := by
    have hd := signedHeat_decomposition hk hM hb (μ := μ) hτ
    have hx : (fun x => k x * (1 - Real.exp (-τ * k x ^ 2))) =
        fun x => k x - k x * Real.exp (-τ * k x ^ 2) := by funext x; ring
    rw [hx, integral_sub hi (signedHeat_integrable hk hM hb τ)]
    unfold signedHeat at hd
    linarith
  rw [← heq]
  exact integral_heatRemainderPolynomial_error μ k N hτ hr hp hm

/-- The displayed paper tail bound applies to the complete signed source
at each fixed arithmetic scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2900e246d8cace336edf4924e96672d0a59d216` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
