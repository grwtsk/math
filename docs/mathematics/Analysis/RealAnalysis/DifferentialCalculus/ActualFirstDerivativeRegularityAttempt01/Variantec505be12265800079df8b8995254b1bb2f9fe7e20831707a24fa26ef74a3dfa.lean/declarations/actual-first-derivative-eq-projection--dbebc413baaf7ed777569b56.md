# actual_first_derivative_eq_projection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41762570-c408-36f3-abf4-f5eeb6d6e613",
  "kind": "theorem",
  "lexical_name": "actual_first_derivative_eq_projection",
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
  "slug": "actual-first-derivative-eq-projection--dbebc413baaf7ed777569b56",
  "source": {
    "blob": "ff3f0a1791f10d7938c1f2201bd500cf19272d10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantec505be12265800079df8b8995254b1bb2f9fe7e20831707a24fa26ef74a3dfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbebc413baaf7ed777569b56944dde2a669e45e0234c7203801daeaeda0d5cf0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantec505be12265800079df8b8995254b1bb2f9fe7e20831707a24fa26ef74a3dfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41762570-c408-36f3-abf4-f5eeb6d6e613`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_first_derivative_eq_projection (A : ℝ) (hA : 0 < A) :
    deriv (normalizedTest explicitSecondDerivative A) = fun x =>
      normalizedInteriorDerivative A (projIcc (-A) A (by linarith) x) := by
  have hab : -A ≤ A := by linarith
  have hl := (normalizedInterior_frontier A hA (-A) (by rw [frontier_Icc hab]; simp)).2
  have hr := (normalizedInterior_frontier A hA A (by rw [frontier_Icc hab]; simp)).2
  funext x
  rw [actual_first_derivative_eq_indicator A hA]
  by_cases hx : x ∈ Icc (-A) A
  · rw [indicator_of_mem hx, projIcc_of_mem hab hx]
  · rw [indicator_of_notMem hx]
    rcases not_mem_Icc.mp hx with hx | hx
    · rw [projIcc_of_le_left hab hx.le]
      exact hl.symm
    · rw [projIcc_of_right_le hab hx.le]
      exact hr.symm

/-- The actual first derivative is globally Lipschitz; no global ordinary second derivative is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantec505be12265800079df8b8995254b1bb2f9fe7e20831707a24fa26ef74a3dfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt01/Variantec505be12265800079df8b8995254b1bb2f9fe7e20831707a24fa26ef74a3dfa.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff3f0a1791f10d7938c1f2201bd500cf19272d10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
