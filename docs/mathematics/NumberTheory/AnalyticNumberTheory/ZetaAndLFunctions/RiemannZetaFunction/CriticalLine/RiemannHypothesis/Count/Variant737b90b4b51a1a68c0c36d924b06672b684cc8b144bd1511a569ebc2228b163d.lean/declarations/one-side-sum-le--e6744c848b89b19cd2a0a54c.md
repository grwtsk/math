# one_side_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b9921557758c132db22727b91adfc063f9ca5a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82c812e0-7c9b-4050-86b9-05ae1e11ff51",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:142e5621-c255-5a01-8c79-88b07323fdd1",
  "kind": "lemma",
  "lexical_name": "one_side_sum_le",
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
  "slug": "one-side-sum-le--e6744c848b89b19cd2a0a54c",
  "source": {
    "blob": "3b9921557758c132db22727b91adfc063f9ca5a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 200,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6744c848b89b19cd2a0a54ccdd02bdbc4a6ea8f40c405691b24c8e19a687ab6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:142e5621-c255-5a01-8c79-88b07323fdd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_side_sum_le {ι : Type*} (s : Finset ι) (x : ι → ℝ) (m : ι → ℕ) (key : ι → ℕ)
    {A₀ B D₀ : ℝ} (hA₀ : 0 ≤ A₀) (hB : 1 ≤ B) (hD₀ : 2 ≤ D₀)
    (hx : ∀ ρ ∈ s, D₀ ≤ x ρ) (hkey_le : ∀ ρ ∈ s, (key ρ : ℝ) ≤ x ρ)
    (hkey_ge : ∀ ρ ∈ s, x ρ ≤ key ρ + 1)
    (hcount : ∀ j : ℕ, ∑ ρ ∈ s with key ρ = j, (m ρ : ℝ) ≤ A₀ * Real.log (B + j)) :
    ∑ ρ ∈ s, (m ρ : ℝ) * ((x ρ) ^ 3)⁻¹
      ≤ A₀ * ((2 * (D₀ ^ 3)⁻¹ + (D₀ ^ 2)⁻¹ / 2) * Real.log B
          + (2 * (D₀ ^ 2)⁻¹ + D₀⁻¹) / B) := by
  have hD0 : 0 < D₀ := by linarith
  rw [← sum_fiberwise_of_maps_to (g := key) (t := s.image key)
    (fun ρ hρ => mem_image_of_mem key hρ)]
  have hfiber : ∀ j ∈ s.image key,
      ∑ ρ ∈ s with key ρ = j, (m ρ : ℝ) * ((x ρ) ^ 3)⁻¹
        ≤ A₀ * (((max D₀ j) ^ 3)⁻¹ * Real.log (B + j)) := by
    intro j _
    have hM : 0 < max D₀ (j : ℝ) := lt_max_of_lt_left hD0
    calc ∑ ρ ∈ s with key ρ = j, (m ρ : ℝ) * ((x ρ) ^ 3)⁻¹
        ≤ ∑ ρ ∈ s with key ρ = j, (m ρ : ℝ) * ((max D₀ j) ^ 3)⁻¹ := by
          apply sum_le_sum
          intro ρ hρ
          simp only [mem_filter] at hρ
          obtain ⟨hρs, hρj⟩ := hρ
          apply mul_le_mul_of_nonneg_left _ (Nat.cast_nonneg _)
          apply inv_anti₀ (pow_pos hM 3)
          apply pow_le_pow_left₀ hM.le
          refine max_le (hx ρ hρs) ?_
          have := hkey_le ρ hρs
          rw [hρj] at this
          exact this
      _ = ((max D₀ j) ^ 3)⁻¹ * ∑ ρ ∈ s with key ρ = j, (m ρ : ℝ) := by
          rw [mul_sum]
          exact sum_congr rfl fun _ _ => mul_comm _ _
      _ ≤ ((max D₀ j) ^ 3)⁻¹ * (A₀ * Real.log (B + j)) :=
          mul_le_mul_of_nonneg_left (hcount j) (by positivity)
      _ = _ := by ring
  refine (sum_le_sum hfiber).trans ?_
  rw [← mul_sum]
  apply mul_le_mul_of_nonneg_left _ hA₀
  apply sum_window_weights_le _ hB hD₀
  intro j hj
  obtain ⟨ρ, hρ, rfl⟩ := mem_image.mp hj
  exact (hx ρ hρ).trans (hkey_ge ρ hρ)

/-! #### Numerics at T ≥ T₀ -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b9921557758c132db22727b91adfc063f9ca5a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
