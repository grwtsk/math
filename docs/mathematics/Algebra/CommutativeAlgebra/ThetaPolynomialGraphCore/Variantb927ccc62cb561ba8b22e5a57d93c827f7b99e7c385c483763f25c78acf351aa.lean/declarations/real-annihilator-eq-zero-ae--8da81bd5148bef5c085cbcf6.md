# real_annihilator_eq_zero_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "898d80d2625d5b359c3f6ed64461c2b04f4fdd4b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64e0d9b0-5ad6-bd2a-d678-6996b5ea4e7e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ad4da7a-4545-5c0a-0f65-41a689d015c4",
  "kind": "theorem",
  "lexical_name": "real_annihilator_eq_zero_ae",
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
  "slug": "real-annihilator-eq-zero-ae--8da81bd5148bef5c085cbcf6",
  "source": {
    "blob": "898d80d2625d5b359c3f6ed64461c2b04f4fdd4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 40,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8da81bd5148bef5c085cbcf69d737d5bcb5ad962aa876a2cc0f77418a85ffabb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ad4da7a-4545-5c0a-0f65-41a689d015c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem real_annihilator_eq_zero_ae (σ : Measure ℝ) [IsFiniteMeasure σ]
    (hexp : Integrable (fun x : ℝ => Real.exp |x|) σ)
    (hpow : ∀ n : ℕ, MemLp (fun x : ℝ => x ^ n) 2 σ)
    (f : ℝ → ℝ) (hf : Measurable f) (hf2 : MemLp f 2 σ)
    (hann : ∀ n : ℕ, (∫ x, f x * x ^ n ∂σ) = 0) : f =ᵐ[σ] 0 := by
  let a : ℝ → ℝ := fun x => max (f x) 0
  let b : ℝ → ℝ := fun x => max (-f x) 0
  have ha : Measurable a := hf.max measurable_const
  have hb : Measurable b := hf.neg.max measurable_const
  have ha2 : MemLp a 2 σ := posPart_memLp hf hf2
  have hb2 : MemLp b 2 σ := posPart_memLp hf.neg hf2.neg
  have hanonneg (x : ℝ) : 0 ≤ a x := le_max_right _ _
  have hbnonneg (x : ℝ) : 0 ≤ b x := le_max_right _ _
  let νa := σ.withDensity (fun x => ENNReal.ofReal (a x))
  let νb := σ.withDensity (fun x => ENNReal.ofReal (b x))
  have hνa : IsFiniteMeasure νa := isFiniteMeasure_withDensity
    ((lintegral_ofReal_ne_top_iff_integrable ha.aestronglyMeasurable
      (Eventually.of_forall hanonneg)).mpr (ha2.integrable (by norm_num)))
  have hνb : IsFiniteMeasure νb := isFiniteMeasure_withDensity
    ((lintegral_ofReal_ne_top_iff_integrable hb.aestronglyMeasurable
      (Eventually.of_forall hbnonneg)).mpr (hb2.integrable (by norm_num)))
  have he2 : MemLp (fun x : ℝ => Real.exp (|x| / 2)) 2 σ := by
    apply (memLp_two_iff_integrable_sq (Real.continuous_exp.comp
      (continuous_abs.div_const 2)).aestronglyMeasurable).mpr
    apply hexp.congr
    filter_upwards [] with x
    change Real.exp |x| = Real.exp (|x| / 2) ^ 2
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  have hea : Integrable (fun x : ℝ => Real.exp (|x| / 2)) νa := by
    rw [integrable_withDensity_iff_integrable_smul' ha.ennreal_ofReal
      (Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top))]
    simp only [ENNReal.toReal_ofReal (hanonneg _), smul_eq_mul]
    exact (ha2.integrable_mul he2).congr (Eventually.of_forall fun _ => rfl)
  have heb : Integrable (fun x : ℝ => Real.exp (|x| / 2)) νb := by
    rw [integrable_withDensity_iff_integrable_smul' hb.ennreal_ofReal
      (Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top))]
    simp only [ENNReal.toReal_ofReal (hbnonneg _), smul_eq_mul]
    exact (hb2.integrable_mul he2).congr (Eventually.of_forall fun _ => rfl)
  have hmom (n : ℕ) : (∫ x : ℝ, x ^ n ∂νa) = ∫ x : ℝ, x ^ n ∂νb := by
    rw [integral_withDensity_eq_integral_toReal_smul ha.ennreal_ofReal
      (Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top)),
      integral_withDensity_eq_integral_toReal_smul hb.ennreal_ofReal
        (Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top))]
    simp only [ENNReal.toReal_ofReal (hanonneg _), ENNReal.toReal_ofReal (hbnonneg _), smul_eq_mul]
    apply sub_eq_zero.mp
    have hpa : Integrable (fun x => a x * x ^ n) σ := by
      exact (ha2.integrable_mul (hpow n)).congr (Eventually.of_forall fun _ => rfl)
    have hpb : Integrable (fun x => b x * x ^ n) σ := by
      exact (hb2.integrable_mul (hpow n)).congr (Eventually.of_forall fun _ => rfl)
    rw [← integral_sub hpa hpb]
    calc
      _ = ∫ x, f x * x ^ n ∂σ := by
        apply integral_congr_ae
        filter_upwards [] with x
        rw [← sub_mul]
        congr 1
        exact max_zero_sub_max_neg_zero_eq_self (f x)
      _ = 0 := hann n
  have heq : νa = νb := measure_eq_of_moments_of_exp_abs_half νa νb hea heb hmom
  have hd := (withDensity_eq_iff_of_sigmaFinite ha.ennreal_ofReal.aemeasurable
    hb.ennreal_ofReal.aemeasurable).mp heq
  filter_upwards [hd] with x hx
  have hmax : a x = b x := by
    have h := congrArg ENNReal.toReal hx
    simpa only [ENNReal.toReal_ofReal (hanonneg x), ENNReal.toReal_ofReal (hbnonneg x)] using h
  change f x = 0
  have hab := max_zero_sub_max_neg_zero_eq_self (f x)
  change a x - b x = f x at hab
  rw [hmax, sub_self] at hab
  exact hab.symm

/-- The actual graph-weighted theta measure, without normalizing its mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variantb927ccc62cb561ba8b22e5a57d93c827f7b99e7c385c483763f25c78acf351aa.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `898d80d2625d5b359c3f6ed64461c2b04f4fdd4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
