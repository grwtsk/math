# endpointProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c67d2ab4831b40b3005fbc9d992d774c8a97aa0f2e32ec9dba7ed0a2f0f232da",
  "kind": "def",
  "lexical_name": "endpointProfile",
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
  "slug": "endpointprofile--a774f378af70114cf3fb2066",
  "source": {
    "blob": "16b3805780058e092c38a1e1df68699299f06bbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 10,
    "line": 9,
    "path": "GRWTSK/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a774f378af70114cf3fb2066a54e7fe999dc05b4dc8ef3e8d9751bbc4c90de03",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c67d2ab4831b40b3005fbc9d992d774c8a97aa0f2e32ec9dba7ed0a2f0f232da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–10.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def endpointProfile (w : ℂ) : ℂ := 1 - 10 * w + 45 * w ^ 2 - 105 * w ^ 3 + 105 * w ^ 4

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53cLaplaceEndpointL/Variant1a1e1989c4639d46597e78b5e09144af339cfaaf9cbd1dd0e2d59bb612dbc53c.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16b3805780058e092c38a1e1df68699299f06bbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
