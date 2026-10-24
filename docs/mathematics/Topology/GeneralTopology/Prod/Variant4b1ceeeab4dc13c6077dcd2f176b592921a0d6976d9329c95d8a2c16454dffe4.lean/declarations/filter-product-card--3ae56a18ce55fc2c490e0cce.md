# filter_product_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f0aa1f3deb3b8a4355eed68f1cedb72908e1bce5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b1ceeeab4dc13c6077dcd2f176b592921a0d6976d9329c95d8a2c16454dffe4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4741d14-af8c-32f7-c3f7-dcc11392e058",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87e9fd3f-5054-4fe5-1030-547e55f1488c",
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
  "slug": "filter-product-card--3ae56a18ce55fc2c490e0cce",
  "source": {
    "blob": "f0aa1f3deb3b8a4355eed68f1cedb72908e1bce5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variant4b1ceeeab4dc13c6077dcd2f176b592921a0d6976d9329c95d8a2c16454dffe4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ae56a18ce55fc2c490e0cce51a133279a37c808770f0501506ab68f7fb160b0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variant4b1ceeeab4dc13c6077dcd2f176b592921a0d6976d9329c95d8a2c16454dffe4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87e9fd3f-5054-4fe5-1030-547e55f1488c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–177.

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
    ext ⟨a, b⟩
    simp only [filter_union_right, mem_filter, mem_product]
    constructor <;> intro h <;> use h.1
    · simp only [h.2, Function.comp_apply, Decidable.em, and_self]
    · revert h
      simp only [Function.comp_apply, and_imp]
      rintro _ _ (_|_) <;> simp [*]
  · apply Finset.disjoint_filter_filter'
    exact (disjoint_compl_right.inf_left _).inf_right _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variant4b1ceeeab4dc13c6077dcd2f176b592921a0d6976d9329c95d8a2c16454dffe4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variant4b1ceeeab4dc13c6077dcd2f176b592921a0d6976d9329c95d8a2c16454dffe4.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0aa1f3deb3b8a4355eed68f1cedb72908e1bce5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
