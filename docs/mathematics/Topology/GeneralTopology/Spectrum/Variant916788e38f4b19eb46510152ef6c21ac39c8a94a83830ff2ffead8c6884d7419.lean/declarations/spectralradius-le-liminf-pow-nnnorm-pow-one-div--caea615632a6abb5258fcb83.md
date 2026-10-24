# spectralRadius_le_liminf_pow_nnnorm_pow_one_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce31ece5-5824-2014-4f1f-6a01a5f75572",
  "kind": "theorem",
  "lexical_name": "spectralRadius_le_liminf_pow_nnnorm_pow_one_div",
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
  "slug": "spectralradius-le-liminf-pow-nnnorm-pow-one-div--caea615632a6abb5258fcb83",
  "source": {
    "blob": "9e233120cd3cfbb99ed7a3e2b0a991ebf9a9d8a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 295,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:caea615632a6abb5258fcb832de6c06b2ae4e6f73210425d0a7e959579778b2d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce31ece5-5824-2014-4f1f-6a01a5f75572`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectralRadius_le_liminf_pow_nnnorm_pow_one_div (a : A) :
    spectralRadius 𝕜 a ≤ atTop.liminf fun n : ℕ => (‖a ^ n‖₊ : ℝ≥0∞) ^ (1 / n : ℝ) := by
  refine ENNReal.le_of_forall_lt_one_mul_le fun ε hε => ?_
  by_cases h : ε = 0
  · simp [h]
  simp only [ENNReal.mul_le_iff_le_inv h (hε.trans_le le_top).ne, mul_comm ε⁻¹,
    liminf_eq_iSup_iInf_of_nat', ENNReal.iSup_mul]
  conv_rhs => arg 1; intro i; rw [ENNReal.iInf_mul (by simp [h])]
  rw [← ENNReal.inv_lt_inv, inv_one] at hε
  obtain ⟨N, hN⟩ := eventually_atTop.mp
    (ENNReal.eventually_pow_one_div_le (ENNReal.coe_ne_top : ↑‖(1 : A)‖₊ ≠ ∞) hε)
  refine le_trans ?_ (le_iSup _ (N + 1))
  refine le_iInf fun n => ?_
  simp only [← add_assoc]
  refine (spectralRadius_le_pow_nnnorm_pow_one_div 𝕜 a (n + N)).trans ?_
  norm_cast
  grw [hN (n + N + 1) (by lia)]

end Unital

end SpectrumCompact

section resolvent

open Filter Asymptotics Bornology

open scoped Topology

variable [NontriviallyNormedField 𝕜] [NormedRing A] [NormedAlgebra 𝕜 A] [CompleteSpace A]

local notation "ρ" => resolventSet 𝕜
local notation "↑ₐ" => algebraMap 𝕜 A

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant916788e38f4b19eb46510152ef6c21ac39c8a94a83830ff2ffead8c6884d7419.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e233120cd3cfbb99ed7a3e2b0a991ebf9a9d8a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
