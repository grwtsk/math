# nullHomotopicMap_f_of_not_rel_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b309616b-2dee-d4c3-752c-37d545e70bf4",
  "kind": "theorem",
  "lexical_name": "nullHomotopicMap_f_of_not_rel_left",
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
  "slug": "nullhomotopicmap-f-of-not-rel-left--4384e4879de27b581a3a931f",
  "source": {
    "blob": "8fcd279cc14596e19dc6634845551fbd0729615c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 369,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant5929aafd73a11b4157ab7871c82af73d6e45d78746b18cd0952f7e1234c83966.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4384e4879de27b581a3a931fd5786461b29c81a257f5779e5763ef3bfbbc080b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant5929aafd73a11b4157ab7871c82af73d6e45d78746b18cd0952f7e1234c83966.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b309616b-2dee-d4c3-752c-37d545e70bf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nullHomotopicMap_f_of_not_rel_left {k₁ k₀ : ι} (r₁₀ : c.Rel k₁ k₀)
    (hk₀ : ∀ l : ι, ¬c.Rel k₀ l) (hom : ∀ i j, C.X i ⟶ D.X j) :
    (nullHomotopicMap hom).f k₀ = hom k₀ k₁ ≫ D.d k₁ k₀ := by
  dsimp only [nullHomotopicMap]
  rw [prevD_eq hom r₁₀, dNext, AddMonoidHom.mk'_apply, C.shape, zero_comp, zero_add]
  exact hk₀ _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant5929aafd73a11b4157ab7871c82af73d6e45d78746b18cd0952f7e1234c83966.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant5929aafd73a11b4157ab7871c82af73d6e45d78746b18cd0952f7e1234c83966.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fcd279cc14596e19dc6634845551fbd0729615c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
