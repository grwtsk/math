# sourceMovingTail_le_of_block_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "153585113f78aa978191ca21b3775f712c27684e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc4f3ca6056d789074fd78e32d9e07a84761d572ae06754cbdf8af489a8f5ed7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e71ff1c0-1501-86eb-0fe1-96d5428c1772",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22691269-eac0-8fc7-ac18-9a77ae1d22e7",
  "kind": "theorem",
  "lexical_name": "sourceMovingTail_le_of_block_bound",
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
  "slug": "sourcemovingtail-le-of-block-bound--9d83f6f3c55ece6cb212b633",
  "source": {
    "blob": "153585113f78aa978191ca21b3775f712c27684e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 137,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantfc4f3ca6056d789074fd78e32d9e07a84761d572ae06754cbdf8af489a8f5ed7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d83f6f3c55ece6cb212b633a7ba843537915e4bda51a3f28418662c0a2e29a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantfc4f3ca6056d789074fd78e32d9e07a84761d572ae06754cbdf8af489a8f5ed7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22691269-eac0-8fc7-ac18-9a77ae1d22e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMovingTail_le_of_block_bound (A : ℝ) (p : ℕ) (C : ℝ)
    (hA : 1 ≤ A) (hC : 0 ≤ C)
    (hb : ∀ j < movingBlockCount A, movingSignedBlock A j ≤ C * A ^ p) :
    sourceMovingTail A ≤ (2 / Real.log 2 + 1) * C * A ^ (p + 1) := by
  rw [sourceMovingTail_eq_sum_blocks A hA]
  calc
    _ ≤ ∑ _j ∈ Finset.range (movingBlockCount A), C * A ^ p :=
      Finset.sum_le_sum fun j hj ↦ hb j (Finset.mem_range.mp hj)
    _ = (movingBlockCount A : ℝ) * (C * A ^ p) := by simp
    _ ≤ ((2 / Real.log 2 + 1) * A) * (C * A ^ p) :=
      mul_le_mul_of_nonneg_right (movingBlockCount_le A hA)
        (mul_nonneg hC (pow_nonneg (by linarith) p))
    _ = (2 / Real.log 2 + 1) * C * A ^ (p + 1) := by rw [pow_succ]; ring

/-- An eventual common fixed-degree bound for the complete signed cells implies the
existing polynomial moving-tail hypothesis. The cell estimate remains an explicit premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantfc4f3ca6056d789074fd78e32d9e07a84761d572ae06754cbdf8af489a8f5ed7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantfc4f3ca6056d789074fd78e32d9e07a84761d572ae06754cbdf8af489a8f5ed7.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `153585113f78aa978191ca21b3775f712c27684e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
