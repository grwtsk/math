# closedPrimeMomentScaleDerivative_eq_fixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c43ebc6d49ce2c5d87d38bfedab0493fe9ad89fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb39083149496385de55b3d4e0d2e02c0eb09135b5ac9fe273a8d5a2e5736c32.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34a2390d-08e3-bc3a-d6f0-8eee3e3080e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d04b3585-3ff6-1645-5613-d358e2d4b25f",
  "kind": "theorem",
  "lexical_name": "closedPrimeMomentScaleDerivative_eq_fixed",
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
  "slug": "closedprimemomentscalederivative-eq-fixed--9ede89ec69446d08f5ae3415",
  "source": {
    "blob": "c43ebc6d49ce2c5d87d38bfedab0493fe9ad89fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 221,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GuardsV1Prebytes/Variantfb39083149496385de55b3d4e0d2e02c0eb09135b5ac9fe273a8d5a2e5736c32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ede89ec69446d08f5ae3415d01bed97d61c35bfaa46d57fec500014fce63126",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/GuardsV1Prebytes/Variantfb39083149496385de55b3d4e0d2e02c0eb09135b5ac9fe273a8d5a2e5736c32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d04b3585-3ff6-1645-5613-d358e2d4b25f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedPrimeMomentScaleDerivative_eq_fixed {A : ℝ} (hA : 0 < A) (N : ℕ)
    (hN : ⌊Real.exp (2 * A)⌋₊ ≤ N) :
    closedPrimeMomentScaleDerivative A =
      ∑ n ∈ Finset.Icc 2 N, vonMangoldt n * closedPrimeWeightScaleDerivative A n := by
  unfold closedPrimeMomentScaleDerivative primePowerInventory
  apply Finset.sum_subset
  · intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1, (Finset.mem_Icc.mp hn).2.trans hN⟩
  · intro n hn hnold
    obtain ⟨hn2, hnN⟩ := Finset.mem_Icc.mp hn
    have hcut : ⌊Real.exp (2 * A)⌋₊ < n := by
      simp only [Finset.mem_Icc] at hnold
      omega
    rw [closedPrimeWeightScaleDerivative_zero_above_cutoff hA hn2 hcut, mul_zero]

/-- Prime filtering retains exact derivative padding at all strictly extra indices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/GuardsV1Prebytes/Variantfb39083149496385de55b3d4e0d2e02c0eb09135b5ac9fe273a8d5a2e5736c32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GuardsV1Prebytes/Variantfb39083149496385de55b3d4e0d2e02c0eb09135b5ac9fe273a8d5a2e5736c32.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43ebc6d49ce2c5d87d38bfedab0493fe9ad89fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
