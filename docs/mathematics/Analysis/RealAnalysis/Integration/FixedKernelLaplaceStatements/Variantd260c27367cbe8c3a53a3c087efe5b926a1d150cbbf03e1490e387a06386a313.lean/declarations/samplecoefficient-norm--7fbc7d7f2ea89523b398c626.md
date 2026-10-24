# sampleCoefficient_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e40a0f6e6683d6ea96e1cf0923dd6b1d4b16021",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 868,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d260c27367cbe8c3a53a3c087efe5b926a1d150cbbf03e1490e387a06386a313.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b268bb52-f441-3878-9d8e-193e216d30d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49a2766c-ffbc-2eec-78f9-be421ef0b378",
  "kind": "theorem",
  "lexical_name": "sampleCoefficient_norm",
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
  "slug": "samplecoefficient-norm--7fbc7d7f2ea89523b398c626",
  "source": {
    "blob": "5e40a0f6e6683d6ea96e1cf0923dd6b1d4b16021",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 881,
    "line": 868,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceStatements/Variantd260c27367cbe8c3a53a3c087efe5b926a1d150cbbf03e1490e387a06386a313.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fbc7d7f2ea89523b398c6264215c950ebfa10bb6289e68620fda97884a430d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceStatements/Variantd260c27367cbe8c3a53a3c087efe5b926a1d150cbbf03e1490e387a06386a313.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49a2766c-ffbc-2eec-78f9-be421ef0b378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 868–881.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sampleCoefficient_norm (z : ℂ) (n : ℕ) :
    ‖sampleCoefficient z n‖ = Real.exp (-z.re) *
      (1 / (n + 1 : ℝ) ^ (z.re + 1 / 2)) := by
  rw [sampleCoefficient, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_pos (Real.exp_pos _), Complex.norm_exp]
  simp only [Complex.mul_re, Complex.neg_re, Complex.add_re, Complex.one_re,
    Complex.ofReal_re, Complex.neg_im, Complex.add_im, Complex.one_im,
    Complex.ofReal_im, add_zero, mul_zero, sub_zero]
  rw [Real.rpow_def_of_pos (by positivity : (0 : ℝ) < n + 1), one_div, ← Real.exp_neg,
    ← Real.exp_add, ← Real.exp_add]
  congr 1
  ring

/-- Summability of the L1 norms is proved before any infinite integral interchange. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceStatements/Variantd260c27367cbe8c3a53a3c087efe5b926a1d150cbbf03e1490e387a06386a313.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceStatements/Variantd260c27367cbe8c3a53a3c087efe5b926a1d150cbbf03e1490e387a06386a313.lean#L868).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e40a0f6e6683d6ea96e1cf0923dd6b1d4b16021` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
