# trianglehMapOfHomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40f83b6c036c693b9a9b5b1a0cfdfbf7897f2e213ad19d2fbc2c0cefd1f4429b",
  "kind": "def",
  "lexical_name": "trianglehMapOfHomotopy",
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
  "slug": "trianglehmapofhomotopy--0355a3e7b4b503e419dd5216",
  "source": {
    "blob": "bc050365104f805a2e7317d5de19bef4ac791cf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 131,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0355a3e7b4b503e419dd5216da60704dbfc41d19f61e9cf5671548939add756d",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40f83b6c036c693b9a9b5b1a0cfdfbf7897f2e213ad19d2fbc2c0cefd1f4429b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def trianglehMapOfHomotopy :
    triangleh φ₁ ⟶ triangleh φ₂ where
  hom₁ := (HomotopyCategory.quotient _ _).map a
  hom₂ := (HomotopyCategory.quotient _ _).map b
  hom₃ := (HomotopyCategory.quotient _ _).map (mapOfHomotopy H)
  comm₁ := by
    dsimp
    simp only [← Functor.map_comp]
    exact HomotopyCategory.eq_of_homotopy _ _ H
  comm₂ := by
    dsimp
    simp only [← Functor.map_comp, triangleMapOfHomotopy_comm₂]
  comm₃ := by
    dsimp
    rw [← Functor.map_comp_assoc, triangleMapOfHomotopy_comm₃, Functor.map_comp, assoc, assoc]
    simp

end mapOfHomotopy

section map

variable {K₁ L₁ K₂ L₂ K₃ L₃ : CochainComplex C ℤ} (φ₁ : K₁ ⟶ L₁) (φ₂ : K₂ ⟶ L₂) (φ₃ : K₃ ⟶ L₃)
  (a : K₁ ⟶ K₂) (b : L₁ ⟶ L₂)

/-- The morphism `mappingCone φ₁ ⟶ mappingCone φ₂` that is induced by a commutative square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc050365104f805a2e7317d5de19bef4ac791cf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
