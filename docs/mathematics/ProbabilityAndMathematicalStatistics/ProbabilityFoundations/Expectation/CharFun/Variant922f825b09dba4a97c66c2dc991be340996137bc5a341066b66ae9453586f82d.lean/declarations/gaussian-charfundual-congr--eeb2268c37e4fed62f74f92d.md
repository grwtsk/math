# gaussian_charFunDual_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6956ae9-01ad-9cfc-d91e-985ca860f069",
  "kind": "lemma",
  "lexical_name": "gaussian_charFunDual_congr",
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
  "slug": "gaussian-charfundual-congr--eeb2268c37e4fed62f74f92d",
  "source": {
    "blob": "89714d32b9541081be71dd90e6b93b8ffdfd76be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 92,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eeb2268c37e4fed62f74f92df24ee5b6b967e7fcc139ebbba3faaaa4adb2f602",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6956ae9-01ad-9cfc-d91e-985ca860f069`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gaussian_charFunDual_congr [IsFiniteMeasure μ] {m : E}
    {f : StrongDual ℝ E →L[ℝ] StrongDual ℝ E →L[ℝ] ℝ}
    (hf : f.toBilinForm.IsPosSemidef) (h : ∀ L, charFunDual μ L = exp (L m * I - f L L / 2)) :
    m = ∫ x, x ∂μ ∧ f = covarianceBilinDual μ := by
  have h' := isGaussian_iff_gaussian_charFunDual.2 ⟨m, f, hf, h⟩
  simp_rw [h'.charFunDual_eq', Complex.exp_eq_exp_iff_exists_int] at h
  choose n hn using h
  have h L : (n L : ℂ) = (L (∫ x, id x ∂μ) * I - covarianceBilinDual μ L L / 2 -
      L m * I + f L L / 2) / (2 * π * I) := by
    rw [hn L]
    field_simp
    ring
  have : Continuous n := by
    rw [← Complex.isometry_intCast.comp_continuous_iff]
    change Continuous (fun L ↦ (n L : ℂ))
    simp_rw [h]
    fun_prop
  have := (IsLocallyConstant.iff_continuous n).2 this |>.eq_const
  have this L : n L = 0 := by
    rw [this 0, ← Int.cast_inj (α := ℂ)]
    simp [h]
  simp only [id_eq, this, Int.cast_zero, zero_mul, add_zero, Complex.ext_iff, sub_re, mul_re,
    ofReal_re, I_re, mul_zero, ofReal_im, I_im, mul_one, sub_self, div_ofNat_re, zero_sub, neg_inj,
    ne_eq, OfNat.ofNat_ne_zero, not_false_eq_true, div_left_inj', sub_im, mul_im, div_ofNat_im,
    zero_div, sub_zero] at hn
  constructor
  · rw [SeparatingDual.eq_iff_forall_dual_eq (R := ℝ)]
    simp [hn]
  · rw [← toBilinForm_inj]
    apply LinearMap.BilinForm.ext_of_isSymm hf.isSymm isPosSemidef_covarianceBilinDual.isSymm
    intro x
    simp [covarianceBilinDual_self_eq_variance IsGaussian.memLp_two_id, (hn x).1.symm]

/-- Two Gaussian measures are equal if they have same mean and same covariance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/CharFun/Variant922f825b09dba4a97c66c2dc991be340996137bc5a341066b66ae9453586f82d.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89714d32b9541081be71dd90e6b93b8ffdfd76be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
