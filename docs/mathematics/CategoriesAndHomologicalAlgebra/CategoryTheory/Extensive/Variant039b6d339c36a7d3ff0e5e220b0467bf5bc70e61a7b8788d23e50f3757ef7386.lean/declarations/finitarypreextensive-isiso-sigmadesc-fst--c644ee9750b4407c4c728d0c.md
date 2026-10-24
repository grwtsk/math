# FinitaryPreExtensive.isIso_sigmaDesc_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3197df08e8493f681622f9c40699ea7dbcf38828",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 553,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/039b6d339c36a7d3ff0e5e220b0467bf5bc70e61a7b8788d23e50f3757ef7386.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e32f67f-88ab-0951-bec4-274b408facf2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dfee1c4f-bd1b-f35d-a962-99c832ac3bb9",
  "kind": "lemma",
  "lexical_name": "FinitaryPreExtensive.isIso_sigmaDesc_fst",
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
  "slug": "finitarypreextensive-isiso-sigmadesc-fst--c644ee9750b4407c4c728d0c",
  "source": {
    "blob": "3197df08e8493f681622f9c40699ea7dbcf38828",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 568,
    "line": 553,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant039b6d339c36a7d3ff0e5e220b0467bf5bc70e61a7b8788d23e50f3757ef7386.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c644ee9750b4407c4c728d0c0fff460e82adaddf8a68a66f479fa08a355bf413",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant039b6d339c36a7d3ff0e5e220b0467bf5bc70e61a7b8788d23e50f3757ef7386.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfee1c4f-bd1b-f35d-a962-99c832ac3bb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–568.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma FinitaryPreExtensive.isIso_sigmaDesc_fst [FinitaryPreExtensive C] {α : Type} [Finite α]
    {X : C} {Z : α → C} (π : (a : α) → Z a ⟶ X) {Y : C} (f : Y ⟶ X) (hπ : IsIso (Sigma.desc π)) :
    IsIso (Sigma.desc ((fun _ ↦ pullback.fst _ _) : (a : α) → pullback f (π a) ⟶ _)) := by
  let c := (Cofan.mk _ ((fun _ ↦ pullback.fst _ _) : (a : α) → pullback f (π a) ⟶ _))
  apply c.nonempty_isColimit_iff_isIso_sigmaDesc.mp
  have hau : IsUniversalColimit (Cofan.mk X π) := FinitaryPreExtensive.isUniversal_finiteCoproducts
    ((Cofan.nonempty_isColimit_iff_isIso_sigmaDesc _).mpr hπ).some
  refine hau.nonempty_isColimit_of_pullbackCone_left _ (𝟙 _) _ _ (fun i ↦ ?_)
    (PullbackCone.mk (𝟙 _) f (by simp)) (IsPullback.id_horiz f).isLimit _ (Iso.refl _)
    (by simp) (by simp [c]) (by simp [pullback.condition, c])
  exact pullback.isLimit _ _

set_option backward.isDefEq.respectTransparency false in
/-- If `C` has pullbacks and is finitary (pre-)extensive, pullbacks distribute over finite
coproducts, i.e., `∐ (Xᵢ ×[S] Xⱼ) ≅ (∐ Xᵢ) ×[S] (∐ Xⱼ)`.
For an `IsPullback` version, see `FinitaryPreExtensive.isPullback_sigmaDesc`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant039b6d339c36a7d3ff0e5e220b0467bf5bc70e61a7b8788d23e50f3757ef7386.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant039b6d339c36a7d3ff0e5e220b0467bf5bc70e61a7b8788d23e50f3757ef7386.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3197df08e8493f681622f9c40699ea7dbcf38828` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
