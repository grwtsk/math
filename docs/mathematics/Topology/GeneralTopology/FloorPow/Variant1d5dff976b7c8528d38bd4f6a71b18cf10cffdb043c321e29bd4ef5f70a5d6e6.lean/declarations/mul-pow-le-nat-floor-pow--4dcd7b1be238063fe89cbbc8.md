# mul_pow_le_nat_floor_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ea9a4f0-413a-95c5-29b5-a0d73ce47b97",
  "kind": "theorem",
  "lexical_name": "mul_pow_le_nat_floor_pow",
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
  "slug": "mul-pow-le-nat-floor-pow--4dcd7b1be238063fe89cbbc8",
  "source": {
    "blob": "53c11322aab29bc3cf0b63f35884f96d5b1dc65a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 311,
    "path": "GRWTSK/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dcd7b1be238063fe89cbbc8acf66669014a6a68b4c7b277a83f68285a65a520",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ea9a4f0-413a-95c5-29b5-a0d73ce47b97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_pow_le_nat_floor_pow {c : ℝ} (hc : 1 < c) (i : ℕ) : (1 - c⁻¹) * c ^ i ≤ ⌊c ^ i⌋₊ := by
  have cpos : 0 < c := zero_lt_one.trans hc
  rcases Nat.eq_zero_or_pos i with (rfl | hi)
  · simp only [pow_zero, Nat.floor_one, Nat.cast_one, mul_one, sub_le_self_iff, inv_nonneg, cpos.le]
  have hident : 1 ≤ i := hi
  calc
    (1 - c⁻¹) * c ^ i = c ^ i - c ^ i * c⁻¹ := by ring
    _ ≤ c ^ i - 1 := by
      simpa only [← div_eq_mul_inv, sub_le_sub_iff_left, one_le_div cpos, pow_one] using
        pow_le_pow hc.le hident
    _ ≤ ⌊c ^ i⌋₊ := (Nat.sub_one_lt_floor _).le

#align mul_pow_le_nat_floor_pow mul_pow_le_nat_floor_pow

/-- The sum of `1/⌊c^i⌋₊^2` above a threshold `j` is comparable to `1/j^2`, up to a multiplicative
constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53c11322aab29bc3cf0b63f35884f96d5b1dc65a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
