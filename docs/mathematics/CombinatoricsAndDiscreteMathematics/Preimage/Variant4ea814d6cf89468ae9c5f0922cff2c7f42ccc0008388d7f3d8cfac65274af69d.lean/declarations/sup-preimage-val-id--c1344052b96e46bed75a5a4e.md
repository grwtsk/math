# sup_preimage_val_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32adc0dd-7ff0-6cd8-1fb4-ffaf84a5407d",
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
  "slug": "sup-preimage-val-id--c1344052b96e46bed75a5a4e",
  "source": {
    "blob": "b0517ae93f2847f018e1218f01014bfb504ea779",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 162,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variant4ea814d6cf89468ae9c5f0922cff2c7f42ccc0008388d7f3d8cfac65274af69d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1344052b96e46bed75a5a4e4a6562ef864d48f552602f81a02a4d8e72cd3738",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Preimage/Variant4ea814d6cf89468ae9c5f0922cff2c7f42ccc0008388d7f3d8cfac65274af69d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32adc0dd-7ff0-6cd8-1fb4-ffaf84a5407d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–175.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Preimage/Variant4ea814d6cf89468ae9c5f0922cff2c7f42ccc0008388d7f3d8cfac65274af69d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variant4ea814d6cf89468ae9c5f0922cff2c7f42ccc0008388d7f3d8cfac65274af69d.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0517ae93f2847f018e1218f01014bfb504ea779` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
