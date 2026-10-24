# actual_sixth_bump_moment_closed_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f5fb04b-4be4-84f5-1513-dcdc9918c742",
  "kind": "theorem",
  "lexical_name": "actual_sixth_bump_moment_closed_formula",
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
  "slug": "actual-sixth-bump-moment-closed-formula--8ea478a44af779c1d6348bb7",
  "source": {
    "blob": "9a54bf7dad8b64caa8449d63890246eef79a0957",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 146,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplacePrimitive/Variant19f8039ce576707c5812fbf65c7b2a937576e1ffbf6237b2d43e446726bd8671.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ea478a44af779c1d6348bb7c1a95cca4a91b744c0ac85afcd3f28223bfbb1f3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplacePrimitive/Variant19f8039ce576707c5812fbf65c7b2a937576e1ffbf6237b2d43e446726bd8671.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f5fb04b-4be4-84f5-1513-dcdc9918c742`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sixth_bump_moment_closed_formula {A : ℝ} (hA : 1 ≤ A) :
    bumpMoment A (1 / 6) = (2985984 / (A ^ 4 * Real.sqrt A)) *
      Real.exp (A / 6) * sixthEndpointCorrection A := by
  have hpos : 0 < A := by linarith
  rw [exact_weighted_bump_interval hA,
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun x _ ↦ exact_sixth_weighted_primitive_derivative hpos x)
      (((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
        (bumpInterior_continuous A)).intervalIntegrable _ _),
    (exact_sixth_primitive_endpoints hpos).1,
    (exact_sixth_primitive_endpoints hpos).2]
  have he : Real.exp (-A / 6) = Real.exp (A / 6) * Real.exp (-A / 3) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [he]
  unfold sixthEndpointCorrection
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.ActualSixthLaplacePrimitive
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplacePrimitive/Variant19f8039ce576707c5812fbf65c7b2a937576e1ffbf6237b2d43e446726bd8671.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthLaplacePrimitive/Variant19f8039ce576707c5812fbf65c7b2a937576e1ffbf6237b2d43e446726bd8671.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a54bf7dad8b64caa8449d63890246eef79a0957` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
