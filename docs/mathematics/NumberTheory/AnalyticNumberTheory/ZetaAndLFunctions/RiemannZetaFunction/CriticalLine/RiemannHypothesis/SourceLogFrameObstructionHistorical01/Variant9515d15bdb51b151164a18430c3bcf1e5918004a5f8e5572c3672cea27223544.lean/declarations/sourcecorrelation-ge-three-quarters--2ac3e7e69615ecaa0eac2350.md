# sourceCorrelation_ge_three_quarters

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3392a2a74e5d24b7a37ddc877ff19c91ac2a7cc3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/9515d15bdb51b151164a18430c3bcf1e5918004a5f8e5572c3672cea27223544.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd77507b-a132-ba4f-27e8-d1e351ecf5c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc86471a-b08a-a0fb-1dcc-d7f32023079a",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_ge_three_quarters",
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
  "slug": "sourcecorrelation-ge-three-quarters--2ac3e7e69615ecaa0eac2350",
  "source": {
    "blob": "3392a2a74e5d24b7a37ddc877ff19c91ac2a7cc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLogFrameObstructionHistorical01/Variant9515d15bdb51b151164a18430c3bcf1e5918004a5f8e5572c3672cea27223544.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ac3e7e69615ecaa0eac23500a8b40fa7dfa4916e202de83f01daeb9364055c8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLogFrameObstructionHistorical01/Variant9515d15bdb51b151164a18430c3bcf1e5918004a5f8e5572c3672cea27223544.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc86471a-b08a-a0fb-1dcc-d7f32023079a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_ge_three_quarters {A s : ℝ} (hA : 1 ≤ A)
    (hs : |s| ≤ A / 20) :
    (3 / 4 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A s := by
  have hpos : 0 < A := by linarith
  have hv := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (f := sourceCorrelation explicitSecondDerivative A)
    (fun x _ => (sourceCorrelation_contDiff A hpos).differentiable (by norm_num) x)
    (fun x _ => by simpa only [Real.norm_eq_abs] using
      sourceCorrelation_deriv_abs_le_five_div hA x)
    convex_univ (mem_univ 0) (mem_univ s)
  have hv' : |sourceCorrelation explicitSecondDerivative A s - 1| ≤ (5 / A) * |s| := by
    simpa only [Real.norm_eq_abs, sub_zero, sourceCorrelation_zero A hA] using hv
  have he : (5 / A) * |s| ≤ (1 / 4 : ℝ) := by
    have he' := mul_le_mul_of_nonneg_left hs (show 0 ≤ 5 / A by positivity)
    have hm : (5 / A) * (A / 20) = (1 / 4 : ℝ) := by field_simp; ring
    exact hm ▸ he'
  have h := (abs_le.mp (hv'.trans he)).1
  linarith

/-- Exact finite lower bound for the source's 1/sqrt(n) translation-frame test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLogFrameObstructionHistorical01/Variant9515d15bdb51b151164a18430c3bcf1e5918004a5f8e5572c3672cea27223544.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLogFrameObstructionHistorical01/Variant9515d15bdb51b151164a18430c3bcf1e5918004a5f8e5572c3672cea27223544.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3392a2a74e5d24b7a37ddc877ff19c91ac2a7cc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
