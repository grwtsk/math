# log_term_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:991a4168-ac47-1db3-bdb9-a1aa154ea6e1",
  "kind": "theorem",
  "lexical_name": "log_term_hasDerivAt",
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
  "slug": "log-term-hasderivat--cfd63e097c85b2047974e52d",
  "source": {
    "blob": "f511a1f3eb4e8e197277a4accdcda8ad4ff04e48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative04/Variantfd0f48e4f78291f08a3d53446ec741005464ae89e8fa1e7bca8e03a75ae35855.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfd63e097c85b2047974e52d2998ea44902f690ecf9549133bc5b2e0fee45860",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative04/Variantfd0f48e4f78291f08a3d53446ec741005464ae89e8fa1e7bca8e03a75ae35855.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:991a4168-ac47-1db3-bdb9-a1aa154ea6e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem log_term_hasDerivAt (n : ℕ) (s : ℂ) :
    HasDerivAt (fun z : ℂ =>
      ((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ) *
        Complex.exp (-z*(Real.log n:ℂ)))
      (-LSeries.term actualMangoldtCoefficients s n) s := by
  have h := (((hasDerivAt_id s).neg.mul_const (Real.log n:ℂ)).cexp).const_mul
    ((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ)
  convert! h using 1
  rcases eq_or_ne n 0 with rfl | hn0
  · simp
  rcases eq_or_ne n 1 with rfl | hn1
  · simp [actualMangoldtCoefficients]
  have hn2 : 2 ≤ n := by omega
  have hl : Real.log (n:ℝ) ≠ 0 := (Real.log_pos (by exact_mod_cast hn2)).ne'
  have hv : ((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ) *
      (Real.log n:ℂ) = (ArithmeticFunction.vonMangoldt n:ℂ) := by
    rw [← Complex.ofReal_mul, div_mul_cancel₀ _ hl]
  rw [term_eq_exp]
  change -(↑(ArithmeticFunction.vonMangoldt n)*Complex.exp (-s*(Real.log n:ℂ))) =
    ((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ) *
      (Complex.exp (-s*(Real.log n:ℂ)) * (-(Real.log n:ℂ)))
  rw [mul_neg, mul_comm (Complex.exp _) (Real.log n:ℂ), ← mul_assoc, hv]

/-- Genuine derivative of the literal potential, with all closed actual coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative04/Variantfd0f48e4f78291f08a3d53446ec741005464ae89e8fa1e7bca8e03a75ae35855.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative04/Variantfd0f48e4f78291f08a3d53446ec741005464ae89e8fa1e7bca8e03a75ae35855.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f511a1f3eb4e8e197277a4accdcda8ad4ff04e48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
