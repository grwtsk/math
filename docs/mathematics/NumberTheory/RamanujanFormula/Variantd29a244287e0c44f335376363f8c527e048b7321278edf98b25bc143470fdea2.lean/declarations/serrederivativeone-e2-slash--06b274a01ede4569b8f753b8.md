# serreDerivativeOne_E2_slash

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b09b5cda-ea1d-abc2-6f27-96c4a4ef7e37",
  "kind": "lemma",
  "lexical_name": "serreDerivativeOne_E2_slash",
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
  "slug": "serrederivativeone-e2-slash--06b274a01ede4569b8f753b8",
  "source": {
    "blob": "50c5fac775e91d742b8b8f90a5b25a50fdf84761",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 94,
    "path": "GRWTSK/NumberTheory/RamanujanFormula/Variantd29a244287e0c44f335376363f8c527e048b7321278edf98b25bc143470fdea2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06b274a01ede4569b8f753b88ada5179c683d5e037a92be7aa1c2e6e55b02923",
  "verification": {
    "reference": "docs/verification/NumberTheory/RamanujanFormula/Variantd29a244287e0c44f335376363f8c527e048b7321278edf98b25bc143470fdea2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b09b5cda-ea1d-abc2-6f27-96c4a4ef7e37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma serreDerivativeOne_E2_slash (γ : SL(2, ℤ)) :
    serreDerivative 1 E2 ∣[(4 : ℤ)] γ = serreDerivative 1 E2 := by
  have hD2 : MDiff (D2 γ) := mdifferentiable_const.div (mdifferentiable_denom _) (denom_ne_zero _)
  -- One can apply slash-equivariance of Serre derivative after rewriting in terms of `∂₂`
  have h₁₂ : serreDerivative 1 E2 = serreDerivative 2 E2 + (12⁻¹ : ℂ) • (E2 * E2) := by
    ext z
    simp; ring
  have hslash : serreDerivative 1 E2 ∣[(4 : ℤ)] γ =
      serreDerivative 2 (E2 ∣[(2 : ℤ)] γ) +
        (12⁻¹ : ℂ) • ((E2 ∣[(2 : ℤ)] γ) * (E2 ∣[(2 : ℤ)] γ)) := by
    have heq : serreDerivative 2 E2 ∣[(4 : ℤ)] γ = serreDerivative 2 (E2 ∣[(2 : ℤ)] γ) := by
      grind [serreDerivative_slash_equivariant (k := 2) E2_mdifferentiable (γ := γ)]
    rw [h₁₂, SlashAction.add_slash, SL_smul_slash, heq, show (4 : ℤ) = 2 + 2 from rfl,
      mul_slash_SL2]
  -- Derivative of `D2`
  have hDD2 : D (D2 γ) = (1 / (24 * riemannZeta 2)) • (D2 γ * D2 γ) := by
    rw [normalizedDerivOfComplex_D2, riemannZeta_two]
    ext z
    simp only [Pi.smul_apply, Pi.mul_apply, smul_eq_mul, EisensteinSeries.D2]
    field_simp [denom_ne_zero, Complex.ofReal_ne_zero.mpr Real.pi_ne_zero]
    linear_combination -24 * (γ 1 0 : ℂ) ^ 2 * I_sq
  -- Substitute `E₂ ∣[2] γ = E₂ - (2 ζ(2))⁻¹ • D2 γ` and expand `∂₂` by linearity
  rw [hslash, E2_slash_action, serreDerivative_sub 2 E2_mdifferentiable (hD2.const_smul _),
    serreDerivative_smul 2 _ hD2]
  ext z
  simp [hDD2]
  ring

/-- The weight-1 Serre derivative of `E₂`, packaged as a modular form of weight `4`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/RamanujanFormula/Variantd29a244287e0c44f335376363f8c527e048b7321278edf98b25bc143470fdea2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/RamanujanFormula/Variantd29a244287e0c44f335376363f8c527e048b7321278edf98b25bc143470fdea2.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50c5fac775e91d742b8b8f90a5b25a50fdf84761` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
