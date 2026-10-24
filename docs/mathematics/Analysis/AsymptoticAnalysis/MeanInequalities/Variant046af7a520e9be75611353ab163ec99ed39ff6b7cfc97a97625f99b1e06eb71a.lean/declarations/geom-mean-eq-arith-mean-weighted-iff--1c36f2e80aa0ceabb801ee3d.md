# geom_mean_eq_arith_mean_weighted_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "695b7766d64f0324ce6af502e548a5e3de8e4aca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b320dc0-7adc-9da0-fd0a-18a1fe6234df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c5b028d-df69-4d91-04ac-fa7b0052ed9e",
  "kind": "theorem",
  "lexical_name": "geom_mean_eq_arith_mean_weighted_iff'",
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
  "slug": "geom-mean-eq-arith-mean-weighted-iff--1c36f2e80aa0ceabb801ee3d",
  "source": {
    "blob": "695b7766d64f0324ce6af502e548a5e3de8e4aca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 197,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c36f2e80aa0ceabb801ee3dce1ce9093753ed4d585f46dab52fb3df8b8273b2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c5b028d-df69-4d91-04ac-fa7b0052ed9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geom_mean_eq_arith_mean_weighted_iff' (w z : ι → ℝ) (hw : ∀ i ∈ s, 0 < w i)
    (hw' : ∑ i ∈ s, w i = 1) (hz : ∀ i ∈ s, 0 ≤ z i) :
    ∏ i ∈ s, z i ^ w i = ∑ i ∈ s, w i * z i ↔ ∀ j ∈ s, z j = ∑ i ∈ s, w i * z i := by
  by_cases A : ∃ i ∈ s, z i = 0 ∧ w i ≠ 0
  · rcases A with ⟨i, his, hzi, hwi⟩
    rw [prod_eq_zero his]
    · constructor
      · intro h
        rw [← h]
        intro j hj
        apply eq_zero_of_ne_zero_of_mul_left_eq_zero (ne_of_lt (hw j hj)).symm
        apply (sum_eq_zero_iff_of_nonneg ?_).mp h.symm j hj
        exact fun i hi => (mul_nonneg_iff_of_pos_left (hw i hi)).mpr (hz i hi)
      · intro h
        convert h i his
        exact hzi.symm
    · rw [hzi]
      exact zero_rpow hwi
  · simp only [not_exists, not_and] at A
    have hz' := fun i h => lt_of_le_of_ne (hz i h) (fun a => (A i h a.symm) (ne_of_gt (hw i h)))
    have := strictConvexOn_exp.map_sum_eq_iff hw hw' fun i _ => Set.mem_univ <| log (z i)
    simp only [exp_sum, smul_eq_mul, mul_comm (w _) (log _)] at this
    convert this using 1
    · apply Eq.congr <;>
      [apply prod_congr rfl; apply sum_congr rfl] <;>
      intro i hi <;>
      simp only [exp_mul, exp_log (hz' i hi)]
    · constructor <;> intro h j hj
      · rw [← arith_mean_weighted_of_constant s w _ (log (z j)) hw' fun i _ => congrFun rfl]
        apply sum_congr rfl
        intro x hx
        simp only [mul_comm, h j hj, h x hx]
      · rw [← arith_mean_weighted_of_constant s w _ (z j) hw' fun i _ => congrFun rfl]
        apply sum_congr rfl
        intro x hx
        simp only [log_injOn_pos (hz' j hj) (hz' x hx), h j hj, h x hx]

/-- **AM-GM inequality - equality condition**: This theorem provides the equality condition for the
weighted version of the AM-GM inequality for real-valued nonnegative functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variant046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variant046af7a520e9be75611353ab163ec99ed39ff6b7cfc97a97625f99b1e06eb71a.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695b7766d64f0324ce6af502e548a5e3de8e4aca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
