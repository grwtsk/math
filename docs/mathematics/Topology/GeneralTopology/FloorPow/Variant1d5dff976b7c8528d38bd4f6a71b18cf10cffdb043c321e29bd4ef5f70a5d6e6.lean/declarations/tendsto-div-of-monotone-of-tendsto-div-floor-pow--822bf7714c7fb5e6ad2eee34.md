# tendsto_div_of_monotone_of_tendsto_div_floor_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a83e72d3-577a-33d2-c840-43bc4de59fe7",
  "kind": "theorem",
  "lexical_name": "tendsto_div_of_monotone_of_tendsto_div_floor_pow",
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
  "slug": "tendsto-div-of-monotone-of-tendsto-div-floor-pow--822bf7714c7fb5e6ad2eee34",
  "source": {
    "blob": "53c11322aab29bc3cf0b63f35884f96d5b1dc65a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 217,
    "path": "GRWTSK/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:822bf7714c7fb5e6ad2eee34973c17c2e06405027b147a760f88e365aef835f6",
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

Occurrence: `result:a83e72d3-577a-33d2-c840-43bc4de59fe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_div_of_monotone_of_tendsto_div_floor_pow (u : ℕ → ℝ) (l : ℝ) (hmono : Monotone u)
    (c : ℕ → ℝ) (cone : ∀ k, 1 < c k) (clim : Tendsto c atTop (𝓝 1))
    (hc : ∀ k, Tendsto (fun n : ℕ => u ⌊c k ^ n⌋₊ / ⌊c k ^ n⌋₊) atTop (𝓝 l)) :
    Tendsto (fun n => u n / n) atTop (𝓝 l) := by
  apply tendsto_div_of_monotone_of_exists_subseq_tendsto_div u l hmono
  intro a ha
  obtain ⟨k, hk⟩ : ∃ k, c k < a := ((tendsto_order.1 clim).2 a ha).exists
  refine'
    ⟨fun n => ⌊c k ^ n⌋₊, _,
      (tendsto_nat_floor_atTop (α := ℝ)).comp (tendsto_pow_atTop_atTop_of_one_lt (cone k)), hc k⟩
  have H : ∀ n : ℕ, (0 : ℝ) < ⌊c k ^ n⌋₊ := by
    intro n
    refine' zero_lt_one.trans_le _
    simp only [Real.rpow_nat_cast, Nat.one_le_cast, Nat.one_le_floor_iff,
      one_le_pow_of_one_le (cone k).le n]
  have A :
    Tendsto (fun n : ℕ => (⌊c k ^ (n + 1)⌋₊ : ℝ) / c k ^ (n + 1) * c k / (⌊c k ^ n⌋₊ / c k ^ n))
      atTop (𝓝 (1 * c k / 1)) := by
    refine' Tendsto.div (Tendsto.mul _ tendsto_const_nhds) _ one_ne_zero
    · refine' tendsto_nat_floor_div_atTop.comp _
      exact (tendsto_pow_atTop_atTop_of_one_lt (cone k)).comp (tendsto_add_atTop_nat 1)
    · refine' tendsto_nat_floor_div_atTop.comp _
      exact tendsto_pow_atTop_atTop_of_one_lt (cone k)
  have B : Tendsto (fun n : ℕ => (⌊c k ^ (n + 1)⌋₊ : ℝ) / ⌊c k ^ n⌋₊) atTop (𝓝 (c k)) := by
    simp only [one_mul, div_one] at A
    convert A using 1
    ext1 n
    field_simp [(zero_lt_one.trans (cone k)).ne', (H n).ne']
    ring
  filter_upwards [(tendsto_order.1 B).2 a hk]with n hn
  exact (div_le_iff (H n)).1 hn.le
#align tendsto_div_of_monotone_of_tendsto_div_floor_pow tendsto_div_of_monotone_of_tendsto_div_floor_pow

/-- The sum of `1/(c^i)^2` above a threshold `j` is comparable to `1/j^2`, up to a multiplicative
constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FloorPow/Variant1d5dff976b7c8528d38bd4f6a71b18cf10cffdb043c321e29bd4ef5f70a5d6e6.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53c11322aab29bc3cf0b63f35884f96d5b1dc65a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
