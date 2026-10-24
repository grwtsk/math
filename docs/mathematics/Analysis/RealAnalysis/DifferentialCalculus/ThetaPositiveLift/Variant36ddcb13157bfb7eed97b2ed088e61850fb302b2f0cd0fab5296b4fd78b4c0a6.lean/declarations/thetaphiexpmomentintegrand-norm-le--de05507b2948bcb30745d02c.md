# thetaPhiExpMomentIntegrand_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5282a992-fa2a-ebb9-bf88-0ddf13541999",
  "kind": "theorem",
  "lexical_name": "thetaPhiExpMomentIntegrand_norm_le",
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
  "slug": "thetaphiexpmomentintegrand-norm-le--de05507b2948bcb30745d02c",
  "source": {
    "blob": "187362e72a201445c3052ff2d4181eef7d9823e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 126,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de05507b2948bcb30745d02c30e5f336e9a93cdad35c4f48a0b735bc155f291d",
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

Occurrence: `result:5282a992-fa2a-ebb9-bf88-0ddf13541999`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiExpMomentIntegrand_norm_le (m : ℕ) (u : ℂ) (R : ℝ)
    (hu : 2 * ‖u‖ ≤ R) {t : ℝ} (ht : 0 ≤ t) :
    ‖thetaPhiExpMomentIntegrand m u t‖ ≤
      (2 : ℝ) ^ m * (thetaPhi t * t ^ m * Real.exp (R * t)) := by
  have hphi : 0 ≤ thetaPhi t := (thetaPhi_positive t ht).le
  have hnorm : ‖2 * u * (t : ℂ)‖ ≤ R * t := by
    simpa [norm_mul, abs_of_nonneg ht, mul_assoc] using
      mul_le_mul_of_nonneg_right hu ht
  have hexp : ‖Complex.exp (2 * u * (t : ℂ))‖ ≤ Real.exp (R * t) :=
    (Complex.norm_exp_le_exp_norm _).trans (Real.exp_le_exp.mpr hnorm)
  unfold thetaPhiExpMomentIntegrand
  simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg hphi, abs_of_nonneg ht]
  norm_num only [Complex.norm_ofNat]
  calc
    _ ≤ thetaPhi t * (2 * t) ^ m * Real.exp (R * t) :=
      mul_le_mul_of_nonneg_left hexp (by positivity)
    _ = _ := by rw [mul_pow]; ring

/-- Every complex exponential moment is absolutely integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `187362e72a201445c3052ff2d4181eef7d9823e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
