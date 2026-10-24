# singleTriangleIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cae31c8c4b9c7f4b3000e7a44be00949711719462e44dc182455c0808f301c0d",
  "kind": "def",
  "lexical_name": "singleTriangleIso",
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
  "slug": "singletriangleiso--714732baec128fefe8defca1",
  "source": {
    "blob": "ddafe5d4e414d439ea4b8d5288cf8134d87e90b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 68,
    "path": "GRWTSK/Algebra/SingleTriangle/Variant5a47ea84a10c99be40c367a6ef6234c3eb0208fc83b3e91c493f6c04238eb72c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:714732baec128fefe8defca104ea673695fcbfcf4b3ab10ae8c883cf38de661b",
  "verification": {
    "reference": "docs/verification/Algebra/SingleTriangle/Variant5a47ea84a10c99be40c367a6ef6234c3eb0208fc83b3e91c493f6c04238eb72c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cae31c8c4b9c7f4b3000e7a44be00949711719462e44dc182455c0808f301c0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def singleTriangleIso :
    hS.singleTriangle ≅
      triangleOfSES (hS.map_of_exact (HomologicalComplex.single C (ComplexShape.up ℤ) 0)) := by
  let e := (SingleFunctors.evaluation _ _ 0).mapIso (singleFunctorsPostcompQIso C)
  refine Triangle.isoMk _ _ (e.app S.X₁) (e.app S.X₂) (e.app S.X₃) ?_ ?_ ?_
  · aesop_cat
  · aesop_cat
  · dsimp [singleδ, e]
    rw [Category.assoc, Category.assoc, ← Functor.map_comp, SingleFunctors.inv_hom_id_hom_app]
    erw [Functor.map_id]
    rw [comp_id]

/-- The distinguished triangle in the derived category of `C` given by a
short exact short complex in `C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SingleTriangle/Variant5a47ea84a10c99be40c367a6ef6234c3eb0208fc83b3e91c493f6c04238eb72c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SingleTriangle/Variant5a47ea84a10c99be40c367a6ef6234c3eb0208fc83b3e91c493f6c04238eb72c.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddafe5d4e414d439ea4b8d5288cf8134d87e90b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
