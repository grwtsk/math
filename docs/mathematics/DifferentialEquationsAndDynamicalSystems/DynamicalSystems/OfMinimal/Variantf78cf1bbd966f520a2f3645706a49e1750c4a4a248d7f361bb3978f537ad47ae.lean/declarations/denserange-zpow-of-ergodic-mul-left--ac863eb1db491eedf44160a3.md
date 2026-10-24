# DenseRange.zpow_of_ergodic_mul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ddd7cec402cb285436cbd9af9d8272ffe51505f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f78cf1bbd966f520a2f3645706a49e1750c4a4a248d7f361bb3978f537ad47ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5933b5a4-764c-74be-d0d1-8b5242e67919",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b095cdba-21b2-59c9-b97f-16091eacecda",
  "kind": "theorem",
  "lexical_name": "DenseRange.zpow_of_ergodic_mul_left",
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
  "slug": "denserange-zpow-of-ergodic-mul-left--ac863eb1db491eedf44160a3",
  "source": {
    "blob": "2ddd7cec402cb285436cbd9af9d8272ffe51505f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 170,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantf78cf1bbd966f520a2f3645706a49e1750c4a4a248d7f361bb3978f537ad47ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac863eb1db491eedf44160a337f9a8bc1e1bc30ca922c3af66abd78f06601d6c",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantf78cf1bbd966f520a2f3645706a49e1750c4a4a248d7f361bb3978f537ad47ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b095cdba-21b2-59c9-b97f-16091eacecda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DenseRange.zpow_of_ergodic_mul_left [OpensMeasurableSpace G]
    {μ : Measure G} [μ.IsOpenPosMeasure] {g : G} (hg : Ergodic (g * ·) μ) :
    DenseRange (g ^ · : ℤ → G) := by
  intro a
  by_contra h
  obtain ⟨V, hV₁, hVo, hV⟩ :
      ∃ V : Set G, 1 ∈ V ∧ IsOpen V ∧ ∀ x ∈ V, ∀ y ∈ V, ∀ m : ℤ, g ^ m ≠ a * x / y := by
    rw [← mem_compl_iff, ← interior_compl, mem_interior_iff_mem_nhds] at h
    have : Tendsto (fun (x, y) ↦ a * x / y) (𝓝 1) (𝓝 a) :=
      Continuous.tendsto' (by fun_prop) _ _ (by simp)
    rw [nhds_prod_eq] at this
    simpa [(nhds_basis_opens (1 : G)).prod_self.mem_iff, prod_subset_iff, and_assoc] using this h
  set s := ⋃ m : ℤ, g ^ m • V
  have hso : IsOpen s := isOpen_iUnion fun m ↦ hVo.smul _
  have hsne : s.Nonempty := ⟨1, mem_iUnion.2 ⟨0, by simpa⟩⟩
  have hd : Disjoint s (a • V) := by
    simp_rw [s, disjoint_iUnion_left, disjoint_left]
    rintro m _ ⟨x, hx, rfl⟩ ⟨y, hy, hxy⟩
    apply hV y hy x hx m
    simp_all
  have hgs : (g * ·) ⁻¹' s = s := by
    simp only [s, preimage_iUnion, ← smul_eq_mul, preimage_smul]
    refine iUnion_congr_of_surjective _ (add_left_surjective (-1)) fun m ↦ ?_
    simp [zpow_add, mul_smul]
  cases hg.measure_self_or_compl_eq_zero hso.measurableSet hgs with
  | inl h => exact hso.measure_ne_zero _ hsne h
  | inr h =>
    refine (hVo.smul a).measure_ne_zero μ (.image _ ⟨1, hV₁⟩) (measure_mono_null ?_ h)
    rwa [disjoint_right] at hd

variable [SecondCountableTopology G] [BorelSpace G] {g : G}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantf78cf1bbd966f520a2f3645706a49e1750c4a4a248d7f361bb3978f537ad47ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantf78cf1bbd966f520a2f3645706a49e1750c4a4a248d7f361bb3978f537ad47ae.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ddd7cec402cb285436cbd9af9d8272ffe51505f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
