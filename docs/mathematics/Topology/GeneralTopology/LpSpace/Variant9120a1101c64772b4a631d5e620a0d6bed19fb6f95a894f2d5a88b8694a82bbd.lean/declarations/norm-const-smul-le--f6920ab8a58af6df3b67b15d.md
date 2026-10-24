# norm_const_smul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61c8d716-98ee-fb54-5af1-f78c4cf22356",
  "kind": "theorem",
  "lexical_name": "norm_const_smul_le",
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
  "slug": "norm-const-smul-le--f6920ab8a58af6df3b67b15d",
  "source": {
    "blob": "050c3f648532b059f5db611c7736fbf6fc32faa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 701,
    "line": 669,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variant9120a1101c64772b4a631d5e620a0d6bed19fb6f95a894f2d5a88b8694a82bbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6920ab8a58af6df3b67b15d9ba48a450c3ddcac09d276186e8677b566ef4e57",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LpSpace/Variant9120a1101c64772b4a631d5e620a0d6bed19fb6f95a894f2d5a88b8694a82bbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61c8d716-98ee-fb54-5af1-f78c4cf22356`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 669–701.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_const_smul_le (hp : p ≠ 0) (c : 𝕜) (f : lp E p) : ‖c • f‖ ≤ ‖c‖ * ‖f‖ := by
  rcases p.trichotomy with (rfl | rfl | hp)
  · exact absurd rfl hp
  · cases isEmpty_or_nonempty α
    · simp [lp.eq_zero' f]
    have hcf := lp.isLUB_norm (c • f)
    have hfc := (lp.isLUB_norm f).mul_left (norm_nonneg c)
    simp_rw [← Set.range_comp, Function.comp] at hfc
    -- TODO: some `IsLUB` API should make it a one-liner from here.
    refine' hcf.right _
    have := hfc.left
    simp_rw [mem_upperBounds, Set.mem_range,
      forall_exists_index, forall_apply_eq_imp_iff'] at this ⊢
    intro a
    exact (norm_smul_le _ _).trans (this a)
  · letI inst : NNNorm (lp E p) := ⟨fun f => ⟨‖f‖, norm_nonneg' _⟩⟩
    have coe_nnnorm : ∀ f : lp E p, ↑‖f‖₊ = ‖f‖ := fun _ => rfl
    suffices ‖c • f‖₊ ^ p.toReal ≤ (‖c‖₊ * ‖f‖₊) ^ p.toReal by
      rwa [NNReal.rpow_le_rpow_iff hp] at this
    clear_value inst
    rw [NNReal.mul_rpow]
    have hLHS := lp.hasSum_norm hp (c • f)
    have hRHS := (lp.hasSum_norm hp f).mul_left (‖c‖ ^ p.toReal)
    simp_rw [← coe_nnnorm, ← _root_.coe_nnnorm, ← NNReal.coe_rpow, ← NNReal.coe_mul,
      NNReal.hasSum_coe] at hRHS hLHS
    refine' hasSum_mono hLHS hRHS fun i => _
    dsimp only
    rw [← NNReal.mul_rpow]
    -- Porting note: added
    rw [lp.coeFn_smul, Pi.smul_apply]
    exact NNReal.rpow_le_rpow (nnnorm_smul_le _ _) ENNReal.toReal_nonneg
#align lp.norm_const_smul_le lp.norm_const_smul_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variant9120a1101c64772b4a631d5e620a0d6bed19fb6f95a894f2d5a88b8694a82bbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variant9120a1101c64772b4a631d5e620a0d6bed19fb6f95a894f2d5a88b8694a82bbd.lean#L669).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `050c3f648532b059f5db611c7736fbf6fc32faa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
