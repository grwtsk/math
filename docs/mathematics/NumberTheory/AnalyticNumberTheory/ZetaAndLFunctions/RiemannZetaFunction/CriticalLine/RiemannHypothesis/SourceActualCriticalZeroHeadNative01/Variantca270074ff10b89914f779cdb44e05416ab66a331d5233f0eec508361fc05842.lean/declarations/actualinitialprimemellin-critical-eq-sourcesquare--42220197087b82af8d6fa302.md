# actualInitialPrimeMellin_critical_eq_sourceSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4d12746-f384-e93a-7265-febe090c7337",
  "kind": "theorem",
  "lexical_name": "actualInitialPrimeMellin_critical_eq_sourceSquare",
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
  "slug": "actualinitialprimemellin-critical-eq-sourcesquare--42220197087b82af8d6fa302",
  "source": {
    "blob": "a883ffef4bcce9a6583037d00b01511bc567d662",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalZeroHeadNative01/Variantca270074ff10b89914f779cdb44e05416ab66a331d5233f0eec508361fc05842.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42220197087b82af8d6fa3029f9ea2ac264ba4dae1c25c2611f5fe19bf12ab15",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalZeroHeadNative01/Variantca270074ff10b89914f779cdb44e05416ab66a331d5233f0eec508361fc05842.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4d12746-f384-e93a-7265-febe090c7337`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualInitialPrimeMellin_critical_eq_sourceSquare (A : ℝ) (s : ℂ)
    (hA : 1 ≤ A) (hs : s.re = 1 / 2) :
    actualInitialPrimeMellin A s =
      (Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) s.im) : ℂ) := by
  have he : s = (1 / 2 : ℂ) + (s.im : ℂ) * Complex.I := by
    apply Complex.ext
    · simpa only [Complex.add_re, Complex.div_re, Complex.ofNat_re, Complex.ofNat_im,
        mul_zero, add_zero, zero_add, zero_mul, Complex.mul_re, Complex.I_re,
        Complex.I_im, Complex.ofReal_re, Complex.ofReal_im] using hs
    · simp
  rw [he, actualInitialPrimeMellin_on_half]
  simpa only [Complex.add_im, Complex.div_im, Complex.ofNat_re, Complex.ofNat_im,
    zero_mul, zero_sub, zero_div, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
    Complex.I_re, Complex.I_im, mul_one, mul_zero, add_zero, zero_add] using
    actualCorrelation_paperFT_eq_sourceSquare A s.im hA

/-- Each literal actual critical zero weight is real and nonnegative, retaining zeroMult. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalZeroHeadNative01/Variantca270074ff10b89914f779cdb44e05416ab66a331d5233f0eec508361fc05842.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCriticalZeroHeadNative01/Variantca270074ff10b89914f779cdb44e05416ab66a331d5233f0eec508361fc05842.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a883ffef4bcce9a6583037d00b01511bc567d662` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
