# mul_pow_le_nat_floor_pow

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
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:376c82df-f6fa-07b9-bda4-a195eb39e205",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:886eecee-fc4a-20e8-08f2-62ea79da8c00",
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
  "slug": "mul-pow-le-nat-floor-pow--8f88af677629becc8b7720b7",
  "source": {
    "blob": "87705a4f3fbc016a1ffbe8413f0677cf30f6cd44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 266,
    "path": "GRWTSK/Topology/GeneralTopology/FloorPow/Variant8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f88af677629becc8b7720b7245057359155b2f0f0729c8c69424efd6a5a2562",
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

Occurrence: `result:886eecee-fc4a-20e8-08f2-62ea79da8c00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_pow_le_nat_floor_pow {c : ℝ} (hc : 1 < c) (i : ℕ) : (1 - c⁻¹) * c ^ i ≤ ⌊c ^ i⌋₊ := by
  have cpos : 0 < c := zero_lt_one.trans hc
  rcases eq_or_ne i 0 with (rfl | hi)
  · simp only [pow_zero, Nat.floor_one, Nat.cast_one, mul_one, sub_le_self_iff, inv_nonneg, cpos.le]
  calc
    (1 - c⁻¹) * c ^ i = c ^ i - c ^ i * c⁻¹ := by ring
    _ ≤ c ^ i - 1 := by
      gcongr
      simpa only [← div_eq_mul_inv, one_le_div cpos, pow_one] using le_self_pow₀ hc.le hi
    _ ≤ ⌊c ^ i⌋₊ := (Nat.sub_one_lt_floor _).le

/-- The sum of `1/⌊c^i⌋₊^2` above a threshold `j` is comparable to `1/j^2`, up to a multiplicative
constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FloorPow/Variant8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FloorPow/Variant8931149f1feb4660172af0ce03bf490e4a4f062fb8eed80fb4816c451fa5fc50.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87705a4f3fbc016a1ffbe8413f0677cf30f6cd44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
