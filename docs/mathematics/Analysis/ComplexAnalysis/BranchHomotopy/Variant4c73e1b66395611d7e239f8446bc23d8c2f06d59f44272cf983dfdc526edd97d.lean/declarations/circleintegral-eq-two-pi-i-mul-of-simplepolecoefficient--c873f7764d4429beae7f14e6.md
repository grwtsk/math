# circleIntegral_eq_two_pi_I_mul_of_simplePoleCoefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "08e965617d8be3bf6e1f5d46487ac998d403a42b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2eedcd84-fa60-2264-e6b9-c7efb60c3e5b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4178a70e-be52-3113-fcc7-b5e7ed321f7e",
  "kind": "theorem",
  "lexical_name": "circleIntegral_eq_two_pi_I_mul_of_simplePoleCoefficient",
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
  "slug": "circleintegral-eq-two-pi-i-mul-of-simplepolecoefficient--c873f7764d4429beae7f14e6",
  "source": {
    "blob": "08e965617d8be3bf6e1f5d46487ac998d403a42b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 93,
    "path": "GRWTSK/Analysis/ComplexAnalysis/BranchHomotopy/Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c873f7764d4429beae7f14e68667db6cf62b8c7b394c4d8c1ae14f651ed1acac",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BranchHomotopy/Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4178a70e-be52-3113-fcc7-b5e7ed321f7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circleIntegral_eq_two_pi_I_mul_of_simplePoleCoefficient
    {h : ℂ → ℂ} {c r : ℂ} {R : ℝ}
    (hR : 0 < R)
    (hc : ContinuousOn h (Metric.closedBall c R \ {c}))
    (hd : ∀ z ∈ Metric.ball c R \ {c}, DifferentiableAt ℂ h z)
    (hr : HasSimplePoleCoefficientAt h c r) :
    circleIntegral h c R = (2 * Real.pi * Complex.I) * r := by
  let F : ℂ → ℂ := fun z ↦ (z - c) * h z

  have hFc : ContinuousOn F (Metric.closedBall c R \ {c}) :=
    (continuousOn_id.sub continuousOn_const).mul hc

  have hFd : ∀ z ∈ (Metric.ball c R \ {c}) \ (∅ : Set ℂ),
      DifferentiableAt ℂ F z := by
    intro z hz
    exact (differentiableAt_id.sub_const c).mul (hd z hz.1)

  have hFint :
      circleIntegral (fun z ↦ (z - c)⁻¹ * F z) c R =
        (2 * Real.pi * Complex.I) * r := by
    simpa only [smul_eq_mul] using
      (Complex.circleIntegral_sub_center_inv_smul_of_differentiable_on_off_countable_of_tendsto
        hR Set.countable_empty hFc hFd hr)

  rw [← hFint]
  apply circleIntegral.integral_congr hR.le
  intro z hz
  have hzc : z - c ≠ 0 := by
    rw [sub_ne_zero]
    intro hzc
    have hdist : dist z c = R := Metric.mem_sphere.mp hz
    have hzero : (0 : ℝ) = R := by simpa [hzc] using hdist
    exact hR.ne' hzero.symm
  simp [F, hzc]

/-- Annulus transport between concentric circles. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/BranchHomotopy/Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/BranchHomotopy/Variant4c73e1b66395611d7e239f8446bc23d8c2f06d59f44272cf983dfdc526edd97d.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08e965617d8be3bf6e1f5d46487ac998d403a42b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
