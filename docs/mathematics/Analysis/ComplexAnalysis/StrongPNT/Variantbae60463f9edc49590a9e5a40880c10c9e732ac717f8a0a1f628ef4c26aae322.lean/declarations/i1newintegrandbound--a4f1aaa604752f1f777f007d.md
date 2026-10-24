# I1NewIntegrandBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7525cf4b-ad8f-be8a-d0d6-4ae021eef440",
  "kind": "lemma",
  "lexical_name": "I1NewIntegrandBound",
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
  "slug": "i1newintegrandbound--a4f1aaa604752f1f777f007d",
  "source": {
    "blob": "febb261e8c76e0d4aec8c8de1ca02559ac821fcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1995,
    "line": 1930,
    "path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4f1aaa604752f1f777f007d934ad2b7aa047b823e4045505085e9d19d1a8328",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7525cf4b-ad8f-be8a-d0d6-4ae021eef440`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1930–1995.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma I1NewIntegrandBound {SmoothingF : ℝ → ℝ}
    (suppSmoothingF : Function.support SmoothingF ⊆ Set.Icc (1 / 2) 2)
    (ContDiffSmoothingF : ContDiff ℝ 1 SmoothingF) :
    ∃ C > 0, ∀ {ε X T : ℝ} (_εinIoo : ε ∈ Set.Ioo 0 1) (_Xgt3 : 3 < X) (_Tgt3 : 3 < T)
    (t : ℝ) (_ht : t ≤ -T),
    ‖SmoothedChebyshevIntegrand SmoothingF ε X (1 + (Real.log X)⁻¹ + t * I)‖ ≤
    C * (X / ε) * (Real.log (-t))^2 / (-t)^2 := by
  obtain ⟨C₁, hC₁₀, hC₁⟩ := @LogDerivZetaBoundForI1
  obtain ⟨C₂, hC₂₀, hC₂⟩ := @MellinOfSmooth1b SmoothingF ContDiffSmoothingF suppSmoothingF
  refine ⟨C₁ * C₂ * Real.exp 1, by positivity, fun {ε X T} hε hX hT t ht ↦ ?_⟩
  specialize hC₁ hX hT t ht
  specialize hC₂ 1 zero_lt_one (1 + (Real.log X)⁻¹ + t * Complex.I) ?_ ?_ ε hε.1 hε.2 <;> norm_num at *
  · exact Real.log_nonneg (by linarith)
  · linarith [inv_le_one_of_one_le₀ (show 1 ≤ Real.log X from by
      rw [Real.le_log_iff_exp_le (by linarith)]
      exact Real.exp_one_lt_d9.le.trans (by grind))]
  · refine (mul_le_mul_of_nonneg_right
        (mul_le_mul hC₁ hC₂ (by positivity) (by positivity)) (by positivity)).trans ?_
    rw [Complex.norm_cpow_of_ne_zero (by norm_cast; linarith)]
    norm_num [Complex.normSq, Complex.sq_norm]
    ring_nf
    norm_num
    rw [abs_of_pos (by positivity)]
    norm_num [Complex.arg]
    ring_nf
    norm_num
    rw [if_pos (by positivity)]
    norm_num [Real.rpow_add (by positivity : 0 < X), Real.rpow_one]
    ring_nf
    norm_num
    rw [show X ^ (Real.log X)⁻¹ = Real.exp 1 by
      rw [Real.rpow_def_of_pos (by positivity)]
      norm_num [Real.exp_ne_zero, ne_of_gt (Real.log_pos (by linarith : 1 < X))]]
    ring_nf
    norm_num
    field_simp
    gcongr
    · exact mul_pos (sq_pos_of_neg (by linarith)) hε.1
    · linarith
    · exact le_add_of_nonneg_left <| add_nonneg (add_nonneg zero_le_one
          (div_nonneg zero_le_two (Real.log_nonneg (by linarith))))
          (div_nonneg zero_le_one (sq_nonneg _))

@[blueprint
  (title := "I1NewBound")
  (statement := /--
    We have that
    $$|I_1(\nu,\varepsilon,X,T)|\ll\frac{X}{\varepsilon\sqrt{T}}.$$
  -/)
  (proof := /--
    Note that $|I_1(\nu,\varepsilon,X,T)|=$
    $$\left|\frac{1}{2\pi i}\int_{-\infty}^{-T}\left(-\frac{\zeta'}{\zeta}(\sigma+it)\right)
      \,\mathcal{M}(\tilde{1}_\varepsilon)(\sigma+it)\,X^{\sigma+it}\,dt\right|
      \ll\int_{-\infty}^{-T}\left|\frac{\zeta'}{\zeta}(\sigma+it)\right|
      \cdot|\mathcal{M}(\tilde{1}_\varepsilon)(\sigma+it)|\cdot X^\sigma\,dt.$$
    Applying Theorem \ref{LogDerivZetaUniformLogSquaredBound} and Lemma \ref{MellinOfSmooth1b},
    we have that
    $$|I_1(\nu,\varepsilon,X,T)|
      \ll\int_{-\infty}^{-T}\log^2|t|\cdot\frac{X^\sigma}{\varepsilon\,|\sigma+it|^2}\,dt
      \ll\frac{X}{\varepsilon}\int_T^\infty\frac{\sqrt{t}\,dt}{t^2}
      \ll\frac{X}{\varepsilon\sqrt{T}}.$$
    Here we are using the fact that $\log^2 t$ grows slower than $\sqrt{t}$,
    $|\sigma+it|^2\geq t^2$, and $X^\sigma=X\cdot X^{1/\log X}=eX$.
  -/)
  (proofUses := ["LogDerivZetaUniformLogSquaredBound", "MellinOfSmooth1b"])
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean#L1930).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `febb261e8c76e0d4aec8c8de1ca02559ac821fcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
