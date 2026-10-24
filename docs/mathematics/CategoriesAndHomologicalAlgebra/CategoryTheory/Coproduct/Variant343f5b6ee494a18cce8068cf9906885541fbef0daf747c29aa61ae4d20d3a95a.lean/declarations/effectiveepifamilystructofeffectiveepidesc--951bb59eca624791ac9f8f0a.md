# effectiveEpiFamilyStructOfEffectiveEpiDesc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f0c5640fc8cb96f7777b78fa7ef934c3aaa1d3b0ad17bdb4318f8a8211a1f2a",
  "kind": "def",
  "lexical_name": "effectiveEpiFamilyStructOfEffectiveEpiDesc",
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
  "slug": "effectiveepifamilystructofeffectiveepidesc--951bb59eca624791ac9f8f0a",
  "source": {
    "blob": "b2df375bbd207fb6e29b8d5b1f64c6a983b0572e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 101,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant343f5b6ee494a18cce8068cf9906885541fbef0daf747c29aa61ae4d20d3a95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:951bb59eca624791ac9f8f0af38994fccd0f97db88d4bae03c3ac488da1c0076",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant343f5b6ee494a18cce8068cf9906885541fbef0daf747c29aa61ae4d20d3a95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f0c5640fc8cb96f7777b78fa7ef934c3aaa1d3b0ad17bdb4318f8a8211a1f2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def effectiveEpiFamilyStructOfEffectiveEpiDesc {B : C} {α : Type*} (X : α → C)
    (π : (a : α) → (X a ⟶ B)) [HasCoproduct X] [EffectiveEpi (Sigma.desc π)]
    [∀ {Z : C} (g : Z ⟶ ∐ X) (a : α), HasPullback g (Sigma.ι X a)]
    [∀ {Z : C} (g : Z ⟶ ∐ X), HasCoproduct (fun a ↦ pullback g (Sigma.ι X a))]
    [∀ {Z : C} (g : Z ⟶ ∐ X),
      Epi (Sigma.desc (fun a ↦ pullback.fst g (Sigma.ι X a)))] :
    EffectiveEpiFamilyStruct X π where
  desc e h := EffectiveEpi.desc (Sigma.desc π) (Sigma.desc e) fun _ _ hg ↦
    effectiveEpiFamilyStructOfEffectiveEpiDesc_aux h hg
  fac e h a := by
    rw [(by simp : π a = Sigma.ι X a ≫ Sigma.desc π), (by simp : e a = Sigma.ι X a ≫ Sigma.desc e),
      Category.assoc, EffectiveEpi.fac (Sigma.desc π) (Sigma.desc e) (fun g₁ g₂ hg ↦
      effectiveEpiFamilyStructOfEffectiveEpiDesc_aux h hg)]
  uniq _ _ _ hm := by
    apply EffectiveEpi.uniq (Sigma.desc π)
    ext
    simpa using hm _

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant343f5b6ee494a18cce8068cf9906885541fbef0daf747c29aa61ae4d20d3a95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant343f5b6ee494a18cce8068cf9906885541fbef0daf747c29aa61ae4d20d3a95a.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2df375bbd207fb6e29b8d5b1f64c6a983b0572e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
