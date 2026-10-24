# diagonal_quadratic_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90a542761e2027420766f5d406882cea10c27c8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/NumberTheory/Moebius/DiagonalEnergyBound.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5cce4d29-4923-3f7a-5d06-c929f0e7ff82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56b4e262-6eca-9488-61ef-dbaff686d8b4",
  "kind": "theorem",
  "lexical_name": "diagonal_quadratic_bound",
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
  "slug": "diagonal-quadratic-bound--4d4af1f7bf1e966d923f4429",
  "source": {
    "blob": "90a542761e2027420766f5d406882cea10c27c8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 61,
    "path": "GRWTSK/NumberTheory/Moebius/DiagonalEnergyBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d4af1f7bf1e966d923f4429e022915a7c0a786824029c4b571406f2d73141ee",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DiagonalEnergyBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56b4e262-6eca-9488-61ef-dbaff686d8b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_quadratic_bound (T : ℝ) (hT : 0 ≤ T) :
    diagonal T ≤ 4 * T * (1 + T) := by
  calc
    diagonal T ≤ ∑ n ∈ integerInventory T, 4 * T * (n : ℝ)⁻¹ := by
      apply Finset.sum_le_sum
      intro n hn
      have hnpos : 0 < n := (mem_integerInventory.mp hn).1
      exact (mul_le_of_le_one_left (gram_diagonal_nonneg T n)
        (realMoebius_square_le_one n)).trans (gram_diagonal_bound T hT n hnpos)
    _ = 4 * T * ∑ n ∈ integerInventory T, (n : ℝ)⁻¹ := by rw [Finset.mul_sum]
    _ ≤ 4 * T * (1 + T) :=
      mul_le_mul_of_nonneg_left (inventory_reciprocal_sum_bound T hT) (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DiagonalEnergyBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DiagonalEnergyBound.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90a542761e2027420766f5d406882cea10c27c8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
