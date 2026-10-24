# range_head_add_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0fa2f8b-7347-9df6-d54a-c5f01d514d4f",
  "kind": "theorem",
  "lexical_name": "range_head_add_Icc",
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
  "slug": "range-head-add-icc--eb7d8c13826e3cb22e4cdfb0",
  "source": {
    "blob": "9f3ce4b8553de27d257a4c3b8f04fe0f56c14621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 177,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb7d8c13826e3cb22e4cdfb03568538c404a63a06eb60a78779fc80141532638",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0fa2f8b-7347-9df6-d54a-c5f01d514d4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_head_add_Icc (f : ℕ → ℤ) (M : ℕ) :
    (∑ m ∈ Finset.range (M + 1), f m) =
      f 0 + ∑ m ∈ Finset.Icc 1 M, f m := by
  have hset :
      (Finset.range (M + 1)).erase 0 = Finset.Icc 1 M := by
    ext m
    simp only [Finset.mem_erase, Finset.mem_range, Finset.mem_Icc]
    omega
  have hzero : (0 : ℕ) ∈ Finset.range (M + 1) := by simp
  have hsplit :=
    Finset.sum_erase_add (Finset.range (M + 1)) f hzero
  simpa only [hset, add_comm] using hsplit.symm

/-- Exact odd-shift comparison with two Icc 1 M affine sums.
The TWO initial terms at m=0 are explicitly charged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f3ce4b8553de27d257a4c3b8f04fe0f56c14621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
