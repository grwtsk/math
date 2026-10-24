# inverse_one_sub_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae76fa19-e68d-ef94-e159-d13af2679099",
  "kind": "theorem",
  "lexical_name": "inverse_one_sub_norm",
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
  "slug": "inverse-one-sub-norm--47b16307d15b7c366f33693d",
  "source": {
    "blob": "acdb16f8da185a0305573933881f665f4b152e18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47b16307d15b7c366f33693d8005cd093aa4408643fbe39b81e12b17fe955957",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae76fa19-e68d-ef94-e159-d13af2679099`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_one_sub_norm : (fun t : R => inverse (1 - t)) =O[𝓝 0] (fun _t => 1 : R → ℝ) := by
  simp only [IsBigO, IsBigOWith, Metric.eventually_nhds_iff]
  refine ⟨‖(1 : R)‖ + 1, (2 : ℝ)⁻¹, by norm_num, fun t ht ↦ ?_⟩
  rw [dist_zero_right] at ht
  have ht' : ‖t‖ < 1 := by
    have : (2 : ℝ)⁻¹ < 1 := by cancel_denoms
    linarith
  simp only [inverse_one_sub t ht', norm_one, mul_one, Set.mem_setOf_eq]
  change ‖∑' n : ℕ, t ^ n‖ ≤ _
  have := NormedRing.tsum_geometric_of_norm_lt_1 t ht'
  have : (1 - ‖t‖)⁻¹ ≤ 2 := by
    rw [← inv_inv (2 : ℝ)]
    refine' inv_le_inv_of_le (by norm_num) _
    have : (2 : ℝ)⁻¹ + (2 : ℝ)⁻¹ = 1 := by ring
    linarith
  linarith
#align normed_ring.inverse_one_sub_norm NormedRing.inverse_one_sub_norm

/-- The function `fun t ↦ inverse (x + t)` is O(1) as `t → 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acdb16f8da185a0305573933881f665f4b152e18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
