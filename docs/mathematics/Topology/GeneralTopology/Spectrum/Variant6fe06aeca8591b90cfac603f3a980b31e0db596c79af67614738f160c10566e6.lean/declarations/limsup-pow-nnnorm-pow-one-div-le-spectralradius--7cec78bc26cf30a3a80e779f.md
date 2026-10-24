# limsup_pow_nnnorm_pow_one_div_le_spectralRadius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8047e6528b21f30cbf65849dca0d5a7a836fc76e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 344,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c97515a3-858e-6d00-18dc-094fc86f1337",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:220422da-a5c1-81a2-920c-0471d230343b",
  "kind": "theorem",
  "lexical_name": "limsup_pow_nnnorm_pow_one_div_le_spectralRadius",
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
  "slug": "limsup-pow-nnnorm-pow-one-div-le-spectralradius--7cec78bc26cf30a3a80e779f",
  "source": {
    "blob": "8047e6528b21f30cbf65849dca0d5a7a836fc76e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 344,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cec78bc26cf30a3a80e779f153a84169c54816d2a3cd2a4e7c2d499dcf872ab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:220422da-a5c1-81a2-920c-0471d230343b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limsup_pow_nnnorm_pow_one_div_le_spectralRadius (a : A) :
    limsup (fun n : ℕ => (‖a ^ n‖₊ : ℝ≥0∞) ^ (1 / n : ℝ)) atTop ≤ spectralRadius ℂ a := by
  refine' ENNReal.inv_le_inv.mp (le_of_forall_pos_nnreal_lt fun r r_pos r_lt => _)
  simp_rw [inv_limsup, ← one_div]
  let p : FormalMultilinearSeries ℂ ℂ A := fun n =>
    ContinuousMultilinearMap.mkPiField ℂ (Fin n) (a ^ n)
  suffices h : (r : ℝ≥0∞) ≤ p.radius
  · convert h
    simp only [p.radius_eq_liminf, ← norm_toNNReal, norm_mkPiField]
    congr
    ext n
    rw [norm_toNNReal, ENNReal.coe_rpow_def ‖a ^ n‖₊ (1 / n : ℝ), if_neg]
    exact fun ha => (lt_self_iff_false _).mp
      (ha.2.trans_le (one_div_nonneg.mpr n.cast_nonneg : 0 ≤ (1 / n : ℝ)))
  · have H₁ := (differentiableOn_inverse_one_sub_smul r_lt).hasFPowerSeriesOnBall r_pos
    exact ((hasFPowerSeriesOnBall_inverse_one_sub_smul ℂ a).exchange_radius H₁).r_le
#align spectrum.limsup_pow_nnnorm_pow_one_div_le_spectral_radius spectrum.limsup_pow_nnnorm_pow_one_div_le_spectralRadius

/-- **Gelfand's formula**: Given an element `a : A` of a complex Banach algebra, the
`spectralRadius` of `a` is the limit of the sequence `‖a ^ n‖₊ ^ (1 / n)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8047e6528b21f30cbf65849dca0d5a7a836fc76e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
