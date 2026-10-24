# lintegral_enorm_le_of_forall_fin_meas_integral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0163e70-5a2a-a2a9-b23b-36bafce7e2cd",
  "kind": "theorem",
  "lexical_name": "lintegral_enorm_le_of_forall_fin_meas_integral_eq",
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
  "slug": "lintegral-enorm-le-of-forall-fin-meas-integral-eq--e128a32dd8aa6aa0b915e706",
  "source": {
    "blob": "a9cfb16dedc566f92326d19f506216f1481d5cc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 198,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e128a32dd8aa6aa0b915e7066155058d2eab6d7100e701ab5a6d91ed5d4b1eac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Unique/Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0163e70-5a2a-a2a9-b23b-36bafce7e2cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_enorm_le_of_forall_fin_meas_integral_eq (hm : m ≤ m0) {f g : α → ℝ}
    (hf : StronglyMeasurable f) (hfi : IntegrableOn f s μ) (hg : StronglyMeasurable[m] g)
    (hgi : IntegrableOn g s μ)
    (hgf : ∀ t, MeasurableSet[m] t → μ t < ∞ → ∫ x in t, g x ∂μ = ∫ x in t, f x ∂μ)
    (hs : MeasurableSet[m] s) (hμs : μ s ≠ ∞) : (∫⁻ x in s, ‖g x‖ₑ ∂μ) ≤ ∫⁻ x in s, ‖f x‖ₑ ∂μ := by
  rw [← ofReal_integral_norm_eq_lintegral_enorm hfi, ←
    ofReal_integral_norm_eq_lintegral_enorm hgi, ENNReal.ofReal_le_ofReal_iff]
  · exact integral_norm_le_of_forall_fin_meas_integral_eq hm hf hfi hg hgi hgf hs hμs
  · positivity

@[deprecated (since := "2025-01-21")]
alias lintegral_nnnorm_le_of_forall_fin_meas_integral_eq :=
  lintegral_enorm_le_of_forall_fin_meas_integral_eq

end IntegralNormLE

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Unique/Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variantbe269672540777feef362c5415aa76e523aafbf426ee36745f17652b85714449.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9cfb16dedc566f92326d19f506216f1481d5cc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
