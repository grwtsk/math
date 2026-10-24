# jensen_with_explicit_missing_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52a518ae-c259-0255-159a-dd852153cb7a",
  "kind": "theorem",
  "lexical_name": "jensen_with_explicit_missing_bound",
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
  "slug": "jensen-with-explicit-missing-bound--70bdb722dcebdbec4e682bef",
  "source": {
    "blob": "9f54a11e2b7a30a02d917968d34c1ba6bc9bd6db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZeroCountProbe/Variant41788b5e6fc67a79048dd73ea9aa8da14fd876d7806eb7fd174a33296677fb48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70bdb722dcebdbec4e682befab2edcd247ced1c66d4247b85a52c3f73ebb893a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZeroCountProbe/Variant41788b5e6fc67a79048dd73ea9aa8da14fd876d7806eb7fd174a33296677fb48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52a518ae-c259-0255-159a-dd852153cb7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jensen_with_explicit_missing_bound {r M : ℝ} (hr : 0 < r) (hM : 1 ≤ M)
    (bound : ∀ z ∈ sphere (0 : ℂ) (2 * r), ‖clearedZeta z‖ ≤ M) :
    ((∑ᶠ z, MeromorphicOn.divisor clearedZeta (closedBall 0 |r|) z : ℤ) : ℝ) ≤
      Real.log M / Real.log 2 := by
  have hr2 : 0 < (2 : ℝ) * r := by positivity
  have analytic : AnalyticOnNhd ℂ clearedZeta (closedBall 0 |2 * r|) :=
    fun z _ => cleared_entire.analyticAt z
  have h := AnalyticOnNhd.sum_divisor_le (c := (0 : ℂ)) (r := r) (R := 2 * r)
    (M := M) (f := clearedZeta) (by simpa only [abs_of_pos hr])
    (by rw [abs_of_pos hr, abs_of_pos hr2]; linarith)
    hM analytic (by simp [cleared_zero_value])
    (by simpa only [abs_of_pos hr2] using bound)
  simpa only [cleared_zero_value, norm_one, div_one,
    mul_div_cancel_right₀ (2 : ℝ) hr.ne'] using h
#print axioms cleared_entire
#print axioms cleared_eq
#print axioms jensen_with_explicit_missing_bound
end QuarticCountAudit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZeroCountProbe/Variant41788b5e6fc67a79048dd73ea9aa8da14fd876d7806eb7fd174a33296677fb48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZeroCountProbe/Variant41788b5e6fc67a79048dd73ea9aa8da14fd876d7806eb7fd174a33296677fb48.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f54a11e2b7a30a02d917968d34c1ba6bc9bd6db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
