# actualCriticalNinthEdgePolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18d4ad3bf0a6baa79ff0e51d4c1f2f1b0e4d130cd704b243167d3f29bd824f3a",
  "kind": "def",
  "lexical_name": "actualCriticalNinthEdgePolynomial",
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
  "slug": "actualcriticalninthedgepolynomial--e51baa4fe3181ec27225c2bc",
  "source": {
    "blob": "824c158caab73b8086a42954d41ec9e4fa16abe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt01/Variant1ab439323067ec991917959c826ae6fd609856ecb4a0454bdbef7fc5c21d8a54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e51baa4fe3181ec27225c2bccdbbfd519272162c2731b64c81b686a0cf3bc5ea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt01/Variant1ab439323067ec991917959c826ae6fd609856ecb4a0454bdbef7fc5c21d8a54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18d4ad3bf0a6baa79ff0e51d4c1f2f1b0e4d130cd704b243167d3f29bd824f3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualCriticalNinthEdgePolynomial (h : ℝ) : ℝ :=
  3932160 * h ^ 4 + 294912 * h ^ 5 + 131072 * h ^ 6 +
    12288 * h ^ 7 + 1024 * h ^ 8 + 128 * h ^ 9

/-- Both actual jets retain the genuine A^-9 finite-overlap normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt01/Variant1ab439323067ec991917959c826ae6fd609856ecb4a0454bdbef7fc5c21d8a54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt01/Variant1ab439323067ec991917959c826ae6fd609856ecb4a0454bdbef7fc5c21d8a54.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `824c158caab73b8086a42954d41ec9e4fa16abe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
