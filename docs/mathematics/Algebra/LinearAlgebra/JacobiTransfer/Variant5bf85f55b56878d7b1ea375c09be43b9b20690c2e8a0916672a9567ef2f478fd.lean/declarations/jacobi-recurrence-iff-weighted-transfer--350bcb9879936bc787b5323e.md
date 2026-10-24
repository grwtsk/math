# jacobi_recurrence_iff_weighted_transfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6987b9147483d6fbc038469c0b9361a09d5bfd96",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:855a866f-4eac-22e5-8d05-1188918c8ddd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf39e73d-96b7-d1ca-a189-ecf99e142f85",
  "kind": "theorem",
  "lexical_name": "jacobi_recurrence_iff_weighted_transfer",
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
  "slug": "jacobi-recurrence-iff-weighted-transfer--350bcb9879936bc787b5323e",
  "source": {
    "blob": "6987b9147483d6fbc038469c0b9361a09d5bfd96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 135,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:350bcb9879936bc787b5323e79c866010e39f78ecc61e99addc56b951d3126a0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf39e73d-96b7-d1ca-a189-ecf99e142f85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobi_recurrence_iff_weighted_transfer {K : Type u} [Field K]
    (E b aCurrent aPrevious previous current next : K) (ha : aCurrent ≠ 0) :
    jacobiRecurrence E b aCurrent aPrevious previous current next ↔
      weightedState aCurrent current next =
        (weightedJacobiTransfer E b aCurrent).mulVec
          (weightedState aPrevious previous current) := by
  rw [jacobi_recurrence_iff_solved E b aCurrent aPrevious previous current next ha]
  have hcoord : (weightedJacobiTransfer E b aCurrent).mulVec
      (weightedState aPrevious previous current) =
      weightedState aCurrent current (((E - b) / aCurrent) * current -
        (aPrevious / aCurrent) * previous) := by
    ext i
    fin_cases i <;> simp [weightedJacobiTransfer, weightedState, Matrix.mulVec,
      dotProduct, Fin.sum_univ_two]
    all_goals ring
  rw [hcoord]
  constructor
  · intro h
    rw [h]
  · intro h
    simpa only [weightedState, Matrix.cons_val_zero] using congrFun h 0

/-- Nonzero current off-diagonal gives determinant one directly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Variant5bf85f55b56878d7b1ea375c09be43b9b20690c2e8a0916672a9567ef2f478fd.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6987b9147483d6fbc038469c0b9361a09d5bfd96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
