# original_supplier_sharp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0064bf01-0eba-b739-1cdc-b0c7bcdb9b7a",
  "kind": "theorem",
  "lexical_name": "original_supplier_sharp",
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
  "slug": "original-supplier-sharp--49999c45fe1d7cbfbb36417e",
  "source": {
    "blob": "90f431d3194a40a1d8b1fe717f2fcf9805ebfa73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSharpSupplierReturn/Variantd34248744a16eb1ce802609c11c46f589c6271386e7161ace3f6d4aa64aa3fdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49999c45fe1d7cbfbb36417eef72eaa2bd8ec3eb2299a936a8d73a28d3cbb0f9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSharpSupplierReturn/Variantd34248744a16eb1ce802609c11c46f589c6271386e7161ace3f6d4aa64aa3fdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0064bf01-0eba-b739-1cdc-b0c7bcdb9b7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem original_supplier_sharp {C r R : ℝ} (hC : 0 ≤ C) (hR : 1 ≤ R)
    (hX : SignedCrossEnergyBound C r R) : SupplierEstimate := by
  refine ⟨0, sharpConstant C, returnExponent r, R, by norm_num, ?_, ?_, ?_, ?_⟩
  · exact mul_nonneg decoder_nonneg (Real.sqrt_nonneg _)
  · unfold returnExponent
    positivity
  · simpa using hR
  · intro A hA
    have hbudget : sharpConstant C * A ^ returnExponent r ≤
        supplierAllowance 0 (sharpConstant C) (returnExponent r) A := by
      simp only [supplierAllowance, zero_div, add_zero]
      have hn : 0 ≤ (1 / Real.sqrt 2) * positiveEnvelope (2 * A) :=
        mul_nonneg (by positivity) (positiveEnvelope_nonneg _)
      linarith
    exact (sharp_signed_meter_return (hR.trans hA) hC (hX A hA)).trans
      (EReal.coe_le_coe_iff.mpr hbudget)

end FormalResearch.RiemannHypothesis.Conversation.BranchSharpSupplierReturn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSharpSupplierReturn/Variantd34248744a16eb1ce802609c11c46f589c6271386e7161ace3f6d4aa64aa3fdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSharpSupplierReturn/Variantd34248744a16eb1ce802609c11c46f589c6271386e7161ace3f6d4aa64aa3fdf.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90f431d3194a40a1d8b1fe717f2fcf9805ebfa73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
