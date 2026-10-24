# sum_div_nat_floor_pow_sq_le_div_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87705a4f3fbc016a1ffbe8413f0677cf30f6cd44",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07a72349-6181-31b6-8f3a-50b2cf9833c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ab3ce95-c809-fffa-d4dd-5308bd231ca9",
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
  "slug": "sum-div-nat-floor-pow-sq-le-div-sq--d119b64335623f7800991b30",
  "source": {
    "blob": "87705a4f3fbc016a1ffbe8413f0677cf30f6cd44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 279,
    "path": "GRWTSK/Topology/GeneralTopology/FloorPow/Variant8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d119b64335623f7800991b30ed8878180d322fb9bd093b723c5736b1a32e952c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FloorPow/Variant8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ab3ce95-c809-fffa-d4dd-5308bd231ca9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–307.

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
      gcongr
      exact fun k hk ↦ hk.trans_le <| Nat.floor_le (by positivity)
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
      field_simp [(sub_pos.2 hc).ne']
      ring!
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FloorPow/Variant8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FloorPow/Variant8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87705a4f3fbc016a1ffbe8413f0677cf30f6cd44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
