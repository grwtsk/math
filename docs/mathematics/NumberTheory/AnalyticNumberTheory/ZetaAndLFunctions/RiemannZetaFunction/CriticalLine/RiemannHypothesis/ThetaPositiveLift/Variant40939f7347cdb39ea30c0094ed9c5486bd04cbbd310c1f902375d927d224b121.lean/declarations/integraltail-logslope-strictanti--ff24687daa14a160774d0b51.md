# integralTail_logSlope_strictAnti

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96a88757-72f6-d2b9-3aa1-7f7546511d86",
  "kind": "theorem",
  "lexical_name": "integralTail_logSlope_strictAnti",
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
  "slug": "integraltail-logslope-strictanti--ff24687daa14a160774d0b51",
  "source": {
    "blob": "2c15fd99f5fd87392ea876afdbc065cba83ab20d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 97,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff24687daa14a160774d0b519e524be1496f8ee06a9817b6936f4f1ca4066c2c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96a88757-72f6-d2b9-3aa1-7f7546511d86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integralTail_logSlope_strictAnti {f : ℝ → ℝ}
    (hd : Differentiable ℝ f)
    (hi : IntegrableOn f (Ici (0 : ℝ)))
    (hdi : IntegrableOn (deriv f) (Ici (0 : ℝ)))
    (hz : Filter.Tendsto f Filter.atTop (𝓝 0))
    (hp : ∀ u : ℝ, 0 ≤ u → 0 < f u)
    (ha : StrictAntiOn (fun u => deriv f u / f u) (Ici (0 : ℝ))) :
    StrictAntiOn (fun u => deriv (integralTail f) u / integralTail f u) (Ici (0 : ℝ)) := by
  intro x hx y hy hxy
  change deriv (integralTail f) y / integralTail f y <
    deriv (integralTail f) x / integralTail f x
  rw [(hasDerivAt_integralTail hd.continuous hi y).deriv,
    (hasDerivAt_integralTail hd.continuous hi x).deriv]
  have hr := integralTail_ratio_strictAnti hd hi hdi hz hp ha hx hy hxy
  have hcross := (div_lt_div_iff₀ (hp y hy) (hp x hx)).mp hr
  apply (div_lt_div_iff₀ (integralTail_positive hi hp hy)
    (integralTail_positive hi hp hx)).mpr
  nlinarith only [hcross]

/-- Every actual theta tail has strictly decreasing logarithmic slope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant40939f7347cdb39ea30c0094ed9c5486bd04cbbd310c1f902375d927d224b121.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c15fd99f5fd87392ea876afdbc065cba83ab20d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
