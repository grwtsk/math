# IsCircuit.exists_subset_isCircuit_of_contract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b04c0a8c-69d2-57e7-5e7b-c100f98ab593",
  "kind": "lemma",
  "lexical_name": "IsCircuit.exists_subset_isCircuit_of_contract",
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
  "slug": "iscircuit-exists-subset-iscircuit-of-contract--cfe635d4ee91292c2fa65505",
  "source": {
    "blob": "95268aafc7cee76f5ca4a9534dcdf5010b14443d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 488,
    "line": 473,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variantf51981e6baf0c8cec97614f162fd5f2a7f556e727b1107616fdb4a68dddac71c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfe635d4ee91292c2fa65505b3ad82512908a533b9c1262e47247f50faa76a82",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variantf51981e6baf0c8cec97614f162fd5f2a7f556e727b1107616fdb4a68dddac71c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b04c0a8c-69d2-57e7-5e7b-c100f98ab593`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–488.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCircuit.exists_subset_isCircuit_of_contract (hC : (M ／ K).IsCircuit C) :
    ∃ C', M.IsCircuit C' ∧ C ⊆ C' ∧ C' ⊆ C ∪ K := by
  wlog hKi : M.Indep K generalizing K with aux
  · obtain ⟨I, hI⟩ := M.exists_isBasis' K
    rw [hI.contract_eq_contract_delete, delete_isCircuit_iff] at hC
    obtain ⟨C', hC', hCC', hC'ss⟩ := aux hC.1 hI.indep
    exact ⟨C', hC', hCC', hC'ss.trans (union_subset_union_right _ hI.subset)⟩
  obtain ⟨hCE : C ⊆ M.E, hCK : Disjoint C K⟩ := subset_diff.1 hC.subset_ground
  obtain ⟨C', hC'ss, hC'⟩ := (hKi.contract_dep_iff.1 hC.dep).2.exists_isCircuit_subset
  refine ⟨C', hC', ?_, hC'ss⟩
  have hdep2 : (M ／ K).Dep (C' \ K) := by
    rw [hKi.contract_dep_iff, and_iff_right disjoint_sdiff_left]
    refine hC'.dep.superset (by simp)
  rw [← (hC.eq_of_dep_subset hdep2 (diff_subset_iff.2 (union_comm _ _ ▸ hC'ss)))]
  exact diff_subset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variantf51981e6baf0c8cec97614f162fd5f2a7f556e727b1107616fdb4a68dddac71c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variantf51981e6baf0c8cec97614f162fd5f2a7f556e727b1107616fdb4a68dddac71c.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95268aafc7cee76f5ca4a9534dcdf5010b14443d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
