# exists_null_set_measure_lt_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1264141-f220-e666-3800-686b1e4c7d37",
  "kind": "lemma",
  "lexical_name": "exists_null_set_measure_lt_of_disjoint",
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
  "slug": "exists-null-set-measure-lt-of-disjoint--b66802c14f40e8b4c02776e7",
  "source": {
    "blob": "e1e8b887dba8de2d09e29c25b2909c8b7aff8b28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 191,
    "path": "GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variant4525f79b216a0b853f4effdf4b62dd48a53e15695cc1ce5a7365c4015dcab3e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b66802c14f40e8b4c02776e7877fa2c1e767c64698a90eb76ca5c8b8afff9c3e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MutuallySingular/Variant4525f79b216a0b853f4effdf4b62dd48a53e15695cc1ce5a7365c4015dcab3e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1264141-f220-e666-3800-686b1e4c7d37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_null_set_measure_lt_of_disjoint (h : Disjoint μ ν) {ε : ℝ≥0} (hε : 0 < ε) :
    ∃ s, μ s = 0 ∧ ν sᶜ ≤ 2 * ε := by
  have h₁ : (μ ⊓ ν) univ = 0 := le_bot_iff.1 (h (inf_le_left (b := ν)) inf_le_right) ▸ rfl
  simp_rw [Measure.inf_apply MeasurableSet.univ, inter_univ] at h₁
  have h₂ : ∀ n : ℕ, ∃ t, μ t + ν tᶜ < ε * (1 / 2) ^ n := by
    intro n
    obtain ⟨m, ⟨t, ht₁, rfl⟩, hm₂⟩ :
        ∃ x ∈ {m | ∃ t, m = μ t + ν tᶜ}, x < ε * (1 / 2 : ℝ≥0∞) ^ n := by
      refine exists_lt_of_csInf_lt ⟨ν univ, ∅, by simp⟩ <| h₁ ▸ ENNReal.mul_pos ?_ (by simp)
      norm_cast
      exact hε.ne.symm
    exact ⟨t, hm₂⟩
  choose t ht₂ using h₂
  refine ⟨⋂ n, t n, ?_, ?_⟩
  · refine eq_zero_of_le_mul_pow (by simp)
      fun n ↦ ((measure_mono <| iInter_subset_of_subset n fun _ ht ↦ ht).trans
      (le_add_right le_rfl)).trans (ht₂ n).le
  · rw [compl_iInter, (by simp [ENNReal.tsum_mul_left, mul_comm] :
      2 * (ε : ℝ≥0∞) = ∑' (n : ℕ), ε * (1 / 2 : ℝ≥0∞) ^ n)]
    refine (measure_iUnion_le _).trans ?_
    exact ENNReal.summable.tsum_le_tsum (fun n ↦ (le_add_left le_rfl).trans (ht₂ n).le)
      ENNReal.summable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MutuallySingular/Variant4525f79b216a0b853f4effdf4b62dd48a53e15695cc1ce5a7365c4015dcab3e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variant4525f79b216a0b853f4effdf4b62dd48a53e15695cc1ce5a7365c4015dcab3e8.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1e8b887dba8de2d09e29c25b2909c8b7aff8b28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
