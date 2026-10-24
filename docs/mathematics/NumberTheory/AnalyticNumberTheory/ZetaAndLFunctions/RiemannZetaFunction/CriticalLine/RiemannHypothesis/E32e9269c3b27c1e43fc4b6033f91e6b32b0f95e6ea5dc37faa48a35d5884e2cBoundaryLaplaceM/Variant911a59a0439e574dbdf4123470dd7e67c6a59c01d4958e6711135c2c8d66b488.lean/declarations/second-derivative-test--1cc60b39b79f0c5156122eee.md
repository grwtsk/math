# second_derivative_test

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1765137-bb5e-0eab-c478-9ed45cca2e5a",
  "kind": "theorem",
  "lexical_name": "second_derivative_test",
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
  "slug": "second-derivative-test--1cc60b39b79f0c5156122eee",
  "source": {
    "blob": "6707df3228626a17b3ce6ef0a9ea12ecbe96cb1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2cBoundaryLaplaceM/Variant911a59a0439e574dbdf4123470dd7e67c6a59c01d4958e6711135c2c8d66b488.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cc60b39b79f0c5156122eee75f7921c5b06beab1bdfe1fe07979e945274c152",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2cBoundaryLaplaceM/Variant911a59a0439e574dbdf4123470dd7e67c6a59c01d4958e6711135c2c8d66b488.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1765137-bb5e-0eab-c478-9ed45cca2e5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem second_derivative_test : iteratedDeriv 2 boundaryProfileLaplace (1 / 2 : ℂ) =
    8065474560 := by
  have hf : ContDiffAt ℂ 2 (fun s : ℂ ↦ (s - 1 / 2) ^ 2) (1 / 2) := by fun_prop
  have hg : ContDiffAt ℂ 2 profilePoleFactor (1 / 2) := by
    unfold profilePoleFactor
    fun_prop (disch := norm_num)
  have hshift : iteratedDeriv 2 (fun s : ℂ ↦ (s - 1 / 2) ^ 2) (1 / 2) = 2 := by
    have h := congrFun (iteratedDeriv_comp_sub_const
      (f := fun w : ℂ ↦ w ^ 2) (s := (1 / 2 : ℂ)) (n := 2)) (1 / 2)
    norm_num [iteratedDeriv_pow, Nat.descFactorial] at h
    exact h
  rw [profile_laplace_eventually_factor.iteratedDeriv_eq 2, iteratedDeriv_fun_mul hf hg]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero]
  norm_num [iteratedDeriv_pow, profilePoleFactor, iteratedDeriv_zero, hshift]

end
end FormalResearch.RiemannHypothesis.BoundaryRieszLaplace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2cBoundaryLaplaceM/Variant911a59a0439e574dbdf4123470dd7e67c6a59c01d4958e6711135c2c8d66b488.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2cBoundaryLaplaceM/Variant911a59a0439e574dbdf4123470dd7e67c6a59c01d4958e6711135c2c8d66b488.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6707df3228626a17b3ce6ef0a9ea12ecbe96cb1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
