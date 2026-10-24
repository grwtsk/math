# scaledBump_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e3e6a170a6f86f9b3da85b31abdabe0f596d6b7a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7cd75c752953647ca939bbd82ca741d9a74e3a461fcac0d1908f610ab042181d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2defbe9d-1fc9-c07f-4c33-339b8f713efe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ddd71a0-1419-6309-f875-0ce3dcfa810f",
  "kind": "theorem",
  "lexical_name": "scaledBump_integral",
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
  "slug": "scaledbump-integral--206bc9375acacc6b7085ddc9",
  "source": {
    "blob": "e3e6a170a6f86f9b3da85b31abdabe0f596d6b7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant7cd75c752953647ca939bbd82ca741d9a74e3a461fcac0d1908f610ab042181d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:206bc9375acacc6b7085ddc96f23405f228c4dc5bd607b8465e667a99e9c4a31",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant7cd75c752953647ca939bbd82ca741d9a74e3a461fcac0d1908f610ab042181d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ddd71a0-1419-6309-f875-0ce3dcfa810f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledBump_integral (A : ℝ) (hA : 0 < A) :
    (∫ x : ℝ, scaledBump A x) = Real.sqrt A * (256 / 315 : ℝ) := by
  simp only [scaledBump, integral_div]
  rw [Measure.integral_comp_div sourceBump A]
  rw [smul_eq_mul, abs_of_pos hA, sourceBump_integral]
  have hs : Real.sqrt A ≠ 0 := (Real.sqrt_pos.mpr hA).ne'
  apply (div_eq_iff hs).mpr
  nlinarith [Real.sq_sqrt hA.le]

/-- Zero frequency of the actual pole-annihilated, unit-normalized source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant7cd75c752953647ca939bbd82ca741d9a74e3a461fcac0d1908f610ab042181d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant7cd75c752953647ca939bbd82ca741d9a74e3a461fcac0d1908f610ab042181d.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3e6a170a6f86f9b3da85b31abdabe0f596d6b7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
