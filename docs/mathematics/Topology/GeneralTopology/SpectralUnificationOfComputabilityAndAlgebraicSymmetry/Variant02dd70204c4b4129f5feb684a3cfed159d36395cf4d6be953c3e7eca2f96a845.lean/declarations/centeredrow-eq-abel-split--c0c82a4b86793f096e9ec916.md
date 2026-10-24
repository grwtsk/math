# centeredRow_eq_abel_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a008999a15c9e2223dd395973902b7ce5f88a34e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02dd70204c4b4129f5feb684a3cfed159d36395cf4d6be953c3e7eca2f96a845.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c431a3d2-bc3f-06a1-a3ee-22c92c1ab57e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ab5d71e-97c2-7675-ab18-9472f2264e29",
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
  "slug": "centeredrow-eq-abel-split--c0c82a4b86793f096e9ec916",
  "source": {
    "blob": "a008999a15c9e2223dd395973902b7ce5f88a34e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant02dd70204c4b4129f5feb684a3cfed159d36395cf4d6be953c3e7eca2f96a845.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0c82a4b86793f096e9ec916798dd53583b1750864b11c01db59cc5dfbb00b19",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant02dd70204c4b4129f5feb684a3cfed159d36395cf4d6be953c3e7eca2f96a845.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ab5d71e-97c2-7675-ab18-9472f2264e29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–123.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant02dd70204c4b4129f5feb684a3cfed159d36395cf4d6be953c3e7eca2f96a845.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant02dd70204c4b4129f5feb684a3cfed159d36395cf4d6be953c3e7eca2f96a845.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a008999a15c9e2223dd395973902b7ce5f88a34e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
