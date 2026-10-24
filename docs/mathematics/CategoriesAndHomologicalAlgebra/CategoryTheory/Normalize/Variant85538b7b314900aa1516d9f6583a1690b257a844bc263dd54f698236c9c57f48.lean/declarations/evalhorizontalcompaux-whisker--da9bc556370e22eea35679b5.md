# evalHorizontalCompAux'_whisker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8ebfa54-5f8b-ff12-b29e-922315599948",
  "kind": "theorem",
  "lexical_name": "evalHorizontalCompAux'_whisker",
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
  "slug": "evalhorizontalcompaux-whisker--da9bc556370e22eea35679b5",
  "source": {
    "blob": "ef4968a7808ff1e6bfeedffffdadb38311bc2c1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 184,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da9bc556370e22eea35679b5e5dafbbf936bb1fdf0fb8b195dcf14d95effc462",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8ebfa54-5f8b-ff12-b29e-922315599948`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalHorizontalCompAux'_whisker {f f' g g' h : C} {η : g ⟶ h} {θ : f' ⟶ g'}
    {ηθ : g ⊗ f' ⟶ h ⊗ g'} {η₁ : f ⊗ (g ⊗ f') ⟶ f ⊗ (h ⊗ g')}
    {η₂ : f ⊗ (g ⊗ f') ⟶ (f ⊗ h) ⊗ g'} {η₃ : (f ⊗ g) ⊗ f' ⟶ (f ⊗ h) ⊗ g'}
    (e_ηθ : η ⊗ θ = ηθ) (e_η₁ : f ◁ ηθ = η₁)
    (e_η₂ : η₁ ≫ (α_ _ _ _).inv = η₂) (e_η₃ : (α_ _ _ _).hom ≫ η₂ = η₃) :
    (f ◁ η) ⊗ θ = η₃ := by
  simp only [← e_ηθ, ← e_η₁, ← e_η₂, ← e_η₃]
  simp [MonoidalCategory.tensorHom_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalize/Variant85538b7b314900aa1516d9f6583a1690b257a844bc263dd54f698236c9c57f48.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef4968a7808ff1e6bfeedffffdadb38311bc2c1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
