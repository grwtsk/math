# thetaA_cosh_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:128e3534-047d-f611-840d-46c5eb44c6e5",
  "kind": "theorem",
  "lexical_name": "thetaA_cosh_integral",
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
  "slug": "thetaa-cosh-integral--c22e34ba832514e4d3389a89",
  "source": {
    "blob": "afb3613da94f205be3bceb1ba5e93bd6b480a88b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 349,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c22e34ba832514e4d3389a899a406259705178d9d5938c4d1e61dec55737a149",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:128e3534-047d-f611-840d-46c5eb44c6e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaA_cosh_integral (u : ℂ) :
    (∫ t in Ioi (0 : ℝ),
        (thetaA t : ℂ) * Complex.cosh (2 * u * t)) =
      ((∫ t in Ioi (0 : ℝ),
          (thetaA t : ℂ) * Complex.exp (2 * u * t)) +
       (∫ t in Ioi (0 : ℝ),
          (thetaA t : ℂ) * Complex.exp (2 * (-u) * t))) / 2 := by
  have hp := thetaA_exp_integrableOn u
  have hm := thetaA_exp_integrableOn (-u)
  rw [show
    (fun t : ℝ => (thetaA t : ℂ) * Complex.cosh (2 * u * t)) =
      fun t : ℝ =>
        ((thetaA t : ℂ) * Complex.exp (2 * u * t) +
          (thetaA t : ℂ) * Complex.exp (2 * (-u) * t)) / 2 by
    funext t
    simp only [Complex.cosh]
    rw [show -(2 * u * (t : ℂ)) = 2 * (-u) * (t : ℂ) by ring]
    ring]
  rw [integral_div, integral_add hp hm]

/-- The pole-removed completed Riemann source has the exact centered theta-A
cosh representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6df7c9a5faab4a24d9c5b378c6108d6315271cdf4a84dbc7fc9ec259b3fb7787.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afb3613da94f205be3bceb1ba5e93bd6b480a88b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
