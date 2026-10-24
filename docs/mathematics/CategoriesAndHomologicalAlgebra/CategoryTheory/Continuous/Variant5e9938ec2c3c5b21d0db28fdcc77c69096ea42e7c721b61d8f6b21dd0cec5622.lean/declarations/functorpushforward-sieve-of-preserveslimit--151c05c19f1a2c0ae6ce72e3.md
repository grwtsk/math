# functorPushforward_sieve₁'_of_preservesLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cb205b3-fc1a-4580-975e-ccae6d19070c",
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
  "slug": "functorpushforward-sieve-of-preserveslimit--151c05c19f1a2c0ae6ce72e3",
  "source": {
    "blob": "9653cc9a1c24c418f43b07c86a345edcbe7d173d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 116,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant5e9938ec2c3c5b21d0db28fdcc77c69096ea42e7c721b61d8f6b21dd0cec5622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:151c05c19f1a2c0ae6ce72e3bf2d35e5c8029cc4e0226212319ce3d979869d84",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant5e9938ec2c3c5b21d0db28fdcc77c69096ea42e7c721b61d8f6b21dd0cec5622.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cb205b3-fc1a-4580-975e-ccae6d19070c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–135.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant5e9938ec2c3c5b21d0db28fdcc77c69096ea42e7c721b61d8f6b21dd0cec5622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant5e9938ec2c3c5b21d0db28fdcc77c69096ea42e7c721b61d8f6b21dd0cec5622.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9653cc9a1c24c418f43b07c86a345edcbe7d173d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
