# actual_source_second_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8b93136-e3d7-6356-fb93-1ef069cc6267",
  "kind": "theorem",
  "lexical_name": "actual_source_second_moment",
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
  "slug": "actual-source-second-moment--31c86b88c934304c979d7be6",
  "source": {
    "blob": "c199b177a0b8a7a8c1550481eb0dc9a3dc14290c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant37147ec7142f26a4edf1dd5c906f096ddc1e15eb13b475707174dc00fdc12011.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31c86b88c934304c979d7be63c12e41c3f7b32e11d059c4443d4c8351057b21d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant37147ec7142f26a4edf1dd5c906f096ddc1e15eb13b475707174dc00fdc12011.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8b93136-e3d7-6356-fb93-1ef069cc6267`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_second_moment {A : ℝ} (hA : 1 ≤ A) :
    (∫ ξ : ℝ, ξ^2 * Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) ξ)) =
      2 * Real.pi * (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x)^2) := by
  have h := actual_standard_second_moment hA
  simp_rw [standardFourier_eq_sourceFourier] at h
  have hscale : (∫ ξ : ℝ, (-(2 * Real.pi) * ξ)^2 * Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) (-(2 * Real.pi) * ξ))) =
      (-(2 * Real.pi))^2 * (∫ ξ : ℝ, ξ^2 * Complex.normSq
        (sourceFourier (normalizedTest explicitSecondDerivative A) (-(2 * Real.pi) * ξ))) := by
    rw [← integral_const_mul]
    congr 1
    funext ξ
    ring
  rw [h] at hscale
  rw [Measure.integral_comp_mul_left
    (fun ξ : ℝ => ξ^2 * Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) ξ))
    (-(2 * Real.pi)), smul_eq_mul, abs_inv, abs_neg,
    abs_of_pos (by positivity : 0 < 2 * Real.pi)] at hscale
  field_simp at hscale
  nlinarith [Real.pi_pos]

end
end FormalResearch.RiemannHypothesis.SourceActualSecondFourierMoment
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant37147ec7142f26a4edf1dd5c906f096ddc1e15eb13b475707174dc00fdc12011.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant37147ec7142f26a4edf1dd5c906f096ddc1e15eb13b475707174dc00fdc12011.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c199b177a0b8a7a8c1550481eb0dc9a3dc14290c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
