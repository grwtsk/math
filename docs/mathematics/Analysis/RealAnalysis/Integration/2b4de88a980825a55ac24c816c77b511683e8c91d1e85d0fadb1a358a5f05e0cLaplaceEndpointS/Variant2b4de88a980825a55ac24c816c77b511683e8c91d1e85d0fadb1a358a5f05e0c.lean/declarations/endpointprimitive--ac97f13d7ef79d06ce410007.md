# endpointPrimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fc56182b3558010f06d13dffe05a1298a065b279cb4741531b5ce66bc9ba287",
  "kind": "def",
  "lexical_name": "endpointPrimitive",
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
  "slug": "endpointprimitive--ac97f13d7ef79d06ce410007",
  "source": {
    "blob": "ced4e152b9e61b4ec67b714d9bebc69575cdefce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 10,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac97f13d7ef79d06ce410007066139121c78e5890067b5550bbd5b1704eb39dc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fc56182b3558010f06d13dffe05a1298a065b279cb4741531b5ce66bc9ba287`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def endpointPrimitive (z w : ℂ) : ℂ :=
  (w ^ 8 - 4 * w ^ 6 + 6 * w ^ 4 - 4 * w ^ 2 + 1) / z -
    (8 * w ^ 7 - 24 * w ^ 5 + 24 * w ^ 3 - 8 * w) / z ^ 2 +
    (56 * w ^ 6 - 120 * w ^ 4 + 72 * w ^ 2 - 8) / z ^ 3 -
    (336 * w ^ 5 - 480 * w ^ 3 + 144 * w) / z ^ 4 +
    (1680 * w ^ 4 - 1440 * w ^ 2 + 144) / z ^ 5 -
    (6720 * w ^ 3 - 2880 * w) / z ^ 6 +
    (20160 * w ^ 2 - 2880) / z ^ 7 -
    40320 * w / z ^ 8 + 40320 / z ^ 9

set_option maxHeartbeats 800000 in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0cLaplaceEndpointS/Variant2b4de88a980825a55ac24c816c77b511683e8c91d1e85d0fadb1a358a5f05e0c.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ced4e152b9e61b4ec67b714d9bebc69575cdefce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
