# triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e52a485b-848d-636e-30e7-5af15473eb4f",
  "kind": "lemma",
  "lexical_name": "triangle",
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
  "slug": "triangle--3e0e7df4b0274ce6446126ec",
  "source": {
    "blob": "5bc065af18613697e27979ab4b353f8c5946ebb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 118,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variant926c636720e686545d236b3b538e3fe2d714d29132732963c37820c37bc5d641.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e0e7df4b0274ce6446126ecc9c668fb85f4570e9a8296c749aa3418537f4c83",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variant926c636720e686545d236b3b538e3fe2d714d29132732963c37820c37bc5d641.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e52a485b-848d-636e-30e7-5af15473eb4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma triangle (X Y : Arrow C) :
    (α_ X (𝟙_ _) Y).hom ≫ X ◁ (λ_ Y).hom = (ρ_ X).hom ▷ Y := by
  refine Arrow.hom_ext _ _ (pushout.hom_ext (by simp) ?_) (by simp)
  apply ((tensorRight _).map_isPushout (IsPushout.of_hasPushout _ _)).hom_ext
  · apply (initialIsInitial.ofIso ((initialIsoIsInitial ?_) ≪≫ (mulZero ?_).symm)).hom_ext <;>
    exact initialIsInitial.ofIso (zeroMul initialIsInitial).symm
  · simp [← comp_whiskerRight_assoc]

set_option backward.isDefEq.respectTransparency.types false in
/-- The monoidal category instance induced by the pushout-product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variant926c636720e686545d236b3b538e3fe2d714d29132732963c37820c37bc5d641.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variant926c636720e686545d236b3b538e3fe2d714d29132732963c37820c37bc5d641.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bc065af18613697e27979ab4b353f8c5946ebb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
