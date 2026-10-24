# source_exponential_difference_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4dda9a0ec04c99880b1a341b8b50841046510c94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 11,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d39c3ab45398b1f0ebf746be05245590c40d7977e89554da8565abc2aa5fd2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef8a6c6b-7114-aa00-8fcf-84bd8ac84b61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3dd5936-d86d-9505-f6fb-cbb77ffa299f",
  "kind": "theorem",
  "lexical_name": "source_exponential_difference_pos",
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
  "slug": "source-exponential-difference-pos--9791a2ec8c106c5160cf197d",
  "source": {
    "blob": "4dda9a0ec04c99880b1a341b8b50841046510c94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22,
    "line": 11,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneAudit/Variant4d39c3ab45398b1f0ebf746be05245590c40d7977e89554da8565abc2aa5fd2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9791a2ec8c106c5160cf197d1406daaba87a253964e1861e474601ac6c743444",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneAudit/Variant4d39c3ab45398b1f0ebf746be05245590c40d7977e89554da8565abc2aa5fd2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3dd5936-d86d-9505-f6fb-cbb77ffa299f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–22.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_exponential_difference_pos :
    0 < 36 * Real.exp 1 - 266 * Real.exp (-1) := by
  have he := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 2) 12
  norm_num [Finset.sum_range_succ, Nat.factorial] at he
  have he' : (266 : ℝ) < 36 * Real.exp 2 := by linarith
  have hp : 0 < Real.exp (-1 : ℝ) := Real.exp_pos _
  have hx : Real.exp (1 : ℝ) = Real.exp 2 * Real.exp (-1) := by
    rw [← Real.exp_add]
    norm_num
  rw [hx]
  nlinarith [mul_pos (sub_pos.mpr he') hp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneAudit/Variant4d39c3ab45398b1f0ebf746be05245590c40d7977e89554da8565abc2aa5fd2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneAudit/Variant4d39c3ab45398b1f0ebf746be05245590c40d7977e89554da8565abc2aa5fd2d.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dda9a0ec04c99880b1a341b8b50841046510c94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
