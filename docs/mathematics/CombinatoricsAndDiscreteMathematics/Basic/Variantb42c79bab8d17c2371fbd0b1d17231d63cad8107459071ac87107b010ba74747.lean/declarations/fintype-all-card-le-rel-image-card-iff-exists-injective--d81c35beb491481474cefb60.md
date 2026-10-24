# Fintype.all_card_le_rel_image_card_iff_exists_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c64c0c52-d11f-5976-7e71-6465edb1fada",
  "kind": "theorem",
  "lexical_name": "Fintype.all_card_le_rel_image_card_iff_exists_injective",
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
  "slug": "fintype-all-card-le-rel-image-card-iff-exists-injective--d81c35beb491481474cefb60",
  "source": {
    "blob": "68bd4ad43f5b695c3bd1eef3af7a1f8d36928c0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 184,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d81c35beb491481474cefb60d1f9308f860dea5280d0818771bc5e9b2c6fe2db",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c64c0c52-d11f-5976-7e71-6465edb1fada`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Fintype.all_card_le_rel_image_card_iff_exists_injective {α : Type u} {β : Type v}
    [DecidableEq β] (R : SetRel α β) [∀ a : α, Fintype (R.image {a})] :
    (∀ A : Finset α, #A ≤ Fintype.card (R.image A)) ↔
      ∃ f : α → β, Function.Injective f ∧ ∀ x, x ~[R] f x := by
  let r' a := (R.image {a}).toFinset
  have h : ∀ A : Finset α, Fintype.card (R.image A) = #(A.biUnion r') := by
    intro A
    rw [← Set.toFinset_card]
    apply congr_arg
    ext b
    simp [r', SetRel.image]
  have h' : ∀ (f : α → β) (x), x ~[R] f x ↔ f x ∈ r' x := by simp [r', SetRel.image]
  simp only [h, h']
  apply Finset.all_card_le_biUnion_card_iff_exists_injective

/-- This is a version of **Hall's Marriage Theorem** in terms of a relation to a finite type.
There is a transversal of the relation (an injective function `α → β` whose graph is a subrelation
of the relation) iff every subset of `k` terms of `α` is related to at least `k` terms of `β`.

It is like `Fintype.all_card_le_rel_image_card_iff_exists_injective` but uses `Finset.filter`
rather than `Rel.image`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantb42c79bab8d17c2371fbd0b1d17231d63cad8107459071ac87107b010ba74747.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68bd4ad43f5b695c3bd1eef3af7a1f8d36928c0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
