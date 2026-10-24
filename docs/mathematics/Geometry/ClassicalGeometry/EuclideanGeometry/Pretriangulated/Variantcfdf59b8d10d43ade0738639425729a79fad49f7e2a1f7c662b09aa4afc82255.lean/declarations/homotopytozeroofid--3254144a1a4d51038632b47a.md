# homotopyToZeroOfId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:028edfb558ce7b14fb89c5b95dc331f1834e9285addd4b0c032349da779cdf1c",
  "kind": "def",
  "lexical_name": "homotopyToZeroOfId",
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
  "slug": "homotopytozeroofid--3254144a1a4d51038632b47a",
  "source": {
    "blob": "bc050365104f805a2e7317d5de19bef4ac791cf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 92,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3254144a1a4d51038632b47adbaf70fa3426104a624392a0088aa5f020c8f2db",
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

Occurrence: `declaration:028edfb558ce7b14fb89c5b95dc331f1834e9285addd4b0c032349da779cdf1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def homotopyToZeroOfId : Homotopy (𝟙 (mappingCone (𝟙 K))) 0 :=
  descHomotopy (𝟙 K) _ _ 0 (inl _) (by simp) (by simp)

section mapOfHomotopy

variable {K₁ L₁ K₂ L₂ K₃ L₃ : CochainComplex C ℤ} {φ₁ : K₁ ⟶ L₁} {φ₂ : K₂ ⟶ L₂}
  {a : K₁ ⟶ K₂} {b : L₁ ⟶ L₂} (H : Homotopy (φ₁ ≫ b) (a ≫ φ₂))

/-- The morphism `mappingCone φ₁ ⟶ mappingCone φ₂` that is induced by a square that
is commutative up to homotopy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Pretriangulated/Variantcfdf59b8d10d43ade0738639425729a79fad49f7e2a1f7c662b09aa4afc82255.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc050365104f805a2e7317d5de19bef4ac791cf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
