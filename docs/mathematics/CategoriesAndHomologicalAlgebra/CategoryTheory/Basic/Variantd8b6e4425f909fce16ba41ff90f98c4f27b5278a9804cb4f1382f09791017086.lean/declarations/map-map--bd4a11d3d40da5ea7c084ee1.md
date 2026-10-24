# map₁_map₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4640434d-e149-d6d7-df3c-188ac40c7a65",
  "kind": "lemma",
  "lexical_name": "map₁_map₂",
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
  "slug": "map-map--bd4a11d3d40da5ea7c084ee1",
  "source": {
    "blob": "b04f102475ba09ce091cebfc8dedcf15cf3b2df1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 182,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd8b6e4425f909fce16ba41ff90f98c4f27b5278a9804cb4f1382f09791017086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd4a11d3d40da5ea7c084ee1bb4323c9c8978fba5678c18038b57ce39f7459b9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd8b6e4425f909fce16ba41ff90f98c4f27b5278a9804cb4f1382f09791017086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4640434d-e149-d6d7-df3c-188ac40c7a65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map₁_map₂ {F G : Cᵒᵖ ⥤ Type v} {η : F ⟶ A} {μ : G ⟶ A} (ε : F ⟶ G)
    (hε : ε ≫ μ = η) {X Y : C} {s : yoneda.obj X ⟶ A} {t : yoneda.obj Y ⟶ A} (f : X ⟶ Y)
    (hf : yoneda.map f ≫ t = s) (u : OverArrows η t) :
    (u.map₁ ε hε).map₂ f hf = (u.map₂ f hf).map₁ ε hε :=
  OverArrows.ext <| (elementwise_of% (ε.naturality f.op).symm) u.val

/-- Construct an element of `OverArrows η s` with `F = yoneda.obj Y` from a suitable morphism
`f : X ⟶ Y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd8b6e4425f909fce16ba41ff90f98c4f27b5278a9804cb4f1382f09791017086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd8b6e4425f909fce16ba41ff90f98c4f27b5278a9804cb4f1382f09791017086.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b04f102475ba09ce091cebfc8dedcf15cf3b2df1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
