# T_pow_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98536703-5fe3-0369-62a7-0b01cafe4914",
  "kind": "theorem",
  "lexical_name": "T_pow_nonneg",
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
  "slug": "t-pow-nonneg--b692dc5e2d642414f2e5b926",
  "source": {
    "blob": "90c6fdf7d61becb56d034edaa6662af8f1e79f4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 151,
    "path": "GRWTSK/Topology/MetricTopology/Hensel/Variant87d1cb6b4a8b5470f0250541a1316c5b1dcb9d1165ae71e9bb0cd7bfd0a5d02a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b692dc5e2d642414f2e5b926a761824a50912462550e45948f8496c5c25e251e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hensel/Variant87d1cb6b4a8b5470f0250541a1316c5b1dcb9d1165ae71e9bb0cd7bfd0a5d02a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98536703-5fe3-0369-62a7-0b01cafe4914`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem T_pow_nonneg (n : ℕ) : 0 ≤ T ^ n := pow_nonneg T_nonneg _

variable (hnorm : ‖F.aeval a‖ < ‖F.derivative.aeval a‖ ^ 2)
include hnorm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hensel/Variant87d1cb6b4a8b5470f0250541a1316c5b1dcb9d1165ae71e9bb0cd7bfd0a5d02a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hensel/Variant87d1cb6b4a8b5470f0250541a1316c5b1dcb9d1165ae71e9bb0cd7bfd0a5d02a.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90c6fdf7d61becb56d034edaa6662af8f1e79f4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
