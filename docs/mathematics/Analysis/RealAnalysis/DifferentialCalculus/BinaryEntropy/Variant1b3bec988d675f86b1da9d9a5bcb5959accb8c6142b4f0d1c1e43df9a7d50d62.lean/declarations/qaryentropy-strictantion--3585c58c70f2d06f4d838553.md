# qaryEntropy_strictAntiOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a20299b1-e8a3-d6b6-d108-3e88dd915196",
  "kind": "lemma",
  "lexical_name": "qaryEntropy_strictAntiOn",
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
  "slug": "qaryentropy-strictantion--3585c58c70f2d06f4d838553",
  "source": {
    "blob": "6fbf074cde11f37267238c5e7978d884376cb4e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 400,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3585c58c70f2d06f4d8385534fb0ecf5147dd8fb0ee9a5d5121ab87bc71d93f4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a20299b1-e8a3-d6b6-d108-3e88dd915196`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma qaryEntropy_strictAntiOn (qLe2 : 2 ≤ q) :
    StrictAntiOn (qaryEntropy q) (Icc (1 - 1/q) 1) := by
  intro p1 hp1 p2 hp2 p1le2
  apply strictAntiOn_of_deriv_neg (convex_Icc (1 - 1/(q : ℝ)) 1) _ _ hp1 hp2 p1le2
  · exact qaryEntropy_continuous.continuousOn
  · intro p hp
    have : 2 ≤ (q : ℝ) := Nat.ofNat_le_cast.mpr qLe2
    have qinv_lt_1 : (q : ℝ)⁻¹ < 1 := inv_lt_one_of_one_lt₀ (by linarith)
    have zero_lt_1_sub_p : 0 < 1 - p := by simp_all only [sub_pos, hp.2, interior_Icc, mem_Ioo]
    simp only [one_div, interior_Icc, mem_Ioo] at hp
    rw [deriv_qaryEntropy (by linarith)]
    · field_simp
      rw [← log_mul (by linarith) (by linarith)]
      apply Real.strictMonoOn_log (mem_Ioi.mpr (show 0 < (↑q - 1) * (1 - p) by nlinarith))
      · simp_all only [mem_Ioi, mul_pos_iff_of_pos_left]
        linarith
      · have qpos : 0 < (q : ℝ) := by positivity
        ring_nf
        simp only [add_lt_iff_neg_right, neg_add_lt_iff_lt_add, add_zero, gt_iff_lt]
        have : (q : ℝ) - 1 < p * q := by
          have tmp := mul_lt_mul_of_pos_right hp.1 qpos
          simp at tmp
          have : (q : ℝ) ≠ 0 := (ne_of_lt qpos).symm
          have asdfasfd : (1 - (q : ℝ)⁻¹) * ↑q = q - 1 := by calc (1 - (q : ℝ)⁻¹) * ↑q
            _ = q - (q : ℝ)⁻¹ * (q : ℝ) := by ring
            _ = q - 1 := by simp_all only [ne_eq, isUnit_iff_ne_zero, Rat.cast_eq_zero,
              not_false_eq_true, IsUnit.inv_mul_cancel]
          rwa [asdfasfd] at tmp
        nlinarith
    exact (ne_of_gt (lt_add_neg_iff_lt.mp zero_lt_1_sub_p : p < 1)).symm

/-- Binary entropy is strictly increasing in interval [0, 1/2]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BinaryEntropy/Variant1b3bec988d675f86b1da9d9a5bcb5959accb8c6142b4f0d1c1e43df9a7d50d62.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fbf074cde11f37267238c5e7978d884376cb4e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
