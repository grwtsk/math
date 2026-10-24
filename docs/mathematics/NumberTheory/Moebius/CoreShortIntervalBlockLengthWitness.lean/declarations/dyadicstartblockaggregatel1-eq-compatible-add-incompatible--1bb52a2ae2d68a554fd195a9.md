# dyadicStartBlockAggregateL1_eq_compatible_add_incompatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:149d8d42-d8b7-f842-f56b-ee9edd4995ad",
  "kind": "theorem",
  "lexical_name": "dyadicStartBlockAggregateL1_eq_compatible_add_incompatible",
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
  "slug": "dyadicstartblockaggregatel1-eq-compatible-add-incompatible--1bb52a2ae2d68a554fd195a9",
  "source": {
    "blob": "5d0d72a373b496c47c1725f47a4d7e44bc0c6c89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 35,
    "path": "GRWTSK/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bb52a2ae2d68a554fd195a90cc2015f452d4e0945860d594be4ddb8bd80d41d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:149d8d42-d8b7-f842-f56b-ee9edd4995ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicStartBlockAggregateL1_eq_compatible_add_incompatible
    (j n : ℕ) :
    dyadicStartBlockAggregateL1 j n =
      compatibleDyadicStartBlockL1 j n +
        incompatibleDyadicStartBlockL1 j n +
          ambientEndpointStartCorrection j n := by
  unfold dyadicStartBlockAggregateL1
    compatibleDyadicStartBlockL1
    incompatibleDyadicStartBlockL1
  rw [← Finset.sum_filter_add_sum_filter_not
    (s := Finset.range (j + 1))
    (p := fun r => n ≤ 2 ^ r)]
  simp only [not_le]

/-- Compatible terminal majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d0d72a373b496c47c1725f47a4d7e44bc0c6c89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
