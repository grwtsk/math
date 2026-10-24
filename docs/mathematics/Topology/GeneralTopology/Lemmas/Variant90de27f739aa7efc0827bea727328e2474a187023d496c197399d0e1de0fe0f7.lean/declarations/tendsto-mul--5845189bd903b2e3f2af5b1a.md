# tendsto_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5386a1d-5972-a4e1-5a4e-7c69089aa9d9",
  "kind": "theorem",
  "lexical_name": "tendsto_mul",
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
  "slug": "tendsto-mul--5845189bd903b2e3f2af5b1a",
  "source": {
    "blob": "2b6ad1b40d452d54d1359a5cff20c3984b9d1240",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 337,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant90de27f739aa7efc0827bea727328e2474a187023d496c197399d0e1de0fe0f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5845189bd903b2e3f2af5b1a3f3636f0335f5d12f4f9cd45f0d958975fa1096f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant90de27f739aa7efc0827bea727328e2474a187023d496c197399d0e1de0fe0f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5386a1d-5972-a4e1-5a4e-7c69089aa9d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem tendsto_mul (ha : a ≠ 0 ∨ b ≠ ∞) (hb : b ≠ 0 ∨ a ≠ ∞) :
    Tendsto (fun p : ℝ≥0∞ × ℝ≥0∞ => p.1 * p.2) (𝓝 (a, b)) (𝓝 (a * b)) := by
  have ht : ∀ b : ℝ≥0∞, b ≠ 0 →
      Tendsto (fun p : ℝ≥0∞ × ℝ≥0∞ => p.1 * p.2) (𝓝 (∞, b)) (𝓝 ∞) := fun b hb => by
    refine tendsto_nhds_top_iff_nnreal.2 fun n => ?_
    rcases lt_iff_exists_nnreal_btwn.1 (pos_iff_ne_zero.2 hb) with ⟨ε, hε, hεb⟩
    have : ∀ᶠ c : ℝ≥0∞ × ℝ≥0∞ in 𝓝 (∞, b), ↑n / ↑ε < c.1 ∧ ↑ε < c.2 :=
      (lt_mem_nhds <| div_lt_top coe_ne_top hε.ne').prod_nhds (lt_mem_nhds hεb)
    refine this.mono fun c hc => ?_
    exact (ENNReal.div_mul_cancel hε.ne' coe_ne_top).symm.trans_lt (mul_lt_mul hc.1 hc.2)
  induction a with
  | top => simp only [ne_eq, or_false, not_true_eq_false] at hb; simp [ht b hb, top_mul hb]
  | coe a =>
    induction b with
    | top =>
      simp only [ne_eq, or_false, not_true_eq_false] at ha
      simpa [Function.comp_def, mul_comm, mul_top ha]
        using (ht a ha).comp (continuous_swap.tendsto (ofNNReal a, ∞))
    | coe b =>
      simp only [nhds_coe_coe, ← coe_mul, tendsto_coe, tendsto_map'_iff, Function.comp_def,
        tendsto_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant90de27f739aa7efc0827bea727328e2474a187023d496c197399d0e1de0fe0f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant90de27f739aa7efc0827bea727328e2474a187023d496c197399d0e1de0fe0f7.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b6ad1b40d452d54d1359a5cff20c3984b9d1240` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
