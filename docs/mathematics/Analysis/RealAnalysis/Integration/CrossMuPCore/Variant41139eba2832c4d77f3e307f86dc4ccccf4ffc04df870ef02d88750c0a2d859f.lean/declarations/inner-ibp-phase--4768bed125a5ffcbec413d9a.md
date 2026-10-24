# inner_ibp_phase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e010fcb4ea1553e1e0e674f05839954799b6061d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1deb047a-3722-a23e-67ef-2783b800839b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30a6ef5a-0739-bc21-ffe8-a2e27372efb0",
  "kind": "lemma",
  "lexical_name": "inner_ibp_phase",
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
  "slug": "inner-ibp-phase--4768bed125a5ffcbec413d9a",
  "source": {
    "blob": "e010fcb4ea1553e1e0e674f05839954799b6061d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4768bed125a5ffcbec413d9ad1ad6b75d6984c5f3a21ffe7cea601ae2ddb1e53",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30a6ef5a-0739-bc21-ffe8-a2e27372efb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inner_ibp_phase (hΦ : ContDiff ℝ 1 Φ) {y : ℝ} (hy : y ≠ 0) (θ τ : ℝ) :
    ∫ τ' in T..(2 * T), Φ (τ - τ') ^ 2 * Real.cos (τ' * y + θ)
      = (Φ (τ - 2 * T) ^ 2 * Real.sin (2 * T * y + θ) - Φ (τ - T) ^ 2 * Real.sin (T * y + θ)) / y
        + y⁻¹ * ∫ τ' in T..(2 * T), deriv (fun x => Φ x ^ 2) (τ - τ') * Real.sin (τ' * y + θ) := by
  set Ψ : ℝ → ℝ := fun x => Φ x ^ 2 with hΨdef
  have hΨ : ContDiff ℝ 1 Ψ := hΦ.pow 2
  have hΨd : ∀ x, HasDerivAt Ψ (deriv Ψ x) x := fun x =>
    (hΨ.differentiable one_ne_zero x).hasDerivAt
  have hΨ'c : Continuous (deriv Ψ) := hΨ.continuous_deriv le_rfl
  have hu : ∀ x ∈ Set.uIcc T (2 * T), HasDerivAt (fun τ' => Ψ (τ - τ')) (-deriv Ψ (τ - x)) x := by
    intro x _
    have h := (hΨd (τ - x)).comp x ((hasDerivAt_id x).const_sub τ)
    simpa [Function.comp_def] using h
  have hv : ∀ x ∈ Set.uIcc T (2 * T),
      HasDerivAt (fun τ' => Real.sin (τ' * y + θ) / y) (Real.cos (x * y + θ)) x := by
    intro x _
    have h := ((((hasDerivAt_id x).mul_const y).add_const θ).sin).div_const y
    simpa [mul_div_assoc, div_self hy] using h
  have hibp := intervalIntegral.integral_mul_deriv_eq_deriv_mul hu hv
    ((hΨ'c.comp (continuous_const.sub continuous_id)).neg.intervalIntegrable _ _)
    ((Real.continuous_cos.comp ((continuous_id.mul continuous_const).add
      continuous_const)).intervalIntegrable _ _)
  simp only [hΨdef] at hibp ⊢
  rw [hibp]
  have e : ∫ x in T..(2 * T), -deriv (fun x => Φ x ^ 2) (τ - x) * (Real.sin (x * y + θ) / y)
      = -(y⁻¹ * ∫ x in T..(2 * T), deriv (fun x => Φ x ^ 2) (τ - x) * Real.sin (x * y + θ)) := by
    rw [← intervalIntegral.integral_const_mul, ← intervalIntegral.integral_neg]
    congr 1; ext x; field_simp
  rw [e]
  field_simp
  ring

/-- **The oscillatory bound** (§5.4: "`|∫_I m(τ′)cos(τ′y)dτ′| ≤ (2 sup|m| + ∫_I|m′|)/y`"), in the explicit,
phase-shifted form: if `Φ, u ∈ C¹`, `|u| ≤ B` and `|u′| ≤ D` on `I = [T,2T]`, `T ≥ 0`, `y ≠ 0`, then for every
phase `θ`, `|𝓜[u, cos(·y + θ)]| ≤ (4B + D·T)·(∫_ℝ Φ²)/|y|` (covers `sin` at `θ = −π/2`; used for the
complex-coefficient prime sums of Theorem E, where `Re(c·e^{−iτy}) = ‖c‖·cos(τy − arg c)`; the case `θ = 0` is
`abs_Mform_cos_le` below). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CrossMuPCore/Variant41139eba2832c4d77f3e307f86dc4ccccf4ffc04df870ef02d88750c0a2d859f.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e010fcb4ea1553e1e0e674f05839954799b6061d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
