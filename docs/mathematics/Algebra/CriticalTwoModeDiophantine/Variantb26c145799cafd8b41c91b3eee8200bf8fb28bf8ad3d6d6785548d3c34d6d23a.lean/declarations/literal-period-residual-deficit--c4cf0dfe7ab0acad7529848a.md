# literal_period_residual_deficit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb81889a-4d68-aeb5-fe45-db5ce3e423da",
  "kind": "theorem",
  "lexical_name": "literal_period_residual_deficit",
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
  "slug": "literal-period-residual-deficit--c4cf0dfe7ab0acad7529848a",
  "source": {
    "blob": "e87a93636cdf6a3cf4bfbae020aedd5c7167c9e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 95,
    "path": "GRWTSK/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4cf0dfe7ab0acad7529848a5cf1789240fa4cb51b9caaf7fe45da7e3f8ebbc2",
  "verification": {
    "reference": "docs/verification/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb81889a-4d68-aeb5-fe45-db5ce3e423da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_period_residual_deficit (t : ℝ) :
    (2 / Real.pi ^ 2) * periodResidual t ^ 2 ≤ 1 - Real.cos t := by
  have h := Real.cos_le_one_sub_mul_cos_sq (literal_period_residual_abs_le_pi t)
  rw [literal_period_residual_cos] at h
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CriticalTwoModeDiophantine/Variantb26c145799cafd8b41c91b3eee8200bf8fb28bf8ad3d6d6785548d3c34d6d23a.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e87a93636cdf6a3cf4bfbae020aedd5c7167c9e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
