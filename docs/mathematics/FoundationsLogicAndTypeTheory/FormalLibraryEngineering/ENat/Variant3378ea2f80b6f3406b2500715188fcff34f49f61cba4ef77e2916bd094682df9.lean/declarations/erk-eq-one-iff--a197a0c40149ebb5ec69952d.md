# eRk_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54244c35ba7f72eea1eff22150549225b4016880",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 543,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/3378ea2f80b6f3406b2500715188fcff34f49f61cba4ef77e2916bd094682df9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d5b7463e-24e7-8d4d-0642-8e75afd78826",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7cc73f3b-d54f-a079-7725-8029c6a057a9",
  "kind": "lemma",
  "lexical_name": "eRk_eq_one_iff",
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
  "slug": "erk-eq-one-iff--a197a0c40149ebb5ec69952d",
  "source": {
    "blob": "54244c35ba7f72eea1eff22150549225b4016880",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 543,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant3378ea2f80b6f3406b2500715188fcff34f49f61cba4ef77e2916bd094682df9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a197a0c40149ebb5ec69952dc215d53c04117450baa84cdd3889637c90e9b307",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant3378ea2f80b6f3406b2500715188fcff34f49f61cba4ef77e2916bd094682df9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cc73f3b-d54f-a079-7725-8029c6a057a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 543–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eRk_eq_one_iff (hX : X ⊆ M.E := by aesop_mat) :
    M.eRk X = 1 ↔ ∃ e ∈ X, M.IsNonloop e ∧ X ⊆ M.closure {e} := by
  refine ⟨?_, fun ⟨e, heX, he, hXe⟩ ↦ ?_⟩
  · obtain ⟨I, hI⟩ := M.exists_isBasis X
    rw [hI.eRk_eq_encard, encard_eq_one]
    rintro ⟨e, rfl⟩
    exact ⟨e, singleton_subset_iff.1 hI.subset, indep_singleton.1 hI.indep, hI.subset_closure⟩
  rw [← he.eRk_eq]
  exact ((M.eRk_mono hXe).trans (M.eRk_closure_eq _).le).antisymm
    (M.eRk_mono (singleton_subset_iff.2 heX))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant3378ea2f80b6f3406b2500715188fcff34f49f61cba4ef77e2916bd094682df9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ENat/Variant3378ea2f80b6f3406b2500715188fcff34f49f61cba4ef77e2916bd094682df9.lean#L543).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54244c35ba7f72eea1eff22150549225b4016880` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
