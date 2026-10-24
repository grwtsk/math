# curvatureVariation_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ca31336-3660-8165-4ece-e2ac16dddc9a",
  "kind": "theorem",
  "lexical_name": "curvatureVariation_le",
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
  "slug": "curvaturevariation-le--583642abe9b4c1934de115f9",
  "source": {
    "blob": "bb249ca04adafacf2ea003653cb022839946da33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 143,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:583642abe9b4c1934de115f9e585a25c6961c1596bac328fa20958d912cf9456",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ca31336-3660-8165-4ece-e2ac16dddc9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem curvatureVariation_le {A : ℝ} (hA : 1 ≤ A) :
    curvatureVariation A ≤ 112*A*Real.exp A := by
  have hi := (pairedTailCurvature_intervalIntegrable hA 0 (2*A)).abs
  have hb := intervalIntegral.integral_mono_on (by linarith : 0≤2*A) hi
    (intervalIntegrable_const : IntervalIntegrable (fun _ : ℝ => 56*Real.exp A) volume 0 (2*A))
    (fun u _ => pairedTailCurvature_abs_le hA u)
  calc
    curvatureVariation A ≤ ∫ u in 0..2*A, 56*Real.exp A := hb
    _ = 112*A*Real.exp A := by
      rw [intervalIntegral.integral_const]
      simp only [sub_zero, smul_eq_mul]
      ring

end ContinuousResearch.ActualCurvatureBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudgetAttempt03/Variantce7488c2cb0487411f9470e99f4b0ef05ec9f823b0c7bf8c2b27d6df5879fcaf.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb249ca04adafacf2ea003653cb022839946da33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
