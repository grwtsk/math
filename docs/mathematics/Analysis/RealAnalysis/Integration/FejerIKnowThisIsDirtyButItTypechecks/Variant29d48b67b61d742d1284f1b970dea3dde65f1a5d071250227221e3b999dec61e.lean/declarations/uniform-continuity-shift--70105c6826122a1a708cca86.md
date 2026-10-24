# uniform_continuity_shift

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
      "line": 478,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e084c8dc-6e0c-5662-56a9-619c5e900617",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c6b3f3d-1c29-5d31-33e5-2668b3c4ebba",
  "kind": "theorem",
  "lexical_name": "uniform_continuity_shift",
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
  "slug": "uniform-continuity-shift--70105c6826122a1a708cca86",
  "source": {
    "blob": "fbf09c6bea6d3331635dd00fcb6f355dd9b375f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 478,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70105c6826122a1a708cca862e168ee7be40c68fd0b30956052ffebe32eefc54",
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

Occurrence: `result:0c6b3f3d-1c29-5d31-33e5-2668b3c4ebba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_continuity_shift {f : ℝ → ℝ} (a b : ℝ) (hab : a ≤ b)
    (hf_cont : ∀ x ∈ Set.Icc a b, ContinuousAt f x) :
    ∀ ε > 0, ∃ δ > 0, ∀ x ∈ Set.Icc a b, ∀ t, |t| < δ → |f (x - t) - f x| < ε := by
      intro ε hε
      by_contra h_contra;
      -- By contradiction, assume there exist sequences $x_n \in [a, b]$ and $t_n$ such that $|t_n| < 1/n$ but $|f(x_n - t_n) - f(x_n)| \geq \varepsilon$.
      obtain ⟨xn, t_n, hxn_bounds, ht_n_abs, h_diff⟩ : ∃ xn : ℕ → ℝ, ∃ t_n : ℕ → ℝ, (∀ n, xn n ∈ Set.Icc a b) ∧ (∀ n, abs (t_n n) < 1 / (n + 1)) ∧ (∀ n, abs (f (xn n - t_n n) - f (xn n)) ≥ ε) := by
        push_neg at h_contra;
        exact ⟨ fun n => Classical.choose ( h_contra ( 1 / ( n + 1 ) ) ( by positivity ) ), fun n => Classical.choose_spec ( h_contra ( 1 / ( n + 1 ) ) ( by positivity ) ) |>.2.choose, fun n => Classical.choose_spec ( h_contra ( 1 / ( n + 1 ) ) ( by positivity ) ) |>.1, fun n => Classical.choose_spec ( h_contra ( 1 / ( n + 1 ) ) ( by positivity ) ) |>.2.choose_spec.1, fun n => Classical.choose_spec ( h_contra ( 1 / ( n + 1 ) ) ( by positivity ) ) |>.2.choose_spec.2 ⟩;
      -- Since $[a, b]$ is compact, there exists a convergent subsequence $x_{n_k}$ converging to some $x_0 \in [a, b]$.
      obtain ⟨x₀, hx₀⟩ : ∃ x₀ ∈ Set.Icc a b, ∃ (nk : ℕ → ℕ), StrictMono nk ∧ Filter.Tendsto (fun k => xn (nk k)) Filter.atTop (nhds x₀) := by
        have h_compact : IsCompact (Set.Icc a b) := by
          exact CompactIccSpace.isCompact_Icc;
        have := h_compact.isSeqCompact fun n => hxn_bounds n; aesop;
      -- Then $t_{n_k} \to 0$, so $x_{n_k} - t_{n_k} \to x_0$.
      obtain ⟨nk, hnk_mono, hnk_conv⟩ := hx₀.right
      have ht_nk_zero : Filter.Tendsto (fun k => t_n (nk k)) Filter.atTop (nhds 0) := by
        exact squeeze_zero_norm ( fun k => le_of_lt ( ht_n_abs _ ) ) ( tendsto_one_div_add_atTop_nhds_zero_nat.comp hnk_mono.tendsto_atTop );
      have h_cont : Filter.Tendsto (fun k => f (xn (nk k) - t_n (nk k))) Filter.atTop (nhds (f x₀)) ∧ Filter.Tendsto (fun k => f (xn (nk k))) Filter.atTop (nhds (f x₀)) := by
        exact ⟨ hf_cont x₀ hx₀.1 |> fun h => h.tendsto.comp <| by simpa using hnk_conv.sub ht_nk_zero, hf_cont x₀ hx₀.1 |> fun h => h.tendsto.comp <| by simpa using hnk_conv ⟩;
      exact absurd ( le_of_tendsto_of_tendsto' tendsto_const_nhds ( Filter.Tendsto.abs ( h_cont.1.sub h_cont.2 ) ) fun k => h_diff ( nk k ) ) ( by norm_num; linarith )

/-
Lemma: Change of variables for convolution integral.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf09c6bea6d3331635dd00fcb6f355dd9b375f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
