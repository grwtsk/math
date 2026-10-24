# explicit_tail_bounds_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "249ad25a1db6ffb5c88edb6013f3d2e6010a30e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/55d915af6f997b2220ec3d2711125491af750e06b2d4c97f09122e807bacffa7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7425d3c-ecd6-cf7e-6626-85670bbaede7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07812b2e-32dd-2d27-7274-0cea8c7b12d7",
  "kind": "theorem",
  "lexical_name": "explicit_tail_bounds_tendsto",
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
  "slug": "explicit-tail-bounds-tendsto--e7430116d4512cde3dcf0f1c",
  "source": {
    "blob": "249ad25a1db6ffb5c88edb6013f3d2e6010a30e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 73,
    "path": "GRWTSK/Topology/GeneralTopology/SourceTailScheduleStatements/Variant55d915af6f997b2220ec3d2711125491af750e06b2d4c97f09122e807bacffa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7430116d4512cde3dcf0f1c4e3b77e235ee76e2fb28b1a49e341ce2cea1c502",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceTailScheduleStatements/Variant55d915af6f997b2220ec3d2711125491af750e06b2d4c97f09122e807bacffa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07812b2e-32dd-2d27-7274-0cea8c7b12d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem explicit_tail_bounds_tendsto :
    Tendsto (fun X : ℕ => 1 / (4 * logScale X)) atTop (nhds 0) ∧
      Tendsto (fun X : ℕ => 3 / Real.sqrt (X : ℝ)) atTop (nhds 0) := by
  have hL : Tendsto logScale atTop atTop :=
    tendsto_const_nhds.add_atTop (Real.tendsto_log_atTop.comp tendsto_natCast_atTop_atTop)
  constructor
  · exact tendsto_const_nhds.div_atTop (hL.const_mul_atTop (by norm_num : (0 : ℝ) < 4))
  · exact tendsto_const_nhds.div_atTop
      (Real.tendsto_sqrt_atTop.comp tendsto_natCast_atTop_atTop)

/-- The actual complete endpoint tails vanish on this diagonal, without a core-estimate premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceTailScheduleStatements/Variant55d915af6f997b2220ec3d2711125491af750e06b2d4c97f09122e807bacffa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceTailScheduleStatements/Variant55d915af6f997b2220ec3d2711125491af750e06b2d4c97f09122e807bacffa7.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `249ad25a1db6ffb5c88edb6013f3d2e6010a30e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
