# prodMonoidal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4777a58b74285943726100f6d1e0076aa10f7c8bd831c2970555bf29e3dedae",
  "kind": "instance",
  "lexical_name": "prodMonoidal",
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
  "slug": "prodmonoidal--f130eff578af950193cf3032",
  "source": {
    "blob": "b160d5bd73637a9be6086f84521a1acee436c141",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 935,
    "line": 924,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantdc25db16e2db514a02dc26a0e2da5f31528d10d4159ea0059e7d97c858c1ddbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f130eff578af950193cf30327a51a0c9ba14828f2ecfdefe95be457aded8ac82",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantdc25db16e2db514a02dc26a0e2da5f31528d10d4159ea0059e7d97c858c1ddbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4777a58b74285943726100f6d1e0076aa10f7c8bd831c2970555bf29e3dedae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 924–935.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance prodMonoidal : MonoidalCategory (C₁ × C₂) where
  tensorObj X Y := (X.1 ⊗ Y.1, X.2 ⊗ Y.2)
  tensorHom f g := (f.1 ⊗ g.1, f.2 ⊗ g.2)
  whiskerLeft X _ _ f := (whiskerLeft X.1 f.1, whiskerLeft X.2 f.2)
  whiskerRight f X := (whiskerRight f.1 X.1, whiskerRight f.2 X.2)
  tensorHom_def := by simp [tensorHom_def]
  tensorUnit := (𝟙_ C₁, 𝟙_ C₂)
  associator X Y Z := (α_ X.1 Y.1 Z.1).prod (α_ X.2 Y.2 Z.2)
  leftUnitor := fun ⟨X₁, X₂⟩ => (λ_ X₁).prod (λ_ X₂)
  rightUnitor := fun ⟨X₁, X₂⟩ => (ρ_ X₁).prod (ρ_ X₂)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantdc25db16e2db514a02dc26a0e2da5f31528d10d4159ea0059e7d97c858c1ddbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantdc25db16e2db514a02dc26a0e2da5f31528d10d4159ea0059e7d97c858c1ddbe.lean#L924).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b160d5bd73637a9be6086f84521a1acee436c141` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
