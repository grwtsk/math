# filter_product_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a331ec6ea39157f7cb3c2725091d2ef94340233",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13c8756add2710072abee567b38e3447ddb798a2cdac3c9e67a72ac896feec92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21f7550d-4969-fc10-1480-ed30f682a70a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4886e3e-b8d9-235a-e56f-0553222bbee8",
  "kind": "theorem",
  "lexical_name": "filter_product_card",
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
  "slug": "filter-product-card--207ca88ffd19f157e70156f1",
  "source": {
    "blob": "3a331ec6ea39157f7cb3c2725091d2ef94340233",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 161,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant13c8756add2710072abee567b38e3447ddb798a2cdac3c9e67a72ac896feec92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:207ca88ffd19f157e70156f13884e539b68c6a49ccc4a7f12705c0e4f4668749",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Prod/Variant13c8756add2710072abee567b38e3447ddb798a2cdac3c9e67a72ac896feec92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4886e3e-b8d9-235a-e56f-0553222bbee8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filter_product_card (s : Finset α) (t : Finset β) (p : α → Prop) (q : β → Prop)
    [DecidablePred p] [DecidablePred q] :
    ((s ×ˢ t).filter fun x : α × β => (p x.1) = (q x.2)).card =
      (s.filter p).card * (t.filter q).card +
        (s.filter (¬ p ·)).card * (t.filter (¬ q ·)).card := by
  classical
  rw [← card_product, ← card_product, ← filter_product, ← filter_product, ← card_union_of_disjoint]
  · apply congr_arg
    grind
  · apply Finset.disjoint_filter_filter'
    exact (disjoint_compl_right.inf_left _).inf_right _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Prod/Variant13c8756add2710072abee567b38e3447ddb798a2cdac3c9e67a72ac896feec92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant13c8756add2710072abee567b38e3447ddb798a2cdac3c9e67a72ac896feec92.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a331ec6ea39157f7cb3c2725091d2ef94340233` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
