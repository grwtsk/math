# signedPairing_eq_endpoint_sub_defect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1afdd7198567c47861beb8d24280bf0390803058",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdff50a2-7a65-9dce-ec78-3f7c7b3e521e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf4fc662-809c-a894-6d61-f4a528d7a312",
  "kind": "theorem",
  "lexical_name": "signedPairing_eq_endpoint_sub_defect",
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
  "slug": "signedpairing-eq-endpoint-sub-defect--09ff8a455de13eb5402bc78a",
  "source": {
    "blob": "1afdd7198567c47861beb8d24280bf0390803058",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 73,
    "path": "GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variant2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09ff8a455de13eb5402bc78ac9b08157e049f077c893be4706ad12f76c443f40",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variant2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf4fc662-809c-a894-6d61-f4a528d7a312`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedPairing_eq_endpoint_sub_defect
    (A : ℝ) (hA : 1 ≤ A) :
    signedPairing Realization.explicitSecondDerivative A =
      endpointMoment A - primeSmoothDefect A := by
  obtain ⟨hC, hzero⟩ :=
    CorrelationRegularity.correlation_certificate A hA
  have hdesc :=
    source_prime_power_descent
      Realization.explicitSecondDerivative A hA hC hzero
  rw [primePowerContribution_eq_closedPrimeMoment A hA] at hdesc
  unfold endpointMoment primeSmoothDefect smoothMoment
  linarith

/-- The only endpoint left by the descent is uniformly bounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variant2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variant2950c86becabe5a1e6b9d6de0a49982ec2ab89cb7b569ffc8641f9bfc950c6e7.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1afdd7198567c47861beb8d24280bf0390803058` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
