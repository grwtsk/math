# varphi_ftc_out

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 4924,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ff52e61-512e-4569-9cbb-7eaafa9eb747",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f21fa17e-38c7-5565-e35f-21a87dd4dcc9",
  "kind": "lemma",
  "lexical_name": "varphi_ftc_out",
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
  "slug": "varphi-ftc-out--895bec2209485eb2fbbe3340",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4958,
    "line": 4924,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:895bec2209485eb2fbbe33401b7a4f8ba65ccfded9480a4c4d310107333c85ef",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f21fa17e-38c7-5565-e35f-21a87dd4dcc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4924–4958.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma varphi_ftc_out (ν ε : ℝ) (hlam : ν ≠ 0) {x y : ℝ}
    (h : (x ≤ -1 ∧ y ≤ -1) ∨ (x ≥ 1 ∧ y ≥ 1)) :
    ∫ t in x..y, deriv (ϕ_pm ν ε) t = (ϕ_pm ν ε) y - (ϕ_pm ν ε) x := by
  let f := ϕ_pm ν ε
  change ∫ t in x..y, deriv f t = f y - f x
  have hf_const {t : ℝ} (ht : t ≤ -1 ∨ t ≥ 1) : f t = 0 := by
    unfold f ϕ_pm; split_ifs with h_mem
    · rcases ht with h_le | h_ge
      · obtain rfl : t = -1 := by linarith [h_le, h_mem.1]
        simpa [ϕ_pm] using (ϕ_pm_zero_boundary ν ε hlam).1
      · obtain rfl : t = 1 := by linarith [h_ge, h_mem.2]
        simpa [ϕ_pm] using (ϕ_pm_zero_boundary ν ε hlam).2
    · rfl
  have hf_deriv (t : ℝ) (ht : t < -1 ∨ t > 1) : deriv f t = 0 := by
    have h_eq : f =ᶠ[nhds t] (fun _ ↦ (0 : ℂ)) := by
      filter_upwards [isClosed_Icc.isOpen_compl.mem_nhds (show t ∉ Set.Icc (-1) 1 from by
        intro h; simp only [Set.mem_Icc] at h; rcases ht with ht | ht <;> linarith)] with z hz
      unfold f ϕ_pm; exact if_neg hz
    exact h_eq.deriv_eq.trans (deriv_const _ _)
  rw [hf_const (h.elim (fun h' ↦ Or.inl h'.2) (fun h' ↦ Or.inr h'.2)),
      hf_const (h.elim (fun h' ↦ Or.inl h'.1) (fun h' ↦ Or.inr h'.1)), sub_zero]
  apply intervalIntegral.integral_zero_ae
  rcases h with ⟨hx, hy⟩ | ⟨hx, hy⟩
  · have hne_ae : ∀ᵐ (x_1 : ℝ), x_1 ≠ (-1 : ℝ) := by
      rw [MeasureTheory.ae_iff, show {x_1 : ℝ | ¬(x_1 ≠ -1)} = {-1} from by ext; simp]
      exact Real.volume_singleton
    filter_upwards [hne_ae] with x_1 hne
    intro hx1
    simp only [Set.uIoc, Set.mem_Ioc] at hx1
    exact hf_deriv x_1 (Or.inl (lt_of_le_of_ne (le_trans hx1.2 (max_le hx hy)) hne))
  · apply Filter.Eventually.of_forall
    intro x_1 hx1
    simp only [Set.uIoc, Set.mem_Ioc] at hx1
    exact hf_deriv x_1 (Or.inr (lt_of_le_of_lt (le_min hx hy) hx1.1))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L4924).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
