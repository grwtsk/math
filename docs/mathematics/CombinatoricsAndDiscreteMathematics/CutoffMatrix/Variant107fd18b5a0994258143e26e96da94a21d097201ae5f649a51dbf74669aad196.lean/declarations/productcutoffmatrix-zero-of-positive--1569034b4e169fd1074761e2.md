# productCutoffMatrix_zero_of_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e1617d120960ea70b426fc2102589a2f1bab1b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/107fd18b5a0994258143e26e96da94a21d097201ae5f649a51dbf74669aad196.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd7562b0-a1ef-6874-aa15-f4119e38edce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8c6cdc8-cfe5-8440-c301-7d1565335bef",
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
  "slug": "productcutoffmatrix-zero-of-positive--1569034b4e169fd1074761e2",
  "source": {
    "blob": "0e1617d120960ea70b426fc2102589a2f1bab1b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 46,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Variant107fd18b5a0994258143e26e96da94a21d097201ae5f649a51dbf74669aad196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1569034b4e169fd1074761e29d9d0acd686a869bb09c71aef8822e7772c21924",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Variant107fd18b5a0994258143e26e96da94a21d097201ae5f649a51dbf74669aad196.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8c6cdc8-cfe5-8440-c301-7d1565335bef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–59.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Variant107fd18b5a0994258143e26e96da94a21d097201ae5f649a51dbf74669aad196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Variant107fd18b5a0994258143e26e96da94a21d097201ae5f649a51dbf74669aad196.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e1617d120960ea70b426fc2102589a2f1bab1b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
