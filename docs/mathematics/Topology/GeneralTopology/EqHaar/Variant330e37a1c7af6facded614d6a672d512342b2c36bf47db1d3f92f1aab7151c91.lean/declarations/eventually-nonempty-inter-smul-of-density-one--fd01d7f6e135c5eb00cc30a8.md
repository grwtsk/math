# eventually_nonempty_inter_smul_of_density_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:017936ec-8f76-af34-66b6-ce5b708aca6a",
  "kind": "theorem",
  "lexical_name": "eventually_nonempty_inter_smul_of_density_one",
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
  "slug": "eventually-nonempty-inter-smul-of-density-one--fd01d7f6e135c5eb00cc30a8",
  "source": {
    "blob": "c95bf2c56c27d9f880c0438348b4a221d7abf93b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 862,
    "line": 844,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd01d7f6e135c5eb00cc30a87e9e0269db7255262da190b7926a0249596d4f63",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:017936ec-8f76-af34-66b6-ce5b708aca6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 844–862.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_nonempty_inter_smul_of_density_one (s : Set E) (x : E)
    (h : Tendsto (fun r => μ (s ∩ closedBall x r) / μ (closedBall x r)) (𝓝[>] 0) (𝓝 1)) (t : Set E)
    (ht : MeasurableSet t) (h't : μ t ≠ 0) :
    ∀ᶠ r in 𝓝[>] (0 : ℝ), (s ∩ ({x} + r • t)).Nonempty := by
  obtain ⟨t', t'_meas, t't, t'pos, t'top⟩ : ∃ t', MeasurableSet t' ∧ t' ⊆ t ∧ 0 < μ t' ∧ μ t' < ⊤ :=
    exists_subset_measure_lt_top ht h't.bot_lt
  filter_upwards [(tendsto_order.1
          (tendsto_addHaar_inter_smul_one_of_density_one μ s x h t' t'_meas t'pos.ne' t'top.ne)).1
      0 zero_lt_one]
  intro r hr
  have : μ (s ∩ ({x} + r • t')) ≠ 0 := fun h' => by
    simp only [ENNReal.not_lt_zero, ENNReal.zero_div, h'] at hr
  have : (s ∩ ({x} + r • t')).Nonempty := nonempty_of_measure_ne_zero this
  apply this.mono (inter_subset_inter Subset.rfl _)
  exact add_subset_add Subset.rfl (smul_set_mono t't)

end Measure

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean#L844).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c95bf2c56c27d9f880c0438348b4a221d7abf93b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
