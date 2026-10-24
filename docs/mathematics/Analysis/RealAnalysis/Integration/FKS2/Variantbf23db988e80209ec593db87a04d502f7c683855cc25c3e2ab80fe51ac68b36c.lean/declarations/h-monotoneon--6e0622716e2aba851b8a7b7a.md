# h_monotoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:112b114e-746e-116b-3ec5-356436422971",
  "kind": "lemma",
  "lexical_name": "h_monotoneOn",
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
  "slug": "h-monotoneon--6e0622716e2aba851b8a7b7a",
  "source": {
    "blob": "b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3320,
    "line": 3293,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e0622716e2aba851b8a7b7aaba4b648d342ce4b14cac0b8025d73540db9a0ba",
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

Occurrence: `result:112b114e-746e-116b-3ec5-356436422971`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3293–3320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma h_monotoneOn {x₁ : ℝ} (hx₁ : x₁ ≥ 14) :
    MonotoneOn (fun t => (log t / t) * ∫ s in x₁..t, 1 / (log s) ^ 2)
      (Set.Icc x₁ (x₁ * log x₁)) := by
  -- Let $I(t) = \int_{x₁}^t 1 / (\log s)^2 \, ds$.
  set I : ℝ → ℝ := fun t => ∫ s in x₁..t, 1 / (Real.log s) ^ 2;
  -- We need to show that $u(t) = \frac{t}{\log t} - (\log t - 1)I(t)$ is non-negative on $[x₁, x₁ \log x₁]$.
  have hu_nonneg : ∀ t ∈ Set.Icc x₁ (x₁ * Real.log x₁), t / Real.log t - (Real.log t - 1) * I t ≥ 0 := by
    intros t ht
    have h_u_eq := u_eq_sub_integral hx₁ ht
    have h_I_bound := integral_I_div_self_le hx₁ ht
    rw [integral_sub_div_self (by linarith : 0 < x₁) ht.1] at h_I_bound
    dsimp only [I]
    linarith [hu_simplify hx₁ ht]
  have h_deriv : ∀ t ∈ Set.Ioo x₁ (x₁ * Real.log x₁), HasDerivAt (fun t => (Real.log t / t) * I t) ((t / Real.log t - (Real.log t - 1) * I t) / t^2) t :=
    fun t ht => h_deriv_at hx₁ ht
  intro a ha b hb hab; rcases eq_or_lt_of_le hab with rfl | hab' <;> norm_num at *;
  obtain ⟨c, hc⟩ : ∃ c ∈ Set.Ioo a b, deriv (fun t => (Real.log t / t) * I t) c = ((fun t => (Real.log t / t) * I t) b - (fun t => (Real.log t / t) * I t) a) / (b - a) := by
    apply_rules [ exists_deriv_eq_slope ];
    · refine ContinuousOn.mul ( ContinuousOn.div ( Real.continuousOn_log.mono <| by intro t ht; exact ne_of_gt <| by linarith [ ht.1 ] ) continuousOn_id <| by intro t ht; linarith [ ht.1 ] ) ?_;
      intro t ht; apply_rules [ intervalIntegral.continuousWithinAt_primitive ]
      · aesop
      · apply_rules [ ContinuousOn.intervalIntegrable ];
        exact continuousOn_of_forall_continuousAt fun x hx => ContinuousAt.div continuousAt_const ( ContinuousAt.pow ( Real.continuousAt_log ( by cases Set.mem_uIcc.mp hx <;> cases min_cases x₁ a <;> cases max_cases x₁ b <;> linarith [ ht.1, ht.2 ] ) ) _ ) ( ne_of_gt ( sq_pos_of_pos ( Real.log_pos ( by cases Set.mem_uIcc.mp hx <;> cases min_cases x₁ a <;> cases max_cases x₁ b <;> linarith [ ht.1, ht.2 ] ) ) ) );
    · exact fun t ht => ( h_deriv t ( by linarith [ ht.1 ] ) ( by linarith [ ht.2 ] ) |> HasDerivAt.differentiableAt |> DifferentiableAt.differentiableWithinAt );
  simp +zetaDelta only [one_div, Set.mem_Ioo] at *
  have hd := (h_deriv c (by linarith) (by linarith)).deriv
  rw [eq_div_iff] at * <;> nlinarith [hu_nonneg c (by linarith) (by linarith), show 0 < c ^ 2 by nlinarith]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean#L3293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
