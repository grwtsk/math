# actual_centered_boundary_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea0363bc-c539-82b8-a3e9-baba2495af74",
  "kind": "theorem",
  "lexical_name": "actual_centered_boundary_abs_le",
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
  "slug": "actual-centered-boundary-abs-le--414a8de5d2437a6903e3c6a9",
  "source": {
    "blob": "f73912ac574899b1b287a875f3712748c02ee1f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 99,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:414a8de5d2437a6903e3c6a90104f166d87744621d36692480e4777afa367b1e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea0363bc-c539-82b8-a3e9-baba2495af74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_centered_boundary_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |(mangoldtLogError (2 * A) + Real.eulerMascheroniConstant) *
      criticalPrimeTest A (Real.log 2)| ≤ boundaryBudget := by
  have he := mangoldtLogError_abs_le (2 * A) (by linarith)
  have hc := actual_correlation_abs_le_one A (Real.log 2) hA
  have hgamma : |Real.eulerMascheroniConstant| ≤ (2 / 3 : ℝ) := by
    rw [abs_of_nonneg (by linarith [Real.one_half_lt_eulerMascheroniConstant])]
    exact Real.eulerMascheroniConstant_lt_two_thirds.le
  have hb := (abs_add_le (mangoldtLogError (2 * A)) Real.eulerMascheroniConstant).trans
    (add_le_add he hgamma)
  have htest : |criticalPrimeTest A (Real.log 2)| ≤ Real.exp (Real.log 2 / 2) := by
    unfold criticalPrimeTest
    rw [abs_mul, abs_of_pos (Real.exp_pos _)]
    simpa only [mul_one] using mul_le_mul_of_nonneg_left hc (Real.exp_pos _).le
  unfold boundaryBudget
  rw [abs_mul]
  have hp : 0 ≤ Real.log 4 + 4 + Real.log 2 + 2 / 3 := by
    have hl4 := Real.log_nonneg (show (1 : ℝ) ≤ 4 by norm_num)
    have hl2 := Real.log_nonneg (show (1 : ℝ) ≤ 2 by norm_num)
    linarith
  calc
    _ ≤ (Real.log 4 + 4 + Real.log 2 + 2 / 3) * Real.exp (Real.log 2 / 2) :=
      mul_le_mul hb htest (abs_nonneg _) hp
    _ = _ := by ring

/-- A future COMPLETE compensated signed bound retains only this fixed boundary loss. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variant517b9c16e624667fa65d011ab9757951c72482c7c7dc316a2b3eb4181bbd56fb.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f73912ac574899b1b287a875f3712748c02ee1f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
