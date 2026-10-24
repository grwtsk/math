# heavy_bin_count_at_horizon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54eb6c8e72cf7de387ab346af6815393151e057f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c460d318-1ad1-7b24-1ada-0f2b42a0412c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f87de9bf-7545-7dc5-9b32-87281cbb9f52",
  "kind": "theorem",
  "lexical_name": "heavy_bin_count_at_horizon",
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
  "slug": "heavy-bin-count-at-horizon--ad0ffc6390bceb44e512b56d",
  "source": {
    "blob": "54eb6c8e72cf7de387ab346af6815393151e057f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 188,
    "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad0ffc6390bceb44e512b56de4d3a9226c498e9c9dfb9199d52eb0ee0a3b2c39",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f87de9bf-7545-7dc5-9b32-87281cbb9f52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heavy_bin_count_at_horizon {S : ℝ} (hS : 1024 ≤ S) {k : ℕ}
    (hk : k ∈ Finset.range 56)
    (hcount : Real.exp S/(896*S) ≤ ((primeBin S k).card : ℝ)) :
    Real.exp (binHorizon S k)/(1792*(1+binHorizon S k)) ≤ ((primeBin S k).card : ℝ) := by
  have hlarge := binHorizon_large hS hk
  have hT : 0 ≤ binHorizon S k := chosenWidth_valid.1.le.trans hlarge.1
  have hSpos : 0 < S := by linarith
  have hd : 0 < 896*S := by positivity
  have hd' : 0 < 1792*(1+binHorizon S k) := by positivity
  calc
    _ ≤ Real.exp (binHorizon S k)/(896*S) := by
      apply (div_le_div_iff₀ hd' hd).mpr
      exact mul_le_mul_of_nonneg_left (by linarith [hlarge.2]) (Real.exp_pos _).le
    _ ≤ Real.exp S/(896*S) :=
      (div_le_div_iff_of_pos_right hd).mpr (Real.exp_le_exp.mpr (binHorizon_bounds hk).2)
    _ ≤ _ := hcount

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54eb6c8e72cf7de387ab346af6815393151e057f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
