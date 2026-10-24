# exists_goodδ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0addb87793aa4a4b608addf8c967e86dc8cd00d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d2b97ab8-b7ff-7f53-8459-3288d65257aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18673a6e-5508-0f1c-1396-ad2f3bcec5e6",
  "kind": "theorem",
  "lexical_name": "exists_goodδ",
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
  "slug": "exists-good--7c35f3776b854fa59127cb4f",
  "source": {
    "blob": "c0addb87793aa4a4b608addf8c967e86dc8cd00d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 207,
    "path": "GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c35f3776b854fa59127cb4f62f20ad05e15b1a373d79ad10b4ee2af71cd2ed6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18673a6e-5508-0f1c-1396-ad2f3bcec5e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_goodδ :
    ∃ δ : ℝ, 0 < δ ∧ δ < 1 ∧ ∀ s : Finset E, (∀ c ∈ s, ‖c‖ ≤ 2) →
      (∀ c ∈ s, ∀ d ∈ s, c ≠ d → 1 - δ ≤ ‖c - d‖) → s.card ≤ multiplicity E := by
  classical
  /- This follows from a compactness argument: otherwise, one could extract a converging
    subsequence, to obtain a `1`-separated set in the ball of radius `2` with cardinality
    `N = multiplicity E + 1`. To formalize this, we work with functions `Fin N → E`.
     -/
  by_contra' h
  set N := multiplicity E + 1 with hN
  have :
    ∀ δ : ℝ, 0 < δ → ∃ f : Fin N → E, (∀ i : Fin N, ‖f i‖ ≤ 2) ∧
      ∀ i j, i ≠ j → 1 - δ ≤ ‖f i - f j‖ := by
    intro δ hδ
    rcases lt_or_le δ 1 with (hδ' | hδ')
    · rcases h δ hδ hδ' with ⟨s, hs, h's, s_card⟩
      obtain ⟨f, f_inj, hfs⟩ : ∃ f : Fin N → E, Function.Injective f ∧ range f ⊆ ↑s := by
        have : Fintype.card (Fin N) ≤ s.card := by simp only [Fintype.card_fin]; exact s_card
        rcases Function.Embedding.exists_of_card_le_finset this with ⟨f, hf⟩
        exact ⟨f, f.injective, hf⟩
      simp only [range_subset_iff, Finset.mem_coe] at hfs
      refine' ⟨f, fun i => hs _ (hfs i), fun i j hij => h's _ (hfs i) _ (hfs j) (f_inj.ne hij)⟩
    · exact
        ⟨fun _ => 0, fun i => by simp; norm_num, fun i j _ => by
          simpa only [norm_zero, sub_nonpos, sub_self]⟩
  -- For `δ > 0`, `F δ` is a function from `fin N` to the ball of radius `2` for which two points
  -- in the image are separated by `1 - δ`.
  choose! F hF using this
  -- Choose a converging subsequence when `δ → 0`.
  have : ∃ f : Fin N → E, (∀ i : Fin N, ‖f i‖ ≤ 2) ∧ ∀ i j, i ≠ j → 1 ≤ ‖f i - f j‖ := by
    obtain ⟨u, _, zero_lt_u, hu⟩ :
      ∃ u : ℕ → ℝ,
        (∀ m n : ℕ, m < n → u n < u m) ∧ (∀ n : ℕ, 0 < u n) ∧ Filter.Tendsto u Filter.atTop (𝓝 0) :=
      exists_seq_strictAnti_tendsto (0 : ℝ)
    have A : ∀ n, F (u n) ∈ closedBall (0 : Fin N → E) 2 := by
      intro n
      simp only [pi_norm_le_iff_of_nonneg zero_le_two, mem_closedBall, dist_zero_right,
        (hF (u n) (zero_lt_u n)).left, forall_const]
    obtain ⟨f, fmem, φ, φ_mono, hf⟩ :
      ∃ f ∈ closedBall (0 : Fin N → E) 2,
        ∃ φ : ℕ → ℕ, StrictMono φ ∧ Tendsto ((F ∘ u) ∘ φ) atTop (𝓝 f) :=
      IsCompact.tendsto_subseq (isCompact_closedBall _ _) A
    refine' ⟨f, fun i => _, fun i j hij => _⟩
    · simp only [pi_norm_le_iff_of_nonneg zero_le_two, mem_closedBall, dist_zero_right] at fmem
      exact fmem i
    · have A : Tendsto (fun n => ‖F (u (φ n)) i - F (u (φ n)) j‖) atTop (𝓝 ‖f i - f j‖) :=
        ((hf.apply i).sub (hf.apply j)).norm
      have B : Tendsto (fun n => 1 - u (φ n)) atTop (𝓝 (1 - 0)) :=
        tendsto_const_nhds.sub (hu.comp φ_mono.tendsto_atTop)
      rw [sub_zero] at B
      exact le_of_tendsto_of_tendsto' B A fun n => (hF (u (φ n)) (zero_lt_u _)).2 i j hij
  rcases this with ⟨f, hf, h'f⟩
  -- the range of `f` contradicts the definition of `multiplicity E`.
  have finj : Function.Injective f := by
    intro i j hij
    by_contra h
    have : 1 ≤ ‖f i - f j‖ := h'f i j h
    simp only [hij, norm_zero, sub_self] at this
    exact lt_irrefl _ (this.trans_lt zero_lt_one)
  let s := Finset.image f Finset.univ
  have s_card : s.card = N := by rw [Finset.card_image_of_injective _ finj]; exact Finset.card_fin N
  have hs : ∀ c ∈ s, ‖c‖ ≤ 2 := by
    simp only [hf, forall_apply_eq_imp_iff', forall_const, forall_exists_index, Finset.mem_univ,
      Finset.mem_image, true_and]
  have h's : ∀ c ∈ s, ∀ d ∈ s, c ≠ d → 1 ≤ ‖c - d‖ := by
    simp only [forall_apply_eq_imp_iff', forall_exists_index, Finset.mem_univ, Finset.mem_image,
      Ne.def, exists_true_left, forall_apply_eq_imp_iff', forall_true_left, true_and]
    intro i j hij
    have : i ≠ j := fun h => by rw [h] at hij; exact hij rfl
    exact h'f i j this
  have : s.card ≤ multiplicity E := card_le_multiplicity hs h's
  rw [s_card, hN] at this
  exact lt_irrefl _ ((Nat.lt_succ_self (multiplicity E)).trans_le this)
#align besicovitch.exists_good_δ Besicovitch.exists_goodδ

/-- A small positive number such that any `1 - δ`-separated set in the ball of radius `2` has
cardinality at most `Besicovitch.multiplicity E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4e757fc6f5cf61d1dd2a82933ebfcb23ba33510b8c5a291c62056b6d0702fde4.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0addb87793aa4a4b608addf8c967e86dc8cd00d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
