# criticalContinuousMoment_eq_half_source_bump

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29ea27f8-8b89-e12f-34a9-579d0f9726fc",
  "kind": "theorem",
  "lexical_name": "criticalContinuousMoment_eq_half_source_bump",
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
  "slug": "criticalcontinuousmoment-eq-half-source-bump--14f630af3df0b15e94567f4f",
  "source": {
    "blob": "30906af89f678769d08fc6412c74641d246ce387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 322,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PairingV1Prebytes/Variant6d37f49fe4bb02888c28f77e715e34cb0805109b54a3390ca923ec1b54386168.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14f630af3df0b15e94567f4fc4b13fbf03de1844350cdc8f3453547ecc8d83cc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PairingV1Prebytes/Variant6d37f49fe4bb02888c28f77e715e34cb0805109b54a3390ca923ec1b54386168.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29ea27f8-8b89-e12f-34a9-579d0f9726fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalContinuousMoment_eq_half_source_bump {A : ℝ} (hA : 1 ≤ A) :
    criticalContinuousMoment A = (1/2) * ∫ x : ℝ,
      normalizedTest explicitSecondDerivative A x * normalizedPrimitiveBump A x := by
  rw [criticalContinuousMoment_eq_neg_half_green hA,
    sourceGreenPairing_eq_neg_source_bump (by linarith : 0 < A)]
  ring

end

end FormalResearch.RiemannHypothesis.SourceGreenKernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PairingV1Prebytes/Variant6d37f49fe4bb02888c28f77e715e34cb0805109b54a3390ca923ec1b54386168.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PairingV1Prebytes/Variant6d37f49fe4bb02888c28f77e715e34cb0805109b54a3390ca923ec1b54386168.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30906af89f678769d08fc6412c74641d246ce387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
