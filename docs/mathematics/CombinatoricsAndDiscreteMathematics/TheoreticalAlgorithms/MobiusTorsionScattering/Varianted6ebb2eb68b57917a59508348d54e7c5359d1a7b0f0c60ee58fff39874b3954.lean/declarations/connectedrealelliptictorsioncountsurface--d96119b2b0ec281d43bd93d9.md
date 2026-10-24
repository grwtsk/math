# connectedRealEllipticTorsionCountSurface

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:078bda1a5193ac51b010c75322a01e3fe4c6d0e9093931e5a62137a51150e7bc",
  "kind": "def",
  "lexical_name": "connectedRealEllipticTorsionCountSurface",
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
  "slug": "connectedrealelliptictorsioncountsurface--d96119b2b0ec281d43bd93d9",
  "source": {
    "blob": "8262d7ed220ba0aa1a2cab36b61e4fe244783f64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 242,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d96119b2b0ec281d43bd93d9c902cfffe5d583207f67d822d04d3729d27ba685",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:078bda1a5193ac51b010c75322a01e3fe4c6d0e9093931e5a62137a51150e7bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def connectedRealEllipticTorsionCountSurface :
    RealEllipticTorsionCountSurface :=
  { componentType := RealEllipticComponentType.connected
    allTorsionCount := fun n => n
    exactTorsionCount := fun _n => 0
    affineXCount := fun _n => 0
    mobiusInversionLaw := true
    characterScatteringLaw := true
    affineQuotientBySignLaw := true
    connectedCountLaw := by
      intro _h n
      rfl
    twoComponentCountLaw := by
      intro h
      cases h }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusTorsionScattering/Varianted6ebb2eb68b57917a59508348d54e7c5359d1a7b0f0c60ee58fff39874b3954.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8262d7ed220ba0aa1a2cab36b61e4fe244783f64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
