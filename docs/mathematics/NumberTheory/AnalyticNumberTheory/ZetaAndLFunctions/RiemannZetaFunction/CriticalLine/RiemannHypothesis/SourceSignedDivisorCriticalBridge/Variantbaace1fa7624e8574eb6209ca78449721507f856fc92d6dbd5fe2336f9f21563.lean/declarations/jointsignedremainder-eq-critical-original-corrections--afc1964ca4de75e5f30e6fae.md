# jointSignedRemainder_eq_critical_original_corrections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c8cfc7e9852f68868e6ab68f1188ee6cdb32136",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/baace1fa7624e8574eb6209ca78449721507f856fc92d6dbd5fe2336f9f21563.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd40c7fa-532a-2972-0732-37c7f88d945a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01626cd8-ca50-89e2-cc76-819f6f75eba5",
  "kind": "theorem",
  "lexical_name": "jointSignedRemainder_eq_critical_original_corrections",
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
  "slug": "jointsignedremainder-eq-critical-original-corrections--afc1964ca4de75e5f30e6fae",
  "source": {
    "blob": "6c8cfc7e9852f68868e6ab68f1188ee6cdb32136",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedDivisorCriticalBridge/Variantbaace1fa7624e8574eb6209ca78449721507f856fc92d6dbd5fe2336f9f21563.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afc1964ca4de75e5f30e6fae0e0472f799a689f6e52c47f5cc734b69b1025d5f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedDivisorCriticalBridge/Variantbaace1fa7624e8574eb6209ca78449721507f856fc92d6dbd5fe2336f9f21563.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01626cd8-ca50-89e2-cc76-819f6f75eba5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointSignedRemainder_eq_critical_original_corrections (A : ℝ) (hA : 1 ≤ A) :
    jointSignedRemainder A = criticalRelativePairing A + latticePairing A +
      plainInventory A - (betaMainLedger A + independentMainTerm A) := by
  have hj := jointSignedRemainder_eq_covariance A hA
  have hr := actual_residual_decomposition A hA
  have hp := residual_sub_integerJ_eq_plain hA
  have hq := integerJ_eq_critical_add_lattice hA
  linarith only [hj, hr, hp, hq]

/-- The literal retained sampling rows equal the critical pairing with original corrections. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedDivisorCriticalBridge/Variantbaace1fa7624e8574eb6209ca78449721507f856fc92d6dbd5fe2336f9f21563.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedDivisorCriticalBridge/Variantbaace1fa7624e8574eb6209ca78449721507f856fc92d6dbd5fe2336f9f21563.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c8cfc7e9852f68868e6ab68f1188ee6cdb32136` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
