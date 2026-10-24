# comp_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89015902-21bc-f735-69e9-35d3b7311373",
  "kind": "lemma",
  "lexical_name": "comp_assoc",
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
  "slug": "comp-assoc--013e87cabbb4e9158f2cd8cf",
  "source": {
    "blob": "2592d2306746bc4c52a5f35d746d2ddf392eb257",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 56,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:013e87cabbb4e9158f2cd8cf43ba857bbc2fe886cdb476f43aeb50d9441c9e50",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89015902-21bc-f735-69e9-35d3b7311373`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp_assoc {a₁ a₂ a₃ a₁₂ a₂₃ a : M}
    (α : ShiftedHom X Y a₁) (β : ShiftedHom Y Z a₂) (γ : ShiftedHom Z T a₃)
    (h₁₂ : a₂ + a₁ = a₁₂) (h₂₃ : a₃ + a₂ = a₂₃) (h : a₃ + a₂ + a₁ = a) :
    (α.comp β h₁₂).comp γ (show a₃ + a₁₂ = a by rw [← h₁₂, ← add_assoc, h]) =
      α.comp (β.comp γ h₂₃) (by rw [← h₂₃, h]) := by
  simp only [comp, assoc, Functor.map_comp,
    shiftFunctorAdd'_assoc_inv_app a₃ a₂ a₁ a₂₃ a₁₂ a h₂₃ h₁₂ h,
    ← NatTrans.naturality_assoc, Functor.comp_map]

/-! In degree `0 : M`, shifted hom `ShiftedHom X Y 0` identify to morphisms `X ⟶ Y`.
We generalize this to `m₀ : M` such that `m₀ : 0` as it shall be convenient when we
apply this with `M := ℤ` and `m₀` the coercion of `0 : ℕ`. -/

/-- The element of `ShiftedHom X Y m₀` (when `m₀ = 0`) attached to a morphism `X ⟶ Y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHom/Variant1e4e192b0765869c4959644c551b34ecb4c0e40f5fa3b6b83bbefa5b7dcee02c.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2592d2306746bc4c52a5f35d746d2ddf392eb257` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
