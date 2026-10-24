# sampleCoefficient_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35613a5c-8cae-f1af-5ec5-15401b76912b",
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
  "slug": "samplecoefficient-norm--91d3472ea1e7ee43571e8bba",
  "source": {
    "blob": "6425894aa0fa0145ce012e28eeab799803be2b7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 889,
    "line": 876,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceStatements/Variantb2afe2a4cad7e7473dc712ea0802ef6979059dcb3c98ad049625c9b9bba3c45f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91d3472ea1e7ee43571e8bba461ff32237095299c9d75f41c94dce8c981f2d51",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceStatements/Variantb2afe2a4cad7e7473dc712ea0802ef6979059dcb3c98ad049625c9b9bba3c45f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35613a5c-8cae-f1af-5ec5-15401b76912b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 876–889.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelLaplaceStatements/Variantb2afe2a4cad7e7473dc712ea0802ef6979059dcb3c98ad049625c9b9bba3c45f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplaceStatements/Variantb2afe2a4cad7e7473dc712ea0802ef6979059dcb3c98ad049625c9b9bba3c45f.lean#L876).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6425894aa0fa0145ce012e28eeab799803be2b7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
