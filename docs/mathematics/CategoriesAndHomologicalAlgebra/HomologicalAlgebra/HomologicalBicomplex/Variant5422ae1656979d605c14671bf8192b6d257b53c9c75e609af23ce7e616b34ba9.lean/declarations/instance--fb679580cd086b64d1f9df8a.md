# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f948dbb68546dabdb28c2e3551ec55d96204e8237d7aa02e4e29a03e7cc65cc5",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--fb679580cd086b64d1f9df8a",
  "source": {
    "blob": "e9f7ce59fdfb94a4286c6503668e36da197012ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb679580cd086b64d1f9df8a3673bcb787a1506fa726fda844428e82c8797f28",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f948dbb68546dabdb28c2e3551ec55d96204e8237d7aa02e4e29a03e7cc65cc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (toGradedObjectFunctor C c₁ c₂).Faithful where
  map_injective {_ _ φ₁ φ₂} h := by
    ext i₁ i₂
    exact congr_fun h ⟨i₁, i₂⟩

section OfGradedObject

variable (c₁ c₂)
variable (X : GradedObject (I₁ × I₂) C)
    (d₁ : ∀ (i₁ i₁' : I₁) (i₂ : I₂), X ⟨i₁, i₂⟩ ⟶ X ⟨i₁', i₂⟩)
    (d₂ : ∀ (i₁ : I₁) (i₂ i₂' : I₂), X ⟨i₁, i₂⟩ ⟶ X ⟨i₁, i₂'⟩)
    (shape₁ : ∀ (i₁ i₁' : I₁) (_ : ¬c₁.Rel i₁ i₁') (i₂ : I₂), d₁ i₁ i₁' i₂ = 0)
    (shape₂ : ∀ (i₁ : I₁) (i₂ i₂' : I₂) (_ : ¬c₂.Rel i₂ i₂'), d₂ i₁ i₂ i₂' = 0)
    (d₁_comp_d₁ : ∀ (i₁ i₁' i₁'' : I₁) (i₂ : I₂), d₁ i₁ i₁' i₂ ≫ d₁ i₁' i₁'' i₂ = 0)
    (d₂_comp_d₂ : ∀ (i₁ : I₁) (i₂ i₂' i₂'' : I₂), d₂ i₁ i₂ i₂' ≫ d₂ i₁ i₂' i₂'' = 0)
    (comm : ∀ (i₁ i₁' : I₁) (i₂ i₂' : I₂), d₁ i₁ i₁' i₂ ≫ d₂ i₁' i₂ i₂' =
      d₂ i₁ i₂ i₂' ≫ d₁ i₁ i₁' i₂')

/-- Constructor for bicomplexes taking as inputs a graded object, horizontal differentials
and vertical differentials satisfying suitable relations. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalBicomplex/Variant5422ae1656979d605c14671bf8192b6d257b53c9c75e609af23ce7e616b34ba9.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9f7ce59fdfb94a4286c6503668e36da197012ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
