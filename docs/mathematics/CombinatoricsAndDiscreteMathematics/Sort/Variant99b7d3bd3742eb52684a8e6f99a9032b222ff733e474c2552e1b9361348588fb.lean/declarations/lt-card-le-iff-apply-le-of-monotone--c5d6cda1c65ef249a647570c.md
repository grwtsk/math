# lt_card_le_iff_apply_le_of_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0a1df32-02ca-edbf-fba8-2033f18323c4",
  "kind": "theorem",
  "lexical_name": "lt_card_le_iff_apply_le_of_monotone",
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
  "slug": "lt-card-le-iff-apply-le-of-monotone--c5d6cda1c65ef249a647570c",
  "source": {
    "blob": "dc47b3f83d6881078b30ec874568b2a44dd5bf5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 114,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5d6cda1c65ef249a647570c896f601440586f4c82a98785400b6666e4be14a5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0a1df32-02ca-edbf-fba8-2033f18323c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_card_le_iff_apply_le_of_monotone [Preorder α] [DecidableLE α]
    {m : ℕ} (f : Fin m → α) (a : α) (h_sorted : Monotone f) (j : Fin m) :
    j < Fintype.card {i // f i ≤ a} ↔ f j ≤ a := by
  suffices h1 : ∀ k : Fin m, (k < Fintype.card {i // f i ≤ a}) → f k ≤ a by
    refine ⟨h1 j, fun h ↦ ?_⟩
    by_contra! hc
    let p : Fin m → Prop := fun x ↦ f x ≤ a
    let q : Fin m → Prop := fun x ↦ x < Fintype.card {i // f i ≤ a}
    let q' : {i // f i ≤ a} → Prop := fun x ↦ q x
    have hw : 0 < Fintype.card {j : {x : Fin m // f x ≤ a} // ¬ q' j} :=
      Fintype.card_pos_iff.2 ⟨⟨⟨j, h⟩, not_lt.2 hc⟩⟩
    apply hw.ne'
    have he := Fintype.card_congr <| Equiv.sumCompl <| q'
    have h4 := (Fintype.card_congr (@Equiv.subtypeSubtypeEquivSubtype _ p q (h1 _)))
    have h_le : Fintype.card { i // f i ≤ a } ≤ m := by
      conv_rhs => rw [← Fintype.card_fin m]
      exact Fintype.card_subtype_le _
    rwa [Fintype.card_sum, h4, Fintype.card_fin_lt_of_le h_le, add_eq_left] at he
  intro _ h
  contrapose! h
  rw [← Fin.card_Iio, Fintype.card_subtype]
  refine Finset.card_mono (fun i => Function.mtr ?_)
  simp_rw [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_Iio]
  intro hij hia
  apply h
  exact (h_sorted (le_of_not_lt hij)).trans hia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant99b7d3bd3742eb52684a8e6f99a9032b222ff733e474c2552e1b9361348588fb.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc47b3f83d6881078b30ec874568b2a44dd5bf5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
