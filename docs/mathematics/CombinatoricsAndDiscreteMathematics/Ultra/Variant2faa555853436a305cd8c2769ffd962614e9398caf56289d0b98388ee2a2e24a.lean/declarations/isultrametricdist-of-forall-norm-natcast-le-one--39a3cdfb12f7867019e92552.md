# isUltrametricDist_of_forall_norm_natCast_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eecb07b2-b883-9893-bd92-8f4daca0b894",
  "kind": "lemma",
  "lexical_name": "isUltrametricDist_of_forall_norm_natCast_le_one",
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
  "slug": "isultrametricdist-of-forall-norm-natcast-le-one--39a3cdfb12f7867019e92552",
  "source": {
    "blob": "ffcdb09397d1bb4206ebe38e0efc9b2b467c869b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variant2faa555853436a305cd8c2769ffd962614e9398caf56289d0b98388ee2a2e24a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39a3cdfb12f7867019e92552c352687eca6b1f72ed1f0a8973017dad27c8e7c8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ultra/Variant2faa555853436a305cd8c2769ffd962614e9398caf56289d0b98388ee2a2e24a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eecb07b2-b883-9893-bd92-8f4daca0b894`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isUltrametricDist_of_forall_norm_natCast_le_one
    (h : ∀ n : ℕ, ‖(n : R)‖ ≤ 1) : IsUltrametricDist R := by
  -- from a previous lemma, suffices to prove that for all `m`, we have
  -- `‖x + 1‖ ^ m ≤ (m + 1) • max 1 ‖x‖ ^ m`
  refine isUltrametricDist_of_forall_pow_norm_le_nsmul_pow_max_one_norm (fun x m ↦ ?_)
  -- we first use our hypothesis about the norm of naturals to have that multiplication by
  -- naturals keeps the norm small
  replace h (x : R) (n : ℕ) : ‖n • x‖ ≤ ‖x‖ := by
    rw [nsmul_eq_mul, norm_mul]
    rcases (norm_nonneg x).eq_or_lt with hx | hx
    · simp only [← hx, mul_zero, le_refl]
    · simpa only [mul_le_iff_le_one_left hx] using h _
  -- we expand the LHS using the binomial theorem, and apply the hypothesis to bound each term by
  -- a power of ‖x‖
  transitivity ∑ k ∈ Finset.range (m + 1), ‖x‖ ^ k
  · simpa only [← norm_pow, (Commute.one_right x).add_pow, one_pow, mul_one, nsmul_eq_mul,
      Nat.cast_comm] using (norm_sum_le _ _).trans (Finset.sum_le_sum fun _ _ ↦ h _ _)
  -- the nature of the norm means that one of `1` and `‖x‖ ^ m` is the largest of the two, so the
  -- other terms in the binomial expansion are bounded by the max of these, and the number of terms
  -- in the sum is precisely `m + 1`
  rw [← Finset.card_range (m + 1), ← Finset.sum_const, Finset.card_range]
  rcases max_cases 1 (‖x‖ ^ m) with (⟨hm, hx⟩|⟨hm, hx⟩) <;> rw [hm] <;>
  -- which we show by comparing the terms in the sum one by one
  refine Finset.sum_le_sum fun i hi ↦ ?_
  · rcases eq_or_ne m 0 with rfl | hm
    · simp only [pow_zero, le_refl,
        show i = 0 by simpa only [zero_add, Finset.range_one, Finset.mem_singleton] using hi]
    · rw [pow_le_one_iff_of_nonneg (norm_nonneg _) hm] at hx
      exact pow_le_one₀ (norm_nonneg _) hx
  · refine pow_le_pow_right₀ ?_ (by simpa only [Finset.mem_range, Nat.lt_succ] using hi)
    contrapose! hx
    exact pow_le_one₀ (norm_nonneg _) hx.le

end sufficient

end IsUltrametricDist

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ultra/Variant2faa555853436a305cd8c2769ffd962614e9398caf56289d0b98388ee2a2e24a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variant2faa555853436a305cd8c2769ffd962614e9398caf56289d0b98388ee2a2e24a.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffcdb09397d1bb4206ebe38e0efc9b2b467c869b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
