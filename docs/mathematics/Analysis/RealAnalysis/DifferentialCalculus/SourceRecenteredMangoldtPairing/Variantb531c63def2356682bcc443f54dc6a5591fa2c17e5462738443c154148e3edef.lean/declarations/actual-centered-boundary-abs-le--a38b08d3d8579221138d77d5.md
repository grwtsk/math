# actual_centered_boundary_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:324976a0-841f-80f3-1fb2-9597463cc859",
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
  "slug": "actual-centered-boundary-abs-le--a38b08d3d8579221138d77d5",
  "source": {
    "blob": "de6f7826d4dad062f2743a0302d3afb4935ee626",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 91,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a38b08d3d8579221138d77d562b5483308680af60301d794ecfc6bec2ec86bc2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:324976a0-841f-80f3-1fb2-9597463cc859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–116.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de6f7826d4dad062f2743a0302d3afb4935ee626` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
