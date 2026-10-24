# fejer_theorem_uniform_on_I

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbf09c6bea6d3331635dd00fcb6f355dd9b375f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1080,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca3457a3-7dbd-f6dc-68b9-13698a54bd17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32c39f7b-7428-65dc-cad1-fea30b1a5de1",
  "kind": "theorem",
  "lexical_name": "fejer_theorem_uniform_on_I",
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
  "slug": "fejer-theorem-uniform-on-i--5427cedbaa9f2434f1c18d76",
  "source": {
    "blob": "fbf09c6bea6d3331635dd00fcb6f355dd9b375f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1118,
    "line": 1080,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5427cedbaa9f2434f1c18d765d7d729e2c3d4a807afab037644b12f2b58801ac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32c39f7b-7428-65dc-cad1-fea30b1a5de1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1080–1118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fejer_theorem_uniform_on_I (f : ℝ → ℝ) (hf_int : IntervalIntegrable f MeasureTheory.volume (-Real.pi) Real.pi)
    (hf_per : Function.Periodic f (2 * Real.pi)) (a b : ℝ) (hab : a ≤ b)
    (hf_cont : ∀ x ∈ Set.Icc a b, ContinuousAt f x) :
    TendstoUniformlyOn (fejer_sum f) f Filter.atTop (Set.Icc a b) := by
      have h_fejer_uniform : ∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, ∀ x ∈ Set.Icc a b, |fejer_sum f n x - f x| < ε := by
        intro ε hε_pos
        obtain ⟨δ₀, hδ₀_pos, hδ₀⟩ : ∃ δ₀ > 0, ∀ x ∈ Set.Icc a b, ∀ t, |t| < δ₀ → |f (x - t) - f x| < ε / 2 := by
          have := @uniform_continuity_shift;
          exact this a b hab hf_cont ( ε / 2 ) ( half_pos hε_pos );
        -- Let `δ = min(δ₀/2, π/2)`. Then `0 < δ < π` and `[-δ, δ] ⊆ (-δ₀, δ₀)`.
        set δ := min (δ₀ / 2) (Real.pi / 2) with hδ_def
        have hδ_pos : 0 < δ := by
          exact lt_min ( half_pos hδ₀_pos ) ( half_pos Real.pi_pos )
        have hδ_le_pi : δ ≤ Real.pi := by
          exact le_trans ( min_le_right _ _ ) ( by linarith [ Real.pi_pos ] )
        have hδ_subset : Set.Icc (-δ) δ ⊆ Set.Ioo (-δ₀) δ₀ := by
          exact fun x hx => ⟨ by linarith [ hx.1, hx.2, min_le_left ( δ₀ / 2 ) ( Real.pi / 2 ), min_le_right ( δ₀ / 2 ) ( Real.pi / 2 ) ], by linarith [ hx.1, hx.2, min_le_left ( δ₀ / 2 ) ( Real.pi / 2 ), min_le_right ( δ₀ / 2 ) ( Real.pi / 2 ) ] ⟩;
        -- By `fejer_tail_convergence`, the `Tail` integral converges uniformly to 0 on `[a, b]`.
        have h_tail_uniform : TendstoUniformlyOn (fun n x => (1 / Real.pi) * ∫ t in (Set.Icc (-Real.pi) (-δ) ∪ Set.Icc δ Real.pi), (f (x - t) - f x) * fejer_kernel n t) 0 Filter.atTop (Set.Icc a b) := by
          apply_rules [ fejer_tail_convergence ];
          exact lt_of_le_of_ne hδ_le_pi ( by rintro h; linarith [ Real.pi_pos, min_le_left ( δ₀ / 2 ) ( Real.pi / 2 ), min_le_right ( δ₀ / 2 ) ( Real.pi / 2 ) ] );
        -- By `fejer_sum_diff_bound_split`, we have `|fejer_sum f n x - f x| ≤ |Central| + |Tail|`.
        have h_bound : ∀ n x, x ∈ Set.Icc a b → |fejer_sum f n x - f x| ≤ |(1 / Real.pi) * ∫ t in Set.Icc (-δ) δ, (f (x - t) - f x) * fejer_kernel n t| + |(1 / Real.pi) * ∫ t in (Set.Icc (-Real.pi) (-δ) ∪ Set.Icc δ Real.pi), (f (x - t) - f x) * fejer_kernel n t| := by
          intros n x hx
          apply fejer_sum_diff_bound_split hδ_pos hδ_le_pi hf_int hf_per;
        -- By `fejer_central_bound`, `|Central| ≤ ε/2`.
        have h_central_bound : ∀ n x, x ∈ Set.Icc a b → |(1 / Real.pi) * ∫ t in Set.Icc (-δ) δ, (f (x - t) - f x) * fejer_kernel n t| ≤ ε / 2 := by
          intros n x hx
          apply fejer_central_bound hδ_pos hδ_le_pi (fun t ht => by
            exact le_of_lt ( hδ₀ x hx t ( by linarith [ abs_lt.mpr ( hδ_subset ( show t ∈ Set.Icc ( -δ ) δ from ⟨ by linarith [ abs_le.mp ht ], by linarith [ abs_le.mp ht ] ⟩ ) ) ] ) )) hf_int hf_per;
        rw [ Metric.tendstoUniformlyOn_iff ] at h_tail_uniform;
        simp +zetaDelta at *;
        exact Exists.elim ( h_tail_uniform ( ε / 2 ) ( half_pos hε_pos ) ) fun N hN => ⟨ N, fun n hn x hx₁ hx₂ => lt_of_le_of_lt ( h_bound n x hx₁ hx₂ ) ( by linarith [ hN n hn x hx₁ hx₂, h_central_bound n x hx₁ hx₂ ] ) ⟩ ;
      rw [ Metric.tendstoUniformlyOn_iff ];
      exact fun ε hε => by rcases h_fejer_uniform ε hε with ⟨ N, hN ⟩ ; filter_upwards [ Filter.Ici_mem_atTop N ] with n hn using fun x hx => by rw [ dist_comm ] ; exact hN n hn x hx;

/-
The integral of the Fejér kernel over [0, pi] is pi/2 (normalized to 1/2 with the 1/pi factor).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean#L1080).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf09c6bea6d3331635dd00fcb6f355dd9b375f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
