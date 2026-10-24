# controlledPivotThreshold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3bfc0811926a29398b2d4b7db1268ef5ac2fc5b031ee31b96b31810d2b26b73d",
  "kind": "def",
  "lexical_name": "controlledPivotThreshold",
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
  "slug": "controlledpivotthreshold--cd7765907bfa3787b1b14af2",
  "source": {
    "blob": "d0f0ba302aff47a11fd33db86e8caaba2364f70d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 166,
    "path": "GRWTSK/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd7765907bfa3787b1b14af25e79e3cf0e628bc763235a94be586c2e14e7ae0e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3bfc0811926a29398b2d4b7db1268ef5ac2fc5b031ee31b96b31810d2b26b73d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def controlledPivotThreshold (k n : ℕ) : ℝ :=
  (2 * Real.sqrt (n.choose k : ℝ))⁻¹

/-- Open controlled pivot domains on the actual matrix presentation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PivotBounds/Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0f0ba302aff47a11fd33db86e8caaba2364f70d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
