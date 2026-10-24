# index_union_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3dfeefbdc07b9ec2263ffba68caddeddc152583",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7acc6326-5843-3f19-39c6-1a337482f4e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ead9f8b-4f9f-c30b-1f6c-a46d9c33cbf8",
  "kind": "theorem",
  "lexical_name": "index_union_le",
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
  "slug": "index-union-le--f2051dfe991d3a32e15cef52",
  "source": {
    "blob": "a3dfeefbdc07b9ec2263ffba68caddeddc152583",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 190,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2051dfe991d3a32e15cef522f09d96c101d94b3ab36bfd14624afe272b11e7a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ead9f8b-4f9f-c30b-1f6c-a46d9c33cbf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem index_union_le (K₁ K₂ : Compacts G) {V : Set G} (hV : (interior V).Nonempty) :
    index (K₁.1 ∪ K₂.1) V ≤ index K₁.1 V + index K₂.1 V := by
  classical
  rcases index_elim K₁.2 hV with ⟨s, h1s, h2s⟩
  rcases index_elim K₂.2 hV with ⟨t, h1t, h2t⟩
  rw [← h2s, ← h2t]
  refine le_trans ?_ (Finset.card_union_le _ _)
  apply Nat.sInf_le; refine ⟨_, ?_, rfl⟩; rw [mem_setOf_eq]
  apply union_subset <;> refine Subset.trans (by assumption) ?_ <;>
    apply biUnion_subset_biUnion_left <;> intro g hg <;> simp only [mem_def] at hg <;>
    simp only [mem_def, Multiset.mem_union, Finset.union_val, hg, or_true, true_or]

@[to_additive addIndex_union_eq]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantae35fca2bb75518e2415155cfeffce8c9c503fe79df5858d90ee79edaaaa7ae5.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3dfeefbdc07b9ec2263ffba68caddeddc152583` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
