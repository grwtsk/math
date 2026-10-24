# actual_archimedean_upper_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88e593f9f044955b8330864805b5c1380ff2face",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10602b82-b110-fd70-c5d2-cac04bca3a84",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:475d3a92-29d4-6622-5050-346bb247054f",
  "kind": "theorem",
  "lexical_name": "actual_archimedean_upper_decay",
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
  "slug": "actual-archimedean-upper-decay--0db6c0732e3d9f30231c0264",
  "source": {
    "blob": "88e593f9f044955b8330864805b5c1380ff2face",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 155,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0db6c0732e3d9f30231c026496730fee0fb3c231decca45334181c454732d546",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:475d3a92-29d4-6622-5050-346bb247054f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_archimedean_upper_decay (A : ℝ) (hA : 1 ≤ A) :
    archimedeanValue explicitSecondDerivative A ≤
      archimedeanMultiplier 0 + 4 + 2 * secondMomentBound / A ^ 2 := by
  have hi := ((spectralDensity_integrable A hA).const_mul
    (archimedeanMultiplier 0 + 4)).add
      ((spectral_density_second_moment_integrable A hA).const_mul 2)
  have h := integral_mono (actual_archimedeanDensity_integrable A hA) hi
    (fun ξ ↦ show archimedeanMultiplier ξ * spectralDensity A ξ ≤
      (archimedeanMultiplier 0 + 4) * spectralDensity A ξ +
        2 * (ξ ^ 2 * spectralDensity A ξ) by
      nlinarith [mul_le_mul_of_nonneg_right (archimedean_multiplier_upper ξ)
        (spectralDensity_nonneg A ξ)])
  simp only [Pi.add_apply] at h
  rw [integral_add ((spectralDensity_integrable A hA).const_mul _)
    ((spectral_density_second_moment_integrable A hA).const_mul 2), integral_const_mul,
    integral_const_mul, spectralDensity_integral A hA, mul_one] at h
  rw [archimedean_value_eq_density_integral]
  have hMoment := mul_le_mul_of_nonneg_left (actual_second_moment_le_decay A hA)
    (by norm_num : (0 : ℝ) ≤ 2)
  rw [← mul_div_assoc] at hMoment
  linarith

/-- An explicit finite radius beyond which the actual Gamma energy is negative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88e593f9f044955b8330864805b5c1380ff2face` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
