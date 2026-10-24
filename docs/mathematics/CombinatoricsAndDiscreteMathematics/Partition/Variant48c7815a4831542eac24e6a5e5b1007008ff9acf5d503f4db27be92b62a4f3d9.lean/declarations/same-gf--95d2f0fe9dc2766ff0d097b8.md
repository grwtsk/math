# same_gf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1097d41dc97634c27c5ae78e717feabcb946a1f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 336,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a43989c-e05b-91e6-e1f0-a1a939a71ce3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3672f75f-e679-3c0d-311d-2f6c004efe36",
  "kind": "theorem",
  "lexical_name": "same_gf",
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
  "slug": "same-gf--95d2f0fe9dc2766ff0d097b8",
  "source": {
    "blob": "1097d41dc97634c27c5ae78e717feabcb946a1f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 336,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95d2f0fe9dc2766ff0d097b87f888b7beb0e2a505a8d3816a21f9c6886e7013f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3672f75f-e679-3c0d-311d-2f6c004efe36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem same_gf [Field α] (m : ℕ) :
    (partialOddGF m * (range m).prod fun i => 1 - (X : PowerSeries α) ^ (m + i + 1)) =
      partialDistinctGF m := by
  rw [partialOddGF, partialDistinctGF]
  induction' m with m ih
  · simp
  set! π₀ : PowerSeries α := ∏ i ∈ range m, (1 - X ^ (m + 1 + i + 1)) with hπ₀
  set! π₁ : PowerSeries α := ∏ i ∈ range m, (1 - X ^ (2 * i + 1))⁻¹ with hπ₁
  set! π₂ : PowerSeries α := ∏ i ∈ range m, (1 - X ^ (m + i + 1)) with hπ₂
  set! π₃ : PowerSeries α := ∏ i ∈ range m, (1 + X ^ (i + 1)) with hπ₃
  rw [← hπ₃] at ih
  have h : constantCoeff α (1 - X ^ (2 * m + 1)) ≠ 0 := by
    rw [RingHom.map_sub, RingHom.map_pow, constantCoeff_one, constantCoeff_X,
      zero_pow (2 * m).succ_ne_zero, sub_zero]
    exact one_ne_zero
  calc
    (∏ i ∈ range (m + 1), (1 - X ^ (2 * i + 1))⁻¹) *
          ∏ i ∈ range (m + 1), (1 - X ^ (m + 1 + i + 1)) =
        π₁ * (1 - X ^ (2 * m + 1))⁻¹ * (π₀ * (1 - X ^ (m + 1 + m + 1))) := by
      rw [prod_range_succ _ m, ← hπ₁, prod_range_succ _ m, ← hπ₀]
    _ = π₁ * (1 - X ^ (2 * m + 1))⁻¹ * (π₀ * ((1 + X ^ (m + 1)) * (1 - X ^ (m + 1)))) := by
      rw [← sq_sub_sq, one_pow, add_assoc _ m 1, ← two_mul (m + 1), pow_mul']
    _ = π₀ * (1 - X ^ (m + 1)) * (1 - X ^ (2 * m + 1))⁻¹ * (π₁ * (1 + X ^ (m + 1))) := by ring
    _ =
        (∏ i ∈ range (m + 1), (1 - X ^ (m + 1 + i))) * (1 - X ^ (2 * m + 1))⁻¹ *
          (π₁ * (1 + X ^ (m + 1))) := by
      rw [prod_range_succ', add_zero, hπ₀]; simp_rw [← add_assoc]
    _ = π₂ * (1 - X ^ (m + 1 + m)) * (1 - X ^ (2 * m + 1))⁻¹ * (π₁ * (1 + X ^ (m + 1))) := by
      rw [add_right_comm, hπ₂, ← prod_range_succ]; simp_rw [add_right_comm]
    _ = π₂ * (1 - X ^ (2 * m + 1)) * (1 - X ^ (2 * m + 1))⁻¹ * (π₁ * (1 + X ^ (m + 1))) := by
      rw [two_mul, add_right_comm _ m 1]
    _ = (1 - X ^ (2 * m + 1)) * (1 - X ^ (2 * m + 1))⁻¹ * π₂ * (π₁ * (1 + X ^ (m + 1))) := by ring
    _ = π₂ * (π₁ * (1 + X ^ (m + 1))) := by rw [PowerSeries.mul_inv_cancel _ h, one_mul]
    _ = π₁ * π₂ * (1 + X ^ (m + 1)) := by ring
    _ = π₃ * (1 + X ^ (m + 1)) := by rw [ih]
    _ = _ := by rw [prod_range_succ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1097d41dc97634c27c5ae78e717feabcb946a1f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
