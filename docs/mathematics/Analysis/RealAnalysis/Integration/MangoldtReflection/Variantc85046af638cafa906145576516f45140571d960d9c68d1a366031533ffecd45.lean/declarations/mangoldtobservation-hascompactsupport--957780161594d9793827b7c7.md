# mangoldtObservation_hasCompactSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:561bb35f-f335-c4eb-aaa2-ae370500b3bb",
  "kind": "theorem",
  "lexical_name": "mangoldtObservation_hasCompactSupport",
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
  "slug": "mangoldtobservation-hascompactsupport--957780161594d9793827b7c7",
  "source": {
    "blob": "3a0c417c76931c62c4b83801784017f4eb924395",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 36,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflection/Variantc85046af638cafa906145576516f45140571d960d9c68d1a366031533ffecd45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:957780161594d9793827b7c7206f15f54e42c1dfd9ace64bf5af06c210d3b3a9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MangoldtReflection/Variantc85046af638cafa906145576516f45140571d960d9c68d1a366031533ffecd45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:561bb35f-f335-c4eb-aaa2-ae370500b3bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtObservation_hasCompactSupport (A : ℝ) (T : Finset ℕ) (hA : 1 ≤ A) :
    HasCompactSupport (mangoldtObservation A T) := by
  have hi (i : ℕ) : HasCompactSupport (fun x : ℝ ↦
      ArithmeticFunction.vonMangoldt i / Real.sqrt i *
        normalizedTest explicitSecondDerivative A (x + Real.log i)) :=
    ((normalizedTest_hasCompactSupport A (by linarith)).comp_homeomorph
      (Homeomorph.addRight (Real.log (i : ℝ)))).mul_left
  have he : mangoldtObservation A T = ∑ i ∈ T, (fun x : ℝ ↦
      ArithmeticFunction.vonMangoldt i / Real.sqrt i *
        normalizedTest explicitSecondDerivative A (x + Real.log i)) := by
    funext x
    simp [mangoldtObservation]
  rw [he]
  exact HasCompactSupport.finset_sum (fun i (_ : i ∈ T) ↦ hi i)

/-- The observation has a genuinely integrable squared norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MangoldtReflection/Variantc85046af638cafa906145576516f45140571d960d9c68d1a366031533ffecd45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflection/Variantc85046af638cafa906145576516f45140571d960d9c68d1a366031533ffecd45.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a0c417c76931c62c4b83801784017f4eb924395` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
