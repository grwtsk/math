# muq_increment_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdfbbe56c3098980c3d63ba72430b2e80671deeb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 303,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7def9ba2-f1a3-5ef3-f722-a70f70d540fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39604131-62c2-77bf-3e75-af6233c30823",
  "kind": "lemma",
  "lexical_name": "muq_increment_bound",
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
  "slug": "muq-increment-bound--8b27c7ad946d93a3633ccaac",
  "source": {
    "blob": "bdfbbe56c3098980c3d63ba72430b2e80671deeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 303,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b27c7ad946d93a3633ccaac9891c5cec7dfdd85948e80f11976235821c68494",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39604131-62c2-77bf-3e75-af6233c30823`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma muq_increment_bound (hΓq : GammaFactsChi κ q) (hq : 1 ≤ q) :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ t : ℝ, 2 ≤ t → ∀ r : ℝ,
      |muq κ q (t + r) - muq κ q t| ≤ K * (|r| + r ^ 2) / t := by
  obtain ⟨C₁, hC₁⟩ := hΓq.deriv_bound
  obtain ⟨M, hM0, hM⟩ := muq_linear_bound hΓq hq
  refine ⟨max (2 * |C₁|) (18 * M + 18), le_max_of_le_right (by positivity), fun t ht r => ?_⟩
  have ht0 : 0 < t := by linarith
  rw [le_div_iff₀ ht0]
  rcases le_or_gt |r| (t / 2) with hr | hr
  · have hmvt : ‖muq κ q (t + r) - muq κ q t‖ ≤ (2 * |C₁| / t) * ‖(t + r) - t‖ := by
      apply Convex.norm_image_sub_le_of_norm_deriv_le (s := Set.Icc (t / 2) (3 * t / 2))
      · intro x _
        exact hΓq.smooth.contDiffAt.differentiableAt (by simp)
      · intro x hx
        have hx1 : 1 ≤ |x| := by
          rw [abs_of_pos (by linarith [hx.1])]
          linarith [hx.1]
        calc ‖deriv (muq κ q) x‖ = |deriv (muq κ q) x| := Real.norm_eq_abs _
          _ ≤ C₁ / |x| := hC₁ x hx1
          _ ≤ |C₁| / |x| := by gcongr; exact le_abs_self _
          _ ≤ |C₁| / (t / 2) := by
              apply div_le_div_of_nonneg_left (abs_nonneg _) (by linarith)
              rw [abs_of_pos (by linarith [hx.1])]
              exact hx.1
          _ = 2 * |C₁| / t := by field_simp
      · exact convex_Icc _ _
      · constructor <;> linarith
      · constructor <;> linarith [le_abs_self r, neg_abs_le r]
    simp only [add_sub_cancel_left, Real.norm_eq_abs] at hmvt
    calc |muq κ q (t + r) - muq κ q t| * t ≤ (2 * |C₁| / t * |r|) * t := by gcongr
      _ = 2 * |C₁| * |r| := by field_simp
      _ ≤ max (2 * |C₁|) (18 * M + 18) * (|r| + r ^ 2) := by
          nlinarith [le_max_left (2 * |C₁|) (18 * M + 18), abs_nonneg r, sq_nonneg r,
            le_max_right (2 * |C₁|) (18 * M + 18)]
  · have h1 : |muq κ q (t + r) - muq κ q t| ≤ 2 * M + 2 + 7 * |r| := by
      calc |muq κ q (t + r) - muq κ q t| ≤ |muq κ q (t + r)| + |muq κ q t| := abs_sub _ _
        _ ≤ (M + |t + r|) + (M + |t|) := add_le_add (hM _) (hM _)
        _ ≤ (M + (|t| + |r|)) + (M + |t|) := by linarith [abs_add_le t r]
        _ = 2 * M + 2 * |t| + |r| := by ring
        _ ≤ 2 * M + 2 + 7 * |r| := by
            rw [abs_of_pos ht0]
            nlinarith
    calc |muq κ q (t + r) - muq κ q t| * t ≤ (2 * M + 2 + 7 * |r|) * t := by gcongr
      _ ≤ (2 * M + 2 + 7 * |r|) * (2 * |r|) := by
          apply mul_le_mul_of_nonneg_left (by linarith) (by positivity)
      _ = (4 * M + 4) * |r| + 14 * |r| ^ 2 := by ring
      _ = (4 * M + 4) * |r| + 14 * r ^ 2 := by rw [sq_abs]
      _ ≤ max (2 * |C₁|) (18 * M + 18) * (|r| + r ^ 2) := by
          nlinarith [le_max_right (2 * |C₁|) (18 * M + 18), abs_nonneg r, sq_nonneg r, hM0]

/-- μ_χ ≥ 0 far out (mirror of mu_nonneg_eventually; uses q ≥ 1 ⇒ log(qτ/2π) ≥ log(τ/2π)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeSideChi/Variant748e97b8fc0f5bb617457b57861469ab1313eef2b8ffdf150603343ec0d200ca.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdfbbe56c3098980c3d63ba72430b2e80671deeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
