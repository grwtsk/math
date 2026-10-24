# _root_.IicProdIoc_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a40e8112e60f7ba99271101b0a559343e64a9544",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f814314d-bc29-b73a-bcb6-fc5521c99b0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:788d37c8-23b3-9ac2-8c90-c99cb18a5c85",
  "kind": "lemma",
  "lexical_name": "_root_.IicProdIoc_preimage",
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
  "slug": "root-iicprodioc-preimage--6210343704b905054452fcff",
  "source": {
    "blob": "a40e8112e60f7ba99271101b0a559343e64a9544",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 182,
    "path": "GRWTSK/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6210343704b905054452fcffeb128a4ae6c496a917ae6ff11e38489226613732",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:788d37c8-23b3-9ac2-8c90-c99cb18a5c85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.IicProdIoc_preimage {a b : ι} (hab : a ≤ b) (s : (i : Iic b) → Set (X i)) :
    IicProdIoc a b ⁻¹' (Set.univ.pi s) =
      (Set.univ.pi <| frestrictLe₂ (π := (fun n ↦ Set (X n))) hab s) ×ˢ
        (Set.univ.pi <| restrict₂ (π := (fun n ↦ Set (X n))) Ioc_subset_Iic_self s) := by
  ext x
  simp only [Set.mem_preimage, Set.mem_pi, Set.mem_univ, IicProdIoc_def, forall_const,
    Subtype.forall, mem_Iic, Set.mem_prod, frestrictLe₂_apply, restrict₂, mem_Ioc]
  refine ⟨fun h ↦ ⟨fun i hi ↦ ?_, fun i ⟨hi1, hi2⟩ ↦ ?_⟩, fun ⟨h1, h2⟩ i hi ↦ ?_⟩
  · convert h i (hi.trans hab)
    rw [dif_pos hi]
  · convert h i hi2
    rw [dif_neg (not_le.2 hi1)]
  · split_ifs with hi3
    · exact h1 i hi3
    · exact h2 i ⟨not_le.1 hi3, hi⟩

end Lemmas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Maps/Variant6db139a70a7407f85a32e16deed061d2c2f19799b669a267026a16f808f35dc5.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a40e8112e60f7ba99271101b0a559343e64a9544` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
