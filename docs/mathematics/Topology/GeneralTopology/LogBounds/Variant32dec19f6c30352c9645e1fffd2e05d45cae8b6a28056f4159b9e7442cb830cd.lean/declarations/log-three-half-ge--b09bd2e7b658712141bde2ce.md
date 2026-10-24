# log_three_half_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c80d3a2-70f4-b875-5367-0796ba0c165f",
  "kind": "theorem",
  "lexical_name": "log_three_half_ge",
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
  "slug": "log-three-half-ge--b09bd2e7b658712141bde2ce",
  "source": {
    "blob": "e23fcf52bff736a11cb9f88cef61f370d9e54480",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 217,
    "path": "GRWTSK/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b09bd2e7b658712141bde2cedc6e7a01a4e141a8296ffe3040316da08bacb08d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c80d3a2-70f4-b875-5367-0796ba0c165f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_three_half_ge : 2/5 ≤ log (3/2) := by
  have h := le_log_one_add_of_nonneg (by norm_num : (0:ℝ) ≤ 1/2)
  have heq : (1:ℝ) + 1/2 = 3/2 := by norm_num
  rw [heq] at h
  convert h using 1
  norm_num

/-- log(3/2) > 2/5. Strict version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e23fcf52bff736a11cb9f88cef61f370d9e54480` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
