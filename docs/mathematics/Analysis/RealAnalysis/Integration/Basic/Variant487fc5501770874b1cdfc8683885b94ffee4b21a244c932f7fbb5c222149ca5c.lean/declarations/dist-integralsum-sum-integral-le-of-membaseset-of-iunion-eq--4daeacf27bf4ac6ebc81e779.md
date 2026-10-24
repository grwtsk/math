# dist_integralSum_sum_integral_le_of_memBaseSet_of_iUnion_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "036a07ecfaa518d7a4f65bad037b62b4c0f95c2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 563,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/487fc5501770874b1cdfc8683885b94ffee4b21a244c932f7fbb5c222149ca5c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08b3e646-94b1-f548-96ad-201b2aacd8b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8da4d035-f04c-e201-7955-2ff304ab12f5",
  "kind": "theorem",
  "lexical_name": "dist_integralSum_sum_integral_le_of_memBaseSet_of_iUnion_eq",
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
  "slug": "dist-integralsum-sum-integral-le-of-membaseset-of-iunion-eq--4daeacf27bf4ac6ebc81e779",
  "source": {
    "blob": "036a07ecfaa518d7a4f65bad037b62b4c0f95c2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 621,
    "line": 563,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant487fc5501770874b1cdfc8683885b94ffee4b21a244c932f7fbb5c222149ca5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4daeacf27bf4ac6ebc81e77936e212d14b28ff3e75e7d0187cfe42917d27c586",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant487fc5501770874b1cdfc8683885b94ffee4b21a244c932f7fbb5c222149ca5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8da4d035-f04c-e201-7955-2ff304ab12f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–621.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_integralSum_sum_integral_le_of_memBaseSet_of_iUnion_eq (h : Integrable I l f vol)
    (h0 : 0 < ε) (hπ : l.MemBaseSet I c (h.convergenceR ε c) π) {π₀ : Prepartition I}
    (hU : π.iUnion = π₀.iUnion) :
    dist (integralSum f vol π) (∑ J in π₀.boxes, integral J l f vol) ≤ ε := by
  -- Let us prove that the distance is less than or equal to `ε + δ` for all positive `δ`.
  refine' le_of_forall_pos_le_add fun δ δ0 => _
  -- First we choose some constants.
  set δ' : ℝ := δ / (π₀.boxes.card + 1)
  have H0 : 0 < (π₀.boxes.card + 1 : ℝ) := Nat.cast_add_one_pos _
  have δ'0 : 0 < δ' := div_pos δ0 H0
  set C := max π₀.distortion π₀.compl.distortion
  /- Next we choose a tagged partition of each `J ∈ π₀` such that the integral sum of `f` over this
    partition is `δ'`-close to the integral of `f` over `J`. -/
  have : ∀ J ∈ π₀, ∃ πi : TaggedPrepartition J,
      πi.IsPartition ∧ dist (integralSum f vol πi) (integral J l f vol) ≤ δ' ∧
        l.MemBaseSet J C (h.convergenceR δ' C) πi := by
    intro J hJ
    have Hle : J ≤ I := π₀.le_of_mem hJ
    have HJi : Integrable J l f vol := h.to_subbox Hle
    set r := fun x => min (h.convergenceR δ' C x) (HJi.convergenceR δ' C x)
    have hJd : J.distortion ≤ C := le_trans (Finset.le_sup hJ) (le_max_left _ _)
    rcases l.exists_memBaseSet_isPartition J hJd r with ⟨πJ, hC, hp⟩
    have hC₁ : l.MemBaseSet J C (HJi.convergenceR δ' C) πJ := by
      refine' hC.mono J le_rfl le_rfl fun x _ => _; exact min_le_right _ _
    have hC₂ : l.MemBaseSet J C (h.convergenceR δ' C) πJ := by
      refine' hC.mono J le_rfl le_rfl fun x _ => _; exact min_le_left _ _
    exact ⟨πJ, hp, HJi.dist_integralSum_integral_le_of_memBaseSet δ'0 hC₁ hp, hC₂⟩
  /- Now we combine these tagged partitions into a tagged prepartition of `I` that covers the
    same part of `I` as `π₀` and apply `BoxIntegral.dist_integralSum_le_of_memBaseSet` to
    `π` and this prepartition. -/
  choose! πi hπip hπiδ' hπiC using this
  have : l.MemBaseSet I C (h.convergenceR δ' C) (π₀.biUnionTagged πi) :=
    biUnionTagged_memBaseSet hπiC hπip fun _ => le_max_right _ _
  have hU' : π.iUnion = (π₀.biUnionTagged πi).iUnion :=
    hU.trans (Prepartition.iUnion_biUnion_partition _ hπip).symm
  have := h.dist_integralSum_le_of_memBaseSet h0 δ'0 hπ this hU'
  rw [integralSum_biUnionTagged] at this
  calc
    dist (integralSum f vol π) (∑ J in π₀.boxes, integral J l f vol) ≤
        dist (integralSum f vol π) (∑ J in π₀.boxes, integralSum f vol (πi J)) +
          dist (∑ J in π₀.boxes, integralSum f vol (πi J)) (∑ J in π₀.boxes, integral J l f vol) :=
      dist_triangle _ _ _
    _ ≤ ε + δ' + ∑ _J in π₀.boxes, δ' := (add_le_add this (dist_sum_sum_le_of_le _ hπiδ'))
    _ = ε + δ := by field_simp; ring
#align box_integral.integrable.dist_integral_sum_sum_integral_le_of_mem_base_set_of_Union_eq BoxIntegral.Integrable.dist_integralSum_sum_integral_le_of_memBaseSet_of_iUnion_eq

/-- **Henstock-Sacks inequality**. Let `r : ℝⁿ → (0, ∞)` be a function such that for any tagged
*partition* of `I` subordinate to `r`, the integral sum of `f` over this partition differs from the
integral of `f` by at most `ε`. Then for any tagged *prepartition* `π` subordinate to `r`, the
integral sum of `f` over this prepartition differs from the integral of `f` over the part of `I`
covered by `π` by at most `ε`.

The actual statement

- uses `BoxIntegral.Integrable.convergenceR` instead of a predicate assumption on `r`;
- uses `BoxIntegral.IntegrationParams.MemBaseSet` instead of “subordinate to `r`” to
  account for additional requirements like being a Henstock partition or having a bounded
  distortion;
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant487fc5501770874b1cdfc8683885b94ffee4b21a244c932f7fbb5c222149ca5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant487fc5501770874b1cdfc8683885b94ffee4b21a244c932f7fbb5c222149ca5c.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `036a07ecfaa518d7a4f65bad037b62b4c0f95c2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
