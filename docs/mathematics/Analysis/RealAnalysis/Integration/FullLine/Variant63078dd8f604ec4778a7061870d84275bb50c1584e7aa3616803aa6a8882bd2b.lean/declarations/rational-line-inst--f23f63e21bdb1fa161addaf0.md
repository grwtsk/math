# rational_line_inst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c153464c65a1419b366735889c1f9cc641239cb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 514,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c58dcb60-041a-96e5-7877-733141bf922a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db47b9f2-b5d2-b297-eeea-d7795be47574",
  "kind": "theorem",
  "lexical_name": "rational_line_inst",
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
  "slug": "rational-line-inst--f23f63e21bdb1fa161addaf0",
  "source": {
    "blob": "c153464c65a1419b366735889c1f9cc641239cb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 514,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f23f63e21bdb1fa161addaf0127bd0776d758b68beb8bc56c6670b2f431ce9ec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db47b9f2-b5d2-b297-eeea-d7795be47574`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rational_line_inst {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k)
    {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 3 / 2) :
    Integrable (fun t : ℝ => (Hfn k ((c : ℂ) + t * I) + Hfn k (1 - c - t * I))
        * (1 / ((c : ℂ) + t * I) + 1 / ((c : ℂ) + t * I - 1))) ∧
    (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, (Hfn k ((c : ℂ) + t * I) + Hfn k (1 - c - t * I))
        * (1 / ((c : ℂ) + t * I) + 1 / ((c : ℂ) + t * I - 1)))
      = Hfn k 0 + Hfn k 1 := by
  have hstrip : ∀ ρ ∈ ((({0, 1} : Finset ℂ)) : Set ℂ), 1 - c < ρ.re ∧ ρ.re < c := by
    intro ρ hρ
    simp only [Finset.coe_insert, Finset.coe_singleton, Set.mem_insert_iff,
      Set.mem_singleton_iff] at hρ
    rcases hρ with h | h <;> (rw [h]; simp; constructor <;> linarith)
  have hne : ∀ t : ℝ, mulSubOne ((c : ℂ) + t * I) ≠ 0 := ne_zero_on_line mulSubOne_eq_zero_iff hstrip
  have hint := integrable_Fline_of differentiable_mulSubOne hne (mulSubOne_line_bound hc1) hk hkc
    (by linarith) (by linarith)
  have hid := full_line_identity_of differentiable_mulSubOne (by linarith) (by linarith)
    logDeriv_mulSubOne_one_sub mulSubOne_eq_zero_iff hstrip (mulSubOne_good_heights (1 - c) c)
    (mulSubOne_line_bound hc1) hk hkc (Summable.of_finite)
  rw [Finset.tsum_subtype' ({0, 1} : Finset ℂ)
      (fun ρ => (analyticOrderNatAt mulSubOne ρ : ℂ) * Hfn k ρ),
    Finset.sum_pair zero_ne_one, analyticOrderNatAt_mulSubOne_zero,
    analyticOrderNatAt_mulSubOne_one, Nat.cast_one, one_mul, one_mul] at hid
  unfold Fline at hint
  simp_rw [logDeriv_mulSubOne_line hc1] at hint hid
  exact ⟨hint, hid⟩

end Rational

section XiDeriv

/-! ### f = ξ′: (EF1) [XF′ Prop. 4.1] -/

open Zeta23.WeilEF (EF_zero_sum_summable_gen)

/-- **(EF1) on a general line Re s = c ∈ (1, 3/2]**, conditional on (F2), with the line bound
‖ξ″/ξ′(c+it)‖ ≤ M log(2+|t|) as an explicit hypothesis (in tree only for c = 5/4:
LineBound.norm_logDeriv_xiDeriv_line).  Good heights: ZeroCount.xiDeriv_good_heights;
absolute convergence: WeilEF.EF_zero_sum_summable_gen plus the local zero count. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c153464c65a1419b366735889c1f9cc641239cb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
