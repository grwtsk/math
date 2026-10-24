# exists_compact_surjective_zorn_subset

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
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d7db443-c80e-9867-f269-3427e31584db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ee96c63-87bf-5691-2061-bcd0fd9bb1ef",
  "kind": "lemma",
  "lexical_name": "exists_compact_surjective_zorn_subset",
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
  "slug": "exists-compact-surjective-zorn-subset--3b67b80635ec9303c22796ec",
  "source": {
    "blob": "2ef74f11877004731dc8c1a4097909f24c497add",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 149,
    "path": "GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b67b80635ec9303c22796ecc403b7ddabd7b18b2a7b1f84f03f3004fb7c5962",
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

Occurrence: `result:2ee96c63-87bf-5691-2061-bcd0fd9bb1ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_compact_surjective_zorn_subset [T1Space A] [CompactSpace D] {π : D → A}
    (π_cont : Continuous π) (π_surj : π.Surjective) : ∃ E : Set D, CompactSpace E ∧ π '' E = univ ∧
    ∀ E₀ : Set E, E₀ ≠ univ → IsClosed E₀ → E.restrict π '' E₀ ≠ univ := by
  -- suffices to apply Zorn's lemma on the subsets of $D$ that are closed and mapped onto $A$
  let S : Set <| Set D := {E : Set D | IsClosed E ∧ π '' E = univ}
  suffices ∀ (C : Set <| Set D) (_ : C ⊆ S) (_ : IsChain (· ⊆ ·) C), ∃ s ∈ S, ∀ c ∈ C, s ⊆ c by
    rcases zorn_superset S this with ⟨E, ⟨E_closed, E_surj⟩, E_min⟩
    refine ⟨E, isCompact_iff_compactSpace.mp E_closed.isCompact, E_surj, ?_⟩
    intro E₀ E₀_min E₀_closed
    contrapose! E₀_min
    exact eq_univ_of_coe_eq <|
      E_min E₀ ⟨E₀_closed.trans E_closed, image_coe_eq_restrict_image ▸ E₀_min⟩ coe_subset
  -- suffices to prove intersection of chain is minimal
  intro C C_sub C_chain
  -- prove intersection of chain is closed
  refine ⟨iInter (fun c : C => c), ⟨isClosed_iInter fun ⟨_, h⟩ => (C_sub h).left, ?_⟩,
    fun c hc _ h => mem_iInter.mp h ⟨c, hc⟩⟩
  -- prove intersection of chain is mapped onto $A$
  by_cases hC : Nonempty C
  · refine eq_univ_of_forall fun a => inter_nonempty_iff_exists_left.mp ?_
    -- apply Cantor's intersection theorem
    refine iInter_inter (ι := C) (π ⁻¹' {a}) _ ▸
      IsCompact.nonempty_iInter_of_directed_nonempty_compact_closed _
      ?_ (fun c => ?_) (fun c => IsClosed.isCompact ?_) (fun c => ?_)
    · replace C_chain : IsChain (· ⊇ ·) C := C_chain.symm
      have : ∀ s t : Set D, s ⊇ t → _ ⊇ _ := fun _ _ => inter_subset_inter_left <| π ⁻¹' {a}
      exact (directedOn_iff_directed.mp C_chain.directedOn).mono_comp (· ⊇ ·) this
    · rw [← image_inter_nonempty_iff, (C_sub c.mem).right, univ_inter]
      exact singleton_nonempty a
    all_goals exact (C_sub c.mem).left.inter <| (T1Space.t1 a).preimage π_cont
  · rw [@iInter_of_empty _ _ <| not_nonempty_iff.mp hC, image_univ_of_surjective π_surj]

/-- Lemma 2.1 in [Gleason, *Projective topological spaces*][gleason1958]:
if $\rho$ is a continuous surjection from a topological space $E$ to a topological space $A$
satisfying the "Zorn subset condition", then $\rho(G)$ is contained in
the closure of $A \setminus \rho(E \setminus G)}$ for any open set $G$ of $E$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variantb402030e51f7a055d9df0ed6194a29ccae67aa47e927ef8a32a5ba15080c1e89.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ef74f11877004731dc8c1a4097909f24c497add` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
