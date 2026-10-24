# actual_gamma_eq_zero_add_difference_mass

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
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ba6e209-8d38-b146-0549-544f2a9f0f2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d807274b-1bf0-3cf6-ad62-b8989e9d6a26",
  "kind": "theorem",
  "lexical_name": "actual_gamma_eq_zero_add_difference_mass",
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
  "slug": "actual-gamma-eq-zero-add-difference-mass--91a23ce7212532f872f16b33",
  "source": {
    "blob": "88e593f9f044955b8330864805b5c1380ff2face",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 253,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91a23ce7212532f872f16b3350889617b0da29c01a3897b6b6691f3d2a7fb198",
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

Occurrence: `result:d807274b-1bf0-3cf6-ad62-b8989e9d6a26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_gamma_eq_zero_add_difference_mass (A : ℝ) (hA : 1 ≤ A) :
    archimedeanValue explicitSecondDerivative A =
      archimedeanMultiplier 0 + sourceGammaDifferenceMass A := by
  have hpoint : (fun ξ ↦ (∫ t in Set.Ioi (0 : ℝ), gammaGramIntegrand ξ t) *
      spectralDensity A ξ) =
      (fun ξ ↦ archimedeanMultiplier ξ * spectralDensity A ξ) -
        (fun ξ ↦ archimedeanMultiplier 0 * spectralDensity A ξ) := by
    funext ξ
    rw [← archimedean_difference_eq_gamma_gram_integral]
    simp only [Pi.sub_apply]
    ring
  unfold sourceGammaDifferenceMass
  rw [hpoint]
  change archimedeanValue explicitSecondDerivative A = archimedeanMultiplier 0 +
    ∫ ξ, archimedeanMultiplier ξ * spectralDensity A ξ -
      archimedeanMultiplier 0 * spectralDensity A ξ
  rw [integral_sub (actual_archimedeanDensity_integrable A hA)
    ((spectralDensity_integrable A hA).const_mul _), integral_const_mul,
    spectralDensity_integral A hA, mul_one, archimedean_value_eq_density_integral]
  ring

/-- Both positive sectors are instantiated on the actual source. The entire
strict arithmetic budget remains present; this identity provides no estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceGramAudit/Variant3639b577d96e235b13255273b27c235dc06e6434601ab80f51793e5b98e4d475.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88e593f9f044955b8330864805b5c1380ff2face` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
