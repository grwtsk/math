# productCutoffMatrix_zero_of_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ae4aaaf-8c61-8afc-6df4-2a9bc28c4563",
  "kind": "theorem",
  "lexical_name": "productCutoffMatrix_zero_of_positive",
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
  "slug": "productcutoffmatrix-zero-of-positive--be7291f02c04338fa3f31ea5",
  "source": {
    "blob": "e3617b9e9d539e1bfdf620907a2f5d07e98fab32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Varianta361bbd5a83ca13caaf916a57e085b640c5d13695c2c80fa6c055ff1293c0ba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be7291f02c04338fa3f31ea5f33bc593c592dc3c7a156d555f394e4ab946d1dd",
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

Occurrence: `result:0ae4aaaf-8c61-8afc-6df4-2a9bc28c4563`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem productCutoffMatrix_zero_of_positive
    {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ)
    (left_pos : ∀ left, 0 < leftIndex left)
    (right_pos : ∀ right, 0 < rightIndex right) :
    productCutoffMatrix leftIndex rightIndex 0 = 0 := by
  ext left right
  have hproduct : 0 < leftIndex left * rightIndex right :=
    Nat.mul_pos (left_pos left) (right_pos right)
  have hnot : ¬ leftIndex left * rightIndex right ≤ 0 := by omega
  simp [productCutoffMatrix, hnot]

/-- Successive cutoffs differ by exactly one product fiber. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Varianta361bbd5a83ca13caaf916a57e085b640c5d13695c2c80fa6c055ff1293c0ba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Varianta361bbd5a83ca13caaf916a57e085b640c5d13695c2c80fa6c055ff1293c0ba2.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3617b9e9d539e1bfdf620907a2f5d07e98fab32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
