# hasDerivAt_thetaPhiExpMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f99c61b1-d516-5bb9-a44a-481c808d26b2",
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
  "slug": "hasderivat-thetaphiexpmoment--8a38f277298e6bc27c81c5f6",
  "source": {
    "blob": "187362e72a201445c3052ff2d4181eef7d9823e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 164,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a38f277298e6bc27c81c5f6941a68ade8f2044ba9441a14b63fcdf206968084",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f99c61b1-d516-5bb9-a44a-481c808d26b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–190.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `187362e72a201445c3052ff2d4181eef7d9823e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
