# restriction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79203a3341d8991082447398db993c3facc99a2d3516b26f76e8f969eb5dad77",
  "kind": "def",
  "lexical_name": "restriction",
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
  "slug": "restriction--060e8bf5f9e3e9f32d23f0b1",
  "source": {
    "blob": "382ea4478ab53131c06e22ee23b4703e6f50cdec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 538,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:060e8bf5f9e3e9f32d23f0b176e8366e45eb4f1e88166c9a3edb24201f7965b8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79203a3341d8991082447398db993c3facc99a2d3516b26f76e8f969eb5dad77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def restriction {X : C} {X₀ : C₀} (f : F.obj X₀ ⟶ X) :
    presheafObj data G₀ X ⟶ G₀.obj.obj (op X₀) :=
  G₀.2.amalgamate ⟨_, (data X).sieve_mem f⟩
    (fun ⟨Y₀, g, hg⟩ ↦ restriction.res data G₀ hg.some) (by
      rintro ⟨Z₁, g₁, ⟨h₁⟩⟩ ⟨Z₂, g₂, ⟨h₂⟩⟩ ⟨T₀, p₁, p₂, w⟩
      dsimp at g₁ g₂ p₁ p₂ w ⊢
      rw [restriction.res_eq_res data G₀ _ h₁, restriction.res_eq_res data G₀ _ h₂]
      refine Presheaf.IsSheaf.hom_ext G₀.property
        ⟨_, J₀.intersection_covering
          (IsDenseSubsite.imageSieve_mem J₀ J F (F.map p₁ ≫ h₁.q))
          (IsDenseSubsite.imageSieve_mem J₀ J F (F.map p₂ ≫ h₂.q))⟩ _ _ ?_
      rintro ⟨W₀, a, ⟨q₁, w₁⟩, ⟨q₂, w₂⟩⟩
      refine Presheaf.IsSheaf.hom_ext G₀.property
        ⟨_, (data X).mem₁₀ h₁.i₀ h₂.i₀ q₁ q₂ (by
        simp only [w₁, w₂, assoc, h₁.fac, h₂.fac, ← Functor.map_comp_assoc, w])⟩ _ _ ?_
      rintro ⟨U₀, b, hb⟩
      dsimp
      simp only [assoc, restriction.res, IsDenseSubsite.mapPreimage_comp_map]
      apply presheafObj_mapPreimage_condition
      simp only [assoc, h₁.fac, h₂.fac, ← Functor.map_comp_assoc, w])

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `382ea4478ab53131c06e22ee23b4703e6f50cdec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
