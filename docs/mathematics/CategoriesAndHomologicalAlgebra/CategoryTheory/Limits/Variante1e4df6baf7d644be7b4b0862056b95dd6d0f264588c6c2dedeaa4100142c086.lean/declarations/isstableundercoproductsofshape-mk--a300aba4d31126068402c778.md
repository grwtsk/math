# IsStableUnderCoproductsOfShape.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26b2cbcd-c473-dab3-5579-0da516279c88",
  "kind": "lemma",
  "lexical_name": "IsStableUnderCoproductsOfShape.mk",
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
  "slug": "isstableundercoproductsofshape-mk--a300aba4d31126068402c778",
  "source": {
    "blob": "77f54e7d4cc8c64d4b48438051af40817a1f4b95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 756,
    "line": 736,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante1e4df6baf7d644be7b4b0862056b95dd6d0f264588c6c2dedeaa4100142c086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a300aba4d31126068402c778ea14d6b3dbb144c622cdc15264ed448c40cdcfca",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante1e4df6baf7d644be7b4b0862056b95dd6d0f264588c6c2dedeaa4100142c086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26b2cbcd-c473-dab3-5579-0da516279c88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 736–756.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsStableUnderCoproductsOfShape.mk (J : Type*) [W.RespectsIso]
    (hW : ∀ (X₁ X₂ : J → C) [HasCoproduct X₁] [HasCoproduct X₂]
      (f : ∀ j, X₁ j ⟶ X₂ j) (_ : ∀ (j : J), W (f j)),
      W (Limits.Sigma.map f)) : W.IsStableUnderCoproductsOfShape J where
  condition X₁ X₂ c₁ c₂ hc₁ hc₂ f hf α hα := by
    let φ := fun j => f.app (Discrete.mk j)
    have : HasColimit X₁ := ⟨c₁, hc₁⟩
    have : HasColimit X₂ := ⟨c₂, hc₂⟩
    have : HasCoproduct fun j ↦ X₁.obj (Discrete.mk j) :=
      hasColimit_of_iso (Discrete.natIso (fun j ↦ Iso.refl (X₁.obj j)))
    have : HasCoproduct fun j ↦ X₂.obj (Discrete.mk j) :=
      hasColimit_of_iso (Discrete.natIso (fun j ↦ Iso.refl (X₂.obj j)))
    have hf' := hW _ _ φ (fun j => hf (Discrete.mk j))
    refine (W.arrow_mk_iso_iff ?_).1 hf'
    refine Arrow.isoMk
      ((Sigma.isoColimit _) ≪≫ IsColimit.coconePointUniqueUpToIso (colimit.isColimit X₁) hc₁)
      ((Sigma.isoColimit _) ≪≫ IsColimit.coconePointUniqueUpToIso (colimit.isColimit X₂) hc₂) ?_
    apply colimit.hom_ext
    rintro ⟨j⟩
    simp [φ, hα]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante1e4df6baf7d644be7b4b0862056b95dd6d0f264588c6c2dedeaa4100142c086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante1e4df6baf7d644be7b4b0862056b95dd6d0f264588c6c2dedeaa4100142c086.lean#L736).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77f54e7d4cc8c64d4b48438051af40817a1f4b95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
