# mapTrifunctorObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a4eac93496b114b27b888dfb5fef80ee241a07ef5a1f688129afbca1fdba115",
  "kind": "def",
  "lexical_name": "mapTrifunctorObj",
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
  "slug": "maptrifunctorobj--4fbbeac26f9beac34d5352c8",
  "source": {
    "blob": "299be7938d2c77392c4681e50faa5a9b864cb525",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 49,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4fbbeac26f9beac34d5352c85e4a4b6e2a6f097d8d210a19b7d85b9db03c3602",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a4eac93496b114b27b888dfb5fef80ee241a07ef5a1f688129afbca1fdba115`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapTrifunctorObj {I₁ : Type*} (X₁ : GradedObject I₁ C₁) (I₂ I₃ : Type*) :
    GradedObject I₂ C₂ ⥤ GradedObject I₃ C₃ ⥤ GradedObject (I₁ × I₂ × I₃) C₄ where
  obj X₂ :=
    { obj := fun X₃ x => ((F.obj (X₁ x.1)).obj (X₂ x.2.1)).obj (X₃ x.2.2)
      map := fun {_ _} φ x => ((F.obj (X₁ x.1)).obj (X₂ x.2.1)).map (φ x.2.2) }
  map {X₂ Y₂} φ :=
    { app := fun X₃ x => ((F.obj (X₁ x.1)).map (φ x.2.1)).app (X₃ x.2.2) }

/-- Given a trifunctor `F : C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄` and types `I₁`, `I₂`, `I₃`,
this is the obvious functor
`GradedObject I₁ C₁ ⥤ GradedObject I₂ C₂ ⥤ GradedObject I₃ C₃ ⥤ GradedObject (I₁ × I₂ × I₃) C₄`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant445fadad909035260d4b79716c91f274d230f11c8806f226c4fecb562a0fc451.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `299be7938d2c77392c4681e50faa5a9b864cb525` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
