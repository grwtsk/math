# boundary_riesz_transform_point_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e579fe1b69800370ae7f17566b6be3c3c385eaa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:430b1aa3-50dd-0385-723b-39197ea3a355",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4d9e919-3e11-cc4f-e2be-c83245b7b629",
  "kind": "theorem",
  "lexical_name": "boundary_riesz_transform_point_norm_le",
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
  "slug": "boundary-riesz-transform-point-norm-le--71df94bf337fb9c8c3ac91ae",
  "source": {
    "blob": "3e579fe1b69800370ae7f17566b6be3c3c385eaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 89,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71df94bf337fb9c8c3ac91ae088b1f6da57866b9ec6afe0ccbc9c3d3426dcc9d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4d9e919-3e11-cc4f-e2be-c83245b7b629`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_riesz_transform_point_norm_le (A : ℝ) (hA : 1 ≤ A) (s : ℂ) :
    ‖boundaryRieszTransform A s‖ ≤ rieszPointMajorant s := by
  have hZ := source_normalization_lower_bound A
  have hZp : 0 < sourceNormalization A := by linarith
  have hf : ‖(s ^ 2 - (1 / 4 : ℂ)) ^ 2 / (sourceNormalization A : ℂ)‖ ≤
      ‖s ^ 2 - (1 / 4 : ℂ)‖ ^ 2 / (4096 / 109395 : ℝ) := by
    rw [norm_div, norm_pow, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hZp]
    exact div_le_div_of_nonneg_left (by positivity) (by norm_num) hZ
  unfold boundaryRieszTransform rieszPointMajorant
  rw [norm_mul]
  apply mul_le_mul hf ?_ (norm_nonneg _) (by positivity)
  exact (norm_sum_le _ _).trans
    (Finset.sum_le_sum fun j _ ↦ riesz_monomial_point_norm_le A hA s j)

/-- Sixth-order decay is expressed in the native shell-summability coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e579fe1b69800370ae7f17566b6be3c3c385eaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
