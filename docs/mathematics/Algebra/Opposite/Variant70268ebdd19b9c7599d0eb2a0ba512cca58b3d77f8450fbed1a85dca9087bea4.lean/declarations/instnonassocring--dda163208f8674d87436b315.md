# instNonAssocRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc2277b4aca39fad8fa4b6a5567c72ca9ce77b3b231bc1cf1cb64a88498d42c0",
  "kind": "instance",
  "lexical_name": "instNonAssocRing",
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
  "slug": "instnonassocring--dda163208f8674d87436b315",
  "source": {
    "blob": "572fa6888e3625b9c4169a8c8e1917afc8e443d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 58,
    "path": "GRWTSK/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dda163208f8674d87436b31555703df9b475996945c223c1927471f99cd17c06",
  "verification": {
    "reference": "docs/verification/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc2277b4aca39fad8fa4b6a5567c72ca9ce77b3b231bc1cf1cb64a88498d42c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNonAssocRing [NonAssocRing R] : NonAssocRing Rᵐᵒᵖ where
  __ := instNonUnitalNonAssocRing
  __ := instNonAssocSemiring
  __ := instAddCommGroupWithOne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Opposite/Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `572fa6888e3625b9c4169a8c8e1917afc8e443d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
