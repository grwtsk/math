# bound'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8980e0c6-d074-22f5-e5d0-4cc1d08d210c",
  "kind": "theorem",
  "lexical_name": "bound'",
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
  "slug": "bound--0c9e9ee488da6ecb09900d41",
  "source": {
    "blob": "90c6fdf7d61becb56d034edaa6662af8f1e79f4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 338,
    "path": "GRWTSK/Topology/MetricTopology/Hensel/Variant87d1cb6b4a8b5470f0250541a1316c5b1dcb9d1165ae71e9bb0cd7bfd0a5d02a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c9e9ee488da6ecb09900d4170a12d0419bb8f47199da35a77bc54eebc32d49c",
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

Occurrence: `result:8980e0c6-d074-22f5-e5d0-4cc1d08d210c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem bound' : Tendsto (fun n : ℕ => ‖F.derivative.aeval a‖ * T ^ 2 ^ n) atTop (𝓝 0) := by
  rw [← mul_zero ‖F.derivative.aeval a‖]
  exact
    tendsto_const_nhds.mul
      (Tendsto.comp (tendsto_pow_atTop_nhds_zero_of_lt_one (norm_nonneg _) (T_lt_one hnorm))
        (tendsto_pow_atTop_atTop_of_one_lt (by simp)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hensel/Variant87d1cb6b4a8b5470f0250541a1316c5b1dcb9d1165ae71e9bb0cd7bfd0a5d02a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hensel/Variant87d1cb6b4a8b5470f0250541a1316c5b1dcb9d1165ae71e9bb0cd7bfd0a5d02a.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90c6fdf7d61becb56d034edaa6662af8f1e79f4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
