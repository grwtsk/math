# sourceTailGap_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8e3047d-53bf-9488-6b9d-5d1c260f770a",
  "kind": "theorem",
  "lexical_name": "sourceTailGap_pos",
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
  "slug": "sourcetailgap-pos--097cb7da8b32d2f3502bbd9d",
  "source": {
    "blob": "898f813b169ca0b9f5e941663f48991749edd30b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 44,
    "path": "GRWTSK/Topology/GeneralTopology/ReducedFilterInverseAudit/Variant5ddcb589a84534b080adea3cf597a0e08893c720e6a178f0bd46537736e7df4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:097cb7da8b32d2f3502bbd9d2df0b8a517447d0c11414fa55558cf02ccb3ac2b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ReducedFilterInverseAudit/Variant5ddcb589a84534b080adea3cf597a0e08893c720e6a178f0bd46537736e7df4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8e3047d-53bf-9488-6b9d-5d1c260f770a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceTailGap_pos (ε : ℝ) (hε : 0 < ε) : 0 < 1 - Real.exp (-2 * ε) := by
  have he : Real.exp (-2 * ε) < 1 := Real.exp_lt_one_iff.mpr (by linarith)
  linarith

/-- Both exponential endpoints are retained in the explicit large-parameter lower bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ReducedFilterInverseAudit/Variant5ddcb589a84534b080adea3cf597a0e08893c720e6a178f0bd46537736e7df4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ReducedFilterInverseAudit/Variant5ddcb589a84534b080adea3cf597a0e08893c720e6a178f0bd46537736e7df4d.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `898f813b169ca0b9f5e941663f48991749edd30b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
