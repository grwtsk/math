# chainHeight_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1687dcf21e2a1ff0459efc51d6feaeac446ed555",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26e5b3d0-c538-9636-fa9d-4fb0f9594ca1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8fa4652-0fe3-39d5-4c49-a5ef395113cc",
  "kind": "theorem",
  "lexical_name": "chainHeight_image",
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
  "slug": "chainheight-image--0ef841c78b79c7f431911764",
  "source": {
    "blob": "1687dcf21e2a1ff0459efc51d6feaeac446ed555",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 212,
    "path": "GRWTSK/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ef841c78b79c7f4319117646b96f09ad908738a0dd294cb6b8ab2b780daa59b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8fa4652-0fe3-39d5-4c49-a5ef395113cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chainHeight_image (f : α → β) (hf : ∀ {x y}, x < y ↔ f x < f y) (s : Set α) :
    (f '' s).chainHeight = s.chainHeight := by
  apply le_antisymm <;> rw [chainHeight_le_chainHeight_iff]
  · suffices ∀ l ∈ (f '' s).subchain, ∃ l' ∈ s.subchain, map f l' = l by
      intro l hl
      obtain ⟨l', h₁, rfl⟩ := this l hl
      exact ⟨l', h₁, length_map _ _⟩
    intro l
    induction' l with x xs hx
    · exact fun _ ↦ ⟨nil, ⟨trivial, fun x h ↦ (not_mem_nil x h).elim⟩, rfl⟩
    · intro h
      rw [cons_mem_subchain_iff] at h
      obtain ⟨⟨x, hx', rfl⟩, h₁, h₂⟩ := h
      obtain ⟨l', h₃, rfl⟩ := hx h₁
      refine' ⟨x::l', Set.cons_mem_subchain_iff.mpr ⟨hx', h₃, _⟩, rfl⟩
      cases l'
      · simp
      · simpa [← hf] using h₂
  · intro l hl
    refine' ⟨l.map f, ⟨_, _⟩, _⟩
    · simp_rw [chain'_map, ← hf]
      exact hl.1
    · intro _ e
      obtain ⟨a, ha, rfl⟩ := mem_map.mp e
      exact Set.mem_image_of_mem _ (hl.2 _ ha)
    · rw [length_map]
#align set.chain_height_image Set.chainHeight_image

variable (s)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1687dcf21e2a1ff0459efc51d6feaeac446ed555` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
