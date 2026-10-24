# productCutoffMatrix_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cafc8301-2951-8795-6f3f-d0a2513b895d",
  "kind": "theorem",
  "lexical_name": "productCutoffMatrix_succ",
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
  "slug": "productcutoffmatrix-succ--5aa8a875fc577b66cd90a19e",
  "source": {
    "blob": "e3617b9e9d539e1bfdf620907a2f5d07e98fab32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Varianta361bbd5a83ca13caaf916a57e085b640c5d13695c2c80fa6c055ff1293c0ba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5aa8a875fc577b66cd90a19e323bc93a6e5d8ad934c3a967fcb4ba1f96f7be2c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Varianta361bbd5a83ca13caaf916a57e085b640c5d13695c2c80fa6c055ff1293c0ba2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cafc8301-2951-8795-6f3f-d0a2513b895d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem productCutoffMatrix_succ {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ) (x : ℕ) :
    productCutoffMatrix leftIndex rightIndex (x + 1) =
      productCutoffMatrix leftIndex rightIndex x +
        productFiberIncrementMatrix leftIndex rightIndex (x + 1) := by
  ext left right
  by_cases hle : leftIndex left * rightIndex right ≤ x
  · have hsucc : leftIndex left * rightIndex right ≤ x + 1 := by omega
    have hne : leftIndex left * rightIndex right ≠ x + 1 := by omega
    simp [productCutoffMatrix, productFiberIncrementMatrix, hle, hsucc,
      hne]
  · by_cases heq : leftIndex left * rightIndex right = x + 1
    · simp [productCutoffMatrix, productFiberIncrementMatrix, heq]
    · have hnot : ¬ leftIndex left * rightIndex right ≤ x + 1 := by
        omega
      simp [productCutoffMatrix, productFiberIncrementMatrix, hle, heq,
        hnot]

/-- The cutoff is the finite sum of all product-fiber increments through
time `x`, including the possible zero fiber. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Varianta361bbd5a83ca13caaf916a57e085b640c5d13695c2c80fa6c055ff1293c0ba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Varianta361bbd5a83ca13caaf916a57e085b640c5d13695c2c80fa6c055ff1293c0ba2.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3617b9e9d539e1bfdf620907a2f5d07e98fab32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
