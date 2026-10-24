# integral_moment_cross_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f0c6bca-b9b4-1c2a-199d-a4f02d68fee4",
  "kind": "theorem",
  "lexical_name": "integral_moment_cross_nonpos",
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
  "slug": "integral-moment-cross-nonpos--fc0aabc863b9297ffca1c9ff",
  "source": {
    "blob": "f250eb72edba4481bef5f71e01b360726b8a738a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1Criterion01Faile/Variant4fe6148e78461be2979526f6405677514dd7e9bb5f80b674ddf703c51b4d3099.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc0aabc863b9297ffca1c9ff9f05f45848291f954a7a512f66ec023036249eb4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1Criterion01Faile/Variant4fe6148e78461be2979526f6405677514dd7e9bb5f80b674ddf703c51b4d3099.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f0c6bca-b9b4-1c2a-199d-a4f02d68fee4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_moment_cross_nonpos {α : Type*} [MeasurableSpace α] (μ : Measure α)
    (A C w : α → ℝ) (hA : Integrable A μ) (hC : Integrable C μ)
    (hwA : Integrable (fun u => w u * A u) μ)
    (hwC : Integrable (fun u => w u * C u) μ)
    (hcross : ∀ u v, (w u - w v) * (C u * A v - A u * C v) ≤ 0) :
    (∫ u, w u * C u ∂μ) * (∫ u, A u ∂μ) -
      (∫ u, w u * A u ∂μ) * (∫ u, C u ∂μ) ≤ 0 := by
  have hinner v :
      (∫ u, w u * C u ∂μ) * A v - (∫ u, w u * A u ∂μ) * C v -
        (∫ u, C u ∂μ) * (w v * A v) + (∫ u, A u ∂μ) * (w v * C v) ≤ 0 := by
    have h := integral_nonpos (μ := μ) (fun u => hcross u v)
    have heq : (fun u => (w u - w v) * (C u * A v - A u * C v)) =
        fun u => (w u * C u) * A v - (w u * A u) * C v -
          C u * (w v * A v) + A u * (w v * C v) := by funext u; ring
    rw [heq, integral_add ((hwC.mul_const _).sub (hwA.mul_const _) |>.sub (hC.mul_const _))
      (hA.mul_const _), integral_sub ((hwC.mul_const _).sub (hwA.mul_const _))
      (hC.mul_const _), integral_sub (hwC.mul_const _) (hwA.mul_const _)] at h
    simpa only [integral_mul_const] using h
  have h := integral_nonpos (μ := μ) hinner
  rw [integral_add (((hA.const_mul _).sub (hC.const_mul _)).sub (hwA.const_mul _))
    (hwC.const_mul _), integral_sub ((hA.const_mul _).sub (hC.const_mul _))
    (hwA.const_mul _), integral_sub (hA.const_mul _) (hC.const_mul _)] at h
  simp only [integral_const_mul] at h
  nlinarith only [h]

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1Criterion01Faile/Variant4fe6148e78461be2979526f6405677514dd7e9bb5f80b674ddf703c51b4d3099.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7a0ef8ccc1633e676f0faec83e07fbe95825bde6a68d51cf6faece8d2fe90fe1Criterion01Faile/Variant4fe6148e78461be2979526f6405677514dd7e9bb5f80b674ddf703c51b4d3099.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f250eb72edba4481bef5f71e01b360726b8a738a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
