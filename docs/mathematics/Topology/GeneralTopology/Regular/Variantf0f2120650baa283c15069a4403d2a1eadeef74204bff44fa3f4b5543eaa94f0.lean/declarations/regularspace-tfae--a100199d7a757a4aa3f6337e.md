# regularSpace_TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab8ac2866c917f921ebfd21ae7c876899707775a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31b473b0-d3f8-61c6-8440-43323e846c2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88a5180c-c587-aa46-8877-45a6339b35ee",
  "kind": "theorem",
  "lexical_name": "regularSpace_TFAE",
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
  "slug": "regularspace-tfae--a100199d7a757a4aa3f6337e",
  "source": {
    "blob": "ab8ac2866c917f921ebfd21ae7c876899707775a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a100199d7a757a4aa3f6337e4b93744a491456e5625cbda45cb5bdf96ee8d375",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88a5180c-c587-aa46-8877-45a6339b35ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularSpace_TFAE (X : Type u) [TopologicalSpace X] :
    List.TFAE [RegularSpace X,
      ∀ (s : Set X) x, x ∉ closure s → Disjoint (𝓝ˢ s) (𝓝 x),
      ∀ (x : X) (s : Set X), Disjoint (𝓝ˢ s) (𝓝 x) ↔ x ∉ closure s,
      ∀ (x : X) (s : Set X), s ∈ 𝓝 x → ∃ t ∈ 𝓝 x, IsClosed t ∧ t ⊆ s,
      ∀ x : X, (𝓝 x).lift' closure ≤ 𝓝 x,
      ∀ x : X, (𝓝 x).lift' closure = 𝓝 x] := by
  tfae_have 1 ↔ 5 := by
    rw [regularSpace_iff, (@compl_surjective (Set X) _).forall, forall_comm]
    simp only [isClosed_compl_iff, mem_compl_iff, Classical.not_not, @and_comm (_ ∈ _),
      (nhds_basis_opens _).lift'_closure.le_basis_iff (nhds_basis_opens _), and_imp,
      (nhds_basis_opens _).disjoint_iff_right, ← subset_interior_iff_mem_nhdsSet,
      interior_compl, compl_subset_compl]
  tfae_have 5 → 6 := fun h a => (h a).antisymm (𝓝 _).le_lift'_closure
  tfae_have 6 → 4
  | H, a, s, hs => by
    rw [← H] at hs
    rcases (𝓝 a).basis_sets.lift'_closure.mem_iff.mp hs with ⟨U, hU, hUs⟩
    exact ⟨closure U, mem_of_superset hU subset_closure, isClosed_closure, hUs⟩
  tfae_have 4 → 2
  | H, s, a, ha => by
    have ha' : sᶜ ∈ 𝓝 a := by rwa [← mem_interior_iff_mem_nhds, interior_compl]
    rcases H _ _ ha' with ⟨U, hU, hUc, hUs⟩
    refine disjoint_of_disjoint_of_mem disjoint_compl_left ?_ hU
    rwa [← subset_interior_iff_mem_nhdsSet, hUc.isOpen_compl.interior_eq, subset_compl_comm]
  tfae_have 2 → 3 := by
    refine fun H a s => ⟨fun hd has => mem_closure_iff_nhds_ne_bot.mp has ?_, H s a⟩
    exact (hd.symm.mono_right <| @principal_le_nhdsSet _ _ s).eq_bot
  tfae_have 3 → 1 := fun H => ⟨fun hs ha => (H _ _).mpr <| hs.closure_eq.symm ▸ ha⟩
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab8ac2866c917f921ebfd21ae7c876899707775a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
