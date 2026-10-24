# chainHeight_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9494780-10ef-e5b1-4db0-a17bbc8cad6a",
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
  "slug": "chainheight-image--7638a0a52acee9cf87a24b4e",
  "source": {
    "blob": "b9e91d9826e1c6a06557f242ca2bca1374a91406",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 220,
    "path": "GRWTSK/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7638a0a52acee9cf87a24b4eeacbcbc80c9a39bc3d8b8487474b1b66fb1dd5d6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9494780-10ef-e5b1-4db0-a17bbc8cad6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–250.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9e91d9826e1c6a06557f242ca2bca1374a91406` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
