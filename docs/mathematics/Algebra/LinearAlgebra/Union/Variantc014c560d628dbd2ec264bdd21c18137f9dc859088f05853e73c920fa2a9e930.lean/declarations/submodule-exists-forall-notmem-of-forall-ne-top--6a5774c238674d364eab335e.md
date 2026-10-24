# Submodule.exists_forall_notMem_of_forall_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3236d3ca60f4f0121ed88dd8e71bb22f2307906b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bde0c312-54d8-f030-4806-7fc64e9a39d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2832f5c0-7410-2d56-b384-3b3b7caa369a",
  "kind": "lemma",
  "lexical_name": "Submodule.exists_forall_notMem_of_forall_ne_top",
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
  "slug": "submodule-exists-forall-notmem-of-forall-ne-top--6a5774c238674d364eab335e",
  "source": {
    "blob": "3236d3ca60f4f0121ed88dd8e71bb22f2307906b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 88,
    "path": "GRWTSK/Algebra/LinearAlgebra/Union/Variantc014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a5774c238674d364eab335e7dae668fd6001470cbeee6008fac464d7656b49b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Union/Variantc014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2832f5c0-7410-2d56-b384-3b3b7caa369a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Submodule.exists_forall_notMem_of_forall_ne_top (p : ι → Submodule K M) (h : ∀ i, p i ≠ ⊤) :
    ∃ x, ∀ i, x ∉ p i := by
  let _i : Fintype ι := Fintype.ofFinite ι
  suffices ⋃ i, (p i : Set M) ⊂ univ by simpa [ssubset_univ_iff, iUnion_eq_univ_iff] using this
  simpa using iUnion_ssubset_of_forall_ne_top_of_card_lt Finset.univ p h (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Union/Variantc014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Union/Variantc014c560d628dbd2ec264bdd21c18137f9dc859088f05853e73c920fa2a9e930.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3236d3ca60f4f0121ed88dd8e71bb22f2307906b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
