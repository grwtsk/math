# relative_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bfa8aea-60e7-c7a8-438a-3c8e30a3cc30",
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
  "slug": "relative-abs-le--0db5378fab1a72a79ebb9c58",
  "source": {
    "blob": "bf239ee13b35a3e41e4dd07ad000533458bb2d1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 52,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Varianta94fd667a6ad2dd40aefb7abe88096546f4f2170268fd29ed9ba040a82317f6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0db5378fab1a72a79ebb9c580f9ff5508c781333b9ba76051e6d13f763c578c0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Varianta94fd667a6ad2dd40aefb7abe88096546f4f2170268fd29ed9ba040a82317f6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bfa8aea-60e7-c7a8-438a-3c8e30a3cc30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–57.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Varianta94fd667a6ad2dd40aefb7abe88096546f4f2170268fd29ed9ba040a82317f6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Varianta94fd667a6ad2dd40aefb7abe88096546f4f2170268fd29ed9ba040a82317f6c.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf239ee13b35a3e41e4dd07ad000533458bb2d1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
