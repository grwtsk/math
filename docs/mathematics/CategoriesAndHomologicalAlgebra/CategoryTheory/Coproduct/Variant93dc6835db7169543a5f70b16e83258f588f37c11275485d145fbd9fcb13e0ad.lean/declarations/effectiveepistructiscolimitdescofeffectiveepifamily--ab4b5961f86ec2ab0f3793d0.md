# effectiveEpiStructIsColimitDescOfEffectiveEpiFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a69a15db2affdf09aa6f52e7c9a71f3d7b52334bc53a328c85a7a91f5bfa7627",
  "kind": "def",
  "lexical_name": "effectiveEpiStructIsColimitDescOfEffectiveEpiFamily",
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
  "slug": "effectiveepistructiscolimitdescofeffectiveepifamily--ab4b5961f86ec2ab0f3793d0",
  "source": {
    "blob": "0c3f1869db235d0d4ea4db6fe4e55ff8f568d9f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 33,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant93dc6835db7169543a5f70b16e83258f588f37c11275485d145fbd9fcb13e0ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab4b5961f86ec2ab0f3793d075c988c9600ac98ce8724a402fb07481762fa7d0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant93dc6835db7169543a5f70b16e83258f588f37c11275485d145fbd9fcb13e0ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a69a15db2affdf09aa6f52e7c9a71f3d7b52334bc53a328c85a7a91f5bfa7627`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def effectiveEpiStructIsColimitDescOfEffectiveEpiFamily {B : C} {α : Type*} (X : α → C)
    (c : Cofan X) (hc : IsColimit c) (π : (a : α) → (X a ⟶ B)) [EffectiveEpiFamily X π] :
    EffectiveEpiStruct (hc.desc (Cofan.mk B π)) where
  desc e h := EffectiveEpiFamily.desc X π (fun a ↦ c.ι.app ⟨a⟩ ≫ e) (fun a₁ a₂ g₁ g₂ hg ↦ by
    simp only [← Category.assoc]
    exact h (g₁ ≫ c.ι.app ⟨a₁⟩) (g₂ ≫ c.ι.app ⟨a₂⟩) (by simpa))
  fac e h := hc.hom_ext (fun ⟨j⟩ ↦ (by simp))
  uniq e _ m hm := EffectiveEpiFamily.uniq X π (fun a ↦ c.ι.app ⟨a⟩ ≫ e)
      (fun _ _ _ _ hg ↦ (by simp [← hm, reassoc_of% hg])) m (fun _ ↦ (by simp [← hm]))

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant93dc6835db7169543a5f70b16e83258f588f37c11275485d145fbd9fcb13e0ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coproduct/Variant93dc6835db7169543a5f70b16e83258f588f37c11275485d145fbd9fcb13e0ad.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c3f1869db235d0d4ea4db6fe4e55ff8f568d9f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
