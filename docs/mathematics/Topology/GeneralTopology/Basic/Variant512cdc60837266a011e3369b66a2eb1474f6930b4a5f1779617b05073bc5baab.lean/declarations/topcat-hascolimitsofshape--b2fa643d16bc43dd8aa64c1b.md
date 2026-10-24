# topCat_hasColimitsOfShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78e33d3466ffa4dbdbe500bef2948c4830f725c6a9c50c13787f894674ba7549",
  "kind": "instance",
  "lexical_name": "topCat_hasColimitsOfShape",
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
  "slug": "topcat-hascolimitsofshape--b2fa643d16bc43dd8aa64c1b",
  "source": {
    "blob": "9e721834b029909e2d9c079905dff8d79a550158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 314,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2fa643d16bc43dd8aa64c1b9d2e1980ac875b784c30e7771338674ec4e8349e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78e33d3466ffa4dbdbe500bef2948c4830f725c6a9c50c13787f894674ba7549`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance topCat_hasColimitsOfShape (J : Type v) [Category* J] [Small.{u} J] :
    HasColimitsOfShape J TopCat.{u} where
  has_colimit := fun F => by
    rw [hasColimit_iff_small_colimitType]
    infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant512cdc60837266a011e3369b66a2eb1474f6930b4a5f1779617b05073bc5baab.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e721834b029909e2d9c079905dff8d79a550158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
