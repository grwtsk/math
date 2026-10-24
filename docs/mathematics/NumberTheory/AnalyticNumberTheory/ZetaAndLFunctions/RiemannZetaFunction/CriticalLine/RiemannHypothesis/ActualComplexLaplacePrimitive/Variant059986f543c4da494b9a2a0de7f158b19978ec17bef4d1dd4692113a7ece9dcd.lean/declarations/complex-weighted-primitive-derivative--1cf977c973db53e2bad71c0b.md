# complex_weighted_primitive_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbee8a5f-cebc-87fb-1e0f-885ed5b2432b",
  "kind": "theorem",
  "lexical_name": "complex_weighted_primitive_derivative",
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
  "slug": "complex-weighted-primitive-derivative--1cf977c973db53e2bad71c0b",
  "source": {
    "blob": "2c66250db9036f65d93fbb3e609e9401b2228c50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 151,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variant059986f543c4da494b9a2a0de7f158b19978ec17bef4d1dd4692113a7ece9dcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cf977c973db53e2bad71c0b9284e2804207d91c9eac82678349521001f3e37a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variant059986f543c4da494b9a2a0de7f158b19978ec17bef4d1dd4692113a7ece9dcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbee8a5f-cebc-87fb-1e0f-885ed5b2432b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_weighted_primitive_derivative {A : ℝ} (hA : 0 < A) {z : ℂ} (hz : z ≠ 0) (x : ℝ) :
    HasDerivAt (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) *
      complexPrimitivePolynomial A z x / (Real.sqrt A : ℂ))
      (Complex.exp (z * (x : ℂ)) * (bumpInterior A x : ℂ)) x := by
  have hd := ((((hasDerivAt_id x).ofReal_comp.const_mul z).cexp).mul
    (complex_primitive_polynomial_derivative A z x)).div_const (Real.sqrt A : ℂ)
  apply hd.congr_deriv
  dsimp only [id_eq, Complex.ofReal_one]
  have hb := complex_primitive_exact_balance hA hz x
  unfold bumpInterior
  push_cast
  calc
    _ = Complex.exp (z * (x : ℂ)) * (z * complexPrimitivePolynomial A z x +
        complexPrimitiveDerivative A z x) / (Real.sqrt A : ℂ) := by ring
    _ = Complex.exp (z * (x : ℂ)) * (((1 - (x / A) ^ 2) ^ 4 : ℝ) : ℂ) /
        (Real.sqrt A : ℂ) := by rw [hb]
    _ = _ := by push_cast; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variant059986f543c4da494b9a2a0de7f158b19978ec17bef4d1dd4692113a7ece9dcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexLaplacePrimitive/Variant059986f543c4da494b9a2a0de7f158b19978ec17bef4d1dd4692113a7ece9dcd.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c66250db9036f65d93fbb3e609e9401b2228c50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
