# image_subset_closure_compl_image_compl_of_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ef74f11877004731dc8c1a4097909f24c497add",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6653fd16-4dfb-03b7-59cf-3a438ff3b94d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f524d92a-3aff-8435-3940-21a687b6ce28",
  "kind": "lemma",
  "lexical_name": "image_subset_closure_compl_image_compl_of_isOpen",
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
  "slug": "image-subset-closure-compl-image-compl-of-isopen--df0f23b5e54b0037046fc164",
  "source": {
    "blob": "2ef74f11877004731dc8c1a4097909f24c497add",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df0f23b5e54b0037046fc164c1b584bd354cf51df4f75246a199f431e7409eb0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f524d92a-3aff-8435-3940-21a687b6ce28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma image_subset_closure_compl_image_compl_of_isOpen {ρ : E → A} (ρ_cont : Continuous ρ)
    (ρ_surj : ρ.Surjective) (zorn_subset : ∀ E₀ : Set E, E₀ ≠ univ → IsClosed E₀ → ρ '' E₀ ≠ univ)
    {G : Set E} (hG : IsOpen G) : ρ '' G ⊆ closure ((ρ '' Gᶜ)ᶜ) := by
  -- suffices to prove for nonempty $G$
  by_cases G_empty : G = ∅
  · simpa only [G_empty, image_empty] using empty_subset _
  · -- let $a \in \rho(G)$
    intro a ha
    rw [mem_closure_iff]
    -- let $N$ be a neighbourhood of $a$
    intro N N_open hN
    -- get $x \in A$ from nonempty open $G \cap \rho^{-1}(N)$
    rcases (G.mem_image ρ a).mp ha with ⟨e, he, rfl⟩
    have nonempty : (G ∩ ρ⁻¹' N).Nonempty := ⟨e, mem_inter he <| mem_preimage.mpr hN⟩
    have is_open : IsOpen <| G ∩ ρ⁻¹' N := hG.inter <| N_open.preimage ρ_cont
    have ne_univ : ρ '' (G ∩ ρ⁻¹' N)ᶜ ≠ univ :=
      zorn_subset _ (compl_ne_univ.mpr nonempty) is_open.isClosed_compl
    rcases nonempty_compl.mpr ne_univ with ⟨x, hx⟩
    -- prove $x \in N \cap (A \setminus \rho(E \setminus G))$
    have hx' : x ∈ (ρ '' Gᶜ)ᶜ := fun h => hx <| image_subset ρ (by simp) h
    rcases ρ_surj x with ⟨y, rfl⟩
    have hy : y ∈ G ∩ ρ⁻¹' N := by simpa using mt (mem_image_of_mem ρ) <| mem_compl hx
    exact ⟨ρ y, mem_inter (mem_preimage.mp <| mem_of_mem_inter_right hy) hx'⟩

/-- Lemma 2.2 in [Gleason, *Projective topological spaces*][gleason1958]:
in an extremally disconnected space, if $U_1$ and $U_2$ are disjoint open sets,
then $\overline{U_1}$ and $\overline{U_2}$ are also disjoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ef74f11877004731dc8c1a4097909f24c497add` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
