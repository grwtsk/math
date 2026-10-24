# weighted_energy_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a66630ed-170f-5c61-43fb-10c56c8afeb6",
  "kind": "theorem",
  "lexical_name": "weighted_energy_identity",
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
  "slug": "weighted-energy-identity--e57ca52c4efc12b592de2142",
  "source": {
    "blob": "3c0965779e478418c36f88851f4c6faf8f710bdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 85,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e57ca52c4efc12b592de21423f4ae0a98ed5f745e407040ad46c0c71dc6a582d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a66630ed-170f-5c61-43fb-10c56c8afeb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_energy_identity (w : ℂ) (hw : quarticBumpLaplace w = 0) :
    w^2*(weightedMass w : ℂ) = -(weightedEnergy w : ℂ) := by
  have hc : Continuous (fun t : ℝ => conj (rayValue w t)) :=
    continuous_conj.comp (rayValue_continuous w)
  have hs : Continuous (fun t : ℝ => conj (raySlope w t)) :=
    continuous_conj.comp (raySlope_continuous w)
  have hp : Continuous (fun t : ℝ => (t : ℂ)^10*raySlope w t) :=
    (Complex.continuous_ofReal.pow 10).mul (raySlope_continuous w)
  have hd : Continuous (fun t : ℝ => w^2*(t : ℂ)^10*rayValue w t) :=
    (continuous_const.mul (Complex.continuous_ofReal.pow 10)).mul (rayValue_continuous w)
  have hibp := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (u:=fun t : ℝ => conj (rayValue w t))
    (v:=fun t : ℝ => (t : ℂ)^10*raySlope w t)
    (u':=fun t : ℝ => conj (raySlope w t))
    (v':=fun t : ℝ => w^2*(t : ℂ)^10*rayValue w t)
    (a:=0) (b:=1) hc.continuousOn hp.continuousOn
    (fun t _ => conjugateRay_hasDerivAt w t)
    (fun t _ => weightedRay_hasDerivAt w t)
    (hs.intervalIntegrable 0 1) (hd.intervalIntegrable 0 1)
  have he0 (t : ℝ) : conj (rayValue w t)*(w^2*(t : ℂ)^10*rayValue w t) =
      w^2*((t^10*‖rayValue w t‖^2 : ℝ) : ℂ) := by
    push_cast
    rw [← Complex.conj_mul']
    ring
  have he1 (t : ℝ) : conj (raySlope w t)*((t : ℂ)^10*raySlope w t) =
      ((t^10*‖raySlope w t‖^2 : ℝ) : ℂ) := by
    push_cast
    rw [← Complex.conj_mul']
    ring
  have hl : (∫ t in (0 : ℝ)..1, conj (rayValue w t)*(w^2*(t : ℂ)^10*rayValue w t)) =
      w^2*(weightedMass w : ℂ) := by
    simp_rw [he0]
    rw [intervalIntegral.integral_const_mul,intervalIntegral.integral_ofReal]
    rfl
  have hr : (∫ t in (0 : ℝ)..1, conj (raySlope w t)*((t : ℂ)^10*raySlope w t)) =
      (weightedEnergy w : ℂ) := by
    simp_rw [he1]
    rw [intervalIntegral.integral_ofReal]
    rfl
  rw [hl,hr] at hibp
  simpa [rayValue,hw] using hibp

end ContinuousResearch.QuarticBumpEnergy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt04/Variantd3961a825ad69c800abedb3334df49efc7f3b3143586ecd632f69128fdcb0f7e.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c0965779e478418c36f88851f4c6faf8f710bdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
