# UniformContinuousOn.cexp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97aa22cce9a0173e19aa13b00bb213f5a48ebef8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ac847b0-8107-4020-0d0f-1c3abe8caff7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3d7af11-8a97-18f9-eed0-3f525334090f",
  "kind": "lemma",
  "lexical_name": "UniformContinuousOn.cexp",
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
  "slug": "uniformcontinuouson-cexp--d9cfcae39d752717f2441e39",
  "source": {
    "blob": "97aa22cce9a0173e19aa13b00bb213f5a48ebef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 124,
    "path": "GRWTSK/Topology/GeneralTopology/Exp/Variant872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9cfcae39d752717f2441e39531464cfcabbd174dac1fddc7d273ab118c608c0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exp/Variant872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3d7af11-8a97-18f9-eed0-3f525334090f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma UniformContinuousOn.cexp (a : ℝ) : UniformContinuousOn exp {x : ℂ | x.re ≤ a} := by
  have : Continuous (cexp - 1) := Continuous.sub (by fun_prop) continuous_one
  rw [Metric.uniformContinuousOn_iff, Metric.continuous_iff'] at *
  intro ε hε
  simp only [gt_iff_lt, Pi.sub_apply, Pi.one_apply, dist_sub_eq_dist_add_right,
    sub_add_cancel] at this
  have ha : 0 < ε / (2 * Real.exp a) := by positivity
  have H := this 0 (ε / (2 * Real.exp a)) ha
  rw [Metric.eventually_nhds_iff] at H
  obtain ⟨δ, hδ⟩ := H
  refine ⟨δ, hδ.1, ?_⟩
  intro x _ y hy hxy
  have h3 := hδ.2 (y := x - y) (by simpa only [dist_eq_norm, sub_zero] using hxy)
  rw [dist_eq_norm, exp_zero] at *
  have : cexp x - cexp y = cexp y * (cexp (x - y) - 1) := by
    rw [mul_sub_one, ← exp_add]
    ring_nf
  rw [this, mul_comm]
  have hya : ‖cexp y‖ ≤ Real.exp a := by simpa only [norm_exp, Real.exp_le_exp]
  simp only [gt_iff_lt, dist_zero_right, Set.mem_ofPred_eq, norm_mul, Complex.norm_exp] at *
  apply lt_of_le_of_lt (mul_le_mul h3.le hya (Real.exp_nonneg y.re) ha.le)
  simp [field]

end ComplexContinuousExpComp

namespace Real

@[continuity, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exp/Variant872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exp/Variant872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97aa22cce9a0173e19aa13b00bb213f5a48ebef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
