# centeredRow_eq_abel_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc641528-a8e2-549d-54b0-60bd8dd4db88",
  "kind": "theorem",
  "lexical_name": "centeredRow_eq_abel_split",
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
  "slug": "centeredrow-eq-abel-split--71253201f0d039b94ed801d6",
  "source": {
    "blob": "af553f689bf64423082d3c47bed3dcb1c5155b5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 106,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant46a74277b941ac18bdee096e98100cfa128c01286fcc1471351ec08634c3db00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71253201f0d039b94ed801d6547626c5b0fedea9fc77c73e6e989dd44f5dbd35",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant46a74277b941ac18bdee096e98100cfa128c01286fcc1471351ec08634c3db00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc641528-a8e2-549d-54b0-60bd8dd4db88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredRow_eq_abel_split (A : ℝ) (m j : ℕ) (hA : 1 ≤ A) (hm : 1 ≤ m) :
    (∑ n ∈ innerInventory A m j, centeredBeta (vaughanCutoff A) n *
      sourcePlainWeight A ((m*n : ℕ) : ℝ)) =
    abelDiscrepancyMoment A m (vaughanCutoff A) (blockLower A j)
      (leftUpper (blockLower A j) (blockUpper A m j) m) +
    abelDiscrepancyMoment A m (vaughanCutoff A)
      (rightLower (blockLower A j) (blockUpper A m j) m) (blockUpper A m j) := by
  classical
  have hLH : blockLower A j ≤ blockUpper A m j := le_max_left _ _
  have hUL : vaughanCutoff A ≤ blockLower A j := le_max_left _ _
  have hl : blockLower A j ≤ leftUpper (blockLower A j) (blockUpper A m j) m :=
    le_max_left _ _
  have hr : rightLower (blockLower A j) (blockUpper A m j) m ≤ blockUpper A m j := by
    unfold rightLower
    omega
  have hUr : vaughanCutoff A ≤ rightLower (blockLower A j) (blockUpper A m j) m :=
    hUL.trans (le_max_left _ _)
  rw [innerInventory_eq_filter_interval A m j hA hm, filter_interval_ne_eq_union _ _ _ hLH,
    Finset.sum_union (split_intervals_disjoint _ _ _)]
  simp only [Nat.cast_mul]
  change weightedCenteredInterval A m (vaughanCutoff A) _ _ +
    weightedCenteredInterval A m (vaughanCutoff A) _ _ = _
  rw [weightedCenteredInterval_eq_abel A m _ _ _ hA hm (vaughanCutoff_pos A hA) hUL hl,
    weightedCenteredInterval_eq_abel A m _ _ _ hA hm (vaughanCutoff_pos A hA) hUr hr]

/-- Exact finite row rearrangement retains the outer Lambda coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant46a74277b941ac18bdee096e98100cfa128c01286fcc1471351ec08634c3db00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant46a74277b941ac18bdee096e98100cfa128c01286fcc1471351ec08634c3db00.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af553f689bf64423082d3c47bed3dcb1c5155b5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
