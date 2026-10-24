# Finset.le_card_diffs_mul_card_diffs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70fc0e6f-6d9e-7876-6b08-9793b8e5b99d",
  "kind": "lemma",
  "lexical_name": "Finset.le_card_diffs_mul_card_diffs",
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
  "slug": "finset-le-card-diffs-mul-card-diffs--21fb7db1e136d279e3a58b69",
  "source": {
    "blob": "d70ac023dfa0f195a30dfa804cfa393718d1b143",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 395,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant8bd641a377b15ffc372387a7ffcd9b9de1f929373e69051f8c3184c817d019f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21fb7db1e136d279e3a58b698b089f35e10973ec888810f3ee50d7372e8c17a5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant8bd641a377b15ffc372387a7ffcd9b9de1f929373e69051f8c3184c817d019f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70fc0e6f-6d9e-7876-6b08-9793b8e5b99d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Finset.le_card_diffs_mul_card_diffs (s t : Finset α) :
    #s * #t ≤ #(s \\ t) * #(t \\ s) := by
  have : ∀ s t : Finset α, (s \\ t).map ⟨_, liftLatticeHom_injective⟩ =
      s.map ⟨_, liftLatticeHom_injective⟩ \\ t.map ⟨_, liftLatticeHom_injective⟩ := by
    rintro s t
    simp_rw [map_eq_image]
    exact image_image₂_distrib fun a b ↦ rfl
  simpa [← card_compls (_ ⊻ _), ← map_sup, ← map_inf, ← this] using
    (s.map ⟨_, liftLatticeHom_injective⟩).le_card_infs_mul_card_sups
      (t.map ⟨_, liftLatticeHom_injective⟩)ᶜˢ

/-- The **Marica-Schönheim Inequality**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant8bd641a377b15ffc372387a7ffcd9b9de1f929373e69051f8c3184c817d019f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FourFunctions/Variant8bd641a377b15ffc372387a7ffcd9b9de1f929373e69051f8c3184c817d019f4.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d70ac023dfa0f195a30dfa804cfa393718d1b143` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
