# cubic_selected_error_le_profile_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb5a3bff-4f53-4074-06e7-c1d18fff0d1e",
  "kind": "theorem",
  "lexical_name": "cubic_selected_error_le_profile_budget",
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
  "slug": "cubic-selected-error-le-profile-budget--ae176c5bc36d0a3ed390ba7a",
  "source": {
    "blob": "82fda8ed57adb6c764d002cdf2324735730ad264",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 435,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Variant8bc86a07a5dbe888e201154a52ad1875a0f824c33fb38af7b7f8396303e46608.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae176c5bc36d0a3ed390ba7a21ef55d10b38948baa98d50c1a51f115be4d37cb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Variant8bc86a07a5dbe888e201154a52ad1875a0f824c33fb38af7b7f8396303e46608.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb5a3bff-4f53-4074-06e7-c1d18fff0d1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cubic_selected_error_le_profile_budget {A : ℝ} (hA : 1 ≤ A)
    (selected : Finset CubicPacket) (hselected : selected ⊆ cubicPacketInventory A) :
    |cubicSourceMoment A -
      ∑ p ∈ selected, cubicPacketWeight p * sourceCorrelation explicitSecondDerivative A
        (Real.log (cubicPacketKey p : ℝ))| ≤
      ∑ p ∈ cubicPacketInventory A \ selected, |cubicPacketWeight p| *
        |sourceCorrelation explicitSecondDerivative A (Real.log (cubicPacketKey p : ℝ))| := by
  rw [cubicSourceMoment_eq_selected_add_complement hA selected hselected,
    add_sub_cancel_left]
  simpa only [abs_mul] using Finset.abs_sum_le_sum_abs
    (fun p => cubicPacketWeight p * sourceCorrelation explicitSecondDerivative A
      (Real.log (cubicPacketKey p : ℝ))) (cubicPacketInventory A \ selected)

/-- Mass-one normalization bounds the omitted profile budget by the total
variation of its signed packet coefficients. That budget may grow with scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Variant8bc86a07a5dbe888e201154a52ad1875a0f824c33fb38af7b7f8396303e46608.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceMultiplicativePackets/Variant8bc86a07a5dbe888e201154a52ad1875a0f824c33fb38af7b7f8396303e46608.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82fda8ed57adb6c764d002cdf2324735730ad264` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
