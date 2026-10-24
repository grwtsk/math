# correctedNumerator_half_add_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c8c568cc31fa40fc095a085eaf1473101424aaca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a79e923-b7c0-b01a-0c7a-8160d62167eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d41deb68-926a-059b-5023-d428934bb82c",
  "kind": "theorem",
  "lexical_name": "correctedNumerator_half_add_norm_le",
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
  "slug": "correctednumerator-half-add-norm-le--f5469a31eba1a1bc51ccd9d3",
  "source": {
    "blob": "c8c568cc31fa40fc095a085eaf1473101424aaca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 60,
    "path": "GRWTSK/NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5469a31eba1a1bc51ccd9d37a7b02ce4cd3c869a70fbad32449703790eace7c",
  "verification": {
    "reference": "docs/verification/NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d41deb68-926a-059b-5023-d428934bb82c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedNumerator_half_add_norm_le (X : ℕ) (ε : ℝ)
    (hX : 1 ≤ X) (hε : 0 ≤ ε) :
    ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ ≤
      ε * (1 + Real.log (X : ℝ)) ^ 2 := by
  have hXr : (1 : ℝ) ≤ X := by exact_mod_cast hX
  have hX0 : 0 < (X : ℝ) := lt_of_lt_of_le zero_lt_one hXr
  have hlog : 0 ≤ Real.log (X : ℝ) := Real.log_nonneg hXr
  have hcont : ContinuousOn (fun x : ℝ => (1 + Real.log (X : ℝ)) / x)
      (Set.Icc (1 : ℝ) X) :=
    continuousOn_const.div continuousOn_id (fun x hx =>
      (lt_of_lt_of_le zero_lt_one hx.1).ne')
  have hi : IntegrableOn (fun x : ℝ => (1 + Real.log (X : ℝ)) / x)
      (Set.Ioc (1 : ℝ) X) :=
    hcont.integrableOn_Icc.mono_set Set.Ioc_subset_Icc_self
  have hb : ‖∫ x : ℝ in Set.Ioc 1 (X : ℝ),
      (mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
        Complex.exp ((1 / 2 - (1 / 2 + (ε : ℂ))) * (Real.log x : ℂ)) / (x : ℂ)‖ ≤
      (1 + Real.log (X : ℝ)) * Real.log (X : ℝ) := by
    calc
      _ ≤ ∫ x : ℝ in Set.Ioc 1 (X : ℝ), (1 + Real.log (X : ℝ)) / x := by
        apply norm_integral_le_of_norm_le hi
        filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
        exact integrand_norm_le X ε x hε ⟨le_of_lt hx.1, hx.2⟩
      _ = _ := by
        rw [← intervalIntegral.integral_of_le hXr]
        simp_rw [div_eq_mul_inv]
        rw [intervalIntegral.integral_const_mul, integral_inv_of_pos zero_lt_one hX0, div_one]
  rw [correctedNumerator_eq_prefix_integral,
    show (1 / 2 + (ε : ℂ)) - 1 / 2 = (ε : ℂ) by ring,
    norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hε]
  calc
    _ ≤ ε * ((1 + Real.log (X : ℝ)) * Real.log (X : ℝ)) :=
      mul_le_mul_of_nonneg_left hb hε
    _ ≤ _ := by gcongr; nlinarith

/-- The finite damped coefficient retains the complete original endpoint correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8c568cc31fa40fc095a085eaf1473101424aaca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
