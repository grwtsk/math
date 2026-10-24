# digamma_two_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0828ce2d-e58b-b72b-95e4-9b49321684de",
  "kind": "theorem",
  "lexical_name": "digamma_two_mul",
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
  "slug": "digamma-two-mul--b2f6655ff9d8307f11f38113",
  "source": {
    "blob": "d627d94a189a80cbdd3936f8603734529af80ede",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 132,
    "path": "GRWTSK/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2f6655ff9d8307f11f3811312f8ac832999212633d8c1831a1d239ee8e4a924",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0828ce2d-e58b-b72b-95e4-9b49321684de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem digamma_two_mul {s : ℂ} (hs : ∀ m : ℕ, 2 * s ≠ -(m : ℂ)) :
    digamma (2 * s) = (1 / 2) * (digamma s + digamma (s + 1 / 2)) + log 2 := by
  have hs₀ (m : ℕ) : s ≠ -(m : ℂ) := fun h ↦
    hs (2 * m) (by push_cast; linear_combination 2 * h)
  have hs₁ (m : ℕ) : s + 1 / 2 ≠ -(m : ℂ) := fun h ↦
    hs (2 * m + 1) (by push_cast; linear_combination 2 * h)
  have hpow : (2 : ℂ) ^ (1 - 2 * s) ≠ 0 := by simp [cpow_eq_zero_iff]
  have hd2 := hasDerivAt_id' s |>.const_mul 2 |>.const_sub 1 |>.const_cpow <|
    .inl (by norm_num : (2 : ℂ) ≠ 0)
  -- take logarithmic derivatives of Legendre's formula `Γ(s) Γ(s + 1/2) = Γ(2s) 2^(1-2s) √π`
  suffices key : digamma s + digamma (s + 1 / 2) = 2 * digamma (2 * s) - 2 * log 2 by
    linear_combination (-1 / 2 : ℂ) * key
  calc
    digamma s + digamma (s + 1 / 2) = logDeriv (fun z ↦ Gamma z * Gamma (z + 1 / 2)) s := by
      rw [logDeriv_fun_mul (g := fun z ↦ Gamma (z + 1 / 2)) s (Gamma_ne_zero hs₀)
        (Gamma_ne_zero hs₁) (by fun_prop) (by fun_prop),
        ((hasDerivAt_id' s).add_const (1 / 2)).logDeriv_Gamma hs₁, ← digamma_def]
      ring
    _ = logDeriv (fun z ↦ Gamma (2 * z) * (2 : ℂ) ^ (1 - 2 * z) * (√π : ℂ)) s := by
      rw [funext Gamma_mul_Gamma_add_half]
    _ = 2 * digamma (2 * s) - 2 * log 2 := by
      rw [logDeriv_mul_const s (√π : ℂ) (by grind [ofReal_eq_zero, Real.pi_pos]),
        logDeriv_fun_mul (f := fun z ↦ Gamma (2 * z)) s
          (Gamma_ne_zero hs) hpow (by fun_prop) (by fun_prop),
        ((hasDerivAt_id' s).const_mul 2).logDeriv_Gamma hs, mul_one, sub_eq_add_neg]
      congr! 1
      rw [logDeriv_apply, hd2.deriv, div_eq_iff hpow]
      ring

end Complex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Digamma/Variant147580a2a5b39e3a54057819686f1fdd2ac247577b03be75703027732a06b35c.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d627d94a189a80cbdd3936f8603734529af80ede` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
