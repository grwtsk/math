# LinearMap.continuousAt_zero_of_locally_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:028cbcbf-c9d4-736d-d43c-f73da0b216d4",
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
  "slug": "linearmap-continuousat-zero-of-locally-bounded--dbcdcfb594a900c4e3d2e217",
  "source": {
    "blob": "41b577b4fd9d7e2ee4668293ff6127c9ee3e2adf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 88,
    "path": "GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variantd3110e740825631592bb357b787b4dd8f1d24535dff801d5a1ff7ef67b1781eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbcdcfb594a900c4e3d2e217ee1dadeb3868fe40c116ea47fcfed9e6734c445f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ContinuousOfBounded/Variantd3110e740825631592bb357b787b4dd8f1d24535dff801d5a1ff7ef67b1781eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:028cbcbf-c9d4-736d-d43c-f73da0b216d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearMap.continuousAt_zero_of_locally_bounded (f : E →ₛₗ[σ] F)
    (hf : ∀ s, IsVonNBounded 𝕜 s → IsVonNBounded 𝕜' (f '' s)) : ContinuousAt f 0 := by
  -- We pick `c : 𝕜` nonzero of norm `< 1`.
  obtain ⟨c, hc0, hc1⟩ := NormedField.exists_norm_lt_one 𝕜
  have c_ne := norm_pos_iff.mp hc0
  -- We use a fast decreasing balanced basis for 0 : E, and reformulate continuity in terms of
  -- this basis
  rcases (nhds_basis_balanced 𝕜 E).exists_antitone_subbasis with ⟨b, bE1, bE⟩
  simp only [_root_.id] at bE
  have bE' : (𝓝 (0 : E)).HasBasis (fun _ ↦ True) (fun n : ℕ ↦ (c ^ n) • b n) := by
    refine bE.1.to_hasBasis' ?_ ?_
    · intro n _
      use n
      exact ⟨trivial, (bE1 n).2 _ (by grw [norm_pow, hc1, one_pow])⟩
    · intro n _
      simpa using smul_mem_nhds_smul₀ (pow_ne_zero n c_ne) (bE1 n).1
  simp_rw [ContinuousAt, map_zero, bE'.tendsto_left_iff, true_and, Set.MapsTo]
  -- Assume that f is not continuous at 0
  by_contra! h
  rcases h with ⟨V, hV, h⟩
  -- There exists `u : ℕ → E` such that for all `n : ℕ` we have `u n ∈ c ^ n • b n` and
  -- `f (u n) ∉ V`, with `V` some neighborhood of `0` in `F`.
  choose! u hu hu' using h
  -- The sequence `fun n ↦ c ^ (-n) • u n` converges to `0`
  have h_tendsto : Tendsto (fun n : ℕ => (c ^ n)⁻¹ • u n) atTop (𝓝 (0 : E)) := by
    apply bE.tendsto
    intro n
    simpa only [Set.mem_smul_set_iff_inv_smul_mem₀ (pow_ne_zero n c_ne)] using hu n
  -- The range of `fun n ↦ c ^ (-n) • u n` is von Neumann bounded
  have h_bounded : IsVonNBounded 𝕜 (Set.range fun n : ℕ => (c ^ n)⁻¹ • u n) :=
    h_tendsto.isVonNBounded_range 𝕜
  -- Hence, by assumption, the range of `fun n ↦ (σ c) ^ (-n) • f (u n)` is von Neumann bounded
  specialize hf _ h_bounded
  simp only [← Set.range_comp', LinearMap.map_smulₛₗ, map_inv₀, map_pow] at hf
  -- Since `fun n ↦ (σ c) ^ n` tends to zero, this implies that `f ∘ u` converges to zero.
  have : Tendsto (f ∘ u) atTop (𝓝 0) := by
    have : Tendsto (fun n ↦ σ c ^ n) atTop (𝓝 0) :=
      tendsto_pow_atTop_nhds_zero_of_norm_lt_one (by simpa using hc1)
    have := hf.smul_tendsto_zero (.of_forall fun n ↦ Set.mem_range_self n) this
    exact this.congr fun n ↦ by simp [c_ne]
  -- But this is a contradiction.
  refine frequently_false (atTop : Filter ℕ) <| Eventually.frequently ?_
  filter_upwards [this.eventually_mem hV] using hu'

/-- If `E` is first countable, then every locally bounded linear map `E →ₛₗ[σ] F` is continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ContinuousOfBounded/Variantd3110e740825631592bb357b787b4dd8f1d24535dff801d5a1ff7ef67b1781eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variantd3110e740825631592bb357b787b4dd8f1d24535dff801d5a1ff7ef67b1781eb.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41b577b4fd9d7e2ee4668293ff6127c9ee3e2adf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
