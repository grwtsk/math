# tent_weight_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0cc65514-83ee-611a-1e0d-11e615a2813b",
  "kind": "theorem",
  "lexical_name": "tent_weight_nonnegative",
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
  "slug": "tent-weight-nonnegative--c694158baaf4c216a6d694bd",
  "source": {
    "blob": "f82808fa109851f3d064a02699e0bf27feeb2a39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentAbsoluteMass/Variant6408d5ac72de277c353ac26a62b68362a85fd0216c7acefb3d9e2114c91c3509.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c694158baaf4c216a6d694bd0eefbbbc6e1ed3f6b23371ac7d9d1ed6f5abcc87",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentAbsoluteMass/Variant6408d5ac72de277c353ac26a62b68362a85fd0216c7acefb3d9e2114c91c3509.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cc65514-83ee-611a-1e0d-11e615a2813b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tent_weight_nonnegative (y : ℝ) : 0 ≤ tentWeight y := by
  unfold tentWeight
  split_ifs with hleft hright
  · have hy : 0 ≤ y := by linarith [hleft.1]
    have hs := Real.sqrt_nonneg y
    have hsq := Real.sq_sqrt hy
    have hs1 : 1 ≤ Real.sqrt y := by nlinarith [hleft.1]
    have hdiv : 1 / Real.sqrt y ≤ 1 := (div_le_one (by linarith)).mpr hs1
    linarith
  · have hy : 0 ≤ y := by linarith [hright.1]
    have hs := Real.sqrt_nonneg y
    have hsq := Real.sq_sqrt hy
    have hspos : 0 < Real.sqrt y := by nlinarith [hright.1]
    have hs4 : Real.sqrt y ≤ 4 := by nlinarith [hright.2]
    have hdiv : (1 / 2 : ℝ) ≤ 2 / Real.sqrt y :=
      (le_div_iff₀ hspos).mpr (by linarith)
    linarith
  · rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentAbsoluteMass/Variant6408d5ac72de277c353ac26a62b68362a85fd0216c7acefb3d9e2114c91c3509.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteTentAbsoluteMass/Variant6408d5ac72de277c353ac26a62b68362a85fd0216c7acefb3d9e2114c91c3509.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f82808fa109851f3d064a02699e0bf27feeb2a39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
