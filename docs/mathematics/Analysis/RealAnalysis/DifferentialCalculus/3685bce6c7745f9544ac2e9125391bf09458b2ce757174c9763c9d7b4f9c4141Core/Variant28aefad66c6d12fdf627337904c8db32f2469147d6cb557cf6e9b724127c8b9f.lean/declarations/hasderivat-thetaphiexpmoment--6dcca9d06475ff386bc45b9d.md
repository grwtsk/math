# hasDerivAt_thetaPhiExpMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edff7aad-f2a1-d3d3-53a0-48706512936c",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_thetaPhiExpMoment",
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
  "slug": "hasderivat-thetaphiexpmoment--6dcca9d06475ff386bc45b9d",
  "source": {
    "blob": "934daaec16b42d9735d447c89c7a2b19b6dd728d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 160,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dcca9d06475ff386bc45b9ddee64962b4f7f3e0a81c1891a96f905352e6e98a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edff7aad-f2a1-d3d3-53a0-48706512936c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_thetaPhiExpMoment (m : ℕ) (u : ℂ) :
    HasDerivAt (thetaPhiExpMoment m) (thetaPhiExpMoment (m + 1) u) u := by
  let R : ℝ := 2 * (‖u‖ + 1)
  let B : ℝ → ℝ := fun t => (2 : ℝ) ^ (m + 1) *
    (thetaPhi t * t ^ (m + 1) * Real.exp (R * t))
  have hs : Metric.ball (0 : ℂ) (‖u‖ + 1) ∈ 𝓝 u :=
    Metric.isOpen_ball.mem_nhds (by simp [Metric.mem_ball])
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (μ := volume.restrict (Ioi (0 : ℝ)))
    (F := thetaPhiExpMomentIntegrand m)
    (F' := thetaPhiExpMomentIntegrand (m + 1)) (bound := B) hs
    (Eventually.of_forall fun z =>
      (continuous_thetaPhiExpMomentIntegrand m z).aestronglyMeasurable)
    (thetaPhiExpMomentIntegrand_integrableOn m u)
    (continuous_thetaPhiExpMomentIntegrand (m + 1) u).aestronglyMeasurable
    (by
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      intro z hz
      apply thetaPhiExpMomentIntegrand_norm_le (m + 1) z R ?_ (le_of_lt ht)
      have hz' : ‖z‖ < ‖u‖ + 1 := by simpa [Metric.mem_ball] using hz
      dsimp [R]
      linarith)
    ((thetaPhi_poly_exp_integrableOn (m + 1) R).const_mul ((2 : ℝ) ^ (m + 1)))
    (Eventually.of_forall fun t z _ => hasDerivAt_thetaPhiExpMomentIntegrand m z t)
  exact h.2

/-- The two exponential derivative contributions to the centered cosh transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3685bce6c7745f9544ac2e9125391bf09458b2ce757174c9763c9d7b4f9c4141Core/Variant28aefad66c6d12fdf627337904c8db32f2469147d6cb557cf6e9b724127c8b9f.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `934daaec16b42d9735d447c89c7a2b19b6dd728d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
