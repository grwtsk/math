# actual_log_stieltjes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82c391a4-3d31-ddcc-08fa-27ed6c4e4d21",
  "kind": "theorem",
  "lexical_name": "actual_log_stieltjes",
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
  "slug": "actual-log-stieltjes--2a07c74d2a098078a167becb",
  "source": {
    "blob": "265ed8d2fb9c943b26c7ceeef2835af8f54ef0cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 153,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a07c74d2a098078a167becba8753775d6748daa57dddc4e6210848c660293cd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82c391a4-3d31-ddcc-08fa-27ed6c4e4d21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_log_stieltjes {A : ℝ} (hA : 1 ≤ A) :
    integerJ A = -(∫ t in Ioi (0:ℝ), signedLogKernel A t) := by
  rw [actual_full_stieltjes hA]
  have he := integral_comp_exp_Ioi (fun x =>
    (Chebyshev.psi x - (⌊x⌋ : ℝ)) * deriv (plainProfile A 1) x) 0
  simp only [Real.exp_zero] at he
  rw [← he]
  congr 1
  exact setIntegral_congr_fun measurableSet_Ioi (fun t _ => actual_log_kernel_eq hA t)

#print axioms signedLogKernel
#print axioms actual_log_kernel_eq
#print axioms actual_log_signed_integrable
#print axioms actual_log_stieltjes

#print axioms actual_derivative_zero_above
#print axioms actual_signed_integrable
#print axioms actual_full_stieltjes

#print axioms signedCoefficient
#print axioms signedCoefficient_zero
#print axioms signedCoefficient_pos
#print axioms signedCoefficient_one
#print axioms cumulative_eq
#print axioms cumulative_eq_intFloor
#print axioms weighted_sum_eq
#print axioms actual_derivative_integrable_Icc
#print axioms actual_finite_signed_integrable
#print axioms actual_finite_stieltjes
end ContinuousResearch.ActualSignedStieltjes
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/885f5cdad4780091522eActualSignedStieltjes/Variant164166085b31c3e31b9c8d288b8bb1c68c0c058a141ed9e4d13471b651e66d0e.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `265ed8d2fb9c943b26c7ceeef2835af8f54ef0cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
