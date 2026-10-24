# actual_twice_covariant_fourth_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ede46d18-ba6b-6cec-d765-b1d45f3abd31",
  "kind": "theorem",
  "lexical_name": "actual_twice_covariant_fourth_abs_le",
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
  "slug": "actual-twice-covariant-fourth-abs-le--f231a58476d7bac0e65622fc",
  "source": {
    "blob": "216b1f493daf13ae741971967cdffddceca12dfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 134,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variant860413e36108a4fda7fdd10bb5801adb1118a52f2726b7b75ba2dbd19b2d74c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f231a58476d7bac0e65622fc0a6f9bce87555243c7622a01ca043c0dc2bf08d0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variant860413e36108a4fda7fdd10bb5801adb1118a52f2726b7b75ba2dbd19b2d74c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ede46d18-ba6b-6cec-d765-b1d45f3abd31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_twice_covariant_fourth_abs_le (A t s : ℝ) (hA : 91 ≤ A) :
    |covariantMixedDerivative
      (fun x y => covariantMixedDerivative (actualLogColumnSource A) x y) t s| ≤
        Real.exp (t / 2) * Real.exp (-s / 2) * (67 / A ^ 4) := by
  rw [actual_twice_covariant_mixed_fourth A (by linarith) t s]
  simp only [actualCovariantJet, abs_mul, abs_of_pos (Real.exp_pos _)]
  exact mul_le_mul_of_nonneg_left
    (actual_correlation_iterated_fourth_abs_le_sixty_seven A (t + s) hA) (by positivity)

/-- Isolating C2 changes the ordinary mixed derivative by an actual quarter source term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variant860413e36108a4fda7fdd10bb5801adb1118a52f2726b7b75ba2dbd19b2d74c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNative01/Variant860413e36108a4fda7fdd10bb5801adb1118a52f2726b7b75ba2dbd19b2d74c7.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `216b1f493daf13ae741971967cdffddceca12dfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
