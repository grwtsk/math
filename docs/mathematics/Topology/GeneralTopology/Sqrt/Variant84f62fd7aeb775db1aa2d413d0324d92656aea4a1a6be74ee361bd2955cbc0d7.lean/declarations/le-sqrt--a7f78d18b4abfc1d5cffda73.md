# le_sqrt'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3968540-d754-a0cd-a834-4cf3b47e4f89",
  "kind": "theorem",
  "lexical_name": "le_sqrt'",
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
  "slug": "le-sqrt--a7f78d18b4abfc1d5cffda73",
  "source": {
    "blob": "5e5741fcbeff7a79b7ae15f9a854c5720367a66b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 251,
    "path": "GRWTSK/Topology/GeneralTopology/Sqrt/Variant84f62fd7aeb775db1aa2d413d0324d92656aea4a1a6be74ee361bd2955cbc0d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7f78d18b4abfc1d5cffda730be60df0cadc23a563b415e502f8f08d5bc70079",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sqrt/Variant84f62fd7aeb775db1aa2d413d0324d92656aea4a1a6be74ee361bd2955cbc0d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3968540-d754-a0cd-a834-4cf3b47e4f89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_sqrt' (hx : 0 < x) : x ≤ √y ↔ x ^ 2 ≤ y :=
  le_iff_le_iff_lt_iff_lt.2 <| sqrt_lt' hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sqrt/Variant84f62fd7aeb775db1aa2d413d0324d92656aea4a1a6be74ee361bd2955cbc0d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sqrt/Variant84f62fd7aeb775db1aa2d413d0324d92656aea4a1a6be74ee361bd2955cbc0d7.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e5741fcbeff7a79b7ae15f9a854c5720367a66b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
