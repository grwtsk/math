# nullHomotopicMap_f_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b79c124c-dceb-acc8-b02e-4787b9d3c610",
  "kind": "theorem",
  "lexical_name": "nullHomotopicMap_f_eq_zero",
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
  "slug": "nullhomotopicmap-f-eq-zero--4790f4ba23c6c58ca8c8343c",
  "source": {
    "blob": "6428bdc5ba13fddda5f428de0a2c3f462d0a6be0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 424,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant7767fdf7022ee1e76e3de12c3dc49f4e546d74f052c23385776fd38eb9c7019f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4790f4ba23c6c58ca8c8343ca8a0c2d133b06e8d7d67a0a9a298f71749c369d1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant7767fdf7022ee1e76e3de12c3dc49f4e546d74f052c23385776fd38eb9c7019f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b79c124c-dceb-acc8-b02e-4787b9d3c610`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nullHomotopicMap_f_eq_zero {k₀ : ι} (hk₀ : ∀ l : ι, ¬c.Rel k₀ l)
    (hk₀' : ∀ l : ι, ¬c.Rel l k₀) (hom : ∀ i j, C.X i ⟶ D.X j) :
    (nullHomotopicMap hom).f k₀ = 0 := by
  dsimp [nullHomotopicMap, dNext, prevD]
  rw [C.shape, D.shape, zero_comp, comp_zero, add_zero] <;> apply_assumption

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant7767fdf7022ee1e76e3de12c3dc49f4e546d74f052c23385776fd38eb9c7019f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant7767fdf7022ee1e76e3de12c3dc49f4e546d74f052c23385776fd38eb9c7019f.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6428bdc5ba13fddda5f428de0a2c3f462d0a6be0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
