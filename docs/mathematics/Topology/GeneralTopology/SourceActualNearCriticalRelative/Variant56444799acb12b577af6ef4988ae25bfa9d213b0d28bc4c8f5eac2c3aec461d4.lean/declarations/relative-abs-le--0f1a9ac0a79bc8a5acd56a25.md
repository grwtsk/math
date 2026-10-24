# relative_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ba07f7a-f211-72a7-f33c-7eda55d863e1",
  "kind": "theorem",
  "lexical_name": "relative_abs_le",
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
  "slug": "relative-abs-le--0f1a9ac0a79bc8a5acd56a25",
  "source": {
    "blob": "fab75d56437e9957a11527e8a0fef662fd3f17b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant56444799acb12b577af6ef4988ae25bfa9d213b0d28bc4c8f5eac2c3aec461d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f1a9ac0a79bc8a5acd56a259f5c8b43925d93018984f5b13ac3aa6e08caa361",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant56444799acb12b577af6ef4988ae25bfa9d213b0d28bc4c8f5eac2c3aec461d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ba07f7a-f211-72a7-f33c-7eda55d863e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem relative_abs_le (t : ℝ) : |relativePsiError t| ≤ Real.log 4 + 3 := by
  have hb := actualRelativePsiError_elementary_bounds t
  have hl : 0 ≤ Real.log (4 : ℝ) := Real.log_nonneg (by norm_num)
  exact abs_le.mpr ⟨by linarith [hb.1], hb.2⟩

/-- The unchanged first and zeroth jets give a quadratic plus linear kernel error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant56444799acb12b577af6ef4988ae25bfa9d213b0d28bc4c8f5eac2c3aec461d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant56444799acb12b577af6ef4988ae25bfa9d213b0d28bc4c8f5eac2c3aec461d4.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fab75d56437e9957a11527e8a0fef662fd3f17b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
