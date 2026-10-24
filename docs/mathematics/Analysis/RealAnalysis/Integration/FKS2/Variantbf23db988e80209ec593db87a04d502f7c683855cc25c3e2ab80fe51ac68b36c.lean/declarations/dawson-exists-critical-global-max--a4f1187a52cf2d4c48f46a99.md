# dawson_exists_critical_global_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e04ec2c-acc8-4052-da76-84f610692d7f",
  "kind": "lemma",
  "lexical_name": "dawson_exists_critical_global_max",
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
  "slug": "dawson-exists-critical-global-max--a4f1187a52cf2d4c48f46a99",
  "source": {
    "blob": "b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 464,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4f1187a52cf2d4c48f46a9953983317904be9964c77882f826fa9a532728e83",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e04ec2c-acc8-4052-da76-84f610692d7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma dawson_exists_critical_global_max :
    ∃ x₀ : ℝ, x₀ > 0 ∧ (∀ x, dawson x ≤ dawson x₀) ∧ deriv dawson x₀ = 0 := by
  have h_dawson_1_pos : dawson 1 > 0 := dawson_one_pos
  rcases dawson_exists_M with ⟨M, hM1, hM⟩
  rcases dawson_exists_max_Icc M hM1 with ⟨x₀, hx₀_mem, hx₀_max⟩
  have hx₀_pos : x₀ > 0 := by
    have hdawson_x₀_pos : dawson x₀ > 0 :=
      lt_of_lt_of_le h_dawson_1_pos
        (hx₀_max 1 (Set.mem_Icc.mpr ⟨by norm_num, hM1.le⟩))
    exact lt_of_le_of_ne hx₀_mem.1 fun heq => by
      subst heq
      simp [dawson] at hdawson_x₀_pos
  have h_max_nonneg : ∀ x ≥ 0, dawson x ≤ dawson x₀ := by
    intro x hx
    rcases le_or_gt x M with hle | hgt
    · exact hx₀_max x ⟨hx, hle⟩
    · have h1_mem : (1 : ℝ) ∈ Set.Icc 0 M := Set.mem_Icc.mpr ⟨by norm_num, hM1.le⟩
      exact le_trans (hM x hgt.le).le (hx₀_max 1 h1_mem)
  have h_max_neg : ∀ x < 0, dawson x < dawson x₀ := by
    intro x hx
    have hdawson_x₀_pos : dawson x₀ > 0 :=
      lt_of_lt_of_le h_dawson_1_pos
        (hx₀_max 1 (Set.mem_Icc.mpr ⟨by norm_num, hM1.le⟩))
    have h_dawson_neg : dawson x ≤ 0 := by
      unfold dawson
      rw [intervalIntegral.integral_symm x 0, mul_neg]
      exact neg_nonpos_of_nonneg (mul_nonneg (exp_pos _).le
        (intervalIntegral.integral_nonneg (le_of_lt hx) (fun t _ => (exp_pos _).le)))
    exact lt_of_le_of_lt h_dawson_neg hdawson_x₀_pos
  have h_max_global : ∀ x, dawson x ≤ dawson x₀ := fun x => by
    rcases le_or_gt 0 x with hge | hlt
    · exact h_max_nonneg x hge
    · exact (h_max_neg x hlt).le
  exact ⟨x₀, hx₀_pos, h_max_global,
    IsLocalMax.deriv_eq_zero (Filter.Eventually.of_forall h_max_global)⟩

@[blueprint
  "fks2-remark-after-corollary-11"
  (title := "FKS2 remark after Corollary 11")
  (statement := /--
  The Dawson function has a single maximum at $x \approx 0.942$, after which the function is
  decreasing. -/)
  (proof := /-- The Dawson function satisfies the differential equation $F'(x) + 2xF(x) = 1$ from which it follows that the second derivative satisfies $F''(x) = −2F(x) − 2x(−2xF(x) + 1)$, so that at every critical point (where we have $F(x) = \frac{1}{2x}$) we have $F''(x) = −\frac{1}{x}$.  It follows that every positive critical value gives a local maximum, hence there is a unique such critical value and the function decreases after it. Numerically one may verify this is near 0.9241 see https://oeis.org/ A133841. -/)
  (latexEnv := "remark")
  (discussion := 616)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
