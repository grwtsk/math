# naturality_tensorHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb28c00c-0f00-047a-270f-84379a49c7c8",
  "kind": "theorem",
  "lexical_name": "naturality_tensorHom",
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
  "slug": "naturality-tensorhom--36e6cd9b6614a4eb18fabe8f",
  "source": {
    "blob": "e19df25aa2991142913744e10775e4dc2b892f47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 85,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36e6cd9b6614a4eb18fabe8f3a528d8ac56864249a5a3cdd7514372b683493c1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb28c00c-0f00-047a-270f-84379a49c7c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem naturality_tensorHom {p f₁ g₁ f₂ g₂ pf₁ pf₁f₂ : C} {η : f₁ ≅ g₁} {θ : f₂ ≅ g₂}
    (η_f₁ : p ⊗ f₁ ≅ pf₁) (η_g₁ : p ⊗ g₁ ≅ pf₁) (η_f₂ : pf₁ ⊗ f₂ ≅ pf₁f₂) (η_g₂ : pf₁ ⊗ g₂ ≅ pf₁f₂)
    (ih_η : p ◁ η ≪≫ η_g₁ = η_f₁)
    (ih_θ : pf₁ ◁ θ ≪≫ η_g₂ = η_f₂) :
    p ◁ (η ⊗ θ) ≪≫ normalizeIsoComp η_g₁ η_g₂ = normalizeIsoComp η_f₁ η_f₂ := by
  rw [tensorIso_def]
  apply naturality_comp
  · apply naturality_whiskerRight _ _ _ ih_η
  · apply naturality_whiskerLeft _ _ _ ih_θ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variant0d69143ea57ce4d0002e37e507ff87057260b5655b745229c356bf7c883889c7.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e19df25aa2991142913744e10775e4dc2b892f47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
