# iInf_sets_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ba5d77a5ece360784aa196fe307dc8d885ec517",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 426,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f044c6f3098157217d7a8937697a7934d3480c5537850784e952727545a614b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e56ba486-4b8b-d61e-7067-6639f9245179",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd943343-2a32-0be0-ae6d-21d83a1f7ae8",
  "kind": "theorem",
  "lexical_name": "iInf_sets_eq",
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
  "slug": "iinf-sets-eq--719a7bb06170dbcb9eeaa7fc",
  "source": {
    "blob": "5ba5d77a5ece360784aa196fe307dc8d885ec517",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 426,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6f044c6f3098157217d7a8937697a7934d3480c5537850784e952727545a614b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:719a7bb06170dbcb9eeaa7fc322e3ad7bf3978aeda136d7de6f525afda6abeca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant6f044c6f3098157217d7a8937697a7934d3480c5537850784e952727545a614b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd943343-2a32-0be0-ae6d-21d83a1f7ae8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iInf_sets_eq {f : ι → Filter α} (h : Directed (· ≥ ·) f) [ne : Nonempty ι] :
    (iInf f).sets = ⋃ i, (f i).sets :=
  let ⟨i⟩ := ne
  let u :=
    { sets := ⋃ i, (f i).sets
      univ_sets := mem_iUnion.2 ⟨i, univ_mem⟩
      sets_of_superset := by
        simp only [mem_iUnion, exists_imp]
        exact fun i hx hxy => ⟨i, mem_of_superset hx hxy⟩
      inter_sets := by
        simp only [mem_iUnion, exists_imp]
        intro x y a hx b hy
        rcases h a b with ⟨c, ha, hb⟩
        exact ⟨c, inter_mem (ha hx) (hb hy)⟩ }
  have : u = iInf f := eq_iInf_of_mem_iff_exists_mem mem_iUnion
  congr_arg Filter.sets this.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant6f044c6f3098157217d7a8937697a7934d3480c5537850784e952727545a614b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant6f044c6f3098157217d7a8937697a7934d3480c5537850784e952727545a614b.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ba5d77a5ece360784aa196fe307dc8d885ec517` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
