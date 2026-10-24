# inner_exponential_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1bea733cf2111dfde32bfe4a33e26d41414c6b07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:81d6b460-fe13-5eb6-649b-eab36d108c50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:233c2571-f356-35f8-0300-4363a468d62b",
  "kind": "theorem",
  "lexical_name": "inner_exponential_integral",
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
  "slug": "inner-exponential-integral--f003dadffbb46506df4ebeab",
  "source": {
    "blob": "1bea733cf2111dfde32bfe4a33e26d41414c6b07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 78,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f003dadffbb46506df4ebeab6f88a498d1c2691586e1cb28061fd78d1d63ce78",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:233c2571-f356-35f8-0300-4363a468d62b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_exponential_integral (w z : ℂ) (hw : 0 < w.re) (hz : 0 < z.re) :
    (∫ t : ℝ, inner ℂ (exponentialFunction w t) (exponentialFunction z t)
      ∂halfLineMeasure) = 1 / (w + conj z) := by
  simp_rw [pointwise_inner_exponential]
  rw [halfLineMeasure, integral_exp_mul_complex_Ioi
    (a := -(w + conj z)) (by simp; linarith) 0]
  simp only [Complex.ofReal_zero, mul_zero, Complex.exp_zero, neg_div_neg_eq]

/-- Mathlib is conjugate-linear in the first argument, fixing the displayed conjugation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bea733cf2111dfde32bfe4a33e26d41414c6b07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
