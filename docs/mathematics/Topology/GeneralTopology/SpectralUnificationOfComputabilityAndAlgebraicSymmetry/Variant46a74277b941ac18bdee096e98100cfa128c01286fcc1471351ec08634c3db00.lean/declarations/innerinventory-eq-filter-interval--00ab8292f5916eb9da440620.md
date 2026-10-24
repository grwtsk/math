# innerInventory_eq_filter_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2ddeed1-1b68-7e69-cd4d-a5a458680199",
  "kind": "theorem",
  "lexical_name": "innerInventory_eq_filter_interval",
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
  "slug": "innerinventory-eq-filter-interval--00ab8292f5916eb9da440620",
  "source": {
    "blob": "af553f689bf64423082d3c47bed3dcb1c5155b5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant46a74277b941ac18bdee096e98100cfa128c01286fcc1471351ec08634c3db00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00ab8292f5916eb9da4406203000e184d982ee143aabeacf07ce7462555b305e",
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

Occurrence: `result:d2ddeed1-1b68-7e69-cd4d-a5a458680199`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem innerInventory_eq_filter_interval (A : ℝ) (m j : ℕ) (hA : 1 ≤ A)
    (hm : 1 ≤ m) :
    innerInventory A m j = (Finset.Ioc (blockLower A j) (blockUpper A m j)).filter
      (fun n ↦ n ≠ m) := by
  classical
  have hU := vaughanCutoff_pos A hA
  have hce0 : 1 ≤ ⌈Real.exp (j : ℝ)⌉₊ := Nat.one_le_ceil_iff.mpr (Real.exp_pos _)
  have hce1 : 1 ≤ ⌈Real.exp ((j : ℝ)+1)⌉₊ := Nat.one_le_ceil_iff.mpr (Real.exp_pos _)
  have hm0 : 0 < m := by omega
  ext n
  by_cases hn1 : 1 ≤ n
  · simp only [innerInventory, logLongInventory, Finset.mem_filter, Finset.mem_Ioc,
      floor_log_eq_iff_ceil n j hn1, blockLower, blockUpper]
    have hp : m*n ≤ sourceKernelCutoff A ↔ n ≤ sourceKernelCutoff A/m := by
      rw [Nat.le_div_iff_mul_le hm0, Nat.mul_comm]
    have hnN : n ≤ sourceKernelCutoff A/m → n ≤ sourceKernelCutoff A :=
      fun h ↦ h.trans (Nat.div_le_self _ _)
    rw [hp]
    omega
  · have hn0 : n = 0 := by omega
    subst n
    simp [innerInventory, logLongInventory, blockLower, blockUpper]

/-- Deleting a single index splits the interval into at most two exact disjoint pieces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant46a74277b941ac18bdee096e98100cfa128c01286fcc1471351ec08634c3db00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant46a74277b941ac18bdee096e98100cfa128c01286fcc1471351ec08634c3db00.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af553f689bf64423082d3c47bed3dcb1c5155b5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
