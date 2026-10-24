# actualMangoldtErrorDifferenceKernel_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fe09883-3281-3501-27c4-4ee0d4fbaff6",
  "kind": "theorem",
  "lexical_name": "actualMangoldtErrorDifferenceKernel_mass",
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
  "slug": "actualmangoldterrordifferencekernel-mass--dded3797711d76cc274a13b7",
  "source": {
    "blob": "eb78ced6f19ed7f76b4408cd0306d8351510de53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolutionKernel/Variant0db61f24c2da1d01b833b73d01a699c5bc7c13dfef557f6287d67e27a4f43874.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dded3797711d76cc274a13b7544aa736d3b280e7bf9183f2b8edeaf19bc1271f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolutionKernel/Variant0db61f24c2da1d01b833b73d01a699c5bc7c13dfef557f6287d67e27a4f43874.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fe09883-3281-3501-27c4-4ee0d4fbaff6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMangoldtErrorDifferenceKernel_mass (t : ℝ) :
    (∫ r in 0..t, actualMangoldtErrorDifferenceKernel r t) =
      (1 - Real.exp (-t / 2)) ^ 2 := by
  have hd (r : ℝ) : HasDerivAt
      (fun r : ℝ => 2 * Real.exp ((r - t) / 2) - Real.exp (r - t))
        (actualMangoldtErrorDifferenceKernel r t) r := by
    have h := ((((hasDerivAt_id r).sub_const t).div_const 2).exp.const_mul 2).sub
      ((hasDerivAt_id r).sub_const t).exp
    exact h.congr_deriv (by unfold actualMangoldtErrorDifferenceKernel; dsimp only [id_eq]; ring)
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ => hd r)
    (actualMangoldtErrorDifferenceKernel_intervalIntegrable t)]
  simp only [sub_self, zero_div, Real.exp_zero, mul_one, zero_sub]
  have he : Real.exp (-t / 2) ^ 2 = Real.exp (-t) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  nlinarith [he]

/-- Genuine finite L1 permits subtracting the two actual convolution integrals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolutionKernel/Variant0db61f24c2da1d01b833b73d01a699c5bc7c13dfef557f6287d67e27a4f43874.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolutionKernel/Variant0db61f24c2da1d01b833b73d01a699c5bc7c13dfef557f6287d67e27a4f43874.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb78ced6f19ed7f76b4408cd0306d8351510de53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
