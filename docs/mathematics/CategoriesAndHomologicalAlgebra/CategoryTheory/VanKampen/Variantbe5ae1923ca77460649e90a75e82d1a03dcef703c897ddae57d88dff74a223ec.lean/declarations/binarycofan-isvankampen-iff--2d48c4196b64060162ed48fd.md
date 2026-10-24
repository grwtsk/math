# BinaryCofan.isVanKampen_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "784ed4f5b6df0c6c186ae2aba4040fcf246f144b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 448,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef0e381c-548c-6b4e-8123-a0e4664b1b9f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a325c6ad-2eec-78ba-3f32-ecadf7d3a9b3",
  "kind": "theorem",
  "lexical_name": "BinaryCofan.isVanKampen_iff",
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
  "slug": "binarycofan-isvankampen-iff--2d48c4196b64060162ed48fd",
  "source": {
    "blob": "784ed4f5b6df0c6c186ae2aba4040fcf246f144b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 448,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variantbe5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d48c4196b64060162ed48fd8a3573073c502aac3263d872b359c60aae0ded7c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variantbe5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a325c6ad-2eec-78ba-3f32-ecadf7d3a9b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BinaryCofan.isVanKampen_iff (c : BinaryCofan X Y) :
    IsVanKampenColimit c ↔
      ∀ {X' Y' : C} (c' : BinaryCofan X' Y') (αX : X' ⟶ X) (αY : Y' ⟶ Y) (f : c'.pt ⟶ c.pt)
        (_ : αX ≫ c.inl = c'.inl ≫ f) (_ : αY ≫ c.inr = c'.inr ≫ f),
        Nonempty (IsColimit c') ↔ IsPullback c'.inl αX f c.inl ∧ IsPullback c'.inr αY f c.inr := by
  constructor
  · introv H hαX hαY
    rw [H c' (mapPair αX αY) f (by ext ⟨⟨⟩⟩ <;> dsimp <;> assumption) (.of_discrete _)]
    constructor
    · intro H
      exact ⟨H _, H _⟩
    · rintro H ⟨⟨⟩⟩
      exacts [H.1, H.2]
  · introv H F' hα h
    let X' := F'.obj ⟨WalkingPair.left⟩
    let Y' := F'.obj ⟨WalkingPair.right⟩
    have : F' = pair X' Y' := by
      apply Functor.hext
      · rintro ⟨⟨⟩⟩ <;> rfl
      · rintro ⟨⟨⟩⟩ ⟨j⟩ ⟨⟨rfl : _ = j⟩⟩ <;> simp [X', Y']
    clear_value X' Y'
    subst this
    change BinaryCofan X' Y' at c'
    rw [H c' _ _ _ (NatTrans.congr_app hα ⟨WalkingPair.left⟩)
        (NatTrans.congr_app hα ⟨WalkingPair.right⟩)]
    constructor
    · rintro H ⟨⟨⟩⟩
      exacts [H.1, H.2]
    · intro H
      exact ⟨H _, H _⟩

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variantbe5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variantbe5ae1923ca77460649e90a75e82d1a03dcef703c897ddae57d88dff74a223ec.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `784ed4f5b6df0c6c186ae2aba4040fcf246f144b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
