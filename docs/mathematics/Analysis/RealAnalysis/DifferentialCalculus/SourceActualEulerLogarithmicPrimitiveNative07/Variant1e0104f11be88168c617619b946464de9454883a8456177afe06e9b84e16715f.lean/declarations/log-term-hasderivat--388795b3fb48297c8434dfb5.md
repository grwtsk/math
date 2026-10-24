# log_term_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ab47fed-00dc-0a4e-c7d4-33021ff40f90",
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
  "slug": "log-term-hasderivat--388795b3fb48297c8434dfb5",
  "source": {
    "blob": "63165857c0e90b75e9b98ab03b94397e7c646562",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 38,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative07/Variant1e0104f11be88168c617619b946464de9454883a8456177afe06e9b84e16715f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:388795b3fb48297c8434dfb537b30bb0db72f0d1a8db8883a0e9101db46cc721",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative07/Variant1e0104f11be88168c617619b946464de9454883a8456177afe06e9b84e16715f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ab47fed-00dc-0a4e-c7d4-33021ff40f90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–63.

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
  dsimp only [Pi.neg_apply, id_eq]
  simp only [neg_one_mul]
  change -(↑(ArithmeticFunction.vonMangoldt n)*Complex.exp (-s*(Real.log n:ℂ))) =
    ((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ) *
      (Complex.exp (-s*(Real.log n:ℂ)) * (-(Real.log n:ℂ)))
  rw [mul_neg, mul_comm (Complex.exp _) (Real.log n:ℂ), mul_neg, ← mul_assoc, hv]

/-- Genuine derivative of the literal potential, with all closed actual coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative07/Variant1e0104f11be88168c617619b946464de9454883a8456177afe06e9b84e16715f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitiveNative07/Variant1e0104f11be88168c617619b946464de9454883a8456177afe06e9b84e16715f.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63165857c0e90b75e9b98ab03b94397e7c646562` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
