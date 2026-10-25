# equiv_chgUniv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "334149a38ba679cddfab2abb7f190d0d26ff51d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:386e7294-ea3a-fb05-6e37-38c66acc8f82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7fe431f9-4504-4a79-7cf3-5a50a7362a1e",
  "kind": "lemma",
  "lexical_name": "equiv_chgUniv",
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
  "slug": "equiv-chguniv--adb16efb6a0a8136ccd871cc",
  "source": {
    "blob": "334149a38ba679cddfab2abb7f190d0d26ff51d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 211,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adb16efb6a0a8136ccd871cc60fb3a8d8d9631971e98d0da8ec14e8de0b68ceb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fe431f9-4504-4a79-7cf3-5a50a7362a1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma equiv_chgUniv (L : C ⥤ D) [L.IsLocalization W] {X Y : C}
    [HasSmallLocalizedHom.{w} W X Y] [HasSmallLocalizedHom.{w''} W X Y]
    (e : SmallHom.{w} W X Y) :
    equiv W L (chgUniv.{w''} e) = equiv W L e := by
  obtain ⟨f, rfl⟩ := (equiv W W.Q).symm.surjective e
  dsimp [chgUniv]
  simp only [Equiv.apply_symm_apply,
    equiv_equiv_symm W _ _ _ (Localization.compUniqFunctor W.Q L W)]

end ChangeOfUniverse

end SmallHom

end Localization

namespace LocalizerMorphism

open Localization

variable {C₁ : Type u₁} [Category.{v₁} C₁] {W₁ : MorphismProperty C₁}
  {C₂ : Type u₂} [Category.{v₂} C₂] {W₂ : MorphismProperty C₂}
  {D₁ : Type u₃} [Category.{v₃} D₁] {D₂ : Type u₄} [Category.{v₄} D₂]
  (Φ : LocalizerMorphism W₁ W₂) (L₁ : C₁ ⥤ D₁) [L₁.IsLocalization W₁]
  (L₂ : C₂ ⥤ D₂) [L₂.IsLocalization W₂]

section

variable {X Y : C₁}

variable [HasSmallLocalizedHom.{w} W₁ X Y]
  [HasSmallLocalizedHom.{w'} W₂ (Φ.functor.obj X) (Φ.functor.obj Y)]

/-- The action of a localizer morphism on `SmallHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SmallHom/Variantc7a42a6dccabca26d4bccf11734a041d3bfb9ebdece667be19cf526ce8558b94.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `334149a38ba679cddfab2abb7f190d0d26ff51d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
