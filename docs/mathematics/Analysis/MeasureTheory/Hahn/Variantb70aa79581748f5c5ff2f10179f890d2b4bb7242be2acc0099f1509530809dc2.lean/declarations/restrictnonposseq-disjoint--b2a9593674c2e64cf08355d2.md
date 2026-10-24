# restrictNonposSeq_disjoint'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78923f4f6782af81b18794a697091017117f212f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b70aa79581748f5c5ff2f10179f890d2b4bb7242be2acc0099f1509530809dc2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07c14415-4e70-51c5-ba23-fb48267fb38d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c162d08-e67a-6466-295f-b4b13019983f",
  "kind": "theorem",
  "lexical_name": "restrictNonposSeq_disjoint'",
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
  "slug": "restrictnonposseq-disjoint--b2a9593674c2e64cf08355d2",
  "source": {
    "blob": "78923f4f6782af81b18794a697091017117f212f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 206,
    "path": "GRWTSK/Analysis/MeasureTheory/Hahn/Variantb70aa79581748f5c5ff2f10179f890d2b4bb7242be2acc0099f1509530809dc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2a9593674c2e64cf08355d274999d13446b5810ec44aea8417a04cf0eaac603",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Hahn/Variantb70aa79581748f5c5ff2f10179f890d2b4bb7242be2acc0099f1509530809dc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c162d08-e67a-6466-295f-b4b13019983f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem restrictNonposSeq_disjoint' {n m : ℕ} (h : n < m) :
    restrictNonposSeq s i n ∩ restrictNonposSeq s i m = ∅ := by
  rw [Set.eq_empty_iff_forall_notMem]
  rintro x ⟨hx₁, hx₂⟩
  cases m; · omega
  · rw [restrictNonposSeq] at hx₂
    exact
      (someExistsOneDivLT_subset hx₂).2
        (Set.mem_iUnion.2 ⟨n, Set.mem_iUnion.2 ⟨Nat.lt_succ_iff.mp h, hx₁⟩⟩)

open scoped Function in -- required for scoped `on` notation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Hahn/Variantb70aa79581748f5c5ff2f10179f890d2b4bb7242be2acc0099f1509530809dc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Hahn/Variantb70aa79581748f5c5ff2f10179f890d2b4bb7242be2acc0099f1509530809dc2.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78923f4f6782af81b18794a697091017117f212f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
