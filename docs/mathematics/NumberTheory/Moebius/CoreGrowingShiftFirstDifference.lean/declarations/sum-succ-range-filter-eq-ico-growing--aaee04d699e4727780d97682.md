# sum_succ_range_filter_eq_Ico_growing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:507547c7-9f5e-0c38-b466-ad6569e69a32",
  "kind": "theorem",
  "lexical_name": "sum_succ_range_filter_eq_Ico_growing",
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
  "slug": "sum-succ-range-filter-eq-ico-growing--aaee04d699e4727780d97682",
  "source": {
    "blob": "3eeb984404cfdf422b21d0f0d93855e1ab312327",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 46,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aaee04d699e4727780d9768244fb45b841f1df3d779a674ed9df16895be047e0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:507547c7-9f5e-0c38-b466-ad6569e69a32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_succ_range_filter_eq_Ico_growing
    (F : ℕ → ℝ) {H N : ℕ}
    (hHN : H ≤ N) :
    (∑ k ∈ (Finset.range (N - 1)).filter (fun k => H ≤ k + 1),
      F (k + 1)) =
      ∑ n ∈ Finset.Ico H N, F n := by
  classical
  apply Finset.sum_bij (fun k _ => k + 1)
  · intro k hk
    simp only [Finset.mem_filter, Finset.mem_range] at hk
    simp only [Finset.mem_Ico]
    exact ⟨hk.2, by omega⟩
  · intro k₁ hk₁ k₂ hk₂ h
    omega
  · intro n hn
    simp only [Finset.mem_Ico] at hn
    refine ⟨n - 1, ?_, ?_⟩
    · simp only [Finset.mem_filter, Finset.mem_range]
      constructor <;> omega
    · omega
  · intro k hk
    rfl

/-- Signed anchor left after truncating the first-difference packet at the
logarithmic retained-length threshold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftFirstDifference.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eeb984404cfdf422b21d0f0d93855e1ab312327` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
