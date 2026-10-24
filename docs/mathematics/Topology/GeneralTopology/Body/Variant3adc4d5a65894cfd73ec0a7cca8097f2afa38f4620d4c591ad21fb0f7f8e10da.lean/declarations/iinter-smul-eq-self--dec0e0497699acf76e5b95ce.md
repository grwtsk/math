# iInter_smul_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a563b350-a4f8-9df0-2a00-a5986a731348",
  "kind": "theorem",
  "lexical_name": "iInter_smul_eq_self",
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
  "slug": "iinter-smul-eq-self--dec0e0497699acf76e5b95ce",
  "source": {
    "blob": "83488855eb6b4be9fb8235246ce785be9a60433f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 213,
    "path": "GRWTSK/Topology/GeneralTopology/Body/Variant3adc4d5a65894cfd73ec0a7cca8097f2afa38f4620d4c591ad21fb0f7f8e10da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dec0e0497699acf76e5b95ced2345cd10c6ec3c57f0aae08549af611111612f1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Body/Variant3adc4d5a65894cfd73ec0a7cca8097f2afa38f4620d4c591ad21fb0f7f8e10da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a563b350-a4f8-9df0-2a00-a5986a731348`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iInter_smul_eq_self [T2Space V] {u : ℕ → ℝ≥0} (K : ConvexBody V) (h_zero : 0 ∈ K)
    (hu : Tendsto u atTop (𝓝 0)) :
    ⋂ n : ℕ, (1 + (u n : ℝ)) • (K : Set V) = K := by
  ext x
  refine ⟨fun h => ?_, fun h => ?_⟩
  · obtain ⟨C, hC_pos, hC_bdd⟩ := K.isBounded.exists_pos_norm_le
    rw [← K.isClosed.closure_eq, SeminormedAddCommGroup.mem_closure_iff]
    rw [← NNReal.tendsto_coe, NormedAddCommGroup.tendsto_atTop] at hu
    intro ε hε
    obtain ⟨n, hn⟩ := hu (ε / C) (div_pos hε hC_pos)
    obtain ⟨y, hyK, rfl⟩ := Set.mem_smul_set.mp (Set.mem_iInter.mp h n)
    refine ⟨y, hyK, ?_⟩
    rw [show (1 + u n : ℝ) • y - y = (u n : ℝ) • y by rw [add_smul, one_smul, add_sub_cancel_left],
      norm_smul, Real.norm_eq_abs]
    specialize hn n le_rfl
    rw [lt_div_iff₀' hC_pos, mul_comm, NNReal.coe_zero, sub_zero, Real.norm_eq_abs] at hn
    refine lt_of_le_of_lt ?_ hn
    gcongr; exact hC_bdd _ hyK
  · refine Set.mem_iInter.mpr (fun n => Convex.mem_smul_of_zero_mem K.convex h_zero h ?_)
    exact le_add_of_nonneg_right (by positivity)

end SeminormedAddCommGroup

section NormedAddCommGroup

variable [NormedAddCommGroup V] [NormedSpace ℝ V]

/-- Convex bodies in a fixed normed space `V` form a metric space under the Hausdorff metric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Body/Variant3adc4d5a65894cfd73ec0a7cca8097f2afa38f4620d4c591ad21fb0f7f8e10da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Body/Variant3adc4d5a65894cfd73ec0a7cca8097f2afa38f4620d4c591ad21fb0f7f8e10da.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83488855eb6b4be9fb8235246ce785be9a60433f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
