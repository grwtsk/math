# criticalDecayWork_eq_main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0e3a397e1d73bb9ce1cec0ddcaf887b4ad2a74e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/687b406b1e180e87fced11f5e3b3323f2df82c93b194bee044837f0600276967.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:69417009-6d08-7708-4d14-9798d74ec336",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fadc3765-b98f-6c68-c405-d31ad1ef068c",
  "kind": "theorem",
  "lexical_name": "criticalDecayWork_eq_main",
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
  "slug": "criticaldecaywork-eq-main--b568da41f7a3dfe2b1fc54c0",
  "source": {
    "blob": "c0e3a397e1d73bb9ce1cec0ddcaf887b4ad2a74e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 57,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant687b406b1e180e87fced11f5e3b3323f2df82c93b194bee044837f0600276967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b568da41f7a3dfe2b1fc54c05943087bef2c2d15e7b41ea8ac8ed980ca65ba49",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant687b406b1e180e87fced11f5e3b3323f2df82c93b194bee044837f0600276967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fadc3765-b98f-6c68-c405-d31ad1ef068c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalDecayWork_eq_main {A : ℝ} (hA : 1 ≤ A) :
    criticalDecayWork A = diagonalMainCoefficient A*A-1 := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  have hc : ContDiff ℝ 1 C := sourceCorrelation_contDiff A hp
  have hi := hc.continuous.intervalIntegrable (μ := volume) 0 (2*A)
  have hd := hc.continuous_deriv_one.intervalIntegrable (μ := volume) 0 (2*A)
  have ht := diagonalCorrelation_integral A hA
  change (∫ t in 0..A, C (2*t)) = diagonalMainCoefficient A*A at ht
  rw [intervalIntegral.integral_comp_mul_left C (by norm_num : (2 : ℝ) ≠ 0)] at ht
  simp only [mul_zero, smul_eq_mul] at ht
  have hm : (∫ u in 0..2*A, C u) = 2*(diagonalMainCoefficient A*A) := by
    norm_num at ht
    linarith
  have he := intervalIntegral.integral_deriv_eq_sub
    (fun u _ => hc.differentiable (by norm_num) u) hd
  have hu : C (2*A) = 0 := sourceCorrelation_upper_endpoint A hp
  have hz : C 0 = 1 := actual_correlation_at_zero A hA
  rw [hu, hz] at he
  have hf : (fun u : ℝ => criticalDecay u * deriv (criticalPrimeTest A) u) =
      fun u => C u / 2 + deriv C u := funext (criticalDecay_times_deriv hp)
  rw [criticalDecayWork, hf, intervalIntegral.integral_add (hi.div_const 2) hd,
    intervalIntegral.integral_div, hm, he]
  ring

/-- A positive interval and the proved nonzero derivative mass give an actual normalized mean. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant687b406b1e180e87fced11f5e3b3323f2df82c93b194bee044837f0600276967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalDecayWork/Variant687b406b1e180e87fced11f5e3b3323f2df82c93b194bee044837f0600276967.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0e3a397e1d73bb9ce1cec0ddcaf887b4ad2a74e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
