# exists_smul_notMem_of_subset_orbit_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "908ff498dba7ed201ede815804322815001d96da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eac6bedf0a10c595eadb8975125c5ac75896d7c1a6b1ac762a10bbbd917a3e1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c39c1918-b0fb-73bd-d3a5-10e498beb4b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b15b7790-7260-2714-ae8d-78ebaf39baa4",
  "kind": "theorem",
  "lexical_name": "exists_smul_notMem_of_subset_orbit_closure",
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
  "slug": "exists-smul-notmem-of-subset-orbit-closure--e2faee54bc708e367b4d04b5",
  "source": {
    "blob": "908ff498dba7ed201ede815804322815001d96da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 46,
    "path": "GRWTSK/Algebra/GroupTheory/ClosureSwap/Varianteac6bedf0a10c595eadb8975125c5ac75896d7c1a6b1ac762a10bbbd917a3e1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2faee54bc708e367b4d04b516b6a9826cca83569034408e4de6986afe780720",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ClosureSwap/Varianteac6bedf0a10c595eadb8975125c5ac75896d7c1a6b1ac762a10bbbd917a3e1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b15b7790-7260-2714-ae8d-78ebaf39baa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_smul_notMem_of_subset_orbit_closure (S : Set G) (T : Set α) {a : α}
    (hS : ∀ g ∈ S, g⁻¹ ∈ S) (subset : T ⊆ orbit (closure S) a) (notMem : a ∉ T)
    (nonempty : T.Nonempty) : ∃ σ ∈ S, ∃ a ∈ T, σ • a ∉ T := by
  have key0 : ¬ closure S ≤ stabilizer G T := by
    have ⟨b, hb⟩ := nonempty
    obtain ⟨σ, rfl⟩ := subset hb
    contrapose notMem with h
    exact smul_mem_smul_set_iff.mp ((h σ.2).symm ▸ hb)
  contrapose! key0
  refine (closure_le _).mpr fun σ hσ ↦ ?_
  simp_rw [SetLike.mem_coe, mem_stabilizer_iff, Set.ext_iff, mem_smul_set_iff_inv_smul_mem]
  exact fun a ↦ ⟨fun h ↦ smul_inv_smul σ a ▸ key0 σ hσ (σ⁻¹ • a) h, key0 σ⁻¹ (hS σ hσ) a⟩

variable [DecidableEq α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ClosureSwap/Varianteac6bedf0a10c595eadb8975125c5ac75896d7c1a6b1ac762a10bbbd917a3e1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ClosureSwap/Varianteac6bedf0a10c595eadb8975125c5ac75896d7c1a6b1ac762a10bbbd917a3e1c.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `908ff498dba7ed201ede815804322815001d96da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
