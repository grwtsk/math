# complex_primitive_polynomial_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e7e5995-2f67-f943-f6c3-0b1ef05bcbc3",
  "kind": "theorem",
  "lexical_name": "complex_primitive_polynomial_derivative",
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
  "slug": "complex-primitive-polynomial-derivative--987c01425dc441741181adf3",
  "source": {
    "blob": "7be58b36f8c061f1491e2493e95b60f8afcbd9a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variantd4066ac0662f3019c29cfc7b7c89faf8d7018ff0053d9b0b404aca74174476f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:987c01425dc441741181adf3e522ac168ca811fd1d396f5de5157eebf020e18e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variantd4066ac0662f3019c29cfc7b7c89faf8d7018ff0053d9b0b404aca74174476f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e7e5995-2f67-f943-f6c3-0b1ef05bcbc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_primitive_polynomial_derivative (A : ℝ) (z : ℂ) (x : ℝ) :
    HasDerivAt (complexPrimitivePolynomial A z) (complexPrimitiveDerivative A z x) x := by
  have h1 : HasDerivAt (fun x : ℝ ↦ ((8 / ((A : ℂ) ^ 2 * z ^ 2)) + (-144 / ((A : ℂ) ^ 4 * z ^ 4)) + (2880 / ((A : ℂ) ^ 6 * z ^ 6)) + (-40320 / ((A : ℂ) ^ 8 * z ^ 8))) * (x : ℂ) ^ 1)
      (((8 / ((A : ℂ) ^ 2 * z ^ 2)) + (-144 / ((A : ℂ) ^ 4 * z ^ 4)) + (2880 / ((A : ℂ) ^ 6 * z ^ 6)) + (-40320 / ((A : ℂ) ^ 8 * z ^ 8))) * 1 * (x : ℂ) ^ 0) x := by
    apply ((((hasDerivAt_id x).ofReal_comp).pow 1).const_mul ((8 / ((A : ℂ) ^ 2 * z ^ 2)) + (-144 / ((A : ℂ) ^ 4 * z ^ 4)) + (2880 / ((A : ℂ) ^ 6 * z ^ 6)) + (-40320 / ((A : ℂ) ^ 8 * z ^ 8)))).congr_deriv
    dsimp only [id_eq, Complex.ofReal_one]
    ring
  have h2 : HasDerivAt (fun x : ℝ ↦ ((-4 / ((A : ℂ) ^ 2 * z ^ 1)) + (72 / ((A : ℂ) ^ 4 * z ^ 3)) + (-1440 / ((A : ℂ) ^ 6 * z ^ 5)) + (20160 / ((A : ℂ) ^ 8 * z ^ 7))) * (x : ℂ) ^ 2)
      (((-4 / ((A : ℂ) ^ 2 * z ^ 1)) + (72 / ((A : ℂ) ^ 4 * z ^ 3)) + (-1440 / ((A : ℂ) ^ 6 * z ^ 5)) + (20160 / ((A : ℂ) ^ 8 * z ^ 7))) * 2 * (x : ℂ) ^ 1) x := by
    apply ((((hasDerivAt_id x).ofReal_comp).pow 2).const_mul ((-4 / ((A : ℂ) ^ 2 * z ^ 1)) + (72 / ((A : ℂ) ^ 4 * z ^ 3)) + (-1440 / ((A : ℂ) ^ 6 * z ^ 5)) + (20160 / ((A : ℂ) ^ 8 * z ^ 7)))).congr_deriv
    dsimp only [id_eq, Complex.ofReal_one]
    ring
  have h3 : HasDerivAt (fun x : ℝ ↦ ((-24 / ((A : ℂ) ^ 4 * z ^ 2)) + (480 / ((A : ℂ) ^ 6 * z ^ 4)) + (-6720 / ((A : ℂ) ^ 8 * z ^ 6))) * (x : ℂ) ^ 3)
      (((-24 / ((A : ℂ) ^ 4 * z ^ 2)) + (480 / ((A : ℂ) ^ 6 * z ^ 4)) + (-6720 / ((A : ℂ) ^ 8 * z ^ 6))) * 3 * (x : ℂ) ^ 2) x := by
    apply ((((hasDerivAt_id x).ofReal_comp).pow 3).const_mul ((-24 / ((A : ℂ) ^ 4 * z ^ 2)) + (480 / ((A : ℂ) ^ 6 * z ^ 4)) + (-6720 / ((A : ℂ) ^ 8 * z ^ 6)))).congr_deriv
    dsimp only [id_eq, Complex.ofReal_one]
    ring
  have h4 : HasDerivAt (fun x : ℝ ↦ ((6 / ((A : ℂ) ^ 4 * z ^ 1)) + (-120 / ((A : ℂ) ^ 6 * z ^ 3)) + (1680 / ((A : ℂ) ^ 8 * z ^ 5))) * (x : ℂ) ^ 4)
      (((6 / ((A : ℂ) ^ 4 * z ^ 1)) + (-120 / ((A : ℂ) ^ 6 * z ^ 3)) + (1680 / ((A : ℂ) ^ 8 * z ^ 5))) * 4 * (x : ℂ) ^ 3) x := by
    apply ((((hasDerivAt_id x).ofReal_comp).pow 4).const_mul ((6 / ((A : ℂ) ^ 4 * z ^ 1)) + (-120 / ((A : ℂ) ^ 6 * z ^ 3)) + (1680 / ((A : ℂ) ^ 8 * z ^ 5)))).congr_deriv
    dsimp only [id_eq, Complex.ofReal_one]
    ring
  have h5 : HasDerivAt (fun x : ℝ ↦ ((24 / ((A : ℂ) ^ 6 * z ^ 2)) + (-336 / ((A : ℂ) ^ 8 * z ^ 4))) * (x : ℂ) ^ 5)
      (((24 / ((A : ℂ) ^ 6 * z ^ 2)) + (-336 / ((A : ℂ) ^ 8 * z ^ 4))) * 5 * (x : ℂ) ^ 4) x := by
    apply ((((hasDerivAt_id x).ofReal_comp).pow 5).const_mul ((24 / ((A : ℂ) ^ 6 * z ^ 2)) + (-336 / ((A : ℂ) ^ 8 * z ^ 4)))).congr_deriv
    dsimp only [id_eq, Complex.ofReal_one]
    ring
  have h6 : HasDerivAt (fun x : ℝ ↦ ((-4 / ((A : ℂ) ^ 6 * z ^ 1)) + (56 / ((A : ℂ) ^ 8 * z ^ 3))) * (x : ℂ) ^ 6)
      (((-4 / ((A : ℂ) ^ 6 * z ^ 1)) + (56 / ((A : ℂ) ^ 8 * z ^ 3))) * 6 * (x : ℂ) ^ 5) x := by
    apply ((((hasDerivAt_id x).ofReal_comp).pow 6).const_mul ((-4 / ((A : ℂ) ^ 6 * z ^ 1)) + (56 / ((A : ℂ) ^ 8 * z ^ 3)))).congr_deriv
    dsimp only [id_eq, Complex.ofReal_one]
    ring
  have h7 : HasDerivAt (fun x : ℝ ↦ ((-8 / ((A : ℂ) ^ 8 * z ^ 2))) * (x : ℂ) ^ 7)
      (((-8 / ((A : ℂ) ^ 8 * z ^ 2))) * 7 * (x : ℂ) ^ 6) x := by
    apply ((((hasDerivAt_id x).ofReal_comp).pow 7).const_mul ((-8 / ((A : ℂ) ^ 8 * z ^ 2)))).congr_deriv
    dsimp only [id_eq, Complex.ofReal_one]
    ring
  have h8 : HasDerivAt (fun x : ℝ ↦ ((1 / ((A : ℂ) ^ 8 * z ^ 1))) * (x : ℂ) ^ 8)
      (((1 / ((A : ℂ) ^ 8 * z ^ 1))) * 8 * (x : ℂ) ^ 7) x := by
    apply ((((hasDerivAt_id x).ofReal_comp).pow 8).const_mul ((1 / ((A : ℂ) ^ 8 * z ^ 1)))).congr_deriv
    dsimp only [id_eq, Complex.ofReal_one]
    ring
  convert (((((((((hasDerivAt_const x ((1 / ((A : ℂ) ^ 0 * z ^ 1)) + (-8 / ((A : ℂ) ^ 2 * z ^ 3)) + (144 / ((A : ℂ) ^ 4 * z ^ 5)) + (-2880 / ((A : ℂ) ^ 6 * z ^ 7)) + (40320 / ((A : ℂ) ^ 8 * z ^ 9)))).add h1).add h2).add h3).add h4).add h5).add h6).add h7).add h8) using 1 <;> try rfl
  unfold complexPrimitiveDerivative
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variantd4066ac0662f3019c29cfc7b7c89faf8d7018ff0053d9b0b404aca74174476f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variantd4066ac0662f3019c29cfc7b7c89faf8d7018ff0053d9b0b404aca74174476f6.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7be58b36f8c061f1491e2493e95b60f8afcbd9a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
