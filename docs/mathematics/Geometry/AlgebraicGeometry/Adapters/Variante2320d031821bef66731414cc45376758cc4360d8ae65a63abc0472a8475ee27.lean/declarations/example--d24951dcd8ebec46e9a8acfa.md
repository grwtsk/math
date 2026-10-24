# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a78148667bd0dd401cb9584fb4745a360d630b7c025f2c5768b66429fcd2c27f",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--d24951dcd8ebec46e9a8acfa",
  "source": {
    "blob": "224a48ff9c38ab14ef31c2efd1bbd4486abb2acc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 21,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Adapters/Variante2320d031821bef66731414cc45376758cc4360d8ae65a63abc0472a8475ee27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d24951dcd8ebec46e9a8acfa0398f45b51a6c3d94094f1a890e1f3efd8b1d21d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Adapters/Variante2320d031821bef66731414cc45376758cc4360d8ae65a63abc0472a8475ee27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a78148667bd0dd401cb9584fb4745a360d630b7c025f2c5768b66429fcd2c27f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example :
    (BitMatrix.Adapters.mapRefinement.{0} 1 2).abstract
        ((BitMatrix.Adapters.mapImplSystem.{0} 1 2).step Bool.not falseMatrix) =
      (BitMatrix.Adapters.mapSpecSystem.{0} 1 2).step Bool.not
        ((BitMatrix.Adapters.mapRefinement.{0} 1 2).abstract falseMatrix) :=
  BitMatrix.Adapters.mapRefinement_step_sound.{0} Bool.not falseMatrix

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Adapters/Variante2320d031821bef66731414cc45376758cc4360d8ae65a63abc0472a8475ee27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Adapters/Variante2320d031821bef66731414cc45376758cc4360d8ae65a63abc0472a8475ee27.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `224a48ff9c38ab14ef31c2efd1bbd4486abb2acc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
