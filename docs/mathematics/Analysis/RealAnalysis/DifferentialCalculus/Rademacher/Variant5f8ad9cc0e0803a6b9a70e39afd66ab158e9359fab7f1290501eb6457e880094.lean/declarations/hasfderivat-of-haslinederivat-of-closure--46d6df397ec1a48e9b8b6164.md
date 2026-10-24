# hasFDerivAt_of_hasLineDerivAt_of_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "116913002765cb3f00d3ca2afb0c6662874a6913",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38f6bebd-3a71-4479-0e5c-f27be1011e21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8ef7755-6ac7-08ee-d6e5-96830e70cd69",
  "kind": "theorem",
  "lexical_name": "hasFDerivAt_of_hasLineDerivAt_of_closure",
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
  "slug": "hasfderivat-of-haslinederivat-of-closure--46d6df397ec1a48e9b8b6164",
  "source": {
    "blob": "116913002765cb3f00d3ca2afb0c6662874a6913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 266,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46d6df397ec1a48e9b8b6164963fb68e8b56c5501aa5b7b5f97ccf61f1749384",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8ef7755-6ac7-08ee-d6e5-96830e70cd69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivAt_of_hasLineDerivAt_of_closure
    {f : E → F} (hf : LipschitzWith C f) {s : Set E} (hs : sphere 0 1 ⊆ closure s)
    {L : E →L[ℝ] F} {x : E} (hL : ∀ v ∈ s, HasLineDerivAt ℝ f (L v) x v) :
    HasFDerivAt f L x := by
  rw [hasFDerivAt_iff_isLittleO_nhds_zero, isLittleO_iff]
  intro ε εpos
  obtain ⟨δ, δpos, hδ⟩ : ∃ δ, 0 < δ ∧ (C + ‖L‖ + 1) * δ = ε :=
    ⟨ε / (C + ‖L‖ + 1), by positivity, mul_div_cancel₀ ε (by positivity)⟩
  obtain ⟨q, hqs, q_fin, hq⟩ : ∃ q, q ⊆ s ∧ q.Finite ∧ sphere 0 1 ⊆ ⋃ y ∈ q, ball y δ := by
    have : sphere 0 1 ⊆ ⋃ y ∈ s, ball y δ := by
      apply hs.trans (fun z hz ↦ ?_)
      obtain ⟨y, ys, hy⟩ : ∃ y ∈ s, dist z y < δ := Metric.mem_closure_iff.1 hz δ δpos
      exact mem_biUnion ys hy
    exact (isCompact_sphere 0 1).elim_finite_subcover_image (fun y _hy ↦ isOpen_ball) this
  have I : ∀ᶠ t in 𝓝 (0 : ℝ), ∀ v ∈ q, ‖f (x + t • v) - f x - t • L v‖ ≤ δ * ‖t‖ := by
    apply (Finite.eventually_all q_fin).2 (fun v hv ↦ ?_)
    apply Asymptotics.IsLittleO.def ?_ δpos
    exact hasLineDerivAt_iff_isLittleO_nhds_zero.1 (hL v (hqs hv))
  obtain ⟨r, r_pos, hr⟩ : ∃ (r : ℝ), 0 < r ∧ ∀ (t : ℝ), ‖t‖ < r →
      ∀ v ∈ q, ‖f (x + t • v) - f x - t • L v‖ ≤ δ * ‖t‖ := by
    rcases Metric.mem_nhds_iff.1 I with ⟨r, r_pos, hr⟩
    exact ⟨r, r_pos, fun t ht v hv ↦ hr (mem_ball_zero_iff.2 ht) v hv⟩
  apply Metric.mem_nhds_iff.2 ⟨r, r_pos, fun v hv ↦ ?_⟩
  rcases eq_or_ne v 0 with rfl|v_ne
  · simp
  obtain ⟨w, ρ, w_mem, hvw, hρ⟩ : ∃ w ρ, w ∈ sphere 0 1 ∧ v = ρ • w ∧ ρ = ‖v‖ := by
    refine ⟨‖v‖⁻¹ • v, ‖v‖, by simp [norm_smul, inv_mul_cancel₀ (norm_ne_zero_iff.2 v_ne)], ?_, rfl⟩
    simp [smul_smul, mul_inv_cancel₀ (norm_ne_zero_iff.2 v_ne)]
  have norm_rho : ‖ρ‖ = ρ := by rw [hρ, norm_norm]
  have rho_pos : 0 ≤ ρ := by simp [hρ]
  obtain ⟨y, yq, hy⟩ : ∃ y ∈ q, ‖w - y‖ < δ := by simpa [← dist_eq_norm] using hq w_mem
  have : ‖y - w‖ < δ := by rwa [norm_sub_rev]
  calc  ‖f (x + v) - f x - L v‖
      = ‖f (x + ρ • w) - f x - ρ • L w‖ := by simp [hvw]
    _ = ‖(f (x + ρ • w) - f (x + ρ • y)) + (ρ • L y - ρ • L w)
          + (f (x + ρ • y) - f x - ρ • L y)‖ := by congr; abel
    _ ≤ ‖f (x + ρ • w) - f (x + ρ • y)‖ + ‖ρ • L y - ρ • L w‖
          + ‖f (x + ρ • y) - f x - ρ • L y‖ := norm_add₃_le
    _ ≤ C * ‖(x + ρ • w) - (x + ρ • y)‖ + ρ * (‖L‖ * ‖y - w‖) + δ * ρ := by
      gcongr
      · exact hf.norm_sub_le _ _
      · rw [← smul_sub, norm_smul, norm_rho]
        gcongr
        exact L.lipschitz.norm_sub_le _ _
      · conv_rhs => rw [← norm_rho]
        apply hr _ _ _ yq
        simpa [norm_rho, hρ] using hv
    _ ≤ C * (ρ * δ) + ρ * (‖L‖ * δ) + δ * ρ := by
      simp only [add_sub_add_left_eq_sub, ← smul_sub, norm_smul, norm_rho]; gcongr
    _ = ((C + ‖L‖ + 1) * δ) * ρ := by ring
    _ = ε * ‖v‖ := by rw [hδ, hρ]

@[deprecated (since := "2025-01-15")]
alias hasFderivAt_of_hasLineDerivAt_of_closure := hasFDerivAt_of_hasLineDerivAt_of_closure

/-- A real-valued function on a finite-dimensional space which is Lipschitz is
differentiable almost everywere. Superseded by
`LipschitzWith.ae_differentiableAt` which works for functions taking value in any
finite-dimensional space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5f8ad9cc0e0803a6b9a70e39afd66ab158e9359fab7f1290501eb6457e880094.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `116913002765cb3f00d3ca2afb0c6662874a6913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
