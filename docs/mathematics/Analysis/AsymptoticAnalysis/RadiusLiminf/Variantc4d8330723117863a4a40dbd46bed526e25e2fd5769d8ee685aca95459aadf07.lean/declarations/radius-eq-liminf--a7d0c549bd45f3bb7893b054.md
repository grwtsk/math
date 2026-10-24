# radius_eq_liminf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f86e5ee5b7046c12be12f8c0c0d49a0bcc44c2ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4d8330723117863a4a40dbd46bed526e25e2fd5769d8ee685aca95459aadf07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46679cbd-0ec2-dfea-f23c-2e3da95128fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e95a8670-db77-dc78-4a5e-429c686bcbbe",
  "kind": "theorem",
  "lexical_name": "radius_eq_liminf",
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
  "slug": "radius-eq-liminf--a7d0c549bd45f3bb7893b054",
  "source": {
    "blob": "f86e5ee5b7046c12be12f8c0c0d49a0bcc44c2ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 37,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/RadiusLiminf/Variantc4d8330723117863a4a40dbd46bed526e25e2fd5769d8ee685aca95459aadf07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7d0c549bd45f3bb7893b05418c353c7b45671b6babfc45d7165a7d7f663ec2a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/RadiusLiminf/Variantc4d8330723117863a4a40dbd46bed526e25e2fd5769d8ee685aca95459aadf07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e95a8670-db77-dc78-4a5e-429c686bcbbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radius_eq_liminf :
  p.radius = liminf (fun n => (1 / (‖p n‖₊ ^ (1 / (n : ℝ)) : ℝ≥0) : ℝ≥0∞)) atTop := by
  -- porting note: added type ascription to make elaborated statement match Lean 3 version
  have :
    ∀ (r : ℝ≥0) {n : ℕ},
      0 < n → ((r : ℝ≥0∞) ≤ 1 / ↑(‖p n‖₊ ^ (1 / (n : ℝ))) ↔ ‖p n‖₊ * r ^ n ≤ 1) := by
    intro r n hn
    have : 0 < (n : ℝ) := Nat.cast_pos.2 hn
    conv_lhs =>
      rw [one_div, ENNReal.le_inv_iff_mul_le, ← ENNReal.coe_mul, ENNReal.coe_le_one_iff, one_div, ←
        NNReal.rpow_one r, ← mul_inv_cancel this.ne', NNReal.rpow_mul, ← NNReal.mul_rpow, ←
        NNReal.one_rpow n⁻¹, NNReal.rpow_le_rpow_iff (inv_pos.2 this), mul_comm,
        NNReal.rpow_nat_cast]
  apply le_antisymm <;> refine' ENNReal.le_of_forall_nnreal_lt fun r hr => _
  · have := ((TFAE_exists_lt_isLittleO_pow (fun n => ‖p n‖ * r ^ n) 1).out 1 7).1
      (p.isLittleO_of_lt_radius hr)
    obtain ⟨a, ha, H⟩ := this
    apply le_liminf_of_le
    · infer_param
    · rw [←eventually_map]
      refine'
        H.mp ((eventually_gt_atTop 0).mono fun n hn₀ hn => (this _ hn₀).2 (NNReal.coe_le_coe.1 _))
      push_cast
      exact (le_abs_self _).trans (hn.trans (pow_le_one _ ha.1.le ha.2.le))
  · refine' p.le_radius_of_isBigO (IsBigO.of_bound 1 _)
    refine' (eventually_lt_of_lt_liminf hr).mp ((eventually_gt_atTop 0).mono fun n hn₀ hn => _)
    simpa using NNReal.coe_le_coe.2 ((this _ hn₀).1 hn.le)
#align formal_multilinear_series.radius_eq_liminf FormalMultilinearSeries.radius_eq_liminf

end FormalMultilinearSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/RadiusLiminf/Variantc4d8330723117863a4a40dbd46bed526e25e2fd5769d8ee685aca95459aadf07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/RadiusLiminf/Variantc4d8330723117863a4a40dbd46bed526e25e2fd5769d8ee685aca95459aadf07.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f86e5ee5b7046c12be12f8c0c0d49a0bcc44c2ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
