# original_supplier_of_signed_cross_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37bc75df-b054-a951-d18c-97ec365a941b",
  "kind": "theorem",
  "lexical_name": "original_supplier_of_signed_cross_energy",
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
  "slug": "original-supplier-of-signed-cross-energy--2f548018e770f9223dfbaaf6",
  "source": {
    "blob": "f30c52a03714a620e2529556822140ea1b604437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSupplierReturn/Variant567eb3652327a2c99073afcb32852598dc6c574e425fbd881f455ca396154f47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f548018e770f9223dfbaaf69d10d7cc058e7535b5913a6a2754df03b7a56127",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSupplierReturn/Variant567eb3652327a2c99073afcb32852598dc6c574e425fbd881f455ca396154f47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37bc75df-b054-a951-d18c-97ec365a941b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_supplier_of_signed_cross_energy {C r R : ℝ}
    (hC : 0 ≤ C) (hR : 1 ≤ R) (hX : SignedCrossEnergyBound C r R) : SupplierEstimate := by
  refine ⟨0, returnConstant C, returnExponent r, R, by norm_num, ?_, ?_, ?_, ?_⟩
  · exact mul_nonneg decoder_nonneg (Real.sqrt_nonneg _)
  · unfold returnExponent
    exact div_nonneg ((by norm_num : (0 : ℝ) ≤ 1).trans (le_max_right r 1)) (by norm_num)
  · simpa using hR
  · intro A hA
    have hA1 := hR.trans hA
    have he : 0 ≤ positiveEnvelope (2 * A) :=
      runningPositiveMaximum_nonneg pickup_continuous (2 * A)
    have hbudget : returnConstant C * A ^ returnExponent r ≤
        supplierAllowance 0 (returnConstant C) (returnExponent r) A := by
      simp only [supplierAllowance, zero_div, add_zero]
      have hn : 0 ≤ (1 / Real.sqrt 2) * positiveEnvelope (2 * A) :=
        mul_nonneg (by positivity) he
      linarith
    exact (signedMeter_polynomial_return hA1 hC (hX A hA)).trans
      (EReal.coe_le_coe_iff.mpr hbudget)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSupplierReturn/Variant567eb3652327a2c99073afcb32852598dc6c574e425fbd881f455ca396154f47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSupplierReturn/Variant567eb3652327a2c99073afcb32852598dc6c574e425fbd881f455ca396154f47.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f30c52a03714a620e2529556822140ea1b604437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
