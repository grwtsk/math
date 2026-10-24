# integral_moment_cross_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a865be50-dbed-9e92-a5bc-aa6a28fab94d",
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
  "slug": "integral-moment-cross-nonpos--adfb526ffeac7713141d54ac",
  "source": {
    "blob": "9021a744ac4972eaaadf0c08f819ce79662abf79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant33b7192e6e46adeb3dd41c8eb7edd425b6e859a128a25fc49b35922304867e81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adfb526ffeac7713141d54acbbaa4e5f87c26dc5f36c69b584471ae8ef83bffa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant33b7192e6e46adeb3dd41c8eb7edd425b6e859a128a25fc49b35922304867e81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a865be50-dbed-9e92-a5bc-aa6a28fab94d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_moment_cross_nonpos {α : Type*} [MeasurableSpace α] (μ : Measure α)
    (A C w : α → ℝ) (hA : Integrable A μ) (hC : Integrable C μ)
    (hwA : Integrable (fun u => w u * A u) μ)
    (hwC : Integrable (fun u => w u * C u) μ)
    (hcross : ∀ᵐ v ∂μ, ∀ᵐ u ∂μ, (w u - w v) * (C u * A v - A u * C v) ≤ 0) :
    (∫ u, w u * C u ∂μ) * (∫ u, A u ∂μ) -
      (∫ u, w u * A u ∂μ) * (∫ u, C u ∂μ) ≤ 0 := by
  have hinner : ∀ᵐ v ∂μ,
      (∫ u, w u * C u ∂μ) * A v - (∫ u, w u * A u ∂μ) * C v -
        (∫ u, C u ∂μ) * (w v * A v) + (∫ u, A u ∂μ) * (w v * C v) ≤ 0 := by
    filter_upwards [hcross] with v hv
    have h := integral_nonpos_of_ae hv
    have heq : (fun u => (w u - w v) * (C u * A v - A u * C v)) =
        fun u => (w u * C u) * A v - (w u * A u) * C v -
          C u * (w v * A v) + A u * (w v * C v) := by funext u; ring
    rw [heq] at h
    rw [integral_add (f := fun u => (w u * C u) * A v - (w u * A u) * C v -
      C u * (w v * A v)) ((hwC.mul_const _).sub (hwA.mul_const _) |>.sub (hC.mul_const _))
      (hA.mul_const _)] at h
    rw [integral_sub (f := fun u => (w u * C u) * A v - (w u * A u) * C v)
      ((hwC.mul_const _).sub (hwA.mul_const _)) (hC.mul_const _),
      integral_sub (hwC.mul_const _) (hwA.mul_const _)] at h
    simpa only [integral_mul_const] using h
  have h := integral_nonpos_of_ae hinner
  rw [integral_add (f := fun v => (∫ u, w u * C u ∂μ) * A v -
    (∫ u, w u * A u ∂μ) * C v - (∫ u, C u ∂μ) * (w v * A v))
    (((hA.const_mul _).sub (hC.const_mul _)).sub (hwA.const_mul _)) (hwC.const_mul _)] at h
  rw [integral_sub (f := fun v => (∫ u, w u * C u ∂μ) * A v -
    (∫ u, w u * A u ∂μ) * C v) ((hA.const_mul _).sub (hC.const_mul _))
    (hwA.const_mul _), integral_sub (hA.const_mul _) (hC.const_mul _)] at h
  simp only [integral_const_mul] at h
  nlinarith only [h]

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant33b7192e6e46adeb3dd41c8eb7edd425b6e859a128a25fc49b35922304867e81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant33b7192e6e46adeb3dd41c8eb7edd425b6e859a128a25fc49b35922304867e81.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9021a744ac4972eaaadf0c08f819ce79662abf79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
