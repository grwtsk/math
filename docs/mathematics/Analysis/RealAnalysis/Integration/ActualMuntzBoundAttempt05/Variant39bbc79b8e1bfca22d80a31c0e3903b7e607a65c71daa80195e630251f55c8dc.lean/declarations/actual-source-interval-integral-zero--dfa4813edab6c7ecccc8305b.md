# actual_source_interval_integral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdc1df67-d13a-13b6-cd30-7a64eb5737b0",
  "kind": "theorem",
  "lexical_name": "actual_source_interval_integral_zero",
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
  "slug": "actual-source-interval-integral-zero--dfa4813edab6c7ecccc8305b",
  "source": {
    "blob": "3aaf8ceaf415c885cc24304a0751bf7729a6e9ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 13,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt05/Variant39bbc79b8e1bfca22d80a31c0e3903b7e607a65c71daa80195e630251f55c8dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfa4813edab6c7ecccc8305bd0b3dd05d22fb4e80c824e5ef3e465f8c755ab4e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt05/Variant39bbc79b8e1bfca22d80a31c0e3903b7e607a65c71daa80195e630251f55c8dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdc1df67-d13a-13b6-cd30-7a64eb5737b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_interval_integral_zero {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..Real.exp A, actualLogSource A u) = 0 := by
  have hp : 0 < A := by linarith
  have he : (Set.Ioc 0 (Real.exp A)).indicator (actualLogSource A) = actualLogSource A := by
    funext u
    by_cases hu : u ∈ Set.Ioc 0 (Real.exp A)
    · simp [hu]
    · have hz : actualLogSource A u = 0 := by
        apply actualLogSource_zero_outside hp
        simp only [Set.mem_Ioc,not_and_or,not_lt,not_le] at hu
        rcases hu with hu | hu
        · exact Or.inl (hu.trans (Real.exp_pos (-A)).le)
        · exact Or.inr hu.le
      simp [hu,hz]
  have hepos : (Set.Ioi 0).indicator (actualLogSource A) = actualLogSource A := by
    funext u
    by_cases hu : 0 < u
    · simp [hu]
    · simp [hu,actualLogSource_zero_nonpos A (le_of_not_gt hu)]
  rw [intervalIntegral.integral_of_le (Real.exp_pos A).le,
    ←integral_indicator measurableSet_Ioc,he,
    ←hepos,integral_indicator measurableSet_Ioi]
  exact actualLogSource_integral_zero hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt05/Variant39bbc79b8e1bfca22d80a31c0e3903b7e607a65c71daa80195e630251f55c8dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt05/Variant39bbc79b8e1bfca22d80a31c0e3903b7e607a65c71daa80195e630251f55c8dc.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3aaf8ceaf415c885cc24304a0751bf7729a6e9ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
