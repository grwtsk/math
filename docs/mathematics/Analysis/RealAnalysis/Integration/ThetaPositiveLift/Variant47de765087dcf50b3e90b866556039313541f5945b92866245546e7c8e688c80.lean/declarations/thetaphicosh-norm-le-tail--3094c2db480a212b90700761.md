# thetaPhiCosh_norm_le_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af2ce116-6d75-c5eb-9ca3-7622382482bc",
  "kind": "theorem",
  "lexical_name": "thetaPhiCosh_norm_le_tail",
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
  "slug": "thetaphicosh-norm-le-tail--3094c2db480a212b90700761",
  "source": {
    "blob": "4c4da0fcdb5a2deece65a97f5222ba091c28d126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 112,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3094c2db480a212b907007610bb43c48d129e69ff094be8f78cb0000d914ea8e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af2ce116-6d75-c5eb-9ca3-7622382482bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiCosh_norm_le_tail (u : ℂ) {t : ℝ}
    (ht : thetaPhiCoshThreshold u ≤ t) :
    ‖thetaPhiCosh u t‖ ≤
      thetaPhiDecayConstant * Real.exp (-t) := by
  have ht0 : 0 ≤ t :=
    (thetaPhiCoshThreshold_positive u).le.trans ht
  have hphi : 0 ≤ thetaPhi t := (thetaPhi_positive t ht0).le
  have hcosh := thetaCoshKernel_norm_le u ht0
  have hsource := thetaPhi_le_superexp ht0
  have hdebt := thetaPhiCosh_linear_le_debt u ht
  unfold thetaPhiCosh
  rw [norm_mul]
  simp only [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hphi]
  calc
    thetaPhi t * ‖Complex.cosh (2 * u * (t : ℂ))‖
      ≤ (thetaPhiDecayConstant *
          Real.exp (9 * t - (Real.pi / 2) * Real.exp (4 * t))) *
          Real.exp (2 * ‖u‖ * t) := by
        apply mul_le_mul hsource hcosh (norm_nonneg _)
        exact mul_nonneg thetaPhiDecayConstant_positive.le (Real.exp_pos _).le
    _ = thetaPhiDecayConstant *
        Real.exp ((9 + 2 * ‖u‖) * t -
          (Real.pi / 2) * Real.exp (4 * t)) := by
      rw [mul_assoc, ← Real.exp_add]
      congr 2
      ring
    _ ≤ thetaPhiDecayConstant * Real.exp (-t) := by
      apply mul_le_mul_of_nonneg_left _ thetaPhiDecayConstant_positive.le
      apply Real.exp_le_exp.mpr
      unfold thetaPhiCoshThreshold at hdebt
      linarith

/-- The positive theta source is integrable against the complex centered cosh
kernel for every fixed spectral parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c4da0fcdb5a2deece65a97f5222ba091c28d126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
