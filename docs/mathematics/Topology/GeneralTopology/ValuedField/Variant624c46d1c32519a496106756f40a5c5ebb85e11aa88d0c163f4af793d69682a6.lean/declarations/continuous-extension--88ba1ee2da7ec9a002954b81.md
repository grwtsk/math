# continuous_extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60018dfa547f52aecca1d71e0a42cfa58205705b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aeb40f71-9381-e98c-9c2e-6bb8db24430c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:251f9cdf-e455-4b25-bf4b-2d04bf570db9",
  "kind": "theorem",
  "lexical_name": "continuous_extension",
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
  "slug": "continuous-extension--88ba1ee2da7ec9a002954b81",
  "source": {
    "blob": "60018dfa547f52aecca1d71e0a42cfa58205705b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 201,
    "path": "GRWTSK/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88ba1ee2da7ec9a002954b819e9eefedab20f933183e22ef69e675a679e1fdae",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:251f9cdf-e455-4b25-bf4b-2d04bf570db9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_extension : Continuous (Valued.extension : hat K → Γ₀) := by
  refine' Completion.denseInducing_coe.continuous_extend _
  intro x₀
  rcases eq_or_ne x₀ 0 with (rfl | h)
  · refine' ⟨0, _⟩
    erw [← Completion.denseInducing_coe.toInducing.nhds_eq_comap]
    exact Valued.continuous_valuation.tendsto' 0 0 (map_zero v)
  · have preimage_one : v ⁻¹' {(1 : Γ₀)} ∈ 𝓝 (1 : K) := by
      have : (v (1 : K) : Γ₀) ≠ 0 := by
        rw [Valuation.map_one]
        exact zero_ne_one.symm
      convert Valued.loc_const this
      ext x
      rw [Valuation.map_one, mem_preimage, mem_singleton_iff, mem_setOf_eq]
    obtain ⟨V, V_in, hV⟩ : ∃ V ∈ 𝓝 (1 : hat K), ∀ x : K, (x : hat K) ∈ V → (v x : Γ₀) = 1 := by
      rwa [Completion.denseInducing_coe.nhds_eq_comap, mem_comap] at preimage_one
    have : ∃ V' ∈ 𝓝 (1 : hat K), (0 : hat K) ∉ V' ∧ ∀ (x) (_ : x ∈ V') (y) (_ : y ∈ V'),
      x * y⁻¹ ∈ V := by
      have : Tendsto (fun p : hat K × hat K => p.1 * p.2⁻¹) ((𝓝 1) ×ˢ (𝓝 1)) (𝓝 1) := by
        rw [← nhds_prod_eq]
        conv =>
          congr
          rfl
          rfl
          rw [← one_mul (1 : hat K)]
        refine'
          Tendsto.mul continuous_fst.continuousAt (Tendsto.comp _ continuous_snd.continuousAt)
        -- Porting note: Added `ContinuousAt.tendsto`
        convert (continuousAt_inv₀ (zero_ne_one.symm : 1 ≠ (0 : hat K))).tendsto
        exact inv_one.symm
      rcases tendsto_prod_self_iff.mp this V V_in with ⟨U, U_in, hU⟩
      let hatKstar := ({0}ᶜ : Set <| hat K)
      have : hatKstar ∈ 𝓝 (1 : hat K) := compl_singleton_mem_nhds zero_ne_one.symm
      use U ∩ hatKstar, Filter.inter_mem U_in this
      constructor
      · rintro ⟨_, h'⟩
        rw [mem_compl_singleton_iff] at h'
        exact h' rfl
      · rintro x ⟨hx, _⟩ y ⟨hy, _⟩
        apply hU <;> assumption
    rcases this with ⟨V', V'_in, zeroV', hV'⟩
    have nhds_right : (fun x => x * x₀) '' V' ∈ 𝓝 x₀ := by
      have l : Function.LeftInverse (fun x : hat K => x * x₀⁻¹) fun x : hat K => x * x₀ := by
        intro x
        simp only [mul_assoc, mul_inv_cancel h, mul_one]
      have r : Function.RightInverse (fun x : hat K => x * x₀⁻¹) fun x : hat K => x * x₀ := by
        intro x
        simp only [mul_assoc, inv_mul_cancel h, mul_one]
      have c : Continuous fun x : hat K => x * x₀⁻¹ := continuous_id.mul continuous_const
      rw [image_eq_preimage_of_inverse l r]
      rw [← mul_inv_cancel h] at V'_in
      exact c.continuousAt V'_in
    have : ∃ z₀ : K, ∃ y₀ ∈ V', ↑z₀ = y₀ * x₀ ∧ z₀ ≠ 0 := by
      rcases Completion.denseRange_coe.mem_nhds nhds_right with ⟨z₀, y₀, y₀_in, H : y₀ * x₀ = z₀⟩
      refine' ⟨z₀, y₀, y₀_in, ⟨H.symm, _⟩⟩
      rintro rfl
      exact mul_ne_zero (ne_of_mem_of_not_mem y₀_in zeroV') h H
    rcases this with ⟨z₀, y₀, y₀_in, hz₀, z₀_ne⟩
    have vz₀_ne : (v z₀ : Γ₀) ≠ 0 := by rwa [Valuation.ne_zero_iff]
    refine' ⟨v z₀, _⟩
    rw [WithZeroTopology.tendsto_of_ne_zero vz₀_ne, eventually_comap]
    filter_upwards [nhds_right]with x x_in a ha
    rcases x_in with ⟨y, y_in, rfl⟩
    have : (v (a * z₀⁻¹) : Γ₀) = 1 := by
      apply hV
      have : (z₀⁻¹ : K) = (z₀ : hat K)⁻¹ := map_inv₀ (Completion.coeRingHom : K →+* hat K) z₀
      rw [Completion.coe_mul, this, ha, hz₀, mul_inv, mul_comm y₀⁻¹, ← mul_assoc, mul_assoc y,
        mul_inv_cancel h, mul_one]
      solve_by_elim
    calc
      v a = v (a * z₀⁻¹ * z₀) := by rw [mul_assoc, inv_mul_cancel z₀_ne, mul_one]
      _ = v (a * z₀⁻¹) * v z₀ := (Valuation.map_mul _ _ _)
      _ = v z₀ := by rw [this, one_mul]
#align valued.continuous_extension Valued.continuous_extension

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuedField/Variant624c46d1c32519a496106756f40a5c5ebb85e11aa88d0c163f4af793d69682a6.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60018dfa547f52aecca1d71e0a42cfa58205705b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
