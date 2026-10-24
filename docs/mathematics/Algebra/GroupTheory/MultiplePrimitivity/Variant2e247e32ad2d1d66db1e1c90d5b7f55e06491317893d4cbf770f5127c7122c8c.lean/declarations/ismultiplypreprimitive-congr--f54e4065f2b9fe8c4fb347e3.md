# isMultiplyPreprimitive_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:775ff8ba-5aea-6136-c010-ffd822e08608",
  "kind": "theorem",
  "lexical_name": "isMultiplyPreprimitive_congr",
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
  "slug": "ismultiplypreprimitive-congr--f54e4065f2b9fe8c4fb347e3",
  "source": {
    "blob": "7c6d8cdec8221628505254ecf73d93f1dbf22864",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 316,
    "path": "GRWTSK/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f54e4065f2b9fe8c4fb347e31a64516b86bc68747e37fe29fdf668688812d4dd",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:775ff8ba-5aea-6136-c010-ffd822e08608`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMultiplyPreprimitive_congr
    {N β : Type*} [Group N] [MulAction N β] {φ : M → N} (hφ : Function.Surjective φ)
    {f : α →ₑ[φ] β} (hf : Function.Bijective f) {n : ℕ} :
    IsMultiplyPreprimitive M α n ↔ IsMultiplyPreprimitive N β n := by
  refine ⟨IsMultiplyPreprimitive.of_bijective_map hf, ?_⟩
  intro H
  rw [isMultiplyPreprimitive_iff]
  constructor
  · exact (IsPretransitive.of_embedding_congr hφ hf).mpr H.isMultiplyPretransitive
  · intro s hs
    let t := f '' s
    let ψ : fixingSubgroup M s → fixingSubgroup N t := fun ⟨g, hg⟩ ↦ ⟨φ g, by
      simp only [mem_fixingSubgroup_iff] at hg ⊢
      intro y hy
      suffices ∃ x ∈ s, y = f x by
        obtain ⟨x, hx, rfl⟩ := this
        rwa [← map_smulₛₗ, hg]
      obtain ⟨x, rfl⟩ := hf.surjective y
      simpa only [Set.mem_image, t, eq_comm] using! hy⟩
    let g : ofFixingSubgroup M s →ₑ[ψ] ofFixingSubgroup N t := {
      toFun x := ⟨f x.val, by
        simp only [mem_ofFixingSubgroup_iff, Set.mem_image, hf.injective.eq_iff, exists_eq_right, t]
        exact x.prop⟩
      map_smul' m x := by simp [subgroup_smul_def, map_smulₛₗ, ψ] }
    rw [isPreprimitive_congr (f := g)]
    · apply H.isPreprimitive_ofFixingSubgroup
      simp [← hs, t, hf.injective.injOn.encard_image]
    · rintro ⟨k, hk⟩
      obtain ⟨k, rfl⟩ := hφ k
      suffices k ∈ fixingSubgroup M s by
        use ⟨k, this⟩
      simp only [mem_fixingSubgroup_iff, t] at hk ⊢
      intro y hy
      apply hf.injective
      rw [map_smulₛₗ, hk]
      exact Set.mem_image_of_mem (⇑f) hy
    · constructor
      · rintro ⟨x, hx⟩ ⟨y, hy⟩ h
        suffices f x = f y by
          simpa [← Subtype.coe_inj, hf.injective.eq_iff] using! this
        simpa only [g, ← Subtype.coe_inj] using! h
      · rintro ⟨x, hx⟩
        obtain ⟨y, rfl⟩ := hf.surjective x
        suffices y ∈ ofFixingSubgroup M s by
          exact ⟨⟨y, this⟩, rfl⟩
        simp only [mem_ofFixingSubgroup_iff, Set.mem_image, not_exists, not_and, t] at hx ⊢
        exact fun hy ↦ hx y hy rfl

end MulAction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MultiplePrimitivity/Variant2e247e32ad2d1d66db1e1c90d5b7f55e06491317893d4cbf770f5127c7122c8c.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c6d8cdec8221628505254ecf73d93f1dbf22864` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
