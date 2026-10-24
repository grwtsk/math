# tendsto_addHaar_inter_smul_one_of_density_one_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7314131c-87c3-b0a3-fb01-c2243db1901a",
  "kind": "theorem",
  "lexical_name": "tendsto_addHaar_inter_smul_one_of_density_one_aux",
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
  "slug": "tendsto-addhaar-inter-smul-one-of-density-one-aux--79aaba667df6c53c5829ec33",
  "source": {
    "blob": "c95bf2c56c27d9f880c0438348b4a221d7abf93b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 816,
    "line": 765,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79aaba667df6c53c5829ec3374cf81e34e3f68ae21bb6b6eb912c7bf69072000",
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

Occurrence: `result:7314131c-87c3-b0a3-fb01-c2243db1901a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 765–816.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_addHaar_inter_smul_one_of_density_one_aux (s : Set E) (hs : MeasurableSet s)
    (x : E) (h : Tendsto (fun r => μ (s ∩ closedBall x r) / μ (closedBall x r)) (𝓝[>] 0) (𝓝 1))
    (t : Set E) (ht : MeasurableSet t) (h't : μ t ≠ 0) (h''t : μ t ≠ ∞) :
    Tendsto (fun r : ℝ => μ (s ∩ ({x} + r • t)) / μ ({x} + r • t)) (𝓝[>] 0) (𝓝 1) := by
  have I : ∀ u v, μ u ≠ 0 → μ u ≠ ∞ → MeasurableSet v →
    μ u / μ u - μ (vᶜ ∩ u) / μ u = μ (v ∩ u) / μ u := by
    intro u v uzero utop vmeas
    simp_rw [div_eq_mul_inv]
    rw [← ENNReal.sub_mul]; swap
    · simp only [uzero, ENNReal.inv_eq_top, imp_true_iff, Ne, not_false_iff]
    congr 1
    rw [inter_comm _ u, inter_comm _ u, eq_comm]
    exact ENNReal.eq_sub_of_add_eq' utop (measure_inter_add_diff u vmeas)
  have L : Tendsto (fun r => μ (sᶜ ∩ closedBall x r) / μ (closedBall x r)) (𝓝[>] 0) (𝓝 0) := by
    have A : Tendsto (fun r => μ (closedBall x r) / μ (closedBall x r)) (𝓝[>] 0) (𝓝 1) := by
      apply tendsto_const_nhds.congr' _
      filter_upwards [self_mem_nhdsWithin]
      intro r hr
      rw [div_eq_mul_inv, ENNReal.mul_inv_cancel]
      · exact (measure_closedBall_pos μ _ hr).ne'
      · exact measure_closedBall_lt_top.ne
    have B := ENNReal.Tendsto.sub A h (Or.inl ENNReal.one_ne_top)
    simp only [tsub_self] at B
    apply B.congr' _
    filter_upwards [self_mem_nhdsWithin]
    rintro r (rpos : 0 < r)
    convert I (closedBall x r) sᶜ (measure_closedBall_pos μ _ rpos).ne'
      measure_closedBall_lt_top.ne hs.compl
    rw [compl_compl]
  have L' : Tendsto (fun r : ℝ => μ (sᶜ ∩ ({x} + r • t)) / μ ({x} + r • t)) (𝓝[>] 0) (𝓝 0) :=
    tendsto_addHaar_inter_smul_zero_of_density_zero μ sᶜ x L t ht h''t
  have L'' : Tendsto (fun r : ℝ => μ ({x} + r • t) / μ ({x} + r • t)) (𝓝[>] 0) (𝓝 1) := by
    apply tendsto_const_nhds.congr' _
    filter_upwards [self_mem_nhdsWithin]
    rintro r (rpos : 0 < r)
    rw [addHaar_singleton_add_smul_div_singleton_add_smul μ rpos.ne', ENNReal.div_self h't h''t]
  have := ENNReal.Tendsto.sub L'' L' (Or.inl ENNReal.one_ne_top)
  simp only [tsub_zero] at this
  apply this.congr' _
  filter_upwards [self_mem_nhdsWithin]
  rintro r (rpos : 0 < r)
  refine I ({x} + r • t) s ?_ ?_ hs
  · simp only [h't, abs_of_nonneg rpos.le, pow_pos rpos, addHaar_smul, image_add_left,
      ENNReal.ofReal_eq_zero, not_le, or_false, Ne, measure_preimage_add, abs_pow,
      singleton_add, mul_eq_zero]
  · simp [h''t, ENNReal.ofReal_ne_top, addHaar_smul, image_add_left, ENNReal.mul_eq_top,
      Ne, not_false_iff, measure_preimage_add, singleton_add, or_self_iff]

/-- Consider a point `x` at which a set `s` has density one, with respect to closed balls (i.e.,
a Lebesgue density point of `s`). Then `s` has also density one at `x` with respect to any
measurable set `t`: the proportion of points in `s` belonging to a rescaled copy `{x} + r • t`
of `t` tends to one as `r` tends to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean#L765).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c95bf2c56c27d9f880c0438348b4a221d7abf93b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
