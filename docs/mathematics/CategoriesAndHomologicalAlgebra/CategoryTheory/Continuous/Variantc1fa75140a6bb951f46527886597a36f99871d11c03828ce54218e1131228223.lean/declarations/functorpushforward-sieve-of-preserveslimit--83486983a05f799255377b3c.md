# functorPushforward_sieve₁'_of_preservesLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bae41fd1efbcdc53c3b7685e2d696efa5589dee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce2fb7bc-2654-069d-bc46-3c9ad1895366",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f84ba65-b9c8-4855-65ad-cdb29766f26c",
  "kind": "lemma",
  "lexical_name": "functorPushforward_sieve₁'_of_preservesLimit",
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
  "slug": "functorpushforward-sieve-of-preserveslimit--83486983a05f799255377b3c",
  "source": {
    "blob": "8bae41fd1efbcdc53c3b7685e2d696efa5589dee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 108,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83486983a05f799255377b3cabef3fe056169bbb626ff1d191f6b6f78f838101",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f84ba65-b9c8-4855-65ad-cdb29766f26c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma functorPushforward_sieve₁'_of_preservesLimit [HasPullback (E.f i₁) (E.f i₂)]
    [PreservesLimit (cospan (E.f i₁) (E.f i₂)) F] :
    Sieve.functorPushforward F (E.sieve₁' i₁ i₂) =
      (E.map F).sieve₁ (F.map <| pullback.fst _ _) (F.map <| pullback.snd _ _) := by
  have : HasPullback ((E.map F).f i₁) ((E.map F).f i₂) :=
    hasPullback_of_preservesPullback F (E.f i₁) (E.f i₂)
  refine le_antisymm ?_ ?_
  · rw [PreOneHypercover.sieve₁'_eq_sieve₁]
    apply PreOneHypercover.functorPushforward_sieve₁_map_le
  · rw [PreOneHypercover.sieve₁_eq_pullback_sieve₁' _ _ _
      (by simp [← Functor.map_comp, pullback.condition])]
    rintro W f ⟨Z, u, v, ⟨k⟩, h⟩
    refine ⟨E.Y k, pullback.lift (E.p₁ k) (E.p₂ k) (E.w _), u, ?_, ?_⟩
    · use E.Y k, 𝟙 _, pullback.lift (E.p₁ k) (E.p₂ k) (E.w _), ⟨k⟩
      simp
    · simp only [pullback.hom_ext_iff, Category.assoc, limit.lift_π, PullbackCone.mk_π_app] at h
      apply IsPullback.hom_ext (IsPullback.map _ (.of_hasPullback _ _)) <;>
        simp [← h.left, ← h.right, ← Functor.map_comp]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc1fa75140a6bb951f46527886597a36f99871d11c03828ce54218e1131228223.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bae41fd1efbcdc53c3b7685e2d696efa5589dee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
