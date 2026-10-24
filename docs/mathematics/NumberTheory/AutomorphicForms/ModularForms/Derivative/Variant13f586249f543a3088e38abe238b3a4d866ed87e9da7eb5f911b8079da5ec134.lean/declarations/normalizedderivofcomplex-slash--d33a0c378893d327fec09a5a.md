# normalizedDerivOfComplex_slash

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef86e9ee-d343-eb88-e4e8-2982e54e0240",
  "kind": "lemma",
  "lexical_name": "normalizedDerivOfComplex_slash",
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
  "slug": "normalizedderivofcomplex-slash--d33a0c378893d327fec09a5a",
  "source": {
    "blob": "01573ec68cb07af47909f04352ee6d894ad8232a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 188,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant13f586249f543a3088e38abe238b3a4d866ed87e9da7eb5f911b8079da5ec134.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d33a0c378893d327fec09a5aa796c1c7f55bf8d1b2e434b9e468cf0f1bfdd1bd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant13f586249f543a3088e38abe238b3a4d866ed87e9da7eb5f911b8079da5ec134.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef86e9ee-d343-eb88-e4e8-2982e54e0240`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma normalizedDerivOfComplex_slash {k : ℤ} {F : ℍ → ℂ} (hF : MDiff F)
    {g : GL (Fin 2) ℝ} (hg : 0 < g.val.det) :
    D (F ∣[k] g) = fun z : ℍ ↦ (g.val.det : ℂ)⁻¹ * (D F ∣[k + 2] g) z -
      (k : ℂ) * (2 * π * I)⁻¹ * (g 1 0 / denom g z) * (F ∣[k] g) z := by
  have hdet : g.det.val = g.val.det := Matrix.GeneralLinearGroup.val_det_apply g
  have hdetℂ : (g.val.det : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hg.ne'
  have hσ (x) : σ g x = x := by grind [σ, ContinuousAlgEquiv.refl_apply]
  ext z
  simp only [normalizedDerivOfComplex, ModularForm.slash_apply]
  have hz := denom_ne_zero g z
  have h_smul : HasDerivAt (fun w ↦ ↑(g • ofComplex w) : ℂ → ℂ)
      ((g.val.det : ℂ) / denom g z ^ 2) ↑z := (hasStrictDerivAt_smul hg z).hasDerivAt
  have h_F : HasDerivAt (F ∘ ofComplex) (deriv (F ∘ ofComplex) ↑(g • ofComplex (z : ℂ)))
      ↑(g • ofComplex (z : ℂ)) :=
    (ofComplex_apply z).symm ▸ (mdifferentiableAt_iff.mp (hF (g • z))).hasDerivAt
  have h_denom : HasDerivAt (fun w ↦ (denom g w) ^ (-k))
      (-k * (g 1 0 : ℂ) * (denom g z) ^ (-k - 1)) ↑z := by
    simpa using hasDerivAt_denom_zpow g (-k) z
  have hcomp : ((F ∣[k] g) ∘ ofComplex) =ᶠ[𝓝 ↑z]
      fun w ↦ (g.val.det : ℂ) ^ (k - 1) *
        ((F ∘ ofComplex) ↑(g • ofComplex w) * (denom g w) ^ (-k)) := by
    filter_upwards [isOpen_upperHalfPlaneSet.mem_nhds z.im_pos] with w hw
    grind [ofComplex_apply_of_im_pos, ofComplex_apply, ModularForm.slash_apply]
  rw [((((h_F.comp (z : ℂ) h_smul).mul h_denom).const_mul _).congr_of_eventuallyEq hcomp).deriv]
  simp only [hσ, hdet, abs_of_pos hg, ofComplex_apply, Function.comp_apply]
  rw [show k + 2 - 1 = (k - 1) + 2 by ring, show -(k + 2) = -k + -2 by ring,
    zpow_add₀ hdetℂ, zpow_add₀ hz, zpow_sub_one₀ hz]
  field

/-- The `SL(2, ℤ)` case of `normalizedDerivOfComplex_slash`, where the determinant factor is `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant13f586249f543a3088e38abe238b3a4d866ed87e9da7eb5f911b8079da5ec134.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Derivative/Variant13f586249f543a3088e38abe238b3a4d866ed87e9da7eb5f911b8079da5ec134.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01573ec68cb07af47909f04352ee6d894ad8232a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
