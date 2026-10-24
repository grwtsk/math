# logMap_dilate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc02b85e-a832-a6b8-934a-c2362093af06",
  "kind": "theorem",
  "lexical_name": "logMap_dilate",
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
  "slug": "logmap-dilate--eb015afa79d4a6caffdda1ab",
  "source": {
    "blob": "79adbcd010f2ab63346ee4c99c1f7fa5fa7907b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 216,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb015afa79d4a6caffdda1abc05afb468d89077a285b17d393405e1d26a2081f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc02b85e-a832-a6b8-934a-c2362093af06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logMap_dilate (a : ℝ) (ha : 0 < a) (f : PositiveL2) :
    logMap (dilate a ha f) = translate (Real.log a) (logMap f) := by
  apply Lp.ext
  filter_upwards [logMap_ae (dilate a ha f),exp_quasi.ae_eq_comp (dilate_ae a ha f),
    translate_ae (Real.log a) (logMap f),
    (measurePreserving_add_right volume (Real.log a)).quasiMeasurePreserving.ae_eq_comp
      (logMap_ae f)] with u hleft hd hright hu
  dsimp only [Function.comp_apply] at hd hu
  rw [hleft,logFunc,hd,dilateFunc,hright,hu,logFunc]
  have he : Real.exp (u+Real.log a) = a*Real.exp u := by
    rw [Real.exp_add,Real.exp_log ha,mul_comm]
  have hs : Real.exp (Real.log a/2) = Real.sqrt a := by
    have hp : 0 < Real.exp (Real.log a/2) := Real.exp_pos _
    have hh : (Real.exp (Real.log a/2))^2 = a := by
      rw [pow_two,←Real.exp_add]
      convert Real.exp_log ha using 1
      ring
    nlinarith [Real.sq_sqrt ha.le,Real.sqrt_nonneg a]
  rw [he,←mul_assoc]
  congr 1
  rw [←Complex.ofReal_mul,←hs,←Real.exp_add]
  congr 2
  ring

end ContinuousResearch.LogCoordinate

/- Complete public types, proofs and trusted dependency audits. -/

#check ContinuousResearch.LogCoordinate.LogL2
#print axioms ContinuousResearch.LogCoordinate.LogL2
#print ContinuousResearch.LogCoordinate.LogL2

#check ContinuousResearch.LogCoordinate.integral_exp_jacobian
#print axioms ContinuousResearch.LogCoordinate.integral_exp_jacobian
#print ContinuousResearch.LogCoordinate.integral_exp_jacobian

#check ContinuousResearch.LogCoordinate.integrable_exp_jacobian
#print axioms ContinuousResearch.LogCoordinate.integrable_exp_jacobian
#print ContinuousResearch.LogCoordinate.integrable_exp_jacobian

#check ContinuousResearch.LogCoordinate.exp_quasi
#print axioms ContinuousResearch.LogCoordinate.exp_quasi
#print ContinuousResearch.LogCoordinate.exp_quasi

#check ContinuousResearch.LogCoordinate.log_quasi
#print axioms ContinuousResearch.LogCoordinate.log_quasi
#print ContinuousResearch.LogCoordinate.log_quasi

#check ContinuousResearch.LogCoordinate.logFunc
#print axioms ContinuousResearch.LogCoordinate.logFunc
#print ContinuousResearch.LogCoordinate.logFunc

#check ContinuousResearch.LogCoordinate.positiveFunc
#print axioms ContinuousResearch.LogCoordinate.positiveFunc
#print ContinuousResearch.LogCoordinate.positiveFunc

#check ContinuousResearch.LogCoordinate.logFunc_norm_sq
#print axioms ContinuousResearch.LogCoordinate.logFunc_norm_sq
#print ContinuousResearch.LogCoordinate.logFunc_norm_sq

#check ContinuousResearch.LogCoordinate.logFunc_memLp
#print axioms ContinuousResearch.LogCoordinate.logFunc_memLp
#print ContinuousResearch.LogCoordinate.logFunc_memLp

#check ContinuousResearch.LogCoordinate.positiveFunc_norm_sq_exp
#print axioms ContinuousResearch.LogCoordinate.positiveFunc_norm_sq_exp
#print ContinuousResearch.LogCoordinate.positiveFunc_norm_sq_exp

#check ContinuousResearch.LogCoordinate.positiveFunc_memLp
#print axioms ContinuousResearch.LogCoordinate.positiveFunc_memLp
#print ContinuousResearch.LogCoordinate.positiveFunc_memLp

#check ContinuousResearch.LogCoordinate.logMap
#print axioms ContinuousResearch.LogCoordinate.logMap
#print ContinuousResearch.LogCoordinate.logMap

#check ContinuousResearch.LogCoordinate.positiveMap
#print axioms ContinuousResearch.LogCoordinate.positiveMap
#print ContinuousResearch.LogCoordinate.positiveMap

#check ContinuousResearch.LogCoordinate.logMap_ae
#print axioms ContinuousResearch.LogCoordinate.logMap_ae
#print ContinuousResearch.LogCoordinate.logMap_ae

#check ContinuousResearch.LogCoordinate.positiveMap_ae
#print axioms ContinuousResearch.LogCoordinate.positiveMap_ae
#print ContinuousResearch.LogCoordinate.positiveMap_ae

#check ContinuousResearch.LogCoordinate.logMap_leftInverse
#print axioms ContinuousResearch.LogCoordinate.logMap_leftInverse
#print ContinuousResearch.LogCoordinate.logMap_leftInverse

#check ContinuousResearch.LogCoordinate.logMap_rightInverse
#print axioms ContinuousResearch.LogCoordinate.logMap_rightInverse
#print ContinuousResearch.LogCoordinate.logMap_rightInverse

#check ContinuousResearch.LogCoordinate.logL2_norm_sq_integral
#print axioms ContinuousResearch.LogCoordinate.logL2_norm_sq_integral
#print ContinuousResearch.LogCoordinate.logL2_norm_sq_integral

#check ContinuousResearch.LogCoordinate.logMap_norm
#print axioms ContinuousResearch.LogCoordinate.logMap_norm
#print ContinuousResearch.LogCoordinate.logMap_norm

#check ContinuousResearch.LogCoordinate.logMap_add
#print axioms ContinuousResearch.LogCoordinate.logMap_add
#print ContinuousResearch.LogCoordinate.logMap_add

#check ContinuousResearch.LogCoordinate.logMap_smul
#print axioms ContinuousResearch.LogCoordinate.logMap_smul
#print ContinuousResearch.LogCoordinate.logMap_smul

#check ContinuousResearch.LogCoordinate.logIsometry
#print axioms ContinuousResearch.LogCoordinate.logIsometry
#print ContinuousResearch.LogCoordinate.logIsometry

#check ContinuousResearch.LogCoordinate.logEquiv
#print axioms ContinuousResearch.LogCoordinate.logEquiv
#print ContinuousResearch.LogCoordinate.logEquiv

#check ContinuousResearch.LogCoordinate.positiveMap_norm
#print axioms ContinuousResearch.LogCoordinate.positiveMap_norm
#print ContinuousResearch.LogCoordinate.positiveMap_norm

#check ContinuousResearch.LogCoordinate.translate
#print axioms ContinuousResearch.LogCoordinate.translate
#print ContinuousResearch.LogCoordinate.translate

#check ContinuousResearch.LogCoordinate.translate_ae
#print axioms ContinuousResearch.LogCoordinate.translate_ae
#print ContinuousResearch.LogCoordinate.translate_ae

#check ContinuousResearch.LogCoordinate.logMap_dilate
#print axioms ContinuousResearch.LogCoordinate.logMap_dilate
#print ContinuousResearch.LogCoordinate.logMap_dilate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt06/Variant13efacaa60b1a3a4309a31132faf0d94503be5927a8eadd323ff8d3920955a8f.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79adbcd010f2ab63346ee4c99c1f7fa5fa7907b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
