# productDyadicIntervalMatrix_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b0829d8-5308-6c69-3f0c-e8b75391b3e5",
  "kind": "theorem",
  "lexical_name": "productDyadicIntervalMatrix_apply",
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
  "slug": "productdyadicintervalmatrix-apply--d446272d2eb3d42b76a61fe1",
  "source": {
    "blob": "ef379ff4cc53302062e090836f17f4df71e05a71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 179,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d446272d2eb3d42b76a61fe1a5d332ebbaeb0b1a5389c12ba9116dfec7c469a3",
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

Occurrence: `result:8b0829d8-5308-6c69-3f0c-e8b75391b3e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem productDyadicIntervalMatrix_apply {N : ℕ}
    {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (interval : TypeIIDyadicInterval N) (left : Left) (right : Right) :
    productDyadicIntervalMatrix leftIndex rightIndex interval left right =
      if interval.lower ≤ leftIndex left * rightIndex right ∧
          leftIndex left * rightIndex right ≤ interval.upper then 1 else 0 := by
  have hlowerUpper := interval.lower_le_upper
  cases hlower : interval.lower with
  | zero =>
      simp [productDyadicIntervalMatrix, productCutoffBeforeMatrix,
        productCutoffMatrix, hlower]
  | succ predecessor =>
      by_cases hbefore : leftIndex left * rightIndex right ≤ predecessor
      · have hupperProduct :
            leftIndex left * rightIndex right ≤ interval.upper := by
          omega
        simp [productDyadicIntervalMatrix, productCutoffBeforeMatrix,
          productCutoffMatrix, hlower, hbefore, hupperProduct]
      · by_cases hupperProduct :
          leftIndex left * rightIndex right ≤ interval.upper
        · simp [productDyadicIntervalMatrix, productCutoffBeforeMatrix,
            productCutoffMatrix, hlower, hbefore, hupperProduct]
        · simp [productDyadicIntervalMatrix, productCutoffBeforeMatrix,
            productCutoffMatrix, hlower, hbefore, hupperProduct]

/-- A dyadic interval matrix is exactly the sum of the product fibers whose
entry moments lie in that interval. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicIntervals/Variantf1421f1d3583e62a84ec4aeb4ae287bd79b7297629f0bdfee1eb471a76883fbd.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef379ff4cc53302062e090836f17f4df71e05a71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
