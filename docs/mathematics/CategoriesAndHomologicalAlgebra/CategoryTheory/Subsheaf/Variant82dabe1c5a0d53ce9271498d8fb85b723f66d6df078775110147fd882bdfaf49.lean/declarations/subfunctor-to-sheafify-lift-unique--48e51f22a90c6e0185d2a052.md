# Subfunctor.to_sheafify_lift_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7c617e4-881f-072c-bf32-e3ade2cdcafe",
  "kind": "theorem",
  "lexical_name": "Subfunctor.to_sheafify_lift_unique",
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
  "slug": "subfunctor-to-sheafify-lift-unique--48e51f22a90c6e0185d2a052",
  "source": {
    "blob": "83c5208ca25e860e9ec029bfbe4ba2a11714749b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 174,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48e51f22a90c6e0185d2a0527151f494e01594a855dddcc5649f3d375bfcc762",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7c617e4-881f-072c-bf32-e3ade2cdcafe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subfunctor.to_sheafify_lift_unique (h : Presieve.IsSheaf J F')
    (l₁ l₂ : (G.sheafify J).toFunctor ⟶ F')
    (e : Subfunctor.homOfLe (G.le_sheafify J) ≫ l₁ = Subfunctor.homOfLe (G.le_sheafify J) ≫ l₂) :
    l₁ = l₂ := by
  ext U s
  apply (h _ s.prop).isSeparatedFor.ext
  rintro V i hi
  dsimp
  rw [← dsimp% l₁.naturality_apply, ← dsimp% l₂.naturality_apply]
  exact ConcreteCategory.congr_hom (congr_app e <| op V) ⟨_, hi⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Variant82dabe1c5a0d53ce9271498d8fb85b723f66d6df078775110147fd882bdfaf49.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83c5208ca25e860e9ec029bfbe4ba2a11714749b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
