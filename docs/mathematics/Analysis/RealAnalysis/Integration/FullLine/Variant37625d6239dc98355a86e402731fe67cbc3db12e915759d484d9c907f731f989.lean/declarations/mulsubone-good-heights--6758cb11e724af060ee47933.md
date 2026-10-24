# mulSubOne_good_heights

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:857a5c9d-7517-36d5-42f6-1a51453afa42",
  "kind": "theorem",
  "lexical_name": "mulSubOne_good_heights",
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
  "slug": "mulsubone-good-heights--6758cb11e724af060ee47933",
  "source": {
    "blob": "133d738d698b7cf16c2b9024a42b278b900a3a64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 457,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6758cb11e724af060ee47933af3d03addc9b10f030fe5eb8556b052921fd1a1e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:857a5c9d-7517-36d5-42f6-1a51453afa42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulSubOne_good_heights (a b : ℝ) :
    ∃ C : ℝ, 0 < C ∧ ∃ j₀ : ℕ, ∀ j : ℕ, j₀ ≤ j → ∃ R : ℝ, (j : ℝ) ≤ R ∧ R ≤ (j : ℝ) + 1 ∧
      ∀ s : ℂ, (s.im = R ∨ s.im = -R) → a ≤ s.re → s.re ≤ b →
        mulSubOne s ≠ 0 ∧ ‖logDeriv mulSubOne s‖ ≤ C * (Real.log ((j : ℝ) + 3)) ^ 2 := by
  refine ⟨1, one_pos, 2, fun j hj => ⟨j, le_rfl, by linarith, fun s him _ _ => ?_⟩⟩
  have hj2 : (2 : ℝ) ≤ j := by exact_mod_cast hj
  have habs : |s.im| = j := by
    rcases him with h | h
    · rw [h, abs_of_nonneg (by linarith)]
    · rw [h, abs_neg, abs_of_nonneg (by linarith)]
  have hs : s.im ≠ 0 := by
    intro h; rw [h, abs_zero] at habs; linarith
  have hlog1 : 1 ≤ Real.log ((j : ℝ) + 3) := by
    rw [← Real.log_exp 1]
    exact Real.log_le_log (Real.exp_pos 1) (by linarith [Real.exp_one_lt_d9])
  constructor
  · intro h0
    rw [mulSubOne_eq_zero_iff] at h0
    simp only [Finset.coe_insert, Finset.coe_singleton, Set.mem_insert_iff,
      Set.mem_singleton_iff] at h0
    rcases h0 with h | h <;> (rw [h] at hs; simp at hs)
  · calc ‖logDeriv mulSubOne s‖ ≤ 2 / |s.im| := norm_logDeriv_mulSubOne_le hs
      _ ≤ 1 := by rw [habs, div_le_one (by linarith)]; exact hj2
      _ ≤ 1 * (Real.log ((j : ℝ) + 3)) ^ 2 := by nlinarith

/-- on Re s = c > 1:  logDeriv (s(s−1)) = 1/s + 1/(s−1), bounded by 1 + 1/(c−1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `133d738d698b7cf16c2b9024a42b278b900a3a64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
