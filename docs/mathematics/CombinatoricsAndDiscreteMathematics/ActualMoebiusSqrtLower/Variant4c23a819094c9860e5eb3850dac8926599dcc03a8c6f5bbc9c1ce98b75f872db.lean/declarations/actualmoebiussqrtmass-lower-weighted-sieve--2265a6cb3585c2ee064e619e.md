# actualMoebiusSqrtMass_lower_weighted_sieve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecfa356a-32c8-a5d5-685c-00957cb4ad16",
  "kind": "theorem",
  "lexical_name": "actualMoebiusSqrtMass_lower_weighted_sieve",
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
  "slug": "actualmoebiussqrtmass-lower-weighted-sieve--2265a6cb3585c2ee064e619e",
  "source": {
    "blob": "87b831ee0a8ae456bbd929d97205358010f68b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 147,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2265a6cb3585c2ee064e619edec060cf0d0d8e8c5ed7978f926cd2075a57539b",
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

Occurrence: `result:ecfa356a-32c8-a5d5-685c-00957cb4ad16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMoebiusSqrtMass_lower_weighted_sieve (U : ℕ) :
    (∑ n ∈ Finset.Icc 1 U, 1 / Real.sqrt (n : ℝ)) ≤
      (∑ n ∈ Finset.Icc 1 U, |realMoebius n| / Real.sqrt (n : ℝ)) +
        ∑ k ∈ Finset.Icc 2 U, squareDivisorSqrtMass U k := by
  classical
  have hrow (n : ℕ) (hn : n ∈ Finset.Icc 1 U) :
      1 / Real.sqrt (n : ℝ) ≤ |realMoebius n| / Real.sqrt (n : ℝ) +
        ∑ k ∈ Finset.Icc 2 U, if k * k ∣ n then 1 / Real.sqrt (n : ℝ) else 0 := by
    obtain ⟨hn1, hnU⟩ := Finset.mem_Icc.mp hn
    have hi := div_le_div_of_nonneg_right (actualAbsMoebius_lower_square_sieve hn1 hnU)
      (Real.sqrt_nonneg (n : ℝ))
    have he : (∑ k ∈ Finset.Icc 2 U, if k * k ∣ n then (1 : ℝ) else 0) /
        Real.sqrt (n : ℝ) =
        ∑ k ∈ Finset.Icc 2 U, if k * k ∣ n then 1 / Real.sqrt (n : ℝ) else 0 := by
      rw [Finset.sum_div]
      apply Finset.sum_congr rfl
      intro k _
      split_ifs <;> simp
    rw [he, sub_div] at hi
    linarith
  have hs := Finset.sum_le_sum hrow
  rw [Finset.sum_add_distrib, Finset.sum_comm] at hs
  exact hs

/-- The first six real square-divisor blocks retain the saved unit contributions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ActualMoebiusSqrtLower/Variant4c23a819094c9860e5eb3850dac8926599dcc03a8c6f5bbc9c1ce98b75f872db.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87b831ee0a8ae456bbd929d97205358010f68b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
