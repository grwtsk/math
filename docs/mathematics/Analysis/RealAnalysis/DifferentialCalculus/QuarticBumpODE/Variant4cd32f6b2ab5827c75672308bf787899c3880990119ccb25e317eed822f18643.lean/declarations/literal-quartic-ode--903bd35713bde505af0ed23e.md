# literal_quartic_ODE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9748ecac-8d6d-a684-d31d-8d419616c080",
  "kind": "theorem",
  "lexical_name": "literal_quartic_ODE",
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
  "slug": "literal-quartic-ode--903bd35713bde505af0ed23e",
  "source": {
    "blob": "52c0ef4d42afb0ac8359c65dcca3635d63ac9c6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:903bd35713bde505af0ed23e220de3ff579d1e72feaceb783993646c1e891b35",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9748ecac-8d6d-a684-d31d-8d419616c080`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_quartic_ODE (w : ℂ) :
    w*deriv (deriv quarticBumpLaplace) w+10*deriv quarticBumpLaplace w-
      w*quarticBumpLaplace w = 0 := by
  have h := complex_weighted_derivative fifthProfile
    (fifthProfile_contDiff.of_le (by norm_num)) fifthProfile_hasCompactSupport w
  rw [fifthProfile_transform,fifthProfile_deriv_transform] at h
  rw [quartic_second_deriv,quartic_deriv,← bumpMoment_zero_eq_quartic]
  linear_combination -h

end ContinuousResearch.QuarticBumpODE

#check ContinuousResearch.QuarticBumpODE.bumpMoment
#print axioms ContinuousResearch.QuarticBumpODE.bumpMoment
#print ContinuousResearch.QuarticBumpODE.bumpMoment

#check ContinuousResearch.QuarticBumpODE.fifthProfile
#print axioms ContinuousResearch.QuarticBumpODE.fifthProfile
#print ContinuousResearch.QuarticBumpODE.fifthProfile

#check ContinuousResearch.QuarticBumpODE.moment_profile_continuous
#print axioms ContinuousResearch.QuarticBumpODE.moment_profile_continuous
#print ContinuousResearch.QuarticBumpODE.moment_profile_continuous

#check ContinuousResearch.QuarticBumpODE.moment_profile_hasCompactSupport
#print axioms ContinuousResearch.QuarticBumpODE.moment_profile_hasCompactSupport
#print ContinuousResearch.QuarticBumpODE.moment_profile_hasCompactSupport

#check ContinuousResearch.QuarticBumpODE.bumpMoment_integrable
#print axioms ContinuousResearch.QuarticBumpODE.bumpMoment_integrable
#print ContinuousResearch.QuarticBumpODE.bumpMoment_integrable

#check ContinuousResearch.QuarticBumpODE.bumpMoment_hasDerivAt
#print axioms ContinuousResearch.QuarticBumpODE.bumpMoment_hasDerivAt
#print ContinuousResearch.QuarticBumpODE.bumpMoment_hasDerivAt

#check ContinuousResearch.QuarticBumpODE.bumpMoment_differentiable
#print axioms ContinuousResearch.QuarticBumpODE.bumpMoment_differentiable
#print ContinuousResearch.QuarticBumpODE.bumpMoment_differentiable

#check ContinuousResearch.QuarticBumpODE.bumpMoment_zero_eq_quartic
#print axioms ContinuousResearch.QuarticBumpODE.bumpMoment_zero_eq_quartic
#print ContinuousResearch.QuarticBumpODE.bumpMoment_zero_eq_quartic

#check ContinuousResearch.QuarticBumpODE.quartic_value_zero
#print axioms ContinuousResearch.QuarticBumpODE.quartic_value_zero
#print ContinuousResearch.QuarticBumpODE.quartic_value_zero

#check ContinuousResearch.QuarticBumpODE.quartic_hasDerivAt
#print axioms ContinuousResearch.QuarticBumpODE.quartic_hasDerivAt
#print ContinuousResearch.QuarticBumpODE.quartic_hasDerivAt

#check ContinuousResearch.QuarticBumpODE.quartic_deriv
#print axioms ContinuousResearch.QuarticBumpODE.quartic_deriv
#print ContinuousResearch.QuarticBumpODE.quartic_deriv

#check ContinuousResearch.QuarticBumpODE.quartic_second_deriv
#print axioms ContinuousResearch.QuarticBumpODE.quartic_second_deriv
#print ContinuousResearch.QuarticBumpODE.quartic_second_deriv

#check ContinuousResearch.QuarticBumpODE.fifthProfile_contDiff
#print axioms ContinuousResearch.QuarticBumpODE.fifthProfile_contDiff
#print ContinuousResearch.QuarticBumpODE.fifthProfile_contDiff

#check ContinuousResearch.QuarticBumpODE.fifthProfile_hasCompactSupport
#print axioms ContinuousResearch.QuarticBumpODE.fifthProfile_hasCompactSupport
#print ContinuousResearch.QuarticBumpODE.fifthProfile_hasCompactSupport

#check ContinuousResearch.QuarticBumpODE.fifthProfile_hasDerivAt
#print axioms ContinuousResearch.QuarticBumpODE.fifthProfile_hasDerivAt
#print ContinuousResearch.QuarticBumpODE.fifthProfile_hasDerivAt

#check ContinuousResearch.QuarticBumpODE.fifthProfile_deriv
#print axioms ContinuousResearch.QuarticBumpODE.fifthProfile_deriv
#print ContinuousResearch.QuarticBumpODE.fifthProfile_deriv

#check ContinuousResearch.QuarticBumpODE.fifthProfile_transform
#print axioms ContinuousResearch.QuarticBumpODE.fifthProfile_transform
#print ContinuousResearch.QuarticBumpODE.fifthProfile_transform

#check ContinuousResearch.QuarticBumpODE.fifthProfile_deriv_transform
#print axioms ContinuousResearch.QuarticBumpODE.fifthProfile_deriv_transform
#print ContinuousResearch.QuarticBumpODE.fifthProfile_deriv_transform

#check ContinuousResearch.QuarticBumpODE.literal_quartic_ODE
#print axioms ContinuousResearch.QuarticBumpODE.literal_quartic_ODE
#print ContinuousResearch.QuarticBumpODE.literal_quartic_ODE
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variant4cd32f6b2ab5827c75672308bf787899c3880990119ccb25e317eed822f18643.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52c0ef4d42afb0ac8359c65dcca3635d63ac9c6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
