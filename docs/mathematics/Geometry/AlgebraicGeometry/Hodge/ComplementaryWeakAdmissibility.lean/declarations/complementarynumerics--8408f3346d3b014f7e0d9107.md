# ComplementaryNumerics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4a74244d59d4d512a75f9c788a8b31bd95ebf7306736baa2759ab08fa7a88c9",
  "kind": "structure",
  "lexical_name": "ComplementaryNumerics",
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
  "slug": "complementarynumerics--8408f3346d3b014f7e0d9107",
  "source": {
    "blob": "890c7a88553dad31868b7b0bba24397e75336c8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 16,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8408f3346d3b014f7e0d9107f086d3df2b549a6cea02b38833dcbf566e1320f2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4a74244d59d4d512a75f9c788a8b31bd95ebf7306736baa2759ab08fa7a88c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ComplementaryNumerics where
  hodgeLeft : ℕ
  hodgeRight : ℕ
  hodgeTotal : ℕ
  newtonLeft : ℕ
  newtonRight : ℕ
  newtonTotal : ℕ
  hodgeLeft_le_newtonLeft : hodgeLeft ≤ newtonLeft
  hodgeRight_le_newtonRight : hodgeRight ≤ newtonRight
  hodge_add : hodgeLeft + hodgeRight = hodgeTotal
  newton_add : newtonLeft + newtonRight = newtonTotal
  total_eq : hodgeTotal = newtonTotal

open GRWTSK.LinearAlgebra.FilteredProjectorSplit

/-- Build the Hodge side of the complementary numerics directly from an
idempotent projector preserving the selected filtration. Thus Hodge additivity
is no longer an external premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/ComplementaryWeakAdmissibility.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `890c7a88553dad31868b7b0bba24397e75336c8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
