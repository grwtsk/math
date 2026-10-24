# exact_sixth_weighted_primitive_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a352f457-b5c7-2117-a28a-523e4c304e4d",
  "kind": "theorem",
  "lexical_name": "exact_sixth_weighted_primitive_derivative",
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
  "slug": "exact-sixth-weighted-primitive-derivative--922fe156d8ea16a3d4b201b7",
  "source": {
    "blob": "9a54bf7dad8b64caa8449d63890246eef79a0957",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 123,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplacePrimitive/Variant19f8039ce576707c5812fbf65c7b2a937576e1ffbf6237b2d43e446726bd8671.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:922fe156d8ea16a3d4b201b7df5a1b9fd099ce974ec2174f548711505d05b2fc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplacePrimitive/Variant19f8039ce576707c5812fbf65c7b2a937576e1ffbf6237b2d43e446726bd8671.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a352f457-b5c7-2117-a28a-523e4c304e4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_sixth_weighted_primitive_derivative {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (fun x : ℝ ↦ Real.exp (x / 6) * sixthPrimitivePolynomial A x / Real.sqrt A)
      (Real.exp ((1 / 6) * x) * bumpInterior A x) x := by
  have hd := ((((hasDerivAt_id x).div_const 6).exp).mul
    (exact_sixth_primitive_polynomial_derivative A x)).div_const (Real.sqrt A)
  apply hd.congr_deriv
  dsimp only [id_eq]
  rw [one_div_mul_eq_div]
  have hb := exact_sixth_primitive_balance hA x
  unfold bumpInterior
  calc
    _ = (Real.exp (x / 6) * (sixthPrimitivePolynomial A x / 6 +
        sixthPrimitiveDerivative A x)) / Real.sqrt A := by ring
    _ = (Real.exp (x / 6) * (1 - (x / A) ^ 2) ^ 4) / Real.sqrt A := by rw [hb]
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplacePrimitive/Variant19f8039ce576707c5812fbf65c7b2a937576e1ffbf6237b2d43e446726bd8671.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplacePrimitive/Variant19f8039ce576707c5812fbf65c7b2a937576e1ffbf6237b2d43e446726bd8671.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a54bf7dad8b64caa8449d63890246eef79a0957` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
