# sum_div_nat_floor_pow_sq_le_div_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8487682-305d-721a-5996-01c5652ce189",
  "kind": "theorem",
  "lexical_name": "sum_div_nat_floor_pow_sq_le_div_sq",
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
  "slug": "sum-div-nat-floor-pow-sq-le-div-sq--43e755c84b7d1dfea34f8078",
  "source": {
    "blob": "727ec07b1953f85544a65afbbd5ebacb8b85cbd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 279,
    "path": "GRWTSK/Topology/GeneralTopology/FloorPow/Variant72b2055e104bd7e7164e605fe245b56cb6549983c65bed1e07464c8bf05dd498.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43e755c84b7d1dfea34f8078134300ec2e22f6bfbce5e9d51b05cb8cf097a35f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FloorPow/Variant72b2055e104bd7e7164e605fe245b56cb6549983c65bed1e07464c8bf05dd498.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8487682-305d-721a-5996-01c5652ce189`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_div_nat_floor_pow_sq_le_div_sq (N : ℕ) {j : ℝ} (hj : 0 < j) {c : ℝ} (hc : 1 < c) :
    (∑ i ∈ range N with j < ⌊c ^ i⌋₊, (1 : ℝ) / (⌊c ^ i⌋₊ : ℝ) ^ 2) ≤
      c ^ 5 * (c - 1)⁻¹ ^ 3 / j ^ 2 := by
  have cpos : 0 < c := zero_lt_one.trans hc
  have A : 0 < 1 - c⁻¹ := sub_pos.2 (inv_lt_one_of_one_lt₀ hc)
  calc
    (∑ i ∈ range N with j < ⌊c ^ i⌋₊, (1 : ℝ) / (⌊c ^ i⌋₊ : ℝ) ^ 2) ≤
        ∑ i ∈ range N with j < c ^ i, (1 : ℝ) / (⌊c ^ i⌋₊ : ℝ) ^ 2 := by
      gcongr with k hk; exact Nat.floor_le (by positivity)
    _ ≤ ∑ i ∈ range N with j < c ^ i, (1 - c⁻¹)⁻¹ ^ 2 * ((1 : ℝ) / (c ^ i) ^ 2) := by
      gcongr with i
      rw [mul_div_assoc', mul_one, div_le_div_iff₀]; rotate_left
      · apply sq_pos_of_pos
        refine zero_lt_one.trans_le ?_
        simp only [Nat.le_floor, one_le_pow₀, hc.le, Nat.one_le_cast, Nat.cast_one]
      · exact sq_pos_of_pos (pow_pos cpos _)
      rw [one_mul, ← mul_pow]
      gcongr
      rw [← div_eq_inv_mul, le_div_iff₀ A, mul_comm]
      exact mul_pow_le_nat_floor_pow hc i
    _ ≤ (1 - c⁻¹)⁻¹ ^ 2 * (c ^ 3 * (c - 1)⁻¹) / j ^ 2 := by
      rw [← mul_sum, ← mul_div_assoc']
      gcongr
      exact sum_div_pow_sq_le_div_sq N hj hc
    _ = c ^ 5 * (c - 1)⁻¹ ^ 3 / j ^ 2 := by
      congr 1
      field
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FloorPow/Variant72b2055e104bd7e7164e605fe245b56cb6549983c65bed1e07464c8bf05dd498.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FloorPow/Variant72b2055e104bd7e7164e605fe245b56cb6549983c65bed1e07464c8bf05dd498.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `727ec07b1953f85544a65afbbd5ebacb8b85cbd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
