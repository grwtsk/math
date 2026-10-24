# calibrated_geometry_recovers_potential

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:130fc884-ffc1-155c-607f-37640fc71b12",
  "kind": "theorem",
  "lexical_name": "calibrated_geometry_recovers_potential",
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
  "slug": "calibrated-geometry-recovers-potential--fd3eeb1aae319883a2e0f80c",
  "source": {
    "blob": "37c5c9cf7d18608f8a4bb935486d7611863201d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AffineRootConsumer/Variantc5604f5a66c3818cdc8851416be9c81a9643bb0aa4b901fb29ad2b92c2cd8e94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd3eeb1aae319883a2e0f80c6ec1596fe4c5047d79a57a689910d9bbfeb31e16",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AffineRootConsumer/Variantc5604f5a66c3818cdc8851416be9c81a9643bb0aa4b901fb29ad2b92c2cd8e94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:130fc884-ffc1-155c-607f-37640fc71b12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem calibrated_geometry_recovers_potential {D₁ D₂ : AnalyticDispersionReconstruction E}
    (hg : SameDispersionGeometry D₁ D₂) (hgrad : D₁.gradient 0 = D₂.gradient 0)
    (hvalue : D₁.potential 0 = D₂.potential 0) :
    D₁.potential = D₂.potential ∧ D₁.gradient = D₂.gradient := by
  obtain ⟨ell, c, hrec⟩ := exists_affine_difference_of_sameDispersionGeometry hg
  have hell : ell = 0 := by
    have hz := (hrec (0 : E)).1
    rw [hgrad] at hz
    exact (add_eq_left.mp hz.symm)
  have hc : c = 0 := by
    have hz := (hrec (0 : E)).2
    rw [hvalue, hell] at hz
    simp only [zero_apply, add_zero] at hz
    exact add_eq_left.mp hz.symm
  constructor
  · funext x
    simpa only [hell, hc, zero_apply, add_zero] using (hrec x).2
  · funext x
    simpa only [hell, add_zero] using (hrec x).1

end GRWTSK.RiemannHypothesis.Conversation.AffineRootConsumer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AffineRootConsumer/Variantc5604f5a66c3818cdc8851416be9c81a9643bb0aa4b901fb29ad2b92c2cd8e94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AffineRootConsumer/Variantc5604f5a66c3818cdc8851416be9c81a9643bb0aa4b901fb29ad2b92c2cd8e94.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37c5c9cf7d18608f8a4bb935486d7611863201d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
