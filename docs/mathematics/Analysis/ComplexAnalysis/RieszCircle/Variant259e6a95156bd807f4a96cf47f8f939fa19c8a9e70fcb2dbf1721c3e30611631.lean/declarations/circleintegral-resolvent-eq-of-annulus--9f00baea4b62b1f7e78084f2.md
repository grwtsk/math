# circleIntegral_resolvent_eq_of_annulus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:897209c5-f2a6-d999-2f6d-eb445b94c47b",
  "kind": "theorem",
  "lexical_name": "circleIntegral_resolvent_eq_of_annulus",
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
  "slug": "circleintegral-resolvent-eq-of-annulus--9f00baea4b62b1f7e78084f2",
  "source": {
    "blob": "995961d12505855c4baca56268cdd0f66f115992",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 345,
    "path": "GRWTSK/Analysis/ComplexAnalysis/RieszCircle/Variant259e6a95156bd807f4a96cf47f8f939fa19c8a9e70fcb2dbf1721c3e30611631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f00baea4b62b1f7e78084f2715d49c6f75eff2c0e50f5ed28bc19d7fb2561c5",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RieszCircle/Variant259e6a95156bd807f4a96cf47f8f939fa19c8a9e70fcb2dbf1721c3e30611631.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:897209c5-f2a6-d999-2f6d-eb445b94c47b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circleIntegral_resolvent_eq_of_annulus
    (A : H →L[ℂ] H) {c : ℂ} {r R : ℝ}
    (hr : 0 < r) (hrR : r ≤ R)
    (hann : Metric.closedBall c R \ Metric.ball c r ⊆ resolventSet ℂ A) :
    circleIntegral (resolvent A) c R = circleIntegral (resolvent A) c r := by
  apply Complex.circleIntegral_eq_of_differentiable_on_annulus_off_countable
      hr hrR Set.countable_empty
  · exact continuousOn_resolvent_of_subset A hann
  · intro z hz
    exact (spectrum.hasDerivAt_resolvent_const_left
      (hann ⟨Metric.ball_subset_closedBall hz.1.1,
        fun hzr ↦ hz.1.2 (Metric.ball_subset_closedBall hzr)⟩)).differentiableAt

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/RieszCircle/Variant259e6a95156bd807f4a96cf47f8f939fa19c8a9e70fcb2dbf1721c3e30611631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/RieszCircle/Variant259e6a95156bd807f4a96cf47f8f939fa19c8a9e70fcb2dbf1721c3e30611631.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `995961d12505855c4baca56268cdd0f66f115992` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
