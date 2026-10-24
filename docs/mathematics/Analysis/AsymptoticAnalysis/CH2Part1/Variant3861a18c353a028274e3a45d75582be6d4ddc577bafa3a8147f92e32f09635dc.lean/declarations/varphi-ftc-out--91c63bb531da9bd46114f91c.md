# varphi_ftc_out

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 4898,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e8378ac-3c0d-cce6-1da4-f2f53595b8f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1bfdc491-8eb8-5430-1c97-19cd60d2b8ae",
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
  "slug": "varphi-ftc-out--91c63bb531da9bd46114f91c",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4932,
    "line": 4898,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91c63bb531da9bd46114f91c647765dc37e8a37212c622f86f61c4dda2612f6e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bfdc491-8eb8-5430-1c97-19cd60d2b8ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4898–4932.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L4898).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
