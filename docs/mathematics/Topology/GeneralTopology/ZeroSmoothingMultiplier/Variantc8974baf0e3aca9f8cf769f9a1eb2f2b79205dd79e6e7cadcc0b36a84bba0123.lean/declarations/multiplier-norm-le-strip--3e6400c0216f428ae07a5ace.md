# multiplier_norm_le_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23c8828101129b914c14844478fb12b20888fecf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:effbd3df-5cd9-ffa9-59a5-1da7eed1ab75",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15be4d92-ec58-ae40-59c7-ebf652300162",
  "kind": "theorem",
  "lexical_name": "multiplier_norm_le_strip",
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
  "slug": "multiplier-norm-le-strip--3e6400c0216f428ae07a5ace",
  "source": {
    "blob": "23c8828101129b914c14844478fb12b20888fecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 82,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e6400c0216f428ae07a5ace60da673c5780ff7f750b08eab53054d83327ebdc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15be4d92-ec58-ae40-59c7-ebf652300162`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplier_norm_le_strip (ε : ℝ) (hε : 0 < ε) (z : ℂ)
    (hz : |z.re| ≤ 1 / 2) : ‖multiplier ε hε z‖ ≤ Real.exp (ε / 2) := by
  refine (multiplier_norm_le ε hε z).trans (Real.exp_le_exp.mpr ?_)
  calc
    ε * |z.re| ≤ ε * (1 / 2) := mul_le_mul_of_nonneg_left hz hε.le
    _ = ε / 2 := by ring

/-- Every original zero occurrence satisfies the bound by its strip predicate alone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroSmoothingMultiplier/Variantc8974baf0e3aca9f8cf769f9a1eb2f2b79205dd79e6e7cadcc0b36a84bba0123.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23c8828101129b914c14844478fb12b20888fecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
