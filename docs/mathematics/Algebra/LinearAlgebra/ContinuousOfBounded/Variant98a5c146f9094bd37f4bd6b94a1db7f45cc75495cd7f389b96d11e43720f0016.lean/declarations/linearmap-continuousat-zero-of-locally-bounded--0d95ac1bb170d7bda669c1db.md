# LinearMap.continuousAt_zero_of_locally_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90f3a908baaaf9ba647d098cf19287e41decdf40",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0925498-4e6d-1826-0812-be5d481a92ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2186f411-51c5-5dd9-5707-c8d1afa233f8",
  "kind": "theorem",
  "lexical_name": "LinearMap.continuousAt_zero_of_locally_bounded",
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
  "slug": "linearmap-continuousat-zero-of-locally-bounded--0d95ac1bb170d7bda669c1db",
  "source": {
    "blob": "90f3a908baaaf9ba647d098cf19287e41decdf40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 90,
    "path": "GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variant98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d95ac1bb170d7bda669c1db0f68e6615cc7b9ea33f6e0a878d24032d5e00480",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ContinuousOfBounded/Variant98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2186f411-51c5-5dd9-5707-c8d1afa233f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearMap.continuousAt_zero_of_locally_bounded (f : E →ₛₗ[σ] F)
    (hf : ∀ s, IsVonNBounded 𝕜 s → IsVonNBounded 𝕜' (f '' s)) : ContinuousAt f 0 := by
  -- Assume that f is not continuous at 0
  by_contra h
  -- We use a decreasing balanced basis for 0 : E and a balanced basis for 0 : F
  -- and reformulate non-continuity in terms of these bases
  rcases (nhds_basis_balanced 𝕜 E).exists_antitone_subbasis with ⟨b, bE1, bE⟩
  simp only [_root_.id] at bE
  have bE' : (𝓝 (0 : E)).HasBasis (fun x : ℕ => x ≠ 0) fun n : ℕ => (n : 𝕜)⁻¹ • b n := by
    refine bE.1.to_hasBasis ?_ ?_
    · intro n _
      use n + 1
      simp only [Ne, Nat.succ_ne_zero, not_false_iff, Nat.cast_add, Nat.cast_one, true_and]
      -- `b (n + 1) ⊆ b n` follows from `Antitone`.
      have h : b (n + 1) ⊆ b n := bE.2 (by simp)
      refine _root_.trans ?_ h
      rintro y ⟨x, hx, hy⟩
      -- Since `b (n + 1)` is balanced `(n+1)⁻¹ b (n + 1) ⊆ b (n + 1)`
      rw [← hy]
      refine (bE1 (n + 1)).2.smul_mem ?_ hx
      have h' : 0 < (n : ℝ) + 1 := n.cast_add_one_pos
      rw [norm_inv, ← Nat.cast_one, ← Nat.cast_add, RCLike.norm_natCast, Nat.cast_add,
        Nat.cast_one, inv_le_comm₀ h' zero_lt_one]
      simp
    intro n hn
    -- The converse direction follows from continuity of the scalar multiplication
    have hcont : ContinuousAt (fun x : E => (n : 𝕜) • x) 0 :=
      (continuous_const_smul (n : 𝕜)).continuousAt
    simp only [ContinuousAt, map_zero, smul_zero] at hcont
    rw [bE.1.tendsto_left_iff] at hcont
    rcases hcont (b n) (bE1 n).1 with ⟨i, _, hi⟩
    refine ⟨i, trivial, fun x hx => ⟨(n : 𝕜) • x, hi hx, ?_⟩⟩
    simp [← mul_smul, hn]
  rw [ContinuousAt, map_zero, bE'.tendsto_iff (nhds_basis_balanced 𝕜' F)] at h
  push_neg at h
  rcases h with ⟨V, ⟨hV, -⟩, h⟩
  simp only [_root_.id, forall_true_left] at h
  -- There exists `u : ℕ → E` such that for all `n : ℕ` we have `u n ∈ n⁻¹ • b n` and `f (u n) ∉ V`
  choose! u hu hu' using h
  -- The sequence `(fun n ↦ n • u n)` converges to `0`
  have h_tendsto : Tendsto (fun n : ℕ => (n : 𝕜) • u n) atTop (𝓝 (0 : E)) := by
    apply bE.tendsto
    intro n
    by_cases h : n = 0
    · rw [h, Nat.cast_zero, zero_smul]
      exact mem_of_mem_nhds (bE.1.mem_of_mem <| by trivial)
    rcases hu n h with ⟨y, hy, hu1⟩
    convert hy
    rw [← hu1, ← mul_smul]
    simp only [h, mul_inv_cancel₀, Ne, Nat.cast_eq_zero, not_false_iff, one_smul]
  -- The image `(fun n ↦ n • u n)` is von Neumann bounded:
  have h_bounded : IsVonNBounded 𝕜 (Set.range fun n : ℕ => (n : 𝕜) • u n) :=
    h_tendsto.cauchySeq.totallyBounded_range.isVonNBounded 𝕜
  -- Since `range u` is bounded, `V` absorbs it
  rcases (hf _ h_bounded hV).exists_pos with ⟨r, hr, h'⟩
  obtain ⟨n, hn⟩ := exists_nat_gt r
  -- We now find a contradiction between `f (u n) ∉ V` and the absorbing property
  have h1 : r ≤ ‖(n : 𝕜')‖ := by
    rw [RCLike.norm_natCast]
    exact hn.le
  have hn' : 0 < ‖(n : 𝕜')‖ := lt_of_lt_of_le hr h1
  rw [norm_pos_iff, Ne, Nat.cast_eq_zero] at hn'
  have h'' : f (u n) ∈ V := by
    simp only [Set.image_subset_iff] at h'
    specialize h' (n : 𝕜') h1 (Set.mem_range_self n)
    simp only [Set.mem_preimage, LinearMap.map_smulₛₗ, map_natCast] at h'
    rcases h' with ⟨y, hy, h'⟩
    apply_fun fun y : F => (n : 𝕜')⁻¹ • y at h'
    simp only [hn', inv_smul_smul₀, Ne, Nat.cast_eq_zero, not_false_iff] at h'
    rwa [← h']
  exact hu' n hn' h''

/-- If `E` is first countable, then every locally bounded linear map `E →ₛₗ[σ] F` is continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ContinuousOfBounded/Variant98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variant98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90f3a908baaaf9ba647d098cf19287e41decdf40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
