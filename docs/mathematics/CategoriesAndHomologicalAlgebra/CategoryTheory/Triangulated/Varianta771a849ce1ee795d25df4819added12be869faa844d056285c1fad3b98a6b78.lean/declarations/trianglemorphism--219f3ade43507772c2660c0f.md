# triangleMorphism₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26f45051fc7c7a91ee0eab7ffb99a58dcfadf342a2a71232b5f9427ff7079cca",
  "kind": "def",
  "lexical_name": "triangleMorphism₁",
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
  "slug": "trianglemorphism--219f3ade43507772c2660c0f",
  "source": {
    "blob": "93f983f44889ac624530ba68e60f96deb9a21c0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 87,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Varianta771a849ce1ee795d25df4819added12be869faa844d056285c1fad3b98a6b78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:219f3ade43507772c2660c0f5d0c47282a03a7834a3bfd4d4d72b1ef85a4109e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Varianta771a849ce1ee795d25df4819added12be869faa844d056285c1fad3b98a6b78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26f45051fc7c7a91ee0eab7ffb99a58dcfadf342a2a71232b5f9427ff7079cca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def triangleMorphism₁ : Triangle.mk u₁₂ v₁₂ w₁₂ ⟶ Triangle.mk u₁₃ v₁₃ w₁₃ where
  hom₁ := 𝟙 X₁
  hom₂ := u₂₃
  hom₃ := h.m₁
  comm₁ := by
    dsimp
    rw [id_comp, comm]
  comm₂ := h.comm₁
  comm₃ := by
    dsimp
    simpa only [Functor.map_id, comp_id] using h.comm₂.symm

/-- The second morphism of triangles given an octahedron. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Varianta771a849ce1ee795d25df4819added12be869faa844d056285c1fad3b98a6b78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Varianta771a849ce1ee795d25df4819added12be869faa844d056285c1fad3b98a6b78.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93f983f44889ac624530ba68e60f96deb9a21c0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
