# IsCircuit.contract_dep_of_not_subset

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
      "line": 452,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c509412113ed042c5c6c594bb69f7a1fad7360ad146bf2a63a5eafecae1e4dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7dbb38dd-5294-7c67-0516-6102d240fa8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0ec213c-fe4b-5ce3-a4e6-c57542205ab0",
  "kind": "lemma",
  "lexical_name": "IsCircuit.contract_dep_of_not_subset",
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
  "slug": "iscircuit-contract-dep-of-not-subset--b7bf96cc5d3d43d2608c7548",
  "source": {
    "blob": "88e1b243bc3cd4469f8ea17217b9953bc085df1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 452,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variant9c509412113ed042c5c6c594bb69f7a1fad7360ad146bf2a63a5eafecae1e4dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7bf96cc5d3d43d2608c754881ac979421ddc072632fdecf615693a3b281f6e5",
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

Occurrence: `result:e0ec213c-fe4b-5ce3-a4e6-c57542205ab0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 452–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCircuit.contract_dep_of_not_subset (hK : M.IsCircuit K) {C : Set α} (hKC : ¬ K ⊆ C) :
    (M ／ C).Dep (K \ C) := by
  have h' := hK.contract_isCircuit (C := C ∩ K) (inter_subset_right.ssubset_of_ne (by simpa))
  simp only [diff_inter_self_eq_diff] at h'
  have hwin := h'.contract_dep (C := C \ K) disjoint_sdiff_sdiff
  rwa [contract_contract, inter_union_diff] at hwin

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variant9c509412113ed042c5c6c594bb69f7a1fad7360ad146bf2a63a5eafecae1e4dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contract/Variant9c509412113ed042c5c6c594bb69f7a1fad7360ad146bf2a63a5eafecae1e4dd.lean#L452).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88e1b243bc3cd4469f8ea17217b9953bc085df1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
