# innerInventory_eq_filter_interval

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
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02dd70204c4b4129f5feb684a3cfed159d36395cf4d6be953c3e7eca2f96a845.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba1f9f6c-b438-7809-8f7d-408136e798dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68216db3-6619-a5e2-30e3-90171d01de32",
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
  "slug": "innerinventory-eq-filter-interval--3821a66de998082d273b1f9a",
  "source": {
    "blob": "a008999a15c9e2223dd395973902b7ce5f88a34e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant02dd70204c4b4129f5feb684a3cfed159d36395cf4d6be953c3e7eca2f96a845.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3821a66de998082d273b1f9a97b4f8f6a9e819cf8aac1b3dc3cd4cb87121b015",
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

Occurrence: `result:68216db3-6619-a5e2-30e3-90171d01de32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–81.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant02dd70204c4b4129f5feb684a3cfed159d36395cf4d6be953c3e7eca2f96a845.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant02dd70204c4b4129f5feb684a3cfed159d36395cf4d6be953c3e7eca2f96a845.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a008999a15c9e2223dd395973902b7ce5f88a34e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
