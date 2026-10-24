# iInter_smul_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09fdf4e500a3c288e6056bac584e76813ed455a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8fa6e9a3-1be5-601d-2153-31509ec069c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dec80bae-eaa5-5ac4-6e10-9fcd530d86e2",
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
  "slug": "iinter-smul-eq-self--a5ac876381afa7a4201da52a",
  "source": {
    "blob": "09fdf4e500a3c288e6056bac584e76813ed455a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 200,
    "path": "GRWTSK/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5ac876381afa7a4201da52a7639598033a6e1caf6cf1683a198fa3438b5aeaa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dec80bae-eaa5-5ac4-6e10-9fcd530d86e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–227.

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
    exact mul_le_mul_of_nonneg_left (hC_bdd _ hyK) (abs_nonneg _)
  · refine Set.mem_iInter.mpr (fun n => Convex.mem_smul_of_zero_mem K.convex h_zero h ?_)
    exact le_add_of_nonneg_right (by positivity)

end SeminormedAddCommGroup

section NormedAddCommGroup

variable [NormedAddCommGroup V] [NormedSpace ℝ V]

/-- Convex bodies in a fixed normed space `V` form a metric space under the Hausdorff metric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09fdf4e500a3c288e6056bac584e76813ed455a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
