# isClosed_left_of_isClosed_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a45f35ba3911f8e9166effdfc42401853cc9c270",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af494560-b14d-83bc-1334-8fc81639f7b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb3ca74f-6ff0-9122-7da1-0250684906f9",
  "kind": "lemma",
  "lexical_name": "isClosed_left_of_isClosed_union",
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
  "slug": "isclosed-left-of-isclosed-union--faf8d8de3adeed2153efe98f",
  "source": {
    "blob": "a45f35ba3911f8e9166effdfc42401853cc9c270",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 172,
    "path": "GRWTSK/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:faf8d8de3adeed2153efe98f4404186e538a5c4f25ded2cef9aaf9a5f6c88685",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb3ca74f-6ff0-9122-7da1-0250684906f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosed_left_of_isClosed_union (hst : SeparatedNhds s t) (hst' : IsClosed (s ∪ t)) :
    IsClosed s := by
  obtain ⟨u, v, hu, hv, hsu, htv, huv⟩ := hst
  rw [← isOpen_compl_iff] at hst' ⊢
  suffices sᶜ = (s ∪ t)ᶜ ∪ v from this ▸ hst'.union hv
  rw [← compl_inj_iff, Set.compl_union, compl_compl, compl_compl, union_inter_distrib_right,
    (disjoint_compl_right.mono_left htv).inter_eq, union_empty, left_eq_inter, subset_compl_comm]
  exact (huv.mono_left hsu).subset_compl_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a45f35ba3911f8e9166effdfc42401853cc9c270` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
