# tendsto_div_of_monotone_of_tendsto_div_floor_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c1144e0c5a634f4e2264fc1d2a84add4d01f3e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb7a375ca86157b7aa0f90f617263a5eadcd80d93462da0588e13b79b27ddf47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a61c44a-619e-a309-7550-d929e974382b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6ae6486-3050-7617-fff1-2098c6882610",
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
  "slug": "tendsto-div-of-monotone-of-tendsto-div-floor-pow--dcbc1db8c4b2cfa7ed5783e5",
  "source": {
    "blob": "8c1144e0c5a634f4e2264fc1d2a84add4d01f3e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 182,
    "path": "GRWTSK/Topology/GeneralTopology/FloorPow/Variantcb7a375ca86157b7aa0f90f617263a5eadcd80d93462da0588e13b79b27ddf47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcbc1db8c4b2cfa7ed5783e53a8debaad2d94cf06c06d61e3cde6f6934e57f5c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FloorPow/Variantcb7a375ca86157b7aa0f90f617263a5eadcd80d93462da0588e13b79b27ddf47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6ae6486-3050-7617-fff1-2098c6882610`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_div_of_monotone_of_tendsto_div_floor_pow (u : ℕ → ℝ) (l : ℝ) (hmono : Monotone u)
    (c : ℕ → ℝ) (cone : ∀ k, 1 < c k) (clim : Tendsto c atTop (𝓝 1))
    (hc : ∀ k, Tendsto (fun n : ℕ => u ⌊c k ^ n⌋₊ / ⌊c k ^ n⌋₊) atTop (𝓝 l)) :
    Tendsto (fun n => u n / n) atTop (𝓝 l) := by
  apply tendsto_div_of_monotone_of_exists_subseq_tendsto_div u l hmono
  intro a ha
  obtain ⟨k, hk⟩ : ∃ k, c k < a := ((tendsto_order.1 clim).2 a ha).exists
  refine
    ⟨fun n => ⌊c k ^ n⌋₊, ?_,
      (tendsto_nat_floor_atTop (α := ℝ)).comp (tendsto_pow_atTop_atTop_of_one_lt (cone k)), hc k⟩
  have H : ∀ n : ℕ, (0 : ℝ) < ⌊c k ^ n⌋₊ := by
    intro n
    refine zero_lt_one.trans_le ?_
    simp only [Nat.one_le_cast, Nat.one_le_floor_iff, one_le_pow₀ (cone k).le]
  have A :
    Tendsto (fun n : ℕ => (⌊c k ^ (n + 1)⌋₊ : ℝ) / c k ^ (n + 1) * c k / (⌊c k ^ n⌋₊ / c k ^ n))
      atTop (𝓝 (1 * c k / 1)) := by
    refine Tendsto.div (Tendsto.mul ?_ tendsto_const_nhds) ?_ one_ne_zero
    · refine tendsto_nat_floor_div_atTop.comp ?_
      exact (tendsto_pow_atTop_atTop_of_one_lt (cone k)).comp (tendsto_add_atTop_nat 1)
    · refine tendsto_nat_floor_div_atTop.comp ?_
      exact tendsto_pow_atTop_atTop_of_one_lt (cone k)
  have B : Tendsto (fun n : ℕ => (⌊c k ^ (n + 1)⌋₊ : ℝ) / ⌊c k ^ n⌋₊) atTop (𝓝 (c k)) := by
    simp only [one_mul, div_one] at A
    convert! A using 1
    ext1 n
    field [(zero_lt_one.trans (cone k)).ne']
  filter_upwards [(tendsto_order.1 B).2 a hk] with n hn
  exact (div_le_iff₀ (H n)).1 hn.le

/-- The sum of `1/(c^i)^2` above a threshold `j` is comparable to `1/j^2`, up to a multiplicative
constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FloorPow/Variantcb7a375ca86157b7aa0f90f617263a5eadcd80d93462da0588e13b79b27ddf47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FloorPow/Variantcb7a375ca86157b7aa0f90f617263a5eadcd80d93462da0588e13b79b27ddf47.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c1144e0c5a634f4e2264fc1d2a84add4d01f3e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
