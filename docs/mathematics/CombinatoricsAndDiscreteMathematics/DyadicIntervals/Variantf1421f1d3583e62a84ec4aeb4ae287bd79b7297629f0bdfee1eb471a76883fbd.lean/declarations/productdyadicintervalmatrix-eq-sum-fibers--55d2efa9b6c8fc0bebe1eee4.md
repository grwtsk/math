# productDyadicIntervalMatrix_eq_sum_fibers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e96045f-99ae-710d-f3c2-0f502a99dcd7",
  "kind": "theorem",
  "lexical_name": "productDyadicIntervalMatrix_eq_sum_fibers",
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
  "slug": "productdyadicintervalmatrix-eq-sum-fibers--55d2efa9b6c8fc0bebe1eee4",
  "source": {
    "blob": "ef379ff4cc53302062e090836f17f4df71e05a71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 208,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55d2efa9b6c8fc0bebe1eee4885efafeb0ac2188946562a9ff690b5f00d6ea36",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e96045f-99ae-710d-f3c2-0f502a99dcd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem productDyadicIntervalMatrix_eq_sum_fibers {N : ℕ}
    {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (interval : TypeIIDyadicInterval N) :
    productDyadicIntervalMatrix leftIndex rightIndex interval =
      ∑ n ∈ interval.carrier,
        productFiberIncrementMatrix leftIndex rightIndex n := by
  ext left right
  rw [productDyadicIntervalMatrix_apply]
  simp only [TypeIIDyadicInterval.carrier, Matrix.sum_apply,
    productFiberIncrementMatrix, Finset.sum_ite_eq]
  by_cases hmem :
      leftIndex left * rightIndex right ∈
        Finset.Icc interval.lower interval.upper
  · rw [if_pos hmem]
    simp only [Finset.mem_Icc] at hmem
    simp [hmem]
  · rw [if_neg hmem]
    simp only [Finset.mem_Icc, not_and_or] at hmem
    rcases hmem with hbelow | habove
    · have : ¬ interval.lower ≤ leftIndex left * rightIndex right := by
        omega
      simp [this]
    · have : ¬ leftIndex left * rightIndex right ≤ interval.upper := by
        omega
      simp [this]

/-- Exact bilinear pairing identity for the endpoint difference defining a
dyadic interval matrix. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef379ff4cc53302062e090836f17f4df71e05a71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
