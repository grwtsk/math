# Subpresheaf.to_sheafify_lift_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ad6b9dd-b4b3-4ab0-1642-9fde9b22fd0a",
  "kind": "theorem",
  "lexical_name": "Subpresheaf.to_sheafify_lift_unique",
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
  "slug": "subpresheaf-to-sheafify-lift-unique--bb3f50e6440ee76937cc7735",
  "source": {
    "blob": "596f21a9fe278d23fbcc014c49069f49bf932da7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 319,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb3f50e6440ee76937cc77350f2de08b8de3877b0972be244390b2704505a381",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ad6b9dd-b4b3-4ab0-1642-9fde9b22fd0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subpresheaf.to_sheafify_lift_unique (h : Presieve.IsSheaf J F')
    (l₁ l₂ : (G.sheafify J).toPresheaf ⟶ F')
    (e : Subpresheaf.homOfLe (G.le_sheafify J) ≫ l₁ = Subpresheaf.homOfLe (G.le_sheafify J) ≫ l₂) :
    l₁ = l₂ := by
  ext U ⟨s, hs⟩
  apply (h _ hs).isSeparatedFor.ext
  rintro V i hi
  dsimp at hi
  erw [← FunctorToTypes.naturality, ← FunctorToTypes.naturality]
  exact (congr_fun (congr_app e <| op V) ⟨_, hi⟩ : _)
#align category_theory.grothendieck_topology.subpresheaf.to_sheafify_lift_unique CategoryTheory.GrothendieckTopology.Subpresheaf.to_sheafify_lift_unique

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `596f21a9fe278d23fbcc014c49069f49bf932da7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
