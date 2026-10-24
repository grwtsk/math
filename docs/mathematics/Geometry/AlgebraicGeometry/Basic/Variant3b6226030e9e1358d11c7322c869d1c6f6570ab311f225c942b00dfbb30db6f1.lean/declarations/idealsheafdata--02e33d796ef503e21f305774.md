# IdealSheafData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21646b210fa6846581bb56a3928959a5db2ea88bb45cc56c453899b2147e68c8",
  "kind": "structure",
  "lexical_name": "IdealSheafData",
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
  "slug": "idealsheafdata--02e33d796ef503e21f305774",
  "source": {
    "blob": "f0917130fca86cf11a93191f469396b67259022b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 68,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant3b6226030e9e1358d11c7322c869d1c6f6570ab311f225c942b00dfbb30db6f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02e33d796ef503e21f30577485d4998cdee044320c2d2011f80c5673b6f3d663",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant3b6226030e9e1358d11c7322c869d1c6f6570ab311f225c942b00dfbb30db6f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21646b210fa6846581bb56a3928959a5db2ea88bb45cc56c453899b2147e68c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IdealSheafData (X : Scheme.{u}) : Type u where
  /-- The component of an ideal sheaf at an affine open. -/
  ideal : ∀ U : X.affineOpens, Ideal Γ(X, U)
  /-- Also see `AlgebraicGeometry.Scheme.IdealSheafData.map_ideal` -/
  map_ideal_basicOpen : ∀ (U : X.affineOpens) (f : Γ(X, U)),
    (ideal U).map (X.presheaf.map (homOfLE <| X.basicOpen_le f).op).hom =
      ideal (X.affineBasicOpen f)
  /-- The support of an ideal sheaf. Use `IdealSheafData.support` instead for most occasions. -/
  supportSet : Set X := ⋂ U, X.zeroLocus (U := U.1) (ideal U)
  supportSet_eq_iInter_zeroLocus : supportSet = ⋂ U, X.zeroLocus (U := U.1) (ideal U) := by rfl

namespace IdealSheafData

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant3b6226030e9e1358d11c7322c869d1c6f6570ab311f225c942b00dfbb30db6f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant3b6226030e9e1358d11c7322c869d1c6f6570ab311f225c942b00dfbb30db6f1.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0917130fca86cf11a93191f469396b67259022b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
