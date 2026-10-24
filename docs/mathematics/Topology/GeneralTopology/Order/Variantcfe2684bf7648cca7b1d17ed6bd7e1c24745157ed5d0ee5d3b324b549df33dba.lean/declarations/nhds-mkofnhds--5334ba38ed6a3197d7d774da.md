# nhds_mkOfNhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "987652d85471476cee875bf94b5a36143a178e1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfe2684bf7648cca7b1d17ed6bd7e1c24745157ed5d0ee5d3b324b549df33dba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1117bb8e-393a-ca3f-93ad-ddfaf7fe6d24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf7e8a9c-7f55-42f9-4bb6-6de1a97b2b40",
  "kind": "theorem",
  "lexical_name": "nhds_mkOfNhds",
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
  "slug": "nhds-mkofnhds--5334ba38ed6a3197d7d774da",
  "source": {
    "blob": "987652d85471476cee875bf94b5a36143a178e1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variantcfe2684bf7648cca7b1d17ed6bd7e1c24745157ed5d0ee5d3b324b549df33dba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5334ba38ed6a3197d7d774dadde0d3145f4fc63b1b2460bfe30dab9c1d1e7ddc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variantcfe2684bf7648cca7b1d17ed6bd7e1c24745157ed5d0ee5d3b324b549df33dba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf7e8a9c-7f55-42f9-4bb6-6de1a97b2b40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_mkOfNhds (n : α → Filter α) (a : α) (h₀ : pure ≤ n)
    (h₁ : ∀ a s, s ∈ n a → ∃ t ∈ n a, t ⊆ s ∧ ∀ a' ∈ t, s ∈ n a') :
    @nhds α (TopologicalSpace.mkOfNhds n) a = n a := by
  letI := TopologicalSpace.mkOfNhds n
  apply le_antisymm <;> intros s hs
  · have h₀ : { b | s ∈ n b } ⊆ s := fun b hb => mem_pure.1 <| h₀ b hb
    have h₁ : { b | s ∈ n b } ∈ 𝓝 a := by
      refine' IsOpen.mem_nhds (fun b (hb : s ∈ n b) => _) hs
      rcases h₁ _ _ hb with ⟨t, ht, -, h⟩
      exact mem_of_superset ht h
    exact mem_of_superset h₁ h₀
  · rcases mem_nhds_iff.1 hs with ⟨t, hts, ht, hat⟩
    exact (n a).sets_of_superset (ht _ hat) hts
#align topological_space.nhds_mk_of_nhds TopologicalSpace.nhds_mkOfNhds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variantcfe2684bf7648cca7b1d17ed6bd7e1c24745157ed5d0ee5d3b324b549df33dba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variantcfe2684bf7648cca7b1d17ed6bd7e1c24745157ed5d0ee5d3b324b549df33dba.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `987652d85471476cee875bf94b5a36143a178e1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
