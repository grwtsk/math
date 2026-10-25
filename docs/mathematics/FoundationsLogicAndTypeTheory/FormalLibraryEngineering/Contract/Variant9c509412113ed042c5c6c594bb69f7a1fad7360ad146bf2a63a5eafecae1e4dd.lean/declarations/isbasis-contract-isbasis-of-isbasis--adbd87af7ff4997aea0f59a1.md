# IsBasis.contract_isBasis_of_isBasis'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88e1b243bc3cd4469f8ea17217b9953bc085df1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 264,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c509412113ed042c5c6c594bb69f7a1fad7360ad146bf2a63a5eafecae1e4dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e84b38e9-1e08-17f7-3c1f-df1ca7f36684",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78d859ff-b01a-9957-b752-6b70e258a91f",
  "kind": "lemma",
  "lexical_name": "IsBasis.contract_isBasis_of_isBasis'",
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
  "slug": "isbasis-contract-isbasis-of-isbasis--adbd87af7ff4997aea0f59a1",
  "source": {
    "blob": "88e1b243bc3cd4469f8ea17217b9953bc085df1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 264,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variant9c509412113ed042c5c6c594bb69f7a1fad7360ad146bf2a63a5eafecae1e4dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adbd87af7ff4997aea0f59a1f564ef2a308acadce6640ec32bd19a8b0780a31c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variant9c509412113ed042c5c6c594bb69f7a1fad7360ad146bf2a63a5eafecae1e4dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78d859ff-b01a-9957-b752-6b70e258a91f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsBasis.contract_isBasis_of_isBasis' (h : M.IsBasis I X) (hJC : M.IsBasis' J C)
    (h_ind : M.Indep (I \ C ∪ J)) : (M ／ C).IsBasis (I \ C) (X \ C) := by
  have hIX := h.subset
  have hJCss := hJC.subset
  rw [hJC.contract_eq_contract_delete, delete_isBasis_iff]
  refine ⟨contract_isBasis_union_union (h_ind.isBasis_of_subset_of_subset_closure ?_ ?_) ?_ ?_, ?_⟩
  rotate_left
  · rw [closure_union_congr_right hJC.closure_eq_closure, diff_union_self,
      closure_union_congr_left h.closure_eq_closure]
    exact subset_closure_of_subset' _ (by tauto_set)
      (union_subset (diff_subset.trans h.subset_ground) hJC.indep.subset_ground)
  all_goals tauto_set

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variant9c509412113ed042c5c6c594bb69f7a1fad7360ad146bf2a63a5eafecae1e4dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variant9c509412113ed042c5c6c594bb69f7a1fad7360ad146bf2a63a5eafecae1e4dd.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88e1b243bc3cd4469f8ea17217b9953bc085df1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
