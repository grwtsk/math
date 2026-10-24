# exact_sixth_primitive_polynomial_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21ac0c9f-4fe6-c6b0-ec1f-2d52e53a3205",
  "kind": "theorem",
  "lexical_name": "exact_sixth_primitive_polynomial_derivative",
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
  "slug": "exact-sixth-primitive-polynomial-derivative--3fc83f8f29e489ed0664c17f",
  "source": {
    "blob": "ed5c76aabffe6fa31ecea7238339324228b15855",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplacePrimitive/Variant0dd089fd1c98964af40ab7a751d18e8a13c90b5b4cfcc75752ba58df510cc9d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fc83f8f29e489ed0664c17fd32422932235baeb590fede3dd8a605154e18378",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplacePrimitive/Variant0dd089fd1c98964af40ab7a751d18e8a13c90b5b4cfcc75752ba58df510cc9d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21ac0c9f-4fe6-c6b0-ec1f-2d52e53a3205`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_sixth_primitive_polynomial_derivative (A x : ℝ) :
    HasDerivAt (sixthPrimitivePolynomial A) (sixthPrimitiveDerivative A x) x := by
  have h1 : HasDerivAt (fun x : ℝ ↦ ((288 / A ^ 2) + (-186624 / A ^ 4) + (134369280 / A ^ 6) + (-67722117120 / A ^ 8)) * x ^ 1)
      (((288 / A ^ 2) + (-186624 / A ^ 4) + (134369280 / A ^ 6) + (-67722117120 / A ^ 8)) * 1 * x ^ 0) x := by
    apply (((hasDerivAt_id x).pow 1).const_mul ((288 / A ^ 2) + (-186624 / A ^ 4) + (134369280 / A ^ 6) + (-67722117120 / A ^ 8))).congr_deriv
    dsimp only [id_eq]
    ring
  have h2 : HasDerivAt (fun x : ℝ ↦ ((-24 / A ^ 2) + (15552 / A ^ 4) + (-11197440 / A ^ 6) + (5643509760 / A ^ 8)) * x ^ 2)
      (((-24 / A ^ 2) + (15552 / A ^ 4) + (-11197440 / A ^ 6) + (5643509760 / A ^ 8)) * 2 * x ^ 1) x := by
    apply (((hasDerivAt_id x).pow 2).const_mul ((-24 / A ^ 2) + (15552 / A ^ 4) + (-11197440 / A ^ 6) + (5643509760 / A ^ 8))).congr_deriv
    dsimp only [id_eq]
    ring
  have h3 : HasDerivAt (fun x : ℝ ↦ ((-864 / A ^ 4) + (622080 / A ^ 6) + (-313528320 / A ^ 8)) * x ^ 3)
      (((-864 / A ^ 4) + (622080 / A ^ 6) + (-313528320 / A ^ 8)) * 3 * x ^ 2) x := by
    apply (((hasDerivAt_id x).pow 3).const_mul ((-864 / A ^ 4) + (622080 / A ^ 6) + (-313528320 / A ^ 8))).congr_deriv
    dsimp only [id_eq]
    ring
  have h4 : HasDerivAt (fun x : ℝ ↦ ((36 / A ^ 4) + (-25920 / A ^ 6) + (13063680 / A ^ 8)) * x ^ 4)
      (((36 / A ^ 4) + (-25920 / A ^ 6) + (13063680 / A ^ 8)) * 4 * x ^ 3) x := by
    apply (((hasDerivAt_id x).pow 4).const_mul ((36 / A ^ 4) + (-25920 / A ^ 6) + (13063680 / A ^ 8))).congr_deriv
    dsimp only [id_eq]
    ring
  have h5 : HasDerivAt (fun x : ℝ ↦ ((864 / A ^ 6) + (-435456 / A ^ 8)) * x ^ 5)
      (((864 / A ^ 6) + (-435456 / A ^ 8)) * 5 * x ^ 4) x := by
    apply (((hasDerivAt_id x).pow 5).const_mul ((864 / A ^ 6) + (-435456 / A ^ 8))).congr_deriv
    dsimp only [id_eq]
    ring
  have h6 : HasDerivAt (fun x : ℝ ↦ ((-24 / A ^ 6) + (12096 / A ^ 8)) * x ^ 6)
      (((-24 / A ^ 6) + (12096 / A ^ 8)) * 6 * x ^ 5) x := by
    apply (((hasDerivAt_id x).pow 6).const_mul ((-24 / A ^ 6) + (12096 / A ^ 8))).congr_deriv
    dsimp only [id_eq]
    ring
  have h7 : HasDerivAt (fun x : ℝ ↦ ((-288 / A ^ 8)) * x ^ 7)
      (((-288 / A ^ 8)) * 7 * x ^ 6) x := by
    apply (((hasDerivAt_id x).pow 7).const_mul ((-288 / A ^ 8))).congr_deriv
    dsimp only [id_eq]
    ring
  have h8 : HasDerivAt (fun x : ℝ ↦ ((6 / A ^ 8)) * x ^ 8)
      (((6 / A ^ 8)) * 8 * x ^ 7) x := by
    apply (((hasDerivAt_id x).pow 8).const_mul ((6 / A ^ 8))).congr_deriv
    dsimp only [id_eq]
    ring
  convert (((((((((hasDerivAt_const x (6 + (-1728 / A ^ 2) + (1119744 / A ^ 4) + (-806215680 / A ^ 6) + (406332702720 / A ^ 8))).add h1).add h2).add h3).add h4).add h5).add h6).add h7).add h8) using 1 <;> try rfl
  unfold sixthPrimitiveDerivative
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplacePrimitive/Variant0dd089fd1c98964af40ab7a751d18e8a13c90b5b4cfcc75752ba58df510cc9d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplacePrimitive/Variant0dd089fd1c98964af40ab7a751d18e8a13c90b5b4cfcc75752ba58df510cc9d5.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed5c76aabffe6fa31ecea7238339324228b15855` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
