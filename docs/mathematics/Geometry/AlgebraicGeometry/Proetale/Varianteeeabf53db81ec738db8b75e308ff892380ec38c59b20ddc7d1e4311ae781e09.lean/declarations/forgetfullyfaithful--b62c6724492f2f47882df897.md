# forgetFullyFaithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e70feb73bf7e3544089a704bf91fb1433d6d6a6929eecde7ebde895aa560146",
  "kind": "def",
  "lexical_name": "forgetFullyFaithful",
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
  "slug": "forgetfullyfaithful--b62c6724492f2f47882df897",
  "source": {
    "blob": "2e4f8499bec2f03d64e9198636581c6f2d2ea225",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 131,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Proetale/Varianteeeabf53db81ec738db8b75e308ff892380ec38c59b20ddc7d1e4311ae781e09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b62c6724492f2f47882df897a073271685c75acdf7695c6159a2e8a61187f004",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Proetale/Varianteeeabf53db81ec738db8b75e308ff892380ec38c59b20ddc7d1e4311ae781e09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e70feb73bf7e3544089a704bf91fb1433d6d6a6929eecde7ebde895aa560146`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def forgetFullyFaithful : (ProEt.forget S).FullyFaithful :=
  MorphismProperty.Comma.forgetFullyFaithful _ _ _

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Proetale/Varianteeeabf53db81ec738db8b75e308ff892380ec38c59b20ddc7d1e4311ae781e09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Proetale/Varianteeeabf53db81ec738db8b75e308ff892380ec38c59b20ddc7d1e4311ae781e09.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e4f8499bec2f03d64e9198636581c6f2d2ea225` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
