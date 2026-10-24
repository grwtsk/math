# actual_complete_tent_row_pays_six_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34076e22-8d5e-261f-80a6-9c6820ca7f2d",
  "kind": "theorem",
  "lexical_name": "actual_complete_tent_row_pays_six_window",
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
  "slug": "actual-complete-tent-row-pays-six-window--66ce1e9184317eae3adeb196",
  "source": {
    "blob": "38bfda76cc340b3fae3b045d23d22935425ac848",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentAbsoluteMass/Variant2536427a344b72529ebabbeff8a3dd35bb3a981a6fa0d87c380a76dbd1d07e9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66ce1e9184317eae3adeb196708509385963850896ca7dcd0e3fb873f46158a0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentAbsoluteMass/Variant2536427a344b72529ebabbeff8a3dd35bb3a981a6fa0d87c380a76dbd1d07e9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34076e22-8d5e-261f-80a6-9c6820ca7f2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_complete_tent_row_pays_six_window {x : ℝ} (hx : 6 ≤ x) :
    ((sixWindow x).card : ℝ) / 4 ≤
      ∑ n ∈ Finset.Icc 2 ⌊16 * x⌋₊,
        |ArithmeticFunction.vonMangoldt n - 1| * tentWeight (n / x) := by
  let T := (sixWindow x).image (fun k ↦ 6 * k)
  have hi : Function.Injective (fun k : ℕ ↦ 6 * k) := by
    intro a b h
    dsimp only at h
    omega
  have hsub : T ⊆ Finset.Icc 2 ⌊16 * x⌋₊ := by
    intro n hn
    obtain ⟨k, hk, rfl⟩ := Finset.mem_image.mp hn
    have hl := six_window_atom_location hx hk
    exact Finset.mem_Icc.mpr ⟨by omega, Nat.le_floor (by linarith [hl.2.2])⟩
  have hfirst : ((sixWindow x).card : ℝ) / 4 ≤
      ∑ k ∈ sixWindow x, |ArithmeticFunction.vonMangoldt (6 * k) - 1| *
        tentWeight ((6 * k : ℕ) / x) := by
    calc
      _ = ∑ _k ∈ sixWindow x, (1 / 4 : ℝ) := by simp [div_eq_mul_inv]
      _ ≤ _ := Finset.sum_le_sum (fun k hk ↦ every_selected_six_atom_pays_quarter hx hk)
  have himage : (∑ k ∈ sixWindow x, |ArithmeticFunction.vonMangoldt (6 * k) - 1| *
      tentWeight ((6 * k : ℕ) / x)) =
      ∑ n ∈ T, |ArithmeticFunction.vonMangoldt n - 1| * tentWeight (n / x) := by
    rw [Finset.sum_image (fun a _ b _ h ↦ hi h)]
  rw [himage] at hfirst
  exact hfirst.trans (Finset.sum_le_sum_of_subset_of_nonneg hsub
    (fun n _ _ ↦ mul_nonneg (abs_nonneg _) (tent_weight_nonnegative _)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentAbsoluteMass/Variant2536427a344b72529ebabbeff8a3dd35bb3a981a6fa0d87c380a76dbd1d07e9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentAbsoluteMass/Variant2536427a344b72529ebabbeff8a3dd35bb3a981a6fa0d87c380a76dbd1d07e9a.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38bfda76cc340b3fae3b045d23d22935425ac848` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
