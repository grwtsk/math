# signedMeter_polynomial_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2945619b-bbfe-160d-cfde-f01d8e497651",
  "kind": "theorem",
  "lexical_name": "signedMeter_polynomial_return",
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
  "slug": "signedmeter-polynomial-return--deff4db406c0b2c0e104eea9",
  "source": {
    "blob": "1b0766118d01cdcdb1eb629fd8c3ea63a87ade27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSupplierReturn/Variant28b1d8fd5004edf12b4f2661de803c0e0b6577c32e2505ca79694f8f58ce3979.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:deff4db406c0b2c0e104eea9d596ac8933a6c5dc213a354d0177ec51ef3446a0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSupplierReturn/Variant28b1d8fd5004edf12b4f2661de803c0e0b6577c32e2505ca79694f8f58ce3979.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2945619b-bbfe-160d-cfde-f01d8e497651`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedMeter_polynomial_return {A C r : ℝ} (hA : 1 ≤ A) (hC : 0 ≤ C)
    (hX : ∀ t ∈ readingWindow A, crossEnergy A t ≤ C * A ^ r) :
    signedMeter A ≤ ((returnConstant C * A ^ returnExponent r : ℝ) : EReal) := by
  have hL : 0 ≤ returnConstant C * A ^ returnExponent r := by
    unfold returnConstant
    exact mul_nonneg (mul_nonneg decoder_nonneg (Real.sqrt_nonneg _))
      (Real.rpow_nonneg (by linarith) _)
  apply (signedMeter_le_iff A _ hL).mpr
  constructor
  · exact ae_of_all _ fun t ht ↦ (le_abs_self _).trans
      (centeredPickup_polynomial_return hA ht.1 hC (hX t ht.1))
  · exact ae_of_all _ fun t ht ↦ (neg_le_abs _).trans
      (centeredPickup_polynomial_return hA ht.1 hC (hX t ht.1))

/-- Explicit witnesses K₀=0, D=C_mass*sqrt(16+C), p=max(r,1)/2, R=R_X.
The arithmetic hypothesis is retained verbatim and is not proved here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSupplierReturn/Variant28b1d8fd5004edf12b4f2661de803c0e0b6577c32e2505ca79694f8f58ce3979.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSupplierReturn/Variant28b1d8fd5004edf12b4f2661de803c0e0b6577c32e2505ca79694f8f58ce3979.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b0766118d01cdcdb1eb629fd8c3ea63a87ade27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
