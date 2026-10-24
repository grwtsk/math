# isCofinal_iff_iUnion_Iio_eq_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d314195b19228f7890f6c996d1dcfaea82f0a5de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf86f1df-bd15-366b-c539-ea627a109cc1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5dc29f8b-88d4-b118-7759-6dde851198cc",
  "kind": "theorem",
  "lexical_name": "isCofinal_iff_iUnion_Iio_eq_univ",
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
  "slug": "iscofinal-iff-iunion-iio-eq-univ--dee40f91698b6a80e65363ea",
  "source": {
    "blob": "d314195b19228f7890f6c996d1dcfaea82f0a5de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 111,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dee40f91698b6a80e65363ea6725890cab50cb7acddda301c371cf640c50642d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dc29f8b-88d4-b118-7759-6dde851198cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCofinal_iff_iUnion_Iio_eq_univ [NoMaxOrder α] {s : Set α} :
    IsCofinal s ↔ ⋃ i ∈ s, Iio i = univ where
  mpr hs := by
    rw [isCofinal_iff_iUnion_Iic_eq_univ, ← univ_subset_iff, ← hs]
    gcongr
    exact Iio_subset_Iic_self
  mp hs := by
    simp_rw [eq_univ_iff_forall, mem_iUnion, exists_prop]
    intro x
    obtain ⟨y, hy⟩ := exists_gt x
    obtain ⟨z, hz, hz'⟩ := hs y
    exact ⟨z, hz, hy.trans_le hz'⟩

end Preorder

section PartialOrder
variable [PartialOrder α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cofinal/Variantd8eedb271bcc28d17af205bf4316525d84afa41e280aa2b918094912a75ad3b0.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d314195b19228f7890f6c996d1dcfaea82f0a5de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
