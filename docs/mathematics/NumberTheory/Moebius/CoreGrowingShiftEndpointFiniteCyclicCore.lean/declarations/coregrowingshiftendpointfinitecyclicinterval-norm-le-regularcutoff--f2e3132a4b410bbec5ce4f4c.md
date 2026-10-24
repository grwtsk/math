# coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_regularCutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:995d8890-eadf-c178-2ed4-f9d18c230f4f",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_regularCutoff",
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
  "slug": "coregrowingshiftendpointfinitecyclicinterval-norm-le-regularcutoff--f2e3132a4b410bbec5ce4f4c",
  "source": {
    "blob": "3c311ec597b56c6fd08c72d60062b40c5bb70386",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 116,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicCore.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2e3132a4b410bbec5ce4f4c4ff264319a329a90038612d7bff0d1f6b5b6703e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicCore.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:995d8890-eadf-c178-2ed4-f9d18c230f4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_regularCutoff
    (j A B L : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j)
    (hA : 1 ≤ A)
    (ht : t ≠ 0)
    (hL : L < coreGrowingShiftEndpointFiniteCyclicDistance j t) :
    ‖∑ n ∈ Finset.Ico A B,
        coreGrowingShiftEndpointFiniteCyclicNegativePhase j n t‖ ≤
      (coreGrowingShiftEndpointFiniteCyclicDoubledModulus j : ℝ) /
        (2 * (((L + 1 : ℕ) : ℝ))) := by
  simpa [coreGrowingShiftEndpointFiniteCyclicNegativePhase,
    coreGrowingShiftEndpointFiniteCyclicDistance,
    coreGrowingShiftEndpointTransverseNatCharacter,
    coreGrowingShiftEndpointTransverseCircularDistance,
    GRWTSK.NumberTheory.CharacterSums.finiteCyclicCircularDistance] using
    GRWTSK.NumberTheory.CharacterSums.norm_sum_stdAddChar_neg_Ico_le_regularCutoff
      (q := coreGrowingShiftEndpointFiniteCyclicDoubledModulus j)
      t A B L hA ht hL

/-- At zero transverse frequency the isolated interval is its exact
cardinality; no inverse-multiplier argument applies. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicCore.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicCore.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c311ec597b56c6fd08c72d60062b40c5bb70386` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
