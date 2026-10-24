# lemma₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f11fccb0-4b8a-c994-a5ba-9a64c57bdcbc",
  "kind": "theorem",
  "lexical_name": "lemma₂",
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
  "slug": "lemma--14cb9aabc82a7edacc4d6edc",
  "source": {
    "blob": "77831b43261b49090e61729c6bc3634b035327f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 207,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd670906659ae88ccfcaee522ae97b1228f96bb912238ed1cc6ccc93662de9239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14cb9aabc82a7edacc4d6edcae3eaee6e65b9795a59dab58cf861e487e26a7de",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd670906659ae88ccfcaee522ae97b1228f96bb912238ed1cc6ccc93662de9239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f11fccb0-4b8a-c994-a5ba-9a64c57bdcbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem lemma₂ {s T ε : ℝ} {S : ℝ → ℂ} (hs : 1 < s)
    (hS₁ : LocallyIntegrableOn (fun t ↦ S t) (Set.Ici 1)) (hS₂ : ∀ t ≥ T, ‖S t‖ ≤ ε * t) :
    IntegrableOn (fun t : ℝ ↦ ‖S t‖ * (t ^ (-s - 1))) (Set.Ici 1) := by
  have h : LocallyIntegrableOn (fun t : ℝ ↦ ‖S t‖ * (t ^ (-s - 1))) (Set.Ici 1) := by
    refine hS₁.norm.mul_continuousOn ?_ isLocallyClosed_Ici
    exact fun t ht ↦ (Real.continuousAt_rpow_const _ _
      <| Or.inl (zero_lt_one.trans_le ht).ne').continuousWithinAt
  refine h.integrableOn_of_isBigO_atTop (g := fun t ↦ t ^ (-s)) (isBigO_iff.mpr ⟨ε, ?_⟩) ?_
  · filter_upwards [eventually_ge_atTop T, eventually_gt_atTop 0] with t ht ht'
    simpa [abs_of_nonneg, Real.rpow_nonneg, ht'.le, Real.rpow_sub ht', mul_assoc, ht'.ne',
      mul_div_cancel₀] using mul_le_mul_of_nonneg_right (hS₂ t ht) (norm_nonneg <| t ^ (-s - 1))
  · exact integrableAtFilter_rpow_atTop_iff.mpr <| neg_lt_neg_iff.mpr hs

end lemmas

section proof
-- See `LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_aux₃` for the strategy of proof

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd670906659ae88ccfcaee522ae97b1228f96bb912238ed1cc6ccc93662de9239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SumCoeff/Variantd670906659ae88ccfcaee522ae97b1228f96bb912238ed1cc6ccc93662de9239.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77831b43261b49090e61729c6bc3634b035327f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
