# norm_iteratedDeriv_G_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df944f8bb21f78243c91cc7bbfdd5d03ccac1987",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39e54cc7-0139-7c6b-d66b-5eee2409ed2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3d9ba62-90de-97f1-2e58-a298ef4649f5",
  "kind": "lemma",
  "lexical_name": "norm_iteratedDeriv_G_le",
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
  "slug": "norm-iteratedderiv-g-le--a18ddb617705976aca6973b3",
  "source": {
    "blob": "df944f8bb21f78243c91cc7bbfdd5d03ccac1987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a18ddb617705976aca6973b3ef6fbadef903f14b9eb214e156b2837f5bddabd1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3d9ba62-90de-97f1-2e58-a298ef4649f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_iteratedDeriv_G_le (k : ℕ) {x : ℝ} (hx : 0 < x) :
    ‖iteratedDeriv k G (x : ℂ)‖ ≤ k.factorial * Real.exp (-(2 / (9 * x))) / (x / 2) ^ k := by
  have hr : (0 : ℝ) < x / 2 := by positivity
  apply Complex.norm_iteratedDeriv_le_of_forall_mem_sphere_norm_le k hr
  · -- DiffContOnCl on the disc: G is differentiable on the closed disc (which misses 0)
    apply DifferentiableOn.diffContOnCl
    rw [closure_ball _ hr.ne']
    refine G_differentiableOn.mono fun z hz h0 => ?_
    rw [mem_closedBall, h0, dist_comm, dist_eq_norm, sub_zero, Complex.norm_real, Real.norm_eq_abs,
      abs_of_pos hx] at hz
    linarith
  · intro z hz
    rw [mem_sphere, dist_eq_norm] at hz
    have hre : x / 2 ≤ z.re := by
      have := Complex.abs_re_le_norm (z - x)
      simp at this; rw [hz] at this; rw [abs_le] at this; linarith
    have hnorm : ‖z‖ ≤ 3 * x / 2 := by
      calc ‖z‖ = ‖(z - x) + x‖ := by ring_nf
        _ ≤ ‖z - x‖ + ‖(x : ℂ)‖ := norm_add_le _ _
        _ = 3 * x / 2 := by rw [hz, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hx]; ring
    have hz0 : z ≠ 0 := fun h => by rw [h] at hre; simp at hre; linarith
    have hns : 0 < Complex.normSq z := Complex.normSq_pos.mpr hz0
    unfold G
    rw [Complex.norm_exp, neg_re, Complex.inv_re]
    apply Real.exp_le_exp.mpr
    -- −(re/normSq) ≤ −2/(9x)  ⟸  2/(9x) ≤ re/normSq
    have hns' : Complex.normSq z ≤ (3 * x / 2) ^ 2 := by
      rw [Complex.normSq_eq_norm_sq]; exact pow_le_pow_left₀ (norm_nonneg _) hnorm 2
    rw [neg_le_neg_iff, div_le_div_iff₀ (by positivity) hns]
    nlinarith

/-- elementary: u^k e^{−u} ≤ (k/e)^k for u ≥ 0, k ≥ 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gevrey/Variant09dacae053ce2bedf2067ab12790e3b5c0b016067441307af16a299939907d42.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df944f8bb21f78243c91cc7bbfdd5d03ccac1987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
