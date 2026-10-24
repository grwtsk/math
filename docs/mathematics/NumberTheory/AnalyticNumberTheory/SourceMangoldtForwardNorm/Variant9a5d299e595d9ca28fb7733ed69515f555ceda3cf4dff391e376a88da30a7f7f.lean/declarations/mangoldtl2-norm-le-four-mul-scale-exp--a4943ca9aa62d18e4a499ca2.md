# mangoldtL2_norm_le_four_mul_scale_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6af69034-3314-8f08-9663-4fa1e275d51e",
  "kind": "theorem",
  "lexical_name": "mangoldtL2_norm_le_four_mul_scale_exp",
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
  "slug": "mangoldtl2-norm-le-four-mul-scale-exp--a4943ca9aa62d18e4a499ca2",
  "source": {
    "blob": "b46316f350d46272bec6c232c4be73afc8574c4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 166,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4943ca9aa62d18e4a499ca2360b9f8557e129f05a0eca765b483e809205b70e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6af69034-3314-8f08-9663-4fa1e275d51e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtL2_norm_le_four_mul_scale_exp (A : ℝ) (hA : 1 ≤ A) :
    ‖FormalResearch.RiemannHypothesis.SourceVaughanHankel.mangoldtL2 A hA‖ ≤
      4 * A * Real.exp A := by
  have hs : Real.sqrt (sourceKernelCutoff A : ℝ) ≤ Real.exp A := by
    calc
      _ ≤ Real.sqrt (Real.exp (2 * A)) :=
        Real.sqrt_le_sqrt (sourceKernelCutoff_le_exp A)
      _ = Real.exp A := by
        rw [← Real.exp_half]
        congr 1
        ring
  exact (mangoldtL2_norm_le_finite_sqrt_cutoff_diff A hA).trans
    (mul_le_mul_of_nonneg_left
      (by linarith [Real.sqrt_nonneg (vaughanCutoff A : ℝ)]) (by linarith))

end FormalResearch.RiemannHypothesis.SourceMangoldtForwardNorm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtForwardNorm/Variant9a5d299e595d9ca28fb7733ed69515f555ceda3cf4dff391e376a88da30a7f7f.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b46316f350d46272bec6c232c4be73afc8574c4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
