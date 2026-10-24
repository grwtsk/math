# mk₂_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2044b980-bfd1-b9c7-a433-038e7ce4c20e",
  "kind": "lemma",
  "lexical_name": "mk₂_surjective",
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
  "slug": "mk-surjective--48ba3e8beb894101c77bb21c",
  "source": {
    "blob": "954ec3bac47998d1bd049f5b16e628065ed79b94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 604,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variantf50305555bf7947401459eceecff9e4c922447ee88ee7a72016006973be5e954.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48ba3e8beb894101c77bb21ce528a4f530b5926b5c6380d97c3580f963d4a45c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variantf50305555bf7947401459eceecff9e4c922447ee88ee7a72016006973be5e954.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2044b980-bfd1-b9c7-a433-038e7ce4c20e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 604–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mk₂_surjective (X : ComposableArrows C 2) :
    ∃ (X₀ X₁ X₂ : C) (f₀ : X₀ ⟶ X₁) (f₁ : X₁ ⟶ X₂), X = mk₂ f₀ f₁ :=
  ⟨_, _, _, X.map' 0 1, X.map' 1 2, ext₂ rfl rfl rfl (by simp) (by simp)⟩

section

variable
  {f g : ComposableArrows C 3}
  (app₀ : f.obj' 0 ⟶ g.obj' 0) (app₁ : f.obj' 1 ⟶ g.obj' 1) (app₂ : f.obj' 2 ⟶ g.obj' 2)
  (app₃ : f.obj' 3 ⟶ g.obj' 3)
  (w₀ : f.map' 0 1 ≫ app₁ = app₀ ≫ g.map' 0 1)
  (w₁ : f.map' 1 2 ≫ app₂ = app₁ ≫ g.map' 1 2)
  (w₂ : f.map' 2 3 ≫ app₃ = app₂ ≫ g.map' 2 3)

/-- Constructor for morphisms in `ComposableArrows C 3`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variantf50305555bf7947401459eceecff9e4c922447ee88ee7a72016006973be5e954.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variantf50305555bf7947401459eceecff9e4c922447ee88ee7a72016006973be5e954.lean#L604).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `954ec3bac47998d1bd049f5b16e628065ed79b94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
