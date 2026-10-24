# neg_sqrt_le_of_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cb3821e-cc0c-0dd5-d8eb-5b17517c74b1",
  "kind": "theorem",
  "lexical_name": "neg_sqrt_le_of_sq_le",
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
  "slug": "neg-sqrt-le-of-sq-le--a2bcaa7ff7a207370bd9faae",
  "source": {
    "blob": "5e5741fcbeff7a79b7ae15f9a854c5720367a66b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 263,
    "path": "GRWTSK/Topology/GeneralTopology/Sqrt/Variant84f62fd7aeb775db1aa2d413d0324d92656aea4a1a6be74ee361bd2955cbc0d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2bcaa7ff7a207370bd9faaeba15aa92ae3a21be97f246a2ffc1201814d23e4c",
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

Occurrence: `result:9cb3821e-cc0c-0dd5-d8eb-5b17517c74b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neg_sqrt_le_of_sq_le (h : x ^ 2 ≤ y) : -√y ≤ x :=
  ((sq_le ((sq_nonneg x).trans h)).mp h).1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sqrt/Variant84f62fd7aeb775db1aa2d413d0324d92656aea4a1a6be74ee361bd2955cbc0d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sqrt/Variant84f62fd7aeb775db1aa2d413d0324d92656aea4a1a6be74ee361bd2955cbc0d7.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e5741fcbeff7a79b7ae15f9a854c5720367a66b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
