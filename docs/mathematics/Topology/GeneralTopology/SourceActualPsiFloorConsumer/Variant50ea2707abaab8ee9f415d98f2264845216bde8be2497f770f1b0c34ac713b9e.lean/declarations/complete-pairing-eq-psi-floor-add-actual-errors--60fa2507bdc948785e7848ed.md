# complete_pairing_eq_psi_floor_add_actual_errors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a4fc1e5-cd24-1396-4ff7-9ee024a8c10c",
  "kind": "theorem",
  "lexical_name": "complete_pairing_eq_psi_floor_add_actual_errors",
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
  "slug": "complete-pairing-eq-psi-floor-add-actual-errors--60fa2507bdc948785e7848ed",
  "source": {
    "blob": "405f95b8df75d5c7cfdeb6d825465f7e1eda68c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant50ea2707abaab8ee9f415d98f2264845216bde8be2497f770f1b0c34ac713b9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60fa2507bdc948785e7848ed5d2cb2d5b6acafbf5105d81d144f0f050b8d2bd0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant50ea2707abaab8ee9f415d98f2264845216bde8be2497f770f1b0c34ac713b9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a4fc1e5-cd24-1396-4ff7-9ee024a8c10c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_pairing_eq_psi_floor_add_actual_errors {A : ℝ} (hA : 91 ≤ A) :
    completeCorrectedAbelPairing A = actualPsiFloorPairing A +
      actualCancelledFactorialWork A +
        (renormalizedActualSignedTail A - actualLeadingRenormalizedTail A) := by
  have hf := actual_leading_full_complement_eq_psi_continuous_add_factorial A hA
  rw [actualPsiContinuousPairing_eq_psi_floor A hA] at hf
  have hl := literal_L_sub_plain_eq_early_add_tail A (by linarith : 1 ≤ A)
  have hp := complete_pairing_eq_renormalized_tail_add_actual_head A
    (by linarith : 1 ≤ A)
  change fullPositiveKappa 1 * actualWeightedMoebiusHalfSum A +
    (literalOmegaComplementarySector A - plainInventory A) =
      actualPsiFloorPairing A + actualCancelledFactorialWork A at hf
  unfold actualLeadingRenormalizedTail
  linarith

/-- Every real scale retains the proved short-jet and quarter-factorial error budgets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant50ea2707abaab8ee9f415d98f2264845216bde8be2497f770f1b0c34ac713b9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualPsiFloorConsumer/Variant50ea2707abaab8ee9f415d98f2264845216bde8be2497f770f1b0c34ac713b9e.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `405f95b8df75d5c7cfdeb6d825465f7e1eda68c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
