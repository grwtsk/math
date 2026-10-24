# squareDivisorSqrtMass_total_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0daf270f-a29f-cf00-054f-7e1103c23ed9",
  "kind": "theorem",
  "lexical_name": "squareDivisorSqrtMass_total_le",
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
  "slug": "squaredivisorsqrtmass-total-le--36e45cc13ab9a6632058f2e4",
  "source": {
    "blob": "87b831ee0a8ae456bbd929d97205358010f68b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 172,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36e45cc13ab9a6632058f2e430c2d42722bf79d43b061672429b27200cff0f8d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0daf270f-a29f-cf00-054f-7e1103c23ed9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareDivisorSqrtMass_total_le {U : ℕ} (hU : 36 ≤ U) :
    (∑ k ∈ Finset.Icc 2 U, squareDivisorSqrtMass U k) ≤
      (25 / 18 : ℝ) * Real.sqrt (U : ℝ) - 25 / 18 := by
  have hrow (k : ℕ) (hk : k ∈ Finset.Icc 2 U) :
      squareDivisorSqrtMass U k ≤ 2 * Real.sqrt (U : ℝ) / (k : ℝ) ^ 2 -
        (if k ≤ 6 then 1 / (k : ℝ) else 0) := by
    have hk1 : 1 ≤ k := by have := (Finset.mem_Icc.mp hk).1; omega
    by_cases hk6 : k ≤ 6
    · rw [if_pos hk6]
      apply squareDivisorSqrtMass_le_saved hk1
      nlinarith
    · rw [if_neg hk6, sub_zero]
      exact squareDivisorSqrtMass_le hk1
  have hs := Finset.sum_le_sum hrow
  rw [Finset.sum_sub_distrib] at hs
  have he : (∑ k ∈ Finset.Icc 2 U, 2 * Real.sqrt (U : ℝ) / (k : ℝ) ^ 2) =
      2 * Real.sqrt (U : ℝ) * (∑ k ∈ Finset.Icc 2 U, 1 / (k : ℝ) ^ 2) := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  have hb : (∑ k ∈ Finset.Icc 2 U, if k ≤ 6 then 1 / (k : ℝ) else 0) =
      ∑ k ∈ Finset.Icc (2 : ℕ) 6, 1 / (k : ℝ) := by
    rw [← Finset.sum_filter]
    congr 1
    ext k
    simp only [Finset.mem_filter, Finset.mem_Icc]
    omega
  rw [he, hb] at hs
  have hm := mul_le_mul_of_nonneg_left (reciprocalSquare_sum_upper U)
    (show 0 ≤ 2 * Real.sqrt (U : ℝ) by positivity)
  have hbonus := reciprocal_small_square_divisor_bonus
  linarith

/-- The complete actual unsigned Moebius half-sum has a positive square-root lower norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87b831ee0a8ae456bbd929d97205358010f68b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
