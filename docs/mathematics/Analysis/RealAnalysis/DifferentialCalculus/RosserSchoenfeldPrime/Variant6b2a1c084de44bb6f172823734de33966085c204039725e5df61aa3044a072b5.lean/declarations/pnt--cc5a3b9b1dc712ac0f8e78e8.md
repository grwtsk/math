# pnt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44222ccb-83bb-3c03-5fd2-c8e31ec87f42",
  "kind": "theorem",
  "lexical_name": "pnt",
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
  "slug": "pnt--cc5a3b9b1dc712ac0f8e78e8",
  "source": {
    "blob": "c0704692114bca6c8ed8a8e14715cb316b48f6a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc5a3b9b1dc712ac0f8e78e81970b8734f7ab778f495b90c4429ed83c0160c5d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44222ccb-83bb-3c03-5fd2-c8e31ec87f42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pnt : ∃ C ≥ 0, ∀ x ≥ 2, |θ x - x| ≤ C * x / log x ^ 2 := by
  obtain ⟨c, hc⟩ := isBigO_iff'.1 pntBigO
  obtain ⟨N, hN⟩ := eventually_atTop.1 hc.2
  by_cases! hn : 2 ≤ N
  · refine ⟨max c (4 * (θ N + N)), le_max_of_le_left hc.1.le, fun x hx => ?_⟩
    by_cases! h : x ≤ N
    · suffices |θ x - x| * log x ^ 2 / x ≤ 4 * (θ N + N) from by
        rw [le_div_iff₀ (sq_pos_of_pos (log_pos (by linarith))), ← div_le_iff₀ (by linarith)]
        exact this.trans (le_max_right c (4 * (θ N + N)))
      have : |θ x - x| ≤ θ N + N := calc
        _ ≤ |θ x| + |x| := abs_sub _ _
        _ = θ x + x := by rw [abs_of_nonneg (theta_nonneg _), abs_of_nonneg (by linarith)]
        _ ≤ _ := by gcongr; exact theta_mono h
      calc
      _ ≤ (θ N + N) * log x ^ 2 / x := by gcongr
      _ ≤ (θ N + N) * (x ^ (1 / 2 : ℝ) / (1 / 2)) ^ 2 / x := by
        gcongr
        · exact add_nonneg (theta_nonneg _) (by linarith)
        · exact log_nonneg (by linarith)
        · exact log_le_rpow_div (by linarith) (by linarith)
      _ = _ := by rw [← sqrt_eq_rpow, div_pow, sq_sqrt (by linarith)]; field_simp; ring
    · simpa [abs_of_nonneg (by grind : 0 ≤ x), mul_div] using (hN x h.le).trans <|
        mul_le_mul_of_nonneg_right (le_max_left c (4 * (θ N + N))) (norm_nonneg _)
  · refine ⟨c, hc.1.le, fun x hx => ?_⟩
    simpa [abs_of_nonneg (by grind : 0 ≤ x), mul_div] using hN x (hn.le.trans hx)

@[blueprint
  "theta-stieltjes"
  (title := "The Chebyshev function is Stieltjes")
  (statement := /-- The function $\vartheta(x) = \sum_{p \leq x} \log p$ defines a Stieltjes function (monotone and right continuous). -/)
  (proof := /-- Trivial -/)
  (latexEnv := "sublemma")
  (discussion := 598)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0704692114bca6c8ed8a8e14715cb316b48f6a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
