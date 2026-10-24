# low_sector_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a573c5b3124540403615ccf5f6412f78d0d2d4b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af023943a388df8e8ba84cdaad3b8a05c9d8a5f955b65b58d90def8ba2f9fd26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c5e29f6b-356e-aff4-9d3b-6d203c0b60dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0b7357e-e7b5-7533-1dd9-d19045042251",
  "kind": "theorem",
  "lexical_name": "low_sector_integrable",
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
  "slug": "low-sector-integrable--a30f335ef66cd9460b15242d",
  "source": {
    "blob": "a573c5b3124540403615ccf5f6412f78d0d2d4b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 311,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantaf023943a388df8e8ba84cdaad3b8a05c9d8a5f955b65b58d90def8ba2f9fd26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a30f335ef66cd9460b15242d00c3ab600bdf65db2b857083a0e8f7472bdf8ef9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantaf023943a388df8e8ba84cdaad3b8a05c9d8a5f955b65b58d90def8ba2f9fd26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0b7357e-e7b5-7533-1dd9-d19045042251`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem low_sector_integrable
    (r : ℝ → ℝ) (hc : Continuous r) {A : ℝ} (hA : 1 ≤ A)
    (hs : tsupport r ⊆ Icc (-A) A) :
    Integrable (fun v => actualLowTimeProfile r A v * actualReflectedProfile r A v) := by
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  have hU : 1 ≤ U := by have := vaughanCutoff_pos A hA; dsimp only [U]; omega
  have hU0 : 0 < (U : ℝ) := by exact_mod_cast (by omega : 0 < U)
  have hla : Real.log (U : ℝ) ≤ Real.log ((U + 1 : ℕ) : ℝ) :=
    Real.log_le_log hU0 (by exact_mod_cast Nat.le_succ U)
  have he : (fun v => actualLowTimeProfile r A v * actualReflectedProfile r A v) =
      (fun v => ∑ k ∈ Finset.Ico (U + 1) K,
        (∑ n ∈ Finset.Ioc U k, centeredBeta U n) *
          (timeRow r (Real.log (U : ℝ)) (Real.log ((U + 1 : ℕ) : ℝ)) v *
            cellRow r (k : ℝ) v)) := by
    funext v
    change timeRow r (Real.log (U : ℝ)) (Real.log ((U + 1 : ℕ) : ℝ)) v *
      (∑ k ∈ Finset.Ico (U + 1) K,
        (∑ n ∈ Finset.Ioc U k, centeredBeta U n) * cellRow r (k : ℝ) v) = _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  rw [he]
  apply integrable_finsetSum
  intro k hk
  have hk0 : 0 < (k : ℝ) := by
    exact_mod_cast (by have := (Finset.mem_Ico.mp hk).1; omega : 0 < k)
  exact (SourceActualMixedWorkFubini.profile_cell_product_integrable r hc hla hk0 hs).const_mul _

/-- The actual coefficient and cell-mass factors pay the low-time scale budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantaf023943a388df8e8ba84cdaad3b8a05c9d8a5f955b65b58d90def8ba2f9fd26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantaf023943a388df8e8ba84cdaad3b8a05c9d8a5f955b65b58d90def8ba2f9fd26.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a573c5b3124540403615ccf5f6412f78d0d2d4b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
