# Indep.union_indep_iff_forall_notMem_closure_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c9a8e4a241339d966c3d1635358562dffa2de80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 659,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a31c5044-9dfb-242a-b9dd-7c9805321911",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63de2196-8eca-695d-ade1-36d451a5d81b",
  "kind": "lemma",
  "lexical_name": "Indep.union_indep_iff_forall_notMem_closure_right",
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
  "slug": "indep-union-indep-iff-forall-notmem-closure-right--7d7504ceea1f9a164955f4b2",
  "source": {
    "blob": "7c9a8e4a241339d966c3d1635358562dffa2de80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 678,
    "line": 659,
    "path": "GRWTSK/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d7504ceea1f9a164955f4b23e6efa6e05932f5fea2caeeb77f33521a79e76b2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63de2196-8eca-695d-ade1-36d451a5d81b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–678.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Indep.union_indep_iff_forall_notMem_closure_right (hI : M.Indep I) (hJ : M.Indep J) :
    M.Indep (I ∪ J) ↔ ∀ e ∈ J \ I, e ∉ M.closure (I ∪ (J \ {e})) := by
  refine ⟨fun h e heJ hecl ↦ h.notMem_closure_diff_of_mem (.inr heJ.1) ?_, fun h ↦ ?_⟩
  · rwa [union_diff_distrib, diff_singleton_eq_self heJ.2]
  obtain ⟨K, hKIJ, hK⟩ := hI.subset_isBasis_of_subset (show I ⊆ I ∪ J from subset_union_left)
  obtain rfl | hssu := hKIJ.subset.eq_or_ssubset
  · exact hKIJ.indep
  exfalso
  obtain ⟨e, heI, heK⟩ := exists_of_ssubset hssu
  have heJI : e ∈ J \ I := by
    rw [← union_diff_right, union_comm]
    exact ⟨heI, notMem_subset hK heK⟩
  refine h _ heJI ?_
  rw [← diff_singleton_eq_self heJI.2, ← union_diff_distrib]
  exact M.closure_subset_closure (subset_diff_singleton hKIJ.subset heK) <| hKIJ.subset_closure heI

@[deprecated (since := "2025-05-23")]
alias Indep.union_indep_iff_forall_not_mem_closure_right :=
  Indep.union_indep_iff_forall_notMem_closure_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c9a8e4a241339d966c3d1635358562dffa2de80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
