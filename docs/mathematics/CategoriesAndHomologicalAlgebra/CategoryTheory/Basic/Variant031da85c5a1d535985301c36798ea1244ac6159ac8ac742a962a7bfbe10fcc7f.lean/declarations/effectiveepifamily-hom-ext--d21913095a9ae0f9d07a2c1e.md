# EffectiveEpiFamily.hom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9b4a738-b05b-b1e2-1d1c-d6177bdae756",
  "kind": "lemma",
  "lexical_name": "EffectiveEpiFamily.hom_ext",
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
  "slug": "effectiveepifamily-hom-ext--d21913095a9ae0f9d07a2c1e",
  "source": {
    "blob": "5e6451ec0604cb71ff2a6de8cfa377a357bb852e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 174,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d21913095a9ae0f9d07a2c1eb99c5203c34b5dea4aac9820f1b3e09f0360bc4d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9b4a738-b05b-b1e2-1d1c-d6177bdae756`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma EffectiveEpiFamily.hom_ext {B W : C} {α : Type*} (X : α → C) (π : (a : α) → (X a ⟶ B))
    [EffectiveEpiFamily X π] (m₁ m₂ : B ⟶ W) (h : ∀ a, π a ≫ m₁ = π a ≫ m₂) :
    m₁ = m₂ := by
  have : m₂ = EffectiveEpiFamily.desc X π (fun a => π a ≫ m₂)
      (fun a₁ a₂ g₁ g₂ h => by simp only [← Category.assoc, h]) := by
    apply EffectiveEpiFamily.uniq; intro; rfl
  rw [this]
  exact EffectiveEpiFamily.uniq _ _ _ _ _ h

/--
An `EffectiveEpiFamily` consisting of a single `EffectiveEpi`
-/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant031da85c5a1d535985301c36798ea1244ac6159ac8ac742a962a7bfbe10fcc7f.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e6451ec0604cb71ff2a6de8cfa377a357bb852e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
