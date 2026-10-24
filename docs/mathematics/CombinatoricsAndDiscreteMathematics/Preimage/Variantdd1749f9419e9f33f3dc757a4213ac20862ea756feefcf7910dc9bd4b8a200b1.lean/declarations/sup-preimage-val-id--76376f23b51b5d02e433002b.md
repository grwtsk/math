# sup_preimage_val_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e92696cd5dde25b6654fd24546918f16d96695e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59e48930-135f-e206-f346-fc2a292e41b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0834d483-49cd-b589-acbc-22aefb78368d",
  "kind": "lemma",
  "lexical_name": "sup_preimage_val_id",
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
  "slug": "sup-preimage-val-id--76376f23b51b5d02e433002b",
  "source": {
    "blob": "7e92696cd5dde25b6654fd24546918f16d96695e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 154,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76376f23b51b5d02e433002b3982f57181074f845ba8423bc7f3a4c60616474f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0834d483-49cd-b589-acbc-22aefb78368d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sup_preimage_val_id [Lattice α] [OrderBot α] {P : α → Prop}
    (Psup : ∀ ⦃s t : α⦄, P s → P t → P (s ⊔ t)) (Pbot : P ⊥) {t : Finset α}
    (ht : ∀ x ∈ t, P x) :
    letI := Subtype.semilatticeSup Psup
    letI := Subtype.orderBot Pbot
    (t.preimage Subtype.val Subtype.val_injective.injOn).sup id =
      (⟨t.sup id, sup_induction Pbot (fun _ h _ => Psup h) ht⟩ : Subtype P) := by
  let : OrderBot (Subtype P) := Subtype.orderBot Pbot
  ext
  simp only [sup_coe, id_eq]
  apply sup_preimage_self
  refine ⟨mapsTo_preimage _ _, injOn_of_injective Subtype.val_injective, ?_⟩
  intro x hx; simpa using ⟨hx, ht x hx⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variantdd1749f9419e9f33f3dc757a4213ac20862ea756feefcf7910dc9bd4b8a200b1.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e92696cd5dde25b6654fd24546918f16d96695e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
