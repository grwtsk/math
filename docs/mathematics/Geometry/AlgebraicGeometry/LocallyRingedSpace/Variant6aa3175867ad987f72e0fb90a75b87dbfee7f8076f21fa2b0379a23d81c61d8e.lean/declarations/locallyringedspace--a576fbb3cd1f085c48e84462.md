# LocallyRingedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b75accd2f38bf2e0a14aee0f36dcd54066300fb899b7a1d76544739e689946c5",
  "kind": "structure",
  "lexical_name": "LocallyRingedSpace",
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
  "slug": "locallyringedspace--a576fbb3cd1f085c48e84462",
  "source": {
    "blob": "278401e14405228953b93ca7d774268c4b63d695",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 51,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant6aa3175867ad987f72e0fb90a75b87dbfee7f8076f21fa2b0379a23d81c61d8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a576fbb3cd1f085c48e8446267647efb5a8be07ce9d6d504e641209d5ef0c4c1",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant6aa3175867ad987f72e0fb90a75b87dbfee7f8076f21fa2b0379a23d81c61d8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b75accd2f38bf2e0a14aee0f36dcd54066300fb899b7a1d76544739e689946c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LocallyRingedSpace extends SheafedSpace CommRingCat.{u} where
  /-- Stalks of a locally ringed space are local rings. -/
  isLocalRing : ∀ x, IsLocalRing (presheaf.stalk x)

attribute [instance] LocallyRingedSpace.isLocalRing

namespace LocallyRingedSpace

variable (X : LocallyRingedSpace.{u})

/-- An alias for `toSheafedSpace`, where the result type is a `RingedSpace`.
This allows us to use dot-notation for the `RingedSpace` namespace.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant6aa3175867ad987f72e0fb90a75b87dbfee7f8076f21fa2b0379a23d81c61d8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variant6aa3175867ad987f72e0fb90a75b87dbfee7f8076f21fa2b0379a23d81c61d8e.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `278401e14405228953b93ca7d774268c4b63d695` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
